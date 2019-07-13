-- Name:阿诺特岛
-- Type:主线
-- Maker:LHW
-------------------------------------------------
--
--                   [ LocalTable ]
--
-------------------------------------------------
local tTask = {}
local tText = {}
local tNpcRes = {}
local tNpcGroup = {}
local tMonster = {}
local tGenId = {}
local tDialog = {}
local tPos = {}
local tAward = {}
-------------------------------------------------
--
--                   [ LocalTask ]
--
-------------------------------------------------
tTask.nPriorTask = 10535
tTask.nNextTask = 10625

--支线用（1）
tTask.nTaskId1 = 10546
tTask.nTaskId2 = 10547
tTask.nTaskId3 = 10548
tTask.nTaskId4 = 10549
tTask.nTaskId5 = 10550
tTask.nTaskId6 = 10551
--支线用（2）
tTask.nTaskId22 = 10567
tTask.nTaskId23 = 10568
--支线用（3）
tTask.nTaskId26 = 10571
tTask.nTaskId27 = 10572
--支线用（4）
tTask.nTaskId41 = 10586
tTask.nTaskId42 = 10587
tTask.nTaskId43 = 10588
tTask.nTaskId44 = 10589
tTask.nTaskId45 = 10590
tTask.nTaskId46 = 10591
tTask.nTaskId47 = 10592
tTask.nTaskId48 = 10593
tTask.nTaskId49 = 10594

--主线
 tTask.nTaskId7 = 10552
 tTask.nTaskId8 = 10553
 tTask.nTaskId9 = 10554
tTask.nTaskId10 = 10555
tTask.nTaskId11 = 10556
tTask.nTaskId12 = 10557
tTask.nTaskId13 = 10558
tTask.nTaskId14 = 10559
tTask.nTaskId15 = 10560
tTask.nTaskId16 = 10561
tTask.nTaskId17 = 10562
tTask.nTaskId18 = 10563
tTask.nTaskId18_Add1 = 10614
tTask.nTaskId19 = 10564
tTask.nTaskId20 = 10565
tTask.nTaskId21 = 10566

tTask.nTaskId24 = 10569
tTask.nTaskId25 = 10570

tTask.nTaskId28 = 10573
tTask.nTaskId29 = 10574
tTask.nTaskId30 = 10575
tTask.nTaskId31 = 10576
tTask.nTaskId32 = 10577
tTask.nTaskId33 = 10578
tTask.nTaskId34 = 10579
tTask.nTaskId35 = 10580
tTask.nTaskId36 = 10581
tTask.nTaskId37 = 10582
--tTask.nTaskId38 = 10583
tTask.nTaskId39 = 10584
tTask.nTaskId40 = 10585

tTask.nTaskId50 = 10595
tTask.nTaskId50_Add1 = 10617
tTask.nTaskId51 = 10596
-------------------------------------------------
--
--                   [ LocalText ]
--
-------------------------------------------------
--

--支线用（1）
tText.nTaskTextId1 = 21301
tText.nTaskTextId2 = 21302
tText.nTaskTextId3 = 21303
tText.nTaskTextId4 = 21304
tText.nTaskTextId5 = 21305
tText.nTaskTextId6 = 21306
--支线用（2）
tText.nTaskTextId22 = 21322
tText.nTaskTextId23 = 21323
--支线用（3）
tText.nTaskTextId26 = 21326
tText.nTaskTextId27 = 21327
--支线用（4）
tText.nTaskTextId41 = 21341
tText.nTaskTextId42 = 21342
tText.nTaskTextId43 = 21343
tText.nTaskTextId44 = 21344
tText.nTaskTextId45 = 21345
tText.nTaskTextId46 = 21346
tText.nTaskTextId47 = 21347
tText.nTaskTextId48 = 21348
tText.nTaskTextId49 = 21349

--主线
 tText.nTaskTextId7 = 21307
 tText.nTaskTextId8 = 21308
 tText.nTaskTextId9 = 21309
tText.nTaskTextId10 = 21310
tText.nTaskTextId11 = 21311
tText.nTaskTextId12 = 21312
tText.nTaskTextId13 = 21313
tText.nTaskTextId14 = 21314
tText.nTaskTextId15 = 21315
tText.nTaskTextId16 = 21316
tText.nTaskTextId17 = 21317
tText.nTaskTextId18 = 21318
tText.nTaskTextId18_Add1 = 21476
tText.nTaskTextId19 = 21319
tText.nTaskTextId20 = 21320
tText.nTaskTextId21 = 21321

tText.nTaskTextId24 = 21324
tText.nTaskTextId25 = 21325

tText.nTaskTextId28 = 21328
tText.nTaskTextId29 = 21329
tText.nTaskTextId30 = 21330
tText.nTaskTextId31 = 21331
tText.nTaskTextId32 = 21332
tText.nTaskTextId33 = 21333
tText.nTaskTextId34 = 21334
tText.nTaskTextId35 = 21335
tText.nTaskTextId36 = 21336
tText.nTaskTextId37 = 21337
tText.nTaskTextId38 = 21338
tText.nTaskTextId39 = 21339
tText.nTaskTextId40 = 21340

tText.nTaskTextId50 = 21350
tText.nTaskTextId50_Add1 = 21477
tText.nTaskTextId51 = 21351
-------------------------------------------------
--
--                   [ LocalNPCRes ]
--
-------------------------------------------------
tNpcRes.Npc_YangBS = 3525 --3432
tNpcRes.Npc_MoNiye = 3526
tNpcRes.Npc_YeGE = 3527
tNpcRes.Npc_YiWan = 3528
tNpcRes.Npc_LieFu = 3529
tNpcRes.Npc_MiHaEr = 3530
tNpcRes.Npc_BaiEn = 3531
tNpcRes.Npc_MiNaDa = 3381 --3532
tNpcRes.Npc_AnDong = 3533
tNpcRes.Npc_GaiYin = 3010 --3534

tNpcRes.MapNpc_ZWCK = 3535 --(先替代解谜)
-------------------------------------------------
--
--                   [ LocalNPCGroup ]
--
-------------------------------------------------
tNpcGroup.Trap_KillJC = 30510
tNpcGroup.Trap_XiuXi = 30511
tNpcGroup.Trap_LveDuo = 30512
tNpcGroup.Trap_2LveDuo = 30513
tNpcGroup.Trap_3LveDuo = 30514
tNpcGroup.Trap_KillXQZ = 30515
tNpcGroup.Trap_DuiCe = 30516
tNpcGroup.Trap_KillNYCH = 30517

tNpcGroup.Collect_Show = 60292
tNpcGroup.Collect_MuGun = 60293
tNpcGroup.Collect_YingYS = 60294

tNpcGroup.Npc_YangBS = 20497
tNpcGroup.Npc_MoNiye = 20498
tNpcGroup.Npc_YeGE = 20499
tNpcGroup.Npc_YiWan = 20500
tNpcGroup.Npc_LieFu = 20501
tNpcGroup.Npc_MiHaEr = 20502
tNpcGroup.Npc_BaiEn = 20503
tNpcGroup.Npc_MiNaDa = 20504
tNpcGroup.Npc_AnDong = 20505
tNpcGroup.Npc_GaiYin = 20506

tNpcGroup.MapNpc_ZWCK = 10020
-------------------------------------------------
--
--                   [ LocalMonster ]
--
-------------------------------------------------
tMonster.MonId_JC = 9000291
tMonster.MonId_YangBS = 9000292
tMonster.MonId_XJZ = 9000293
tMonster.MonId_XQZ = 9000294
tMonster.MonId_LieFu = 9000295
tMonster.MonId_NYCH = 9000296
tMonster.MonId_MoNiye = 9000314

tMonster.Group_JC = 900371
tMonster.Group_YangBS = 900372
tMonster.Group_XJZ = 900373
tMonster.Group_XQZ = 900374
tMonster.Group_LieFu = 900375
tMonster.Group_NYCH = 900376
tMonster.Group_MoNiye = 900395
-------------------------------------------------
--
--                   [ LocalGenId ]
--
-------------------------------------------------

tGenId.Npc_YangBS = 20050087
tGenId.Npc_MoNiye = 20050088
tGenId.Npc_2_MoNiye = 20050089
tGenId.Npc_YeGE = 20050090 --永久
tGenId.Npc_YiWan = 20050091 --永久
tGenId.Npc_LieFu = 20050092 --永久
tGenId.Npc_MiHaEr = 20050093 --永久
tGenId.Npc_BaiEn = 20050094 --永久
tGenId.Npc_MiNaDa = 20050095 
tGenId.Npc_2_MiNaDa = 20050096
tGenId.Npc_3_MiNaDa = 20050097 --永久 天空城
tGenId.Npc_AnDong = 20050098 --永久
tGenId.Npc_GaiYin = 20050099

tGenId.MapNpc_ZWCK = 20050100

tGenId.Trap_KillJC = 20050101
tGenId.Trap_XiuXi = 20050102
tGenId.Trap_LveDuo = 20050103
tGenId.Trap_2LveDuo = 20050104
tGenId.Trap_3LveDuo = 20050105
tGenId.Trap_KillXQZ = 20050106
tGenId.Trap_DuiCe = 20050107
tGenId.Trap_KillNYCH = 20050108

tGenId.Collect_Show = 20050109
tGenId.Collect_MuGun = 20050110
tGenId.Collect_YingYS = 20050111

tGenId.Mon_JC = 20050112
tGenId.Mon_YangBS = 20050113
tGenId.Mon_XJZ = 20050114
tGenId.Mon_XQZ = 20050115
tGenId.Mon_LieFu = 20050116
tGenId.Mon_NYCH = 20050117
tGenId.Mon_MoNiye = 20050134


-------------------------------------------------
--
--                   [ LocalDialog ]
--
-------------------------------------------------
tDialog.Battle_JC = 11552
tDialog.Trap_XiuXi = 11562
tDialog.Trap_2_XiuXi = 11563
tDialog.Collect_Show = 11568
tDialog.Battle_YangBS = 11553
tDialog.Npc_YangBS = 11569
tDialog.Npc_MoNiye = 11570
tDialog.Npc_2_MoNiye = 11571
tDialog.Trap_LveDuo = 11564
tDialog.Battle_XJZ = 11554
tDialog.Npc_YeGE = 11576
tDialog.Trap_2LveDuo = 11565
tDialog.Npc_YiWan = 11577
tDialog.Battle_2_XJZ = 11555
tDialog.Npc_2_YiWan = 11578
tDialog.Battle_XQZ = 11558
tDialog.Npc_3_YiWan = 11579
tDialog.Npc_LieFu = 11581
tDialog.Battle_LieFu = 11559
tDialog.Trap_3LveDuo = 11566
tDialog.Npc_3_MoNiye = 11572
tDialog.Npc_MiHaEr = 11582
tDialog.Battle_3_XJZ = 11556
tDialog.Talk_KongXi = 11595
tDialog.MapNpc_ZWCK = 11594
tDialog.Npc_2_MiHaEr = 11583
tDialog.Npc_4_MoNiye = 11573
tDialog.Npc_5_MoNiye = 11574
tDialog.Npc_6_MoNiye = 11575
tDialog.Battle_2_LieFu = 11560
tDialog.Npc_BaiEn = 11584
tDialog.Trap_DuiCe = 11567
tDialog.Battle_4_XJZ = 11557
tDialog.Talk_TiLi = 11596
tDialog.Npc_MiNaDa = 11587
tDialog.Talk_CopyMap = 11599 --临时用
tDialog.Talk_BackJD = 11597
tDialog.Npc_2_BaiEn = 11585
tDialog.Npc_2_MiNaDa = 11588
tDialog.Npc_3_MiNaDa = 11589
tDialog.Talk_Relax = 11598
tDialog.Npc_4_MiNaDa = 11590
tDialog.Npc_3_BaiEn = 11586
tDialog.Npc_AnDong = 11592
tDialog.Npc_4_YiWan = 11580
tDialog.Battle_NYCH = 11561
tDialog.Npc_5_MiNaDa = 11591
tDialog.Npc_GaiYin = 11593


-------------------------------------------------
--
--                   [ LocalPos ]
--
-------------------------------------------------
tPos.Trap_XiuXi = "336.49,5.14,-302.26"
tPos.Trap_LveDuo = "323.84,0.34,-342.45"
tPos.Trap_2LveDuo = "343.00,-0.21,-376.34"
tPos.Trap_3LveDuo = "324.43,0.22,-344.65"
tPos.Trap_DuiCe = "359.41,2.79,-380.31"
tPos.Trap_KillNYCH = "354.28,2.79,-389.19"
-------------------------------------------------
--
--                   [ LocalAward ]
--
-------------------------------------------------
 tAward.MoNiye = 2000203
  tAward.YiWan = 2000204
  tAward.LieFu = 2000205
 tAward.Kongxi = 2000206
tAward.MoNiye2 = 2000207
  tAward.BaiEn = 2000208
tAward.TalkEnd = 2000209
 tAward.BaiEn2 = 2000210
 tAward.GaiYin = 2000211
 
 --未使用 2000212,2000213

-------------------------------------------------
--
--                   [ NPCGROUP ]
--
-------------------------------------------------

--击杀甲虫陷阱
rwtNpcGroup[tNpcGroup.Trap_KillJC] = rwtNpcGroup[tNpcGroup.Trap_KillJC] or {}
rwtNpcGroup[tNpcGroup.Trap_KillJC]["Type"] = CONST_NPCGROUP_TYPE.Trap

--休息陷阱
rwtNpcGroup[tNpcGroup.Trap_XiuXi] = rwtNpcGroup[tNpcGroup.Trap_XiuXi] or {}
rwtNpcGroup[tNpcGroup.Trap_XiuXi]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.Trap_LveDuo] = rwtNpcGroup[tNpcGroup.Trap_LveDuo] or {}
rwtNpcGroup[tNpcGroup.Trap_LveDuo]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.Trap_2LveDuo] = rwtNpcGroup[tNpcGroup.Trap_2LveDuo] or {}
rwtNpcGroup[tNpcGroup.Trap_2LveDuo]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.Trap_3LveDuo] = rwtNpcGroup[tNpcGroup.Trap_3LveDuo] or {}
rwtNpcGroup[tNpcGroup.Trap_3LveDuo]["Type"] = CONST_NPCGROUP_TYPE.Trap

--击杀先驱者陷阱
rwtNpcGroup[tNpcGroup.Trap_KillXQZ] = rwtNpcGroup[tNpcGroup.Trap_KillXQZ] or {}
rwtNpcGroup[tNpcGroup.Trap_KillXQZ]["Type"] = CONST_NPCGROUP_TYPE.Trap

--对策对话陷阱
rwtNpcGroup[tNpcGroup.Trap_DuiCe] = rwtNpcGroup[tNpcGroup.Trap_DuiCe] or {}
rwtNpcGroup[tNpcGroup.Trap_DuiCe]["Type"] = CONST_NPCGROUP_TYPE.Trap

--击杀纳雅斥候陷阱
rwtNpcGroup[tNpcGroup.Trap_KillNYCH] = rwtNpcGroup[tNpcGroup.Trap_KillNYCH] or {}
rwtNpcGroup[tNpcGroup.Trap_KillNYCH]["Type"] = CONST_NPCGROUP_TYPE.Trap


--扬博士
rwtNpcGroup[tNpcGroup.Npc_YangBS] = rwtNpcGroup[tNpcGroup.Npc_YangBS] or {}  
rwtNpcGroup[tNpcGroup.Npc_YangBS]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_YangBS]["NpcId"] = tNpcRes.Npc_YangBS

rwtNpc[tNpcRes.Npc_YangBS] = rwtNpc[tNpcRes.Npc_YangBS] or {}
rwtNpc[tNpcRes.Npc_YangBS]["DialogId"] = {1716,1717,1718}

--摩尼耶
rwtNpcGroup[tNpcGroup.Npc_MoNiye] = rwtNpcGroup[tNpcGroup.Npc_MoNiye] or {}  
rwtNpcGroup[tNpcGroup.Npc_MoNiye]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_MoNiye]["NpcId"] = tNpcRes.Npc_MoNiye

rwtNpc[tNpcRes.Npc_MoNiye] = rwtNpc[tNpcRes.Npc_MoNiye] or {}
rwtNpc[tNpcRes.Npc_MoNiye]["DialogId"] = {1719,1720,1721}

--掠夺者叶戈尔
rwtNpcGroup[tNpcGroup.Npc_YeGE] = rwtNpcGroup[tNpcGroup.Npc_YeGE] or {}  
rwtNpcGroup[tNpcGroup.Npc_YeGE]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_YeGE]["NpcId"] = tNpcRes.Npc_YeGE

rwtNpc[tNpcRes.Npc_YeGE] = rwtNpc[tNpcRes.Npc_YeGE] or {}
rwtNpc[tNpcRes.Npc_YeGE]["DialogId"] = {1722,1723,1724}

--掠夺者伊万
rwtNpcGroup[tNpcGroup.Npc_YiWan] = rwtNpcGroup[tNpcGroup.Npc_YiWan] or {}  
rwtNpcGroup[tNpcGroup.Npc_YiWan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_YiWan]["NpcId"] = tNpcRes.Npc_YiWan

rwtNpc[tNpcRes.Npc_YiWan] = rwtNpc[tNpcRes.Npc_YiWan] or {}
rwtNpc[tNpcRes.Npc_YiWan]["DialogId"] = {1725,1726,1727}

--副官列夫
rwtNpcGroup[tNpcGroup.Npc_LieFu] = rwtNpcGroup[tNpcGroup.Npc_LieFu] or {}  
rwtNpcGroup[tNpcGroup.Npc_LieFu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_LieFu]["NpcId"] = tNpcRes.Npc_LieFu

rwtNpc[tNpcRes.Npc_LieFu] = rwtNpc[tNpcRes.Npc_LieFu] or {}
rwtNpc[tNpcRes.Npc_LieFu]["DialogId"] = {1728,1729,1730}

--掠夺者米哈尔
rwtNpcGroup[tNpcGroup.Npc_MiHaEr] = rwtNpcGroup[tNpcGroup.Npc_MiHaEr] or {}  
rwtNpcGroup[tNpcGroup.Npc_MiHaEr]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_MiHaEr]["NpcId"] = tNpcRes.Npc_MiHaEr

rwtNpc[tNpcRes.Npc_MiHaEr] = rwtNpc[tNpcRes.Npc_MiHaEr] or {}
rwtNpc[tNpcRes.Npc_MiHaEr]["DialogId"] = {1731,1732,1733}

--首领拜恩
rwtNpcGroup[tNpcGroup.Npc_BaiEn] = rwtNpcGroup[tNpcGroup.Npc_BaiEn] or {}  
rwtNpcGroup[tNpcGroup.Npc_BaiEn]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_BaiEn]["NpcId"] = tNpcRes.Npc_BaiEn

rwtNpc[tNpcRes.Npc_BaiEn] = rwtNpc[tNpcRes.Npc_BaiEn] or {}
rwtNpc[tNpcRes.Npc_BaiEn]["DialogId"] = {1781,1782,1734,1735,1736}

--米兰达
rwtNpcGroup[tNpcGroup.Npc_MiNaDa] = rwtNpcGroup[tNpcGroup.Npc_MiNaDa] or {}  
rwtNpcGroup[tNpcGroup.Npc_MiNaDa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_MiNaDa]["NpcId"] = tNpcRes.Npc_MiNaDa

rwtNpc[tNpcRes.Npc_MiNaDa] = rwtNpc[tNpcRes.Npc_MiNaDa] or {}


--掠夺者安东
rwtNpcGroup[tNpcGroup.Npc_AnDong] = rwtNpcGroup[tNpcGroup.Npc_AnDong] or {}  
rwtNpcGroup[tNpcGroup.Npc_AnDong]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_AnDong]["NpcId"] = tNpcRes.Npc_AnDong

rwtNpc[tNpcRes.Npc_AnDong] = rwtNpc[tNpcRes.Npc_AnDong] or {}
rwtNpc[tNpcRes.Npc_AnDong]["DialogId"] = {1737,1738,1739}

--该隐
rwtNpcGroup[tNpcGroup.Npc_GaiYin] = rwtNpcGroup[tNpcGroup.Npc_GaiYin] or {}  
rwtNpcGroup[tNpcGroup.Npc_GaiYin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Npc_GaiYin]["NpcId"] = tNpcRes.Npc_GaiYin

rwtNpc[tNpcRes.Npc_GaiYin] = rwtNpc[tNpcRes.Npc_GaiYin] or {}

--采集 - 篝火痕迹
rwtNpcGroup[tNpcGroup.Collect_Show] = rwtNpcGroup[tNpcGroup.Collect_Show] or {}
rwtNpcGroup[tNpcGroup.Collect_Show]["Type"] = CONST_NPCGROUP_TYPE.Collect

--采集 - 木棍
rwtNpcGroup[tNpcGroup.Collect_MuGun] = rwtNpcGroup[tNpcGroup.Collect_MuGun] or {}
rwtNpcGroup[tNpcGroup.Collect_MuGun]["Type"] = CONST_NPCGROUP_TYPE.Collect

--采集 - 鹰眼石
rwtNpcGroup[tNpcGroup.Collect_YingYS] = rwtNpcGroup[tNpcGroup.Collect_YingYS] or {}
rwtNpcGroup[tNpcGroup.Collect_YingYS]["Type"] = CONST_NPCGROUP_TYPE.Collect


--建筑 - 杂物仓库 （要改成解谜）
rwtNpcGroup[tNpcGroup.MapNpc_ZWCK] = rwtNpcGroup[tNpcGroup.MapNpc_ZWCK] or {}  
rwtNpcGroup[tNpcGroup.MapNpc_ZWCK]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tNpcGroup.MapNpc_ZWCK]["NpcId1"] = tNpcRes.MapNpc_ZWCK

rwtNpc[tNpcRes.MapNpc_ZWCK] = rwtNpc[tNpcRes.MapNpc_ZWCK] or {}

-------------------------------------------------
--
--                   [ MainTaskStart ]
--
-------------------------------------------------
--
--[[ 暂时屏蔽（后续改成支线）
--
rwtTask[tTask.nTaskId1] = {}
rwtTask[tTask.nTaskId1]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId1]
rwtTask[tTask.nTaskId1]["PreTaskId"] = 
rwtTask[tTask.nTaskId1]["NextTaskId"] = tTask.nTaskId2
rwtTask[tTask.nTaskId1]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId1]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId1]["KillMonsterGroup1"] = tMonster.Group_JC
rwtTask[tTask.nTaskId1]["MonsterGroupGenId"] = tGenId.Mon_JC
rwtTask[tTask.nTaskId1]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId1]["ReqTrap1"] = tNpcGroup.Trap_KillJC
rwtTask[tTask.nTaskId1]["DialogId"] = tDialog.Battle_JC
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_JC
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_KillJC
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId1]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nTaskId1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId1]["StartAutoWay"]["FindWayGroupId"] = tMonster.Group_JC
rwtTask[tTask.nTaskId1]["StartAutoWay"]["FindWayGenId"] = tGenId.Mon_JC
--
rwtTask[tTask.nTaskId2] = {}
rwtTask[tTask.nTaskId2]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId2]
rwtTask[tTask.nTaskId2]["PreTaskId"] = tTask.nTaskId1
rwtTask[tTask.nTaskId2]["NextTaskId"] = tTask.nTaskId3
rwtTask[tTask.nTaskId2]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId2]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTaskId2]["ReqTrap1"] = tNpcGroup.Trap_XiuXi
rwtTask[tTask.nTaskId2]["DialogId"] = tDialog.Trap_XiuXi
rwtTask[tTask.nTaskId2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_XiuXi
rwtTask[tTask.nTaskId2]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId2]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nTaskId2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId2]["StartAutoWay"]["FindWayPos"] = tPos.Trap_XiuXi
--
rwtTask[tTask.nTaskId3] = {}
rwtTask[tTask.nTaskId3]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId3]
rwtTask[tTask.nTaskId3]["PreTaskId"] = tTask.nTaskId2
rwtTask[tTask.nTaskId3]["NextTaskId"] = tTask.nTaskId4
rwtTask[tTask.nTaskId3]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId3]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTaskId3]["ReqTrap1"] = tNpcGroup.Trap_XiuXi
rwtTask[tTask.nTaskId3]["DialogId"] = tDialog.Trap_2_XiuXi
rwtTask[tTask.nTaskId3]["AcceptDialogId"] = tDialog.Trap_2_XiuXi
rwtTask[tTask.nTaskId3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId3]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_XiuXi
rwtTask[tTask.nTaskId3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--
rwtTask[tTask.nTaskId4] = {}
rwtTask[tTask.nTaskId4]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId4]
rwtTask[tTask.nTaskId4]["PreTaskId"] = tTask.nTaskId3
rwtTask[tTask.nTaskId4]["NextTaskId"] = tTask.nTaskId5
rwtTask[tTask.nTaskId4]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId4]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tTask.nTaskId4]["ReqCollectId1"] = tNpcGroup.Collect_Show
rwtTask[tTask.nTaskId4]["DialogId"] = tDialog.Collect_Show
rwtTask[tTask.nTaskId4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId4]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_Show
rwtTask[tTask.nTaskId4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId4]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_Show
rwtTask[tTask.nTaskId4]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_Show
--
rwtTask[tTask.nTaskId5] = {}
rwtTask[tTask.nTaskId5]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId5]
rwtTask[tTask.nTaskId5]["PreTaskId"] = tTask.nTaskId4
rwtTask[tTask.nTaskId5]["NextTaskId"] = tTask.nTaskId6
rwtTask[tTask.nTaskId5]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId5]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId5]["KillMonsterGroup1"] = tMonster.Group_YangBS
rwtTask[tTask.nTaskId5]["MonsterGroupGenId"] = tGenId.Mon_YangBS
rwtTask[tTask.nTaskId5]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId5]["TaskNpc"] = tNpcRes.Npc_YangBS
rwtTask[tTask.nTaskId5]["DialogId"] = tDialog.Battle_YangBS
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_YangBS
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_YangBS
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId5]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_YangBS
rwtTask[tTask.nTaskId5]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_YangBS
--
rwtTask[tTask.nTaskId6] = {}
rwtTask[tTask.nTaskId6]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId6]
rwtTask[tTask.nTaskId6]["PreTaskId"] = tTask.nTaskId5
rwtTask[tTask.nTaskId6]["NextTaskId"] = 
rwtTask[tTask.nTaskId6]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId6]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId6]["TaskNpc"] = tNpcRes.Npc_YangBS
rwtTask[tTask.nTaskId6]["DialogId"] = tDialog.Npc_YangBS
rwtTask[tTask.nTaskId6]["AcceptDialogId"] = tDialog.Npc_YangBS
rwtTask[tTask.nTaskId6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId6]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_YangBS
rwtTask[tTask.nTaskId6]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId6]["Awards"] = {}
rwtTask[tTask.nTaskId6]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId6]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.YangBS
rwtTask[tTask.nTaskId6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId6

--]]

--
rwtTask[tTask.nTaskId7] = {}
rwtTask[tTask.nTaskId7]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId7]
rwtTask[tTask.nTaskId7]["PreTaskId"] = tTask.nPriorTask
rwtTask[tTask.nTaskId7]["NextTaskId"] = tTask.nTaskId8
rwtTask[tTask.nTaskId7]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId7]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId7]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId7]["DialogId"] = tDialog.Npc_MoNiye
rwtTask[tTask.nTaskId7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId7]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId7]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId7]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId7]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId7]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MoNiye
rwtTask[tTask.nTaskId7]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId7]["OpenTransfer"] = CONST_TRANSFER_INDEX.ANUOTEDAO
rwtTask[tTask.nTaskId7]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10062]
--
rwtTask[tTask.nTaskId8] = {}
rwtTask[tTask.nTaskId8]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId8]
rwtTask[tTask.nTaskId8]["PreTaskId"] = tTask.nTaskId7
rwtTask[tTask.nTaskId8]["NextTaskId"] = tTask.nTaskId9
rwtTask[tTask.nTaskId8]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId8]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tTask.nTaskId8]["ReqCollectId1"] = tNpcGroup.Collect_MuGun
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_MuGun
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId8]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId8]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId8]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_MuGun
rwtTask[tTask.nTaskId8]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_MuGun
--
rwtTask[tTask.nTaskId9] = {}
rwtTask[tTask.nTaskId9]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId9]
rwtTask[tTask.nTaskId9]["PreTaskId"] = tTask.nTaskId8
rwtTask[tTask.nTaskId9]["NextTaskId"] = tTask.nTaskId10
rwtTask[tTask.nTaskId9]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId9]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId9]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId9]["DialogId"] = tDialog.Npc_2_MoNiye
rwtTask[tTask.nTaskId9]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId9]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId9]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId9]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId9]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId9]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MoNiye
rwtTask[tTask.nTaskId9]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId9]["Awards"] = {}
rwtTask[tTask.nTaskId9]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId9]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.MoNiye
rwtTask[tTask.nTaskId9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId9
--
rwtTask[tTask.nTaskId10] = {}
rwtTask[tTask.nTaskId10]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId10]
rwtTask[tTask.nTaskId10]["PreTaskId"] = tTask.nTaskId9
rwtTask[tTask.nTaskId10]["NextTaskId"] = tTask.nTaskId11
rwtTask[tTask.nTaskId10]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId10]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTaskId10]["ReqTrap1"] = tNpcGroup.Trap_LveDuo
rwtTask[tTask.nTaskId10]["DialogId"] = tDialog.Trap_LveDuo
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_LveDuo
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId10]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId10]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nTaskId10]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId10]["StartAutoWay"]["FindWayPos"] = tPos.Trap_LveDuo
--
rwtTask[tTask.nTaskId11] = {}
rwtTask[tTask.nTaskId11]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId11]
rwtTask[tTask.nTaskId11]["PreTaskId"] = tTask.nTaskId10
rwtTask[tTask.nTaskId11]["NextTaskId"] = tTask.nTaskId12
rwtTask[tTask.nTaskId11]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId11]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId11]["KillMonsterGroup1"] = tMonster.Group_XJZ
rwtTask[tTask.nTaskId11]["MonsterGroupGenId"] = tGenId.Mon_XJZ
rwtTask[tTask.nTaskId11]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId11]["TaskNpc"] = tNpcRes.Npc_YeGE
rwtTask[tTask.nTaskId11]["DialogId"] = tDialog.Battle_XJZ
rwtTask[tTask.nTaskId11]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId11]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId11]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_XJZ
rwtTask[tTask.nTaskId11]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId11]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId11]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId11]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_YeGE
rwtTask[tTask.nTaskId11]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_YeGE
rwtTask[tTask.nTaskId11]["OpenTransfer"] = CONST_TRANSFER_INDEX.ANUOTEDAO
rwtTask[tTask.nTaskId11]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10062]
--
rwtTask[tTask.nTaskId12] = {}
rwtTask[tTask.nTaskId12]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId12]
rwtTask[tTask.nTaskId12]["PreTaskId"] = tTask.nTaskId11
rwtTask[tTask.nTaskId12]["NextTaskId"] = tTask.nTaskId13
rwtTask[tTask.nTaskId12]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId12]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId12]["TaskNpc"] = tNpcRes.Npc_YeGE
rwtTask[tTask.nTaskId12]["DialogId"] = tDialog.Npc_YeGE
rwtTask[tTask.nTaskId12]["AcceptDialogId"] = tDialog.Npc_YeGE
--
rwtTask[tTask.nTaskId13] = {}
rwtTask[tTask.nTaskId13]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId13]
rwtTask[tTask.nTaskId13]["PreTaskId"] = tTask.nTaskId12
rwtTask[tTask.nTaskId13]["NextTaskId"] = tTask.nTaskId14
rwtTask[tTask.nTaskId13]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId13]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTaskId13]["ReqTrap1"] = tNpcGroup.Trap_2LveDuo
rwtTask[tTask.nTaskId13]["DialogId"] = tDialog.Trap_2LveDuo
rwtTask[tTask.nTaskId13]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId13]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId13]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_2LveDuo
rwtTask[tTask.nTaskId13]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId13]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId13]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nTaskId13]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId13]["StartAutoWay"]["FindWayPos"] = tPos.Trap_2LveDuo
--
rwtTask[tTask.nTaskId14] = {}
rwtTask[tTask.nTaskId14]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId14]
rwtTask[tTask.nTaskId14]["PreTaskId"] = tTask.nTaskId13
rwtTask[tTask.nTaskId14]["NextTaskId"] = tTask.nTaskId15
rwtTask[tTask.nTaskId14]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId14]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId14]["TaskNpc"] = tNpcRes.Npc_YiWan
rwtTask[tTask.nTaskId14]["DialogId"] = tDialog.Npc_YiWan
rwtTask[tTask.nTaskId14]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId14]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId14]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId14]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_YiWan
rwtTask[tTask.nTaskId14]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_YiWan
--
rwtTask[tTask.nTaskId15] = {}
rwtTask[tTask.nTaskId15]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId15]
rwtTask[tTask.nTaskId15]["PreTaskId"] = tTask.nTaskId14
rwtTask[tTask.nTaskId15]["NextTaskId"] = tTask.nTaskId16
rwtTask[tTask.nTaskId15]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId15]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId15]["KillMonsterGroup1"] = tMonster.Group_XJZ
rwtTask[tTask.nTaskId15]["MonsterGroupGenId"] = tGenId.Mon_XJZ
rwtTask[tTask.nTaskId15]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId15]["TaskNpc"] = tNpcRes.Npc_YiWan
rwtTask[tTask.nTaskId15]["DialogId"] = tDialog.Battle_2_XJZ
rwtTask[tTask.nTaskId15]["AcceptDialogId"] = tDialog.Battle_2_XJZ
rwtTask[tTask.nTaskId15]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId15]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId15]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_XJZ
rwtTask[tTask.nTaskId15]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--
rwtTask[tTask.nTaskId16] = {}
rwtTask[tTask.nTaskId16]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId16]
rwtTask[tTask.nTaskId16]["PreTaskId"] = tTask.nTaskId15
rwtTask[tTask.nTaskId16]["NextTaskId"] = tTask.nTaskId17
rwtTask[tTask.nTaskId16]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId16]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId16]["TaskNpc"] = tNpcRes.Npc_YiWan
rwtTask[tTask.nTaskId16]["DialogId"] = tDialog.Npc_2_YiWan
rwtTask[tTask.nTaskId16]["AcceptDialogId"] = tDialog.Npc_2_YiWan
--
rwtTask[tTask.nTaskId17] = {}
rwtTask[tTask.nTaskId17]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId17]
rwtTask[tTask.nTaskId17]["PreTaskId"] = tTask.nTaskId16
rwtTask[tTask.nTaskId17]["NextTaskId"] = tTask.nTaskId18
rwtTask[tTask.nTaskId17]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId17]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId17]["KillMonsterGroup1"] = tMonster.Group_XQZ
rwtTask[tTask.nTaskId17]["MonsterGroupGenId"] = tGenId.Mon_XQZ
rwtTask[tTask.nTaskId17]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId17]["ReqTrap1"] = tNpcGroup.Trap_KillXQZ
rwtTask[tTask.nTaskId17]["DialogId"] = tDialog.Battle_XQZ
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_XQZ
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_KillXQZ
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId17]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId17]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId17]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nTaskId17]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId17]["StartAutoWay"]["FindWayGroupId"] = tMonster.Group_XQZ
rwtTask[tTask.nTaskId17]["StartAutoWay"]["FindWayGenId"] = tGenId.Mon_XQZ
--
rwtTask[tTask.nTaskId18] = {}
rwtTask[tTask.nTaskId18]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId18]
rwtTask[tTask.nTaskId18]["PreTaskId"] = tTask.nTaskId17
rwtTask[tTask.nTaskId18]["NextTaskId"] = tTask.nTaskId19
rwtTask[tTask.nTaskId18]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId18]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId18]["TaskNpc"] = tNpcRes.Npc_YiWan
rwtTask[tTask.nTaskId18]["DialogId"] = tDialog.Npc_3_YiWan
rwtTask[tTask.nTaskId18]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId18]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId18]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_YiWan
rwtTask[tTask.nTaskId18]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_YiWan
rwtTask[tTask.nTaskId18]["Awards"] = {}
rwtTask[tTask.nTaskId18]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId18]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.YiWan
rwtTask[tTask.nTaskId18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId18
--

--[[
rwtTask[tTask.nTaskId18_Add1] = {}
rwtTask[tTask.nTaskId18_Add1]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId18_Add1]
rwtTask[tTask.nTaskId18_Add1]["PreTaskId"] = tTask.nTaskId18
rwtTask[tTask.nTaskId18_Add1]["NextTaskId"] = tTask.nTaskId19
rwtTask[tTask.nTaskId18_Add1]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId18_Add1]["IsClickComplete"] = 1
rwtTask[tTask.nTaskId18_Add1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tTask.nTaskId18_Add1]["NeedLevel"] = 52
--rwtTask[tTask.nTaskId18_Add1]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10167]
rwtTask[tTask.nTaskId18_Add1]["LackDialogId"] = 12106
--]]

--
rwtTask[tTask.nTaskId19] = {}
rwtTask[tTask.nTaskId19]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId19]
rwtTask[tTask.nTaskId19]["PreTaskId"] = tTask.nTaskId18
rwtTask[tTask.nTaskId19]["NextTaskId"] = tTask.nTaskId20
rwtTask[tTask.nTaskId19]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId19]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId19]["TaskNpc"] = tNpcRes.Npc_LieFu
--rwtTask[tTask.nTaskId19]["AcceptDialogId"] = 12107
rwtTask[tTask.nTaskId19]["DialogId"] = tDialog.Npc_LieFu
rwtTask[tTask.nTaskId19]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId19]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId19]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_LieFu
rwtTask[tTask.nTaskId19]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_LieFu
--
rwtTask[tTask.nTaskId20] = {}
rwtTask[tTask.nTaskId20]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId20]
rwtTask[tTask.nTaskId20]["PreTaskId"] = tTask.nTaskId19
rwtTask[tTask.nTaskId20]["NextTaskId"] = tTask.nTaskId21
rwtTask[tTask.nTaskId20]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId20]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId20]["KillMonsterGroup1"] = tMonster.Group_LieFu
rwtTask[tTask.nTaskId20]["MonsterGroupGenId"] = tGenId.Mon_LieFu
rwtTask[tTask.nTaskId20]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId20]["TaskNpc"] = tNpcRes.Npc_LieFu
rwtTask[tTask.nTaskId20]["DialogId"] = tDialog.Battle_LieFu
rwtTask[tTask.nTaskId20]["AcceptDialogId"] = tDialog.Battle_LieFu
rwtTask[tTask.nTaskId20]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId20]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId20]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_LieFu
rwtTask[tTask.nTaskId20]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--
rwtTask[tTask.nTaskId21] = {}
rwtTask[tTask.nTaskId21]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId21]
rwtTask[tTask.nTaskId21]["PreTaskId"] = tTask.nTaskId20
rwtTask[tTask.nTaskId21]["NextTaskId"] = tTask.nTaskId24
rwtTask[tTask.nTaskId21]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId21]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTaskId21]["ReqTrap1"] = tNpcGroup.Trap_3LveDuo
rwtTask[tTask.nTaskId21]["DialogId"] = tDialog.Trap_3LveDuo
rwtTask[tTask.nTaskId21]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId21]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId21]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_3LveDuo
rwtTask[tTask.nTaskId21]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId21]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId21]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nTaskId21]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId21]["StartAutoWay"]["FindWayPos"] = tPos.Trap_3LveDuo
rwtTask[tTask.nTaskId21]["Awards"] = {}
rwtTask[tTask.nTaskId21]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId21]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId21]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.LieFu
rwtTask[tTask.nTaskId21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId21
--
--[[ 暂时屏蔽（后续改成支线）
--
rwtTask[tTask.nTaskId22] = {}
rwtTask[tTask.nTaskId22]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId22]
rwtTask[tTask.nTaskId22]["PreTaskId"] = 
rwtTask[tTask.nTaskId22]["NextTaskId"] = tTask.nTaskId23
rwtTask[tTask.nTaskId22]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId22]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId22]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId22]["DialogId"] = tDialog.Npc_3_MoNiye
rwtTask[tTask.nTaskId22]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId22]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId22]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId22]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId22]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId22]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId22]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MoNiye
rwtTask[tTask.nTaskId22]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MoNiye
--
rwtTask[tTask.nTaskId23] = {}
rwtTask[tTask.nTaskId23]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId23]
rwtTask[tTask.nTaskId23]["PreTaskId"] = tTask.nTaskId22
rwtTask[tTask.nTaskId23]["NextTaskId"] = 
rwtTask[tTask.nTaskId23]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId23]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId23]["TaskNpc"] = tNpcRes.Npc_MiHaEr
rwtTask[tTask.nTaskId23]["DialogId"] = tDialog.Npc_MiHaEr
rwtTask[tTask.nTaskId23]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId23]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId23]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId23]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId23]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId23]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId23]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiHaEr
rwtTask[tTask.nTaskId23]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MiHaEr
--]]
--
rwtTask[tTask.nTaskId24] = {}
rwtTask[tTask.nTaskId24]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId24]
rwtTask[tTask.nTaskId24]["PreTaskId"] = tTask.nTaskId21
rwtTask[tTask.nTaskId24]["NextTaskId"] = tTask.nTaskId25
rwtTask[tTask.nTaskId24]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId24]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId24]["KillMonsterGroup1"] = tMonster.Group_XJZ
rwtTask[tTask.nTaskId24]["MonsterGroupGenId"] = tGenId.Mon_XJZ
rwtTask[tTask.nTaskId24]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId24]["ReqTrap1"] = tNpcGroup.Trap_3LveDuo
rwtTask[tTask.nTaskId24]["DialogId"] = tDialog.Battle_3_XJZ
rwtTask[tTask.nTaskId24]["AcceptDialogId"] = tDialog.Battle_3_XJZ
rwtTask[tTask.nTaskId24]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId24]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId24]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_3LveDuo
rwtTask[tTask.nTaskId24]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nTaskId24]["StartAutoWay"] = {}
--rwtTask[tTask.nTaskId24]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tTask.nTaskId24]["StartAutoWay"]["FindWayMapId"] = 2005
--rwtTask[tTask.nTaskId24]["StartAutoWay"]["FindWayPos"] = tPos.Trap_3LveDuo
--
rwtTask[tTask.nTaskId25] = {}
rwtTask[tTask.nTaskId25]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId25]
rwtTask[tTask.nTaskId25]["PreTaskId"] = tTask.nTaskId24
rwtTask[tTask.nTaskId25]["NextTaskId"] = tTask.nTaskId28
rwtTask[tTask.nTaskId25]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId25]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nTaskId25]["DialogId"] = tDialog.Talk_KongXi
rwtTask[tTask.nTaskId25]["AcceptDialogId"] = tDialog.Talk_KongXi
rwtTask[tTask.nTaskId25]["Awards"] = {}
rwtTask[tTask.nTaskId25]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId25]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId25]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId25]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Kongxi
rwtTask[tTask.nTaskId25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId25
--
--[[ 暂时屏蔽（后续改成支线）
--[解谜任务 暂时用对白模式]
rwtTask[tTask.nTaskId26] = {}
rwtTask[tTask.nTaskId26]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId26]
rwtTask[tTask.nTaskId26]["PreTaskId"] = 
rwtTask[tTask.nTaskId26]["NextTaskId"] = tTask.nTaskId27
rwtTask[tTask.nTaskId26]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId26]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId26]["TaskNpc"] = tNpcRes.MapNpc_ZWCK
rwtTask[tTask.nTaskId26]["DialogId"] = tDialog.MapNpc_ZWCK
rwtTask[tTask.nTaskId26]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId26]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId26]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.MapNpc_ZWCK
rwtTask[tTask.nTaskId26]["StartAutoWay"]["FindWayGenId"] = tGenId.MapNpc_ZWCK
--
rwtTask[tTask.nTaskId27] = {}
rwtTask[tTask.nTaskId27]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId27]
rwtTask[tTask.nTaskId27]["PreTaskId"] = tTask.nTaskId26
rwtTask[tTask.nTaskId27]["NextTaskId"] = 
rwtTask[tTask.nTaskId27]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId27]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId27]["TaskNpc"] = tNpcRes.Npc_MiHaEr
rwtTask[tTask.nTaskId27]["DialogId"] = tDialog.Npc_2_MiHaEr
rwtTask[tTask.nTaskId27]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId27]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId27]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId27]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiHaEr
rwtTask[tTask.nTaskId27]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MiHaEr
rwtTask[tTask.nTaskId27]["Awards"] = {}
rwtTask[tTask.nTaskId27]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId27]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId27]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId27]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId27]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.MiHaEr
rwtTask[tTask.nTaskId27]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId27]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId27
--]]
--
rwtTask[tTask.nTaskId28] = {}
rwtTask[tTask.nTaskId28]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId28]
rwtTask[tTask.nTaskId28]["PreTaskId"] = tTask.nTaskId25
rwtTask[tTask.nTaskId28]["NextTaskId"] = tTask.nTaskId29
rwtTask[tTask.nTaskId28]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId28]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId28]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId28]["DialogId"] = tDialog.Npc_4_MoNiye
rwtTask[tTask.nTaskId28]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId28]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId28]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId28]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId28]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId28]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId28]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MoNiye
rwtTask[tTask.nTaskId28]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MoNiye
--
rwtTask[tTask.nTaskId29] = {}
rwtTask[tTask.nTaskId29]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId29]
rwtTask[tTask.nTaskId29]["PreTaskId"] = tTask.nTaskId28
rwtTask[tTask.nTaskId29]["NextTaskId"] = tTask.nTaskId30
rwtTask[tTask.nTaskId29]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId29]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tTask.nTaskId29]["ReqCollectId1"] = tNpcGroup.Collect_YingYS
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_YingYS
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId29]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId29]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId29]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId29]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId29]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_YingYS
rwtTask[tTask.nTaskId29]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_YingYS
--
rwtTask[tTask.nTaskId30] = {}
rwtTask[tTask.nTaskId30]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId30]
rwtTask[tTask.nTaskId30]["PreTaskId"] = tTask.nTaskId29
rwtTask[tTask.nTaskId30]["NextTaskId"] = tTask.nTaskId31
rwtTask[tTask.nTaskId30]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId30]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId30]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId30]["DialogId"] = tDialog.Npc_5_MoNiye
rwtTask[tTask.nTaskId30]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId30]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId30]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId30]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nTaskId30]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId30]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId30]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MoNiye
rwtTask[tTask.nTaskId30]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId30]["Awards"] = {}
rwtTask[tTask.nTaskId30]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId30]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.MoNiye2
rwtTask[tTask.nTaskId30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId30
--
rwtTask[tTask.nTaskId31] = {}
rwtTask[tTask.nTaskId31]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId31]
rwtTask[tTask.nTaskId31]["PreTaskId"] = tTask.nTaskId30
rwtTask[tTask.nTaskId31]["NextTaskId"] = tTask.nTaskId32
rwtTask[tTask.nTaskId31]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId31]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId31]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId31]["DialogId"] = tDialog.Npc_6_MoNiye
rwtTask[tTask.nTaskId31]["AcceptDialogId"] = tDialog.Npc_6_MoNiye
rwtTask[tTask.nTaskId31]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId31]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId31]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId31]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--
rwtTask[tTask.nTaskId32] = {}
rwtTask[tTask.nTaskId32]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId32]
rwtTask[tTask.nTaskId32]["PreTaskId"] = tTask.nTaskId31
rwtTask[tTask.nTaskId32]["NextTaskId"] = tTask.nTaskId33
rwtTask[tTask.nTaskId32]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId32]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId32]["KillMonsterGroup1"] = tMonster.Group_LieFu
rwtTask[tTask.nTaskId32]["MonsterGroupGenId"] = tGenId.Mon_LieFu
rwtTask[tTask.nTaskId32]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId32]["TaskNpc"] = tNpcRes.Npc_BaiEn
rwtTask[tTask.nTaskId32]["DialogId"] = tDialog.Battle_2_LieFu
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_LieFu
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_MoNiye
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId32]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId32]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId32]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId32]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId32]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_BaiEn
rwtTask[tTask.nTaskId32]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_BaiEn
--
rwtTask[tTask.nTaskId33] = {}
rwtTask[tTask.nTaskId33]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId33]
rwtTask[tTask.nTaskId33]["PreTaskId"] = tTask.nTaskId32
rwtTask[tTask.nTaskId33]["NextTaskId"] = tTask.nTaskId34
rwtTask[tTask.nTaskId33]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId33]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId33]["TaskNpc"] = tNpcRes.Npc_BaiEn
rwtTask[tTask.nTaskId33]["DialogId"] = tDialog.Npc_BaiEn
rwtTask[tTask.nTaskId33]["AcceptDialogId"] = tDialog.Npc_BaiEn
rwtTask[tTask.nTaskId33]["Awards"] = {}
rwtTask[tTask.nTaskId33]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId33]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId33]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId33]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId33]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.BaiEn
rwtTask[tTask.nTaskId33]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId33]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId33
--
rwtTask[tTask.nTaskId34] = {}
rwtTask[tTask.nTaskId34]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId34]
rwtTask[tTask.nTaskId34]["PreTaskId"] = tTask.nTaskId33
rwtTask[tTask.nTaskId34]["NextTaskId"] = tTask.nTaskId35
rwtTask[tTask.nTaskId34]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId34]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nTaskId34]["ReqTrap1"] = tNpcGroup.Trap_DuiCe
rwtTask[tTask.nTaskId34]["DialogId"] = tDialog.Trap_DuiCe
rwtTask[tTask.nTaskId34]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId34]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId34]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_DuiCe
rwtTask[tTask.nTaskId34]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId34]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId34]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nTaskId34]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId34]["StartAutoWay"]["FindWayPos"] = tPos.Trap_DuiCe
--
rwtTask[tTask.nTaskId35] = {}
rwtTask[tTask.nTaskId35]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId35]
rwtTask[tTask.nTaskId35]["PreTaskId"] = tTask.nTaskId34
rwtTask[tTask.nTaskId35]["NextTaskId"] = tTask.nTaskId36
rwtTask[tTask.nTaskId35]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId35]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId35]["KillMonsterGroup1"] = tMonster.Group_MoNiye
rwtTask[tTask.nTaskId35]["MonsterGroupGenId"] = tGenId.Mon_MoNiye
rwtTask[tTask.nTaskId35]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId35]["TaskNpc"] = tNpcRes.Npc_MoNiye
rwtTask[tTask.nTaskId35]["DialogId"] = tDialog.Battle_4_XJZ
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_MoNiye
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_2_MoNiye
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId35]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId35]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId35]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId35]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId35]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MoNiye
rwtTask[tTask.nTaskId35]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_2_MoNiye
--
rwtTask[tTask.nTaskId36] = {}
rwtTask[tTask.nTaskId36]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId36]
rwtTask[tTask.nTaskId36]["PreTaskId"] = tTask.nTaskId35
rwtTask[tTask.nTaskId36]["NextTaskId"] = tTask.nTaskId37
rwtTask[tTask.nTaskId36]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId36]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nTaskId36]["DialogId"] = tDialog.Talk_TiLi
rwtTask[tTask.nTaskId36]["AcceptDialogId"] = tDialog.Talk_TiLi
--
--[对白后接入场景动画]
rwtTask[tTask.nTaskId37] = {}
rwtTask[tTask.nTaskId37]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId37]
rwtTask[tTask.nTaskId37]["PreTaskId"] = tTask.nTaskId36
rwtTask[tTask.nTaskId37]["NextTaskId"] = tTask.nTaskId39
rwtTask[tTask.nTaskId37]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId37]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId37]["TaskNpc"] = tNpcRes.Npc_MiNaDa
rwtTask[tTask.nTaskId37]["DialogId"] = tDialog.Npc_MiNaDa
rwtTask[tTask.nTaskId37]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId37]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId37]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_MiNaDa
rwtTask[tTask.nTaskId37]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId37]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId37]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId37]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId37]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId37]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiNaDa
rwtTask[tTask.nTaskId37]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_MiNaDa
rwtTask[tTask.nTaskId37]["Awards"] = {}
rwtTask[tTask.nTaskId37]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId37]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId37]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId37]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId37]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.TalkEnd
rwtTask[tTask.nTaskId37]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId37]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId37
--
--[[
--[通关副本 暂为点面板提示]
rwtTask[tTask.nTaskId38] = {}
rwtTask[tTask.nTaskId38]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId38]
rwtTask[tTask.nTaskId38]["PreTaskId"] = tTask.nTaskId37
rwtTask[tTask.nTaskId38]["NextTaskId"] = tTask.nTaskId39
rwtTask[tTask.nTaskId38]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId38]["IsClickComplete"] = 1
rwtTask[tTask.nTaskId38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nTaskId38]["DialogId"] = tDialog.Talk_CopyMap
--rwtTask[tTask.nTaskId38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
--rwtTask[tTask.nTaskId38]["PassCopyMap1"] = {}
--rwtTask[tTask.nTaskId38]["PassCopyMapCount1"] = 1
--rwtTask[tTask.nTaskId38]["OpenCopyMap"] = 
--rwtTask[tTask.nTaskId38]["UnlockCopyMap1"] = 
rwtTask[tTask.nTaskId38]["Awards"] = {}
rwtTask[tTask.nTaskId38]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId38]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId38]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId38]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId38]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.CopyMap
rwtTask[tTask.nTaskId38]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId38]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId36
--]]
--
rwtTask[tTask.nTaskId39] = {}
rwtTask[tTask.nTaskId39]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId39]
rwtTask[tTask.nTaskId39]["PreTaskId"] = tTask.nTaskId37
rwtTask[tTask.nTaskId39]["NextTaskId"] = tTask.nTaskId40
rwtTask[tTask.nTaskId39]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId39]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId39]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nTaskId39]["DialogId"] = tDialog.Talk_BackJD
rwtTask[tTask.nTaskId39]["AcceptDialogId"] = tDialog.Talk_BackJD
--
--[护送]
rwtTask[tTask.nTaskId40] = {}
rwtTask[tTask.nTaskId40]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId40]
rwtTask[tTask.nTaskId40]["PreTaskId"] = tTask.nTaskId39
rwtTask[tTask.nTaskId40]["NextTaskId"] = tTask.nTaskId50
rwtTask[tTask.nTaskId40]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId40]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId40]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tTask.nTaskId40]["TaskNpc"] = tNpcRes.Npc_BaiEn
rwtTask[tTask.nTaskId40]["DialogId"] = tDialog.Npc_2_BaiEn
rwtTask[tTask.nTaskId40]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId40]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId40]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId40]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_BaiEn
rwtTask[tTask.nTaskId40]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_BaiEn
rwtTask[tTask.nTaskId40]["Awards"] = {}
rwtTask[tTask.nTaskId40]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId40]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId40]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId40]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId40]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.BaiEn2
rwtTask[tTask.nTaskId40]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId40]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId40
--
--[[ 暂时屏蔽（后续改成支线）
--
rwtTask[tTask.nTaskId41] = {}
rwtTask[tTask.nTaskId41]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId41]
rwtTask[tTask.nTaskId41]["PreTaskId"] = 
rwtTask[tTask.nTaskId41]["NextTaskId"] = tTask.nTaskId42
rwtTask[tTask.nTaskId41]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId41]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId41]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId41]["TaskNpc"] = tNpcRes.Npc_MiNaDa
rwtTask[tTask.nTaskId41]["DialogId"] = tDialog.Npc_2_MiNaDa
rwtTask[tTask.nTaskId41]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId41]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId41]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_2_MiNaDa
rwtTask[tTask.nTaskId41]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId41]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId41]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId41]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId41]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId41]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiNaDa
rwtTask[tTask.nTaskId41]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_2_MiNaDa
rwtTask[tTask.nTaskId41]["Awards"] = {}
rwtTask[tTask.nTaskId41]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId41]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId41]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId41]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId41]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.MiNaDa
rwtTask[tTask.nTaskId41]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId41]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId41
--
--[护送]
rwtTask[tTask.nTaskId42] = {}
rwtTask[tTask.nTaskId42]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId42]
rwtTask[tTask.nTaskId42]["PreTaskId"] = tTask.nTaskId41
rwtTask[tTask.nTaskId42]["NextTaskId"] = tTask.nTaskId43
rwtTask[tTask.nTaskId42]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId42]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId42]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tTask.nTaskId42]["TaskNpc"] = tNpcRes.Npc_MiNaDa
rwtTask[tTask.nTaskId42]["DialogId"] = tDialog.Npc_3_MiNaDa
rwtTask[tTask.nTaskId42]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId42]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId42]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTask.nTaskId42]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiNaDa
rwtTask[tTask.nTaskId42]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_3_MiNaDa
--
rwtTask[tTask.nTaskId43] = {}
rwtTask[tTask.nTaskId43]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId43]
rwtTask[tTask.nTaskId43]["PreTaskId"] = tTask.nTaskId42
rwtTask[tTask.nTaskId43]["NextTaskId"] = tTask.nTaskId44
rwtTask[tTask.nTaskId43]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId43]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId43]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nTaskId43]["DialogId"] = tDialog.Talk_Relax
rwtTask[tTask.nTaskId43]["AcceptDialogId"] = tDialog.Talk_Relax
--
rwtTask[tTask.nTaskId44] = {}
rwtTask[tTask.nTaskId44]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId44]
rwtTask[tTask.nTaskId44]["PreTaskId"] = tTask.nTaskId43
rwtTask[tTask.nTaskId44]["NextTaskId"] = tTask.nTaskId45
rwtTask[tTask.nTaskId44]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId44]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId44]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN 
rwtTask[tTask.nTaskId44]["TaskFinishTime"] = 60 
--
rwtTask[tTask.nTaskId45] = {}
rwtTask[tTask.nTaskId45]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId45]
rwtTask[tTask.nTaskId45]["PreTaskId"] = tTask.nTaskId44
rwtTask[tTask.nTaskId45]["NextTaskId"] = tTask.nTaskId46
rwtTask[tTask.nTaskId45]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId45]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId45]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId45]["TaskNpc"] = tNpcRes.Npc_MiNaDa
rwtTask[tTask.nTaskId45]["DialogId"] = tDialog.Npc_4_MiNaDa
rwtTask[tTask.nTaskId45]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId45]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId45]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTask.nTaskId45]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiNaDa
rwtTask[tTask.nTaskId45]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_3_MiNaDa
--
--[护送]
rwtTask[tTask.nTaskId46] = {}
rwtTask[tTask.nTaskId46]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId46]
rwtTask[tTask.nTaskId46]["PreTaskId"] = tTask.nTaskId45
rwtTask[tTask.nTaskId46]["NextTaskId"] = tTask.nTaskId47
rwtTask[tTask.nTaskId46]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId46]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId46]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tTask.nTaskId46]["TaskNpc"] = tNpcRes.Npc_BaiEn
rwtTask[tTask.nTaskId46]["DialogId"] = tDialog.Npc_3_BaiEn
rwtTask[tTask.nTaskId46]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId46]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId46]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId46]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_BaiEn
rwtTask[tTask.nTaskId46]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_BaiEn
--
--
rwtTask[tTask.nTaskId47] = {}
rwtTask[tTask.nTaskId47]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId47]
rwtTask[tTask.nTaskId47]["PreTaskId"] = tTask.nTaskId46
rwtTask[tTask.nTaskId47]["NextTaskId"] = tTask.nTaskId48
rwtTask[tTask.nTaskId47]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId47]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId47]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId47]["TaskNpc"] = tNpcRes.Npc_AnDong
rwtTask[tTask.nTaskId47]["DialogId"] = tDialog.Npc_AnDong
rwtTask[tTask.nTaskId47]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId47]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId47]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId47]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_AnDong
rwtTask[tTask.nTaskId47]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_AnDong
--
--
rwtTask[tTask.nTaskId48] = {}
rwtTask[tTask.nTaskId48]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId48]
rwtTask[tTask.nTaskId48]["PreTaskId"] = tTask.nTaskId47
rwtTask[tTask.nTaskId48]["NextTaskId"] = tTask.nTaskId49
rwtTask[tTask.nTaskId48]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId48]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId48]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId48]["TaskNpc"] = tNpcRes.Npc_YiWan
rwtTask[tTask.nTaskId48]["DialogId"] = tDialog.Npc_4_YiWan
rwtTask[tTask.nTaskId48]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId48]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId48]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId48]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_YiWan
rwtTask[tTask.nTaskId48]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_YiWan
--
rwtTask[tTask.nTaskId49] = {}
rwtTask[tTask.nTaskId49]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId49]
rwtTask[tTask.nTaskId49]["PreTaskId"] = tTask.nTaskId48
rwtTask[tTask.nTaskId49]["NextTaskId"] = 
rwtTask[tTask.nTaskId49]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId49]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId49]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nTaskId49]["KillMonsterGroup1"] = tMonster.Group_NYCH
rwtTask[tTask.nTaskId49]["MonsterGroupGenId"] = tGenId.Mon_NYCH
rwtTask[tTask.nTaskId49]["KillMonsterGroupCount1"] = 1
rwtTask[tTask.nTaskId49]["ReqTrap1"] = tNpcGroup.Trap_KillNYCH
rwtTask[tTask.nTaskId49]["DialogId"] = tDialog.Battle_NYCH
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Mon_NYCH
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_KillNYCH
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tTask.nTaskId49]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId49]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId49]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nTaskId49]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId49]["StartAutoWay"]["FindWayPos"] = tPos.Trap_KillNYCH
rwtTask[tTask.nTaskId49]["Awards"] = {}
rwtTask[tTask.nTaskId49]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId49]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId49]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId49]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId49]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.NaYa
rwtTask[tTask.nTaskId49]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId49]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId49
--]]
--
rwtTask[tTask.nTaskId50] = {}
rwtTask[tTask.nTaskId50]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId50]
rwtTask[tTask.nTaskId50]["PreTaskId"] = tTask.nTaskId40
rwtTask[tTask.nTaskId50]["NextTaskId"] = tTask.nTaskId51
rwtTask[tTask.nTaskId50]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId50]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId50]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId50]["TaskNpc"] = tNpcRes.Npc_MiNaDa
rwtTask[tTask.nTaskId50]["DialogId"] = tDialog.Npc_5_MiNaDa
rwtTask[tTask.nTaskId50]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId50]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId50]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_2_MiNaDa
rwtTask[tTask.nTaskId50]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId50]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId50]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId50]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId50]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId50]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_MiNaDa
rwtTask[tTask.nTaskId50]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_2_MiNaDa
--

--[[
rwtTask[tTask.nTaskId50_Add1] = {}
rwtTask[tTask.nTaskId50_Add1]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId50_Add1]
rwtTask[tTask.nTaskId50_Add1]["PreTaskId"] = tTask.nTaskId50
rwtTask[tTask.nTaskId50_Add1]["NextTaskId"] = tTask.nTaskId51
rwtTask[tTask.nTaskId50_Add1]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId50_Add1]["IsClickComplete"] = 1
rwtTask[tTask.nTaskId50_Add1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tTask.nTaskId50_Add1]["NeedLevel"] = 53
--rwtTask[tTask.nTaskId50_Add1]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10170]
rwtTask[tTask.nTaskId50_Add1]["LackDialogId"] = 12108
--]]

--
rwtTask[tTask.nTaskId51] = {}
rwtTask[tTask.nTaskId51]["Title"] = tLuaText[LANGUAGE_CONFIG][tText.nTaskTextId51]
rwtTask[tTask.nTaskId51]["PreTaskId"] = tTask.nTaskId50
rwtTask[tTask.nTaskId51]["NextTaskId"] = tTask.nNextTask
rwtTask[tTask.nTaskId51]["TaskType"] = CONST_TASK_TYPE.MAIN
rwtTask[tTask.nTaskId51]["IsClickComplete"] = 0
rwtTask[tTask.nTaskId51]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nTaskId51]["TaskNpc"] = tNpcRes.Npc_GaiYin
--rwtTask[tTask.nTaskId51]["AcceptDialogId"] = 12109
rwtTask[tTask.nTaskId51]["DialogId"] = tDialog.Npc_GaiYin
rwtTask[tTask.nTaskId51]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nTaskId51]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nTaskId51]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Npc_GaiYin
rwtTask[tTask.nTaskId51]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTask.nTaskId51]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nTaskId51]["StartAutoWay"] = {}
rwtTask[tTask.nTaskId51]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nTaskId51]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTask.nTaskId51]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Npc_GaiYin
rwtTask[tTask.nTaskId51]["StartAutoWay"]["FindWayGenId"] = tGenId.Npc_GaiYin
rwtTask[tTask.nTaskId51]["Awards"] = {}
rwtTask[tTask.nTaskId51]["Awards"]["Events"] = {}
rwtTask[tTask.nTaskId51]["Awards"]["Events"][1] = {}
rwtTask[tTask.nTaskId51]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nTaskId51]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nTaskId51]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.GaiYin
rwtTask[tTask.nTaskId51]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nTaskId51]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nTaskId51
rwtTask[tTask.nTaskId51]["OpenMercenaryTask"] = {}
rwtTask[tTask.nTaskId51]["OpenMercenaryTask"]["AreaId"] = 2005
rwtTask[tTask.nTaskId51]["OpenMercenaryTask"]["TownId"] = 200504
