--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--endregion

local nMapId = 1000
--local nMapId_LeiMing = 2001

local tQuickSend_KaNuoSa = {}
tQuickSend_KaNuoSa.Normal_1 = 90067
tQuickSend_KaNuoSa.Normal_2 = 90068
tQuickSend_KaNuoSa.Normal_3 = 90069
tQuickSend_KaNuoSa.Normal_4 = 90070
tQuickSend_KaNuoSa.Normal_5 = 90071
tQuickSend_KaNuoSa.Normal_6 = 90072
tQuickSend_KaNuoSa.Normal_7 = 90073
tQuickSend_KaNuoSa.Normal_8 = 90074
tQuickSend_KaNuoSa.Normal_9 = 90075
tQuickSend_KaNuoSa.Normal_10 = 90076
tQuickSend_KaNuoSa.Normal_11 = 90088
tQuickSend_KaNuoSa.Option_1 = 90077
tQuickSend_KaNuoSa.Option_1_1_1 = 90078
tQuickSend_KaNuoSa.Option_1_2_1 = 90080
tQuickSend_KaNuoSa.Option_3 = 90085
tQuickSend_KaNuoSa.Option_3_1_1 = 90086
tQuickSend_KaNuoSa.Option_3_2_1 = 90087
tQuickSend_KaNuoSa.Option_4 = 90118
tQuickSend_KaNuoSa.Option_4_1_1 = 90119
tQuickSend_KaNuoSa.Option_4_2_1 = 90120

--tQuickSend_KaNuoSa.Option_1_1_2 = 90079
--tQuickSend_KaNuoSa.Option_1_2_2 = 90081
--tQuickSend_KaNuoSa.Option_2 = 90082
--tQuickSend_KaNuoSa.Option_2_1_1 = 90083
--tQuickSend_KaNuoSa.Option_2_1_2 = 90090
--tQuickSend_KaNuoSa.Option_2_2_1 = 90084
--tQuickSend_KaNuoSa.Option_2_2_2 = 90091
--tQuickSend_KaNuoSa.Option_3_1_2 = 90092

local tNpc = {}
tNpc.FuLin = 3199
tNpc.TiQinLi = 3195
tNpc.Jennifer = 3201
tNpc.MaiKen = 3269
tNpc.GuiXiaoDou = 3365
tNpc.Aoge = 3211
tNpc.SaDun = 3218
tNpc.XiaoYuan = 3219
tNpc.KaiSeLin = 3355
tNpc.ShuErDuo = 3228
tNpc.TaiLei = 102
tNpc.GuiXianZhi = 3366
tNpc.GuiZuXiaoHei = 3777
tNpc.DaChuXiaoLi = 3778
tNpc.ZonguanMiao = 3774
tNpc.MoSheng = 3814
tNpc.TouTiao = 3182

rwtNpc[tNpc.DaChuXiaoLi] = rwtNpc[tNpc.DaChuXiaoLi] or {}
rwtNpc[tNpc.MoSheng] = rwtNpc[tNpc.MoSheng] or {}


local tNpcGroup = {}
tNpcGroup.FuLin = 20240
tNpcGroup.TiQinLi = 20236
tNpcGroup.Jennifer = 20229
tNpcGroup.MaiKen = 20150
tNpcGroup.GuiXiaoDou = 20390
tNpcGroup.Aoge = 20253
tNpcGroup.SaDun = 20260
tNpcGroup.XiaoYuan = 20261
tNpcGroup.KaiSeLin = 20380
tNpcGroup.ShuErDuo = 20270
tNpcGroup.TaiLei = 20227
tNpcGroup.GuiXianZhi = 20391
tNpcGroup.TrapXiaoHei = 30639
tNpcGroup.DaChuXiaoLi = 20746
tNpcGroup.ZonguanMiao= 20874
tNpcGroup.TrapMoSheng = 30656
tNpcGroup.TrapDuoBi = 30657
tNpcGroup.NpcMoSheng = 20945
tNpcGroup.TouTiao = 20219

local tCollect = {}
tCollect.Collect_1 = 60382
tCollect.Collect_2 = 60383
tCollect.Collect_3 = 60384

rwtNpcGroup[tCollect.Collect_1] = rwtNpcGroup[tCollect.Collect_1] or {}    
rwtNpcGroup[tCollect.Collect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Collect_2] = rwtNpcGroup[tCollect.Collect_2] or {}    
rwtNpcGroup[tCollect.Collect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Collect_3] = rwtNpcGroup[tCollect.Collect_3] or {}    
rwtNpcGroup[tCollect.Collect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[tNpcGroup.TrapXiaoHei] = rwtNpcGroup[tNpcGroup.TrapXiaoHei] or {}    
rwtNpcGroup[tNpcGroup.TrapXiaoHei]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.TrapMoSheng] = rwtNpcGroup[tNpcGroup.TrapMoSheng] or {}    
rwtNpcGroup[tNpcGroup.TrapMoSheng]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.TrapDuoBi] = rwtNpcGroup[tNpcGroup.TrapDuoBi] or {}    
rwtNpcGroup[tNpcGroup.TrapDuoBi]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.DaChuXiaoLi] = rwtNpcGroup[tNpcGroup.DaChuXiaoLi] or {}    
rwtNpcGroup[tNpcGroup.DaChuXiaoLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.DaChuXiaoLi]["NpcId"]= tNpc.DaChuXiaoLi

rwtNpcGroup[tNpcGroup.NpcMoSheng] = rwtNpcGroup[tNpcGroup.NpcMoSheng] or {}    
rwtNpcGroup[tNpcGroup.NpcMoSheng]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.NpcMoSheng]["NpcId"]= tNpc.MoSheng

local nMonster_Group = 900529
local nMonster = 1000908

local tGenId = {}
tGenId.FuLin = 1000062
tGenId.TiQinLi = 1000055
tGenId.Jennifer = 1000048
tGenId.MaiKen = 1000016
tGenId.GuiXiaoDou = 1000120
tGenId.Aoge = 1000075
tGenId.SaDun = 1000082
tGenId.XiaoYuan = 1000083
tGenId.KaiSeLin = 1000110
tGenId.ShuErDuo = 1000092
tGenId.TaiLei = 1000046
tGenId.GuiXianZhi = 1000121
tGenId.Zonguan = 1000183
tGenId.GuYuan = 1000184
tGenId.JiQiRen = 1000185
tGenId.Collect_1 = 1000186
tGenId.Collect_2 = 1000187
tGenId.Collect_3 = 1000188
tGenId.Monster = 1000189
tGenId.TrapXiaoHei = 1000190
tGenId.DaChuXiaoLi = 1000191
tGenId.TrapMoSheng = 1000197
tGenId.TrapDuoBi = 1000198
tGenId.NpcMoSheng = 1000199
tGenId.TouTiao = 1001010

local tPos = {}
tPos.TrapXiaoHei = "9.82,24.39,106.32"
tPos.TrapMoSheng = "30.09,22.69,112.30"
tPos.TrapDuoBi = "23.24,22.69,117.76"

local tDialog = {}
tDialog.Normal_1_1 = 12454
tDialog.Normal_1_2 = 12455
tDialog.Normal_2_1 = 12456
tDialog.Normal_2_2 = 12457
tDialog.Normal_3_1 = 12458
tDialog.Normal_3_2 = 12459
tDialog.Normal_4_1 = 12460
tDialog.Normal_4_2 = 12461
tDialog.Normal_5_1 = 12462
tDialog.Normal_5_2 = 12463
tDialog.Normal_6_1 = 12464
tDialog.Normal_6_2 = 12465
tDialog.Normal_7_1 = 12466
tDialog.Normal_7_2 = 12467
tDialog.Normal_8_1 = 12468
tDialog.Normal_8_2 = 12469
tDialog.Normal_9_1 = 12470
tDialog.Normal_9_2 = 12471
tDialog.Normal_10_1 = 12472
tDialog.Normal_10_2 = 12473
tDialog.Normal_11_1 = 12717
tDialog.Normal_11_2 = 12718
--tDialog.Option_1 = 12474
--tDialog.Option_1_1_1 = 12475
--tDialog.Option_1_2_1 = 12478
--tDialog.Option_3 = 12487
--tDialog.Option_3_1_1 = 12488
--tDialog.Option_3_2_1 = 12490
--tDialog.Option_4 = 12651
--tDialog.Option_4_1_1 = 12652
--tDialog.Option_4_2_1 = 12653

--tDialog.Option_1_1_2 = 12476
--tDialog.Option_1_1_3 = 12477
--tDialog.Option_1_2_2 = 12479
--tDialog.Option_1_2_3 = 12480
--tDialog.Option_2 = 12481
--tDialog.Option_2_1_1 = 12482
--tDialog.Option_2_1_2 = 12483
--tDialog.Option_2_1_3 = 12484
--tDialog.Option_2_2_1 = 12485
--tDialog.Option_2_2_2 = 12486
--tDialog.Option_3_1_2 = 12489
--tDialog.Option_3_2_2 = 12491

rwtTask[tQuickSend_KaNuoSa.Normal_1] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_1]["TaskNpc"] = tNpc.FuLin
--rwtTask[tQuickSend_KaNuoSa.Normal_1]["isPreOption"] = 1
--rwtTask[tQuickSend_KaNuoSa.Normal_1]["NextOptionTask"] = tQuickSend_KaNuoSa.Option_1
rwtTask[tQuickSend_KaNuoSa.Normal_1]["AcceptDialogId"] = tDialog.Normal_1_1
rwtTask[tQuickSend_KaNuoSa.Normal_1]["DialogId"] = tDialog.Normal_1_2
rwtTask[tQuickSend_KaNuoSa.Normal_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_1]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.FuLin
rwtTask[tQuickSend_KaNuoSa.Normal_1]["StartAutoWay"]["FindWayGenId"] = tGenId.FuLin

rwtTask[tQuickSend_KaNuoSa.Normal_2] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_2]["TaskNpc"] = tNpc.TiQinLi
--rwtTask[tQuickSend_KaNuoSa.Normal_2]["isPreOption"] = 1
--rwtTask[tQuickSend_KaNuoSa.Normal_2]["NextOptionTask"] = tQuickSend_KaNuoSa.Option_4
rwtTask[tQuickSend_KaNuoSa.Normal_2]["AcceptDialogId"] = tDialog.Normal_2_1
rwtTask[tQuickSend_KaNuoSa.Normal_2]["DialogId"] = tDialog.Normal_2_2
rwtTask[tQuickSend_KaNuoSa.Normal_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_2]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.TiQinLi
rwtTask[tQuickSend_KaNuoSa.Normal_2]["StartAutoWay"]["FindWayGenId"] = tGenId.TiQinLi

rwtTask[tQuickSend_KaNuoSa.Normal_3] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_3]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_3]["TaskNpc"] = tNpc.Jennifer 
rwtTask[tQuickSend_KaNuoSa.Normal_3]["AcceptDialogId"] = tDialog.Normal_3_1
rwtTask[tQuickSend_KaNuoSa.Normal_3]["DialogId"] = tDialog.Normal_3_2
rwtTask[tQuickSend_KaNuoSa.Normal_3]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_3]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Jennifer 
rwtTask[tQuickSend_KaNuoSa.Normal_3]["StartAutoWay"]["FindWayGenId"] = tGenId.Jennifer 

rwtTask[tQuickSend_KaNuoSa.Normal_4] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_4]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_4]["TaskNpc"] = tNpc.MaiKen  
rwtTask[tQuickSend_KaNuoSa.Normal_4]["AcceptDialogId"] = tDialog.Normal_4_1
rwtTask[tQuickSend_KaNuoSa.Normal_4]["DialogId"] = tDialog.Normal_4_2
rwtTask[tQuickSend_KaNuoSa.Normal_4]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_4]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.MaiKen  
rwtTask[tQuickSend_KaNuoSa.Normal_4]["StartAutoWay"]["FindWayGenId"] = tGenId.MaiKen  

rwtTask[tQuickSend_KaNuoSa.Normal_5] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_5]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_5]["TaskNpc"] = tNpc.GuiXiaoDou   
rwtTask[tQuickSend_KaNuoSa.Normal_5]["AcceptDialogId"] = tDialog.Normal_5_1
rwtTask[tQuickSend_KaNuoSa.Normal_5]["DialogId"] = tDialog.Normal_5_2
rwtTask[tQuickSend_KaNuoSa.Normal_5]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_5]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.GuiXiaoDou   
rwtTask[tQuickSend_KaNuoSa.Normal_5]["StartAutoWay"]["FindWayGenId"] = tGenId.GuiXiaoDou   

rwtTask[tQuickSend_KaNuoSa.Normal_6] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_6]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tQuickSend_KaNuoSa.Normal_6]["ReqTrap1"] = tNpcGroup.TrapXiaoHei  
rwtTask[tQuickSend_KaNuoSa.Normal_6]["AcceptDialogId"] = tDialog.Normal_6_1
rwtTask[tQuickSend_KaNuoSa.Normal_6]["DialogId"] = tDialog.Normal_6_2
rwtTask[tQuickSend_KaNuoSa.Normal_6]["DynaNpcGroupGen"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_6]["DynaNpcGroupGen"][1]["GenId"] = tGenId.TrapXiaoHei
rwtTask[tQuickSend_KaNuoSa.Normal_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tQuickSend_KaNuoSa.Normal_6]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_6]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_6]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tQuickSend_KaNuoSa.Normal_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_6]["StartAutoWay"]["FindWayPos"] = tPos.TrapXiaoHei    
  

rwtTask[tQuickSend_KaNuoSa.Normal_7] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_7]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_7]["TaskNpc"] = tNpc.DaChuXiaoLi     
rwtTask[tQuickSend_KaNuoSa.Normal_7]["AcceptDialogId"] = tDialog.Normal_7_1
rwtTask[tQuickSend_KaNuoSa.Normal_7]["DialogId"] = tDialog.Normal_7_2
rwtTask[tQuickSend_KaNuoSa.Normal_7]["DynaNpcGroupGen"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_7]["DynaNpcGroupGen"][1]["GenId"] = tGenId.DaChuXiaoLi
rwtTask[tQuickSend_KaNuoSa.Normal_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tQuickSend_KaNuoSa.Normal_7]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_7]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_7]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.DaChuXiaoLi     
rwtTask[tQuickSend_KaNuoSa.Normal_7]["StartAutoWay"]["FindWayGenId"] = tGenId.DaChuXiaoLi    

rwtTask[tQuickSend_KaNuoSa.Normal_8] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_8]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_8]["TaskNpc"] = tNpc.XiaoYuan      
rwtTask[tQuickSend_KaNuoSa.Normal_8]["AcceptDialogId"] = tDialog.Normal_8_1
rwtTask[tQuickSend_KaNuoSa.Normal_8]["DialogId"] = tDialog.Normal_8_2
rwtTask[tQuickSend_KaNuoSa.Normal_8]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_8]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_8]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.XiaoYuan      
rwtTask[tQuickSend_KaNuoSa.Normal_8]["StartAutoWay"]["FindWayGenId"] = tGenId.XiaoYuan      

rwtTask[tQuickSend_KaNuoSa.Normal_9] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_9]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_9]["TaskNpc"] = tNpc.KaiSeLin       
rwtTask[tQuickSend_KaNuoSa.Normal_9]["AcceptDialogId"] = tDialog.Normal_9_1
rwtTask[tQuickSend_KaNuoSa.Normal_9]["DialogId"] = tDialog.Normal_9_2
rwtTask[tQuickSend_KaNuoSa.Normal_9]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_9]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_9]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.KaiSeLin       
rwtTask[tQuickSend_KaNuoSa.Normal_9]["StartAutoWay"]["FindWayGenId"] = tGenId.KaiSeLin       

rwtTask[tQuickSend_KaNuoSa.Normal_10] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_10]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP  
rwtTask[tQuickSend_KaNuoSa.Normal_10]["AcceptDialogId"] = tDialog.Normal_10_1
rwtTask[tQuickSend_KaNuoSa.Normal_10]["DialogId"] = tDialog.Normal_10_2
rwtTask[tQuickSend_KaNuoSa.Normal_10]["ReqTrap1"] = tNpcGroup.TrapMoSheng 
rwtTask[tQuickSend_KaNuoSa.Normal_10]["DynaNpcGroupGen"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_10]["DynaNpcGroupGen"][1]["GenId"] = tGenId.TrapMoSheng
rwtTask[tQuickSend_KaNuoSa.Normal_10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tQuickSend_KaNuoSa.Normal_10]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_10]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_10]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tQuickSend_KaNuoSa.Normal_10]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_10]["StartAutoWay"]["FindWayPos"] = tPos.TrapMoSheng        

rwtTask[tQuickSend_KaNuoSa.Normal_11] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_11]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
rwtTask[tQuickSend_KaNuoSa.Normal_11]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
rwtTask[tQuickSend_KaNuoSa.Normal_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tQuickSend_KaNuoSa.Normal_11]["TaskNpc"] = tNpc.TouTiao
--rwtTask[tQuickSend_KaNuoSa.Normal_11]["isPreOption"] = 1
--rwtTask[tQuickSend_KaNuoSa.Normal_11]["NextOptionTask"] = tQuickSend_KaNuoSa.Option_3
rwtTask[tQuickSend_KaNuoSa.Normal_11]["AcceptDialogId"] = tDialog.Normal_11_1
rwtTask[tQuickSend_KaNuoSa.Normal_11]["DialogId"] = tDialog.Normal_11_2
rwtTask[tQuickSend_KaNuoSa.Normal_11]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
rwtTask[tQuickSend_KaNuoSa.Normal_11]["StartAutoWay"] = {}
rwtTask[tQuickSend_KaNuoSa.Normal_11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tQuickSend_KaNuoSa.Normal_11]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tQuickSend_KaNuoSa.Normal_11]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.TouTiao
rwtTask[tQuickSend_KaNuoSa.Normal_11]["StartAutoWay"]["FindWayGenId"] = tGenId.TouTiao


--rwtTask[tQuickSend_KaNuoSa.Option_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
--rwtTask[tQuickSend_KaNuoSa.Option_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_1]["isFirstOptionTask"] = 1  --是第一个选项任务 （配了这个的选项任务才会加入任务池）
--rwtTask[tQuickSend_KaNuoSa.Option_1]["TaskNpc"] = tNpc.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1]["DialogId"] = tDialog.Option_1
----rwtTask[tQuickSend_KaNuoSa.Option_1]["AcceptDialogId"] = tDialog.Option_1
--rwtTask[tQuickSend_KaNuoSa.Option_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_1]["OptionTask1"] = tQuickSend_KaNuoSa.Option_1_1_1  --选项1任务
--rwtTask[tQuickSend_KaNuoSa.Option_1]["OptionTask2"] = tQuickSend_KaNuoSa.Option_1_2_1  --选项2任务
--rwtTask[tQuickSend_KaNuoSa.Option_1]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.FuLin       
--rwtTask[tQuickSend_KaNuoSa.Option_1]["StartAutoWay"]["FindWayGenId"] = tGenId.FuLin   

--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["isFinalOptionTask"] = 1 --是选项任务的结束任务
----rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["NextTaskId"] = tQuickSend_KaNuoSa.Option_1_1_2
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["AcceptDialogId"] = tDialog.Option_1_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["TaskNpc"] = tNpc.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["DialogId"] = tDialog.Option_1_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁    

--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["AcceptDialogId"] = tDialog.Option_1_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["TaskNpc"] = tNpc.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["DialogId"] = tDialog.Option_1_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁     

--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["TaskNpc"] = tNpc.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["DialogId"] = tDialog.Option_1_1_3
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1_1_2]["StartAutoWay"]["FindWayGenId"] = tGenId.FuLin      

--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["TaskNpc"] = tNpc.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["DialogId"] = tDialog.Option_1_2_3
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.FuLin        
--rwtTask[tQuickSend_KaNuoSa.Option_1_2_2]["StartAutoWay"]["FindWayGenId"] = tGenId.FuLin      

--rwtTask[tQuickSend_KaNuoSa.Option_2] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
--rwtTask[tQuickSend_KaNuoSa.Option_2]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_2]["isFirstOptionTask"] = 1  --是第一个选项任务 （配了这个的选项任务才会加入任务池）
--rwtTask[tQuickSend_KaNuoSa.Option_2]["ReqTrap1"] = tNpcGroup.TrapXiaoHei        
--rwtTask[tQuickSend_KaNuoSa.Option_2]["DialogId"] = tDialog.Option_2
----rwtTask[tQuickSend_KaNuoSa.Option_2]["AcceptDialogId"] = tDialog.Option_2
--rwtTask[tQuickSend_KaNuoSa.Option_2]["DynaNpcGroupGen"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.TrapXiaoHei
--rwtTask[tQuickSend_KaNuoSa.Option_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tQuickSend_KaNuoSa.Option_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_2]["OptionTask1"] = tQuickSend_KaNuoSa.Option_2_1_1  --选项1任务
--rwtTask[tQuickSend_KaNuoSa.Option_2]["OptionTask2"] = tQuickSend_KaNuoSa.Option_2_2_1  --选项2任务
--rwtTask[tQuickSend_KaNuoSa.Option_2]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tQuickSend_KaNuoSa.Option_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2]["StartAutoWay"]["FindWayPos"] = tPos.TrapXiaoHei    



--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["TaskNpc"] = tNpc.ZonguanMiao        
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["NextTaskId"] = tQuickSend_KaNuoSa.Option_2_1_2
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["AcceptDialogId"] = tDialog.Option_2_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["DialogId"] = tDialog.Option_2_1_2
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.ZonguanMiao        
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_1]["StartAutoWay"]["FindWayGenId"] = tGenId.Zonguan      

--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["ReqTrap1"] = tNpcGroup.TrapXiaoHei     
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["DialogId"] = tDialog.Option_2_1_3
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["DynaNpcGroupGen"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.TrapXiaoHei
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_1_2]["StartAutoWay"]["FindWayPos"] = nPos_XiaoHei        

--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["ReqCollectId1"] = tCollect.Collect_2
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["NextTaskId"] = tQuickSend_KaNuoSa.Option_2_2_2
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["AcceptDialogId"] = tDialog.Option_2_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["DynaNpcGroupGen"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_2
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["StartAutoWay"]["FindWayGroupId"] = tCollect.Collect_2       
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_1]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_2        

--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["ReqTrap1"] = tNpcGroup.TrapXiaoHei  
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["DialogId"] = tDialog.Option_2_2_2
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["DynaNpcGroupGen"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.TrapXiaoHei
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_2_2_2]["StartAutoWay"]["FindWayPos"] = nPos_XiaoHei        

--rwtTask[tQuickSend_KaNuoSa.Option_3] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_3]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
--rwtTask[tQuickSend_KaNuoSa.Option_3]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_3]["isFirstOptionTask"] = 1  --是第一个选项任务 （配了这个的选项任务才会加入任务池）
--rwtTask[tQuickSend_KaNuoSa.Option_3]["TaskNpc"] = tNpc.TouTiao        
--rwtTask[tQuickSend_KaNuoSa.Option_3]["DialogId"] = tDialog.Option_3
----rwtTask[tQuickSend_KaNuoSa.Option_3]["AcceptDialogId"] = tDialog.Option_3
--rwtTask[tQuickSend_KaNuoSa.Option_3]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_3]["ChkCondition"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3]["ChkCondition"][1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3]["ChkCondition"][1]["ChkType"] = CONST_QUICKSEND_JUDGE_TYPE.TASK
--rwtTask[tQuickSend_KaNuoSa.Option_3]["ChkCondition"][1]["TaskId"] = 10187  
--rwtTask[tQuickSend_KaNuoSa.Option_3]["OptionTask1"] = tQuickSend_KaNuoSa.Option_3_1_1  --选项1任务
--rwtTask[tQuickSend_KaNuoSa.Option_3]["OptionTask2"] = tQuickSend_KaNuoSa.Option_3_2_1  --选项2任务
--rwtTask[tQuickSend_KaNuoSa.Option_3]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_3]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.TouTiao       
--rwtTask[tQuickSend_KaNuoSa.Option_3]["StartAutoWay"]["FindWayGenId"] = tGenId.TouTiao   


--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["isOptionTask"] = 1   --是选项系列任务
----rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["NextTaskId"] = tQuickSend_KaNuoSa.Option_3_1_2
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["isFinalOptionTask"] = 1 --是选项任务的结束任务
----rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["ReqCollectId1"] = tCollect.Collect_3
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["TaskNpc"] = tNpc.TouTiao
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["DialogId"] = tDialog.Option_3_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["AcceptDialogId"] = tDialog.Option_3_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁

--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["TaskNpc"] = tNpc.TouTiao
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["DialogId"] = tDialog.Option_3_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["AcceptDialogId"] = tDialog.Option_3_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_3_2_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁

--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["isFinalOptionTask"] = 1 --是选项任务的结束任务
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["DialogId"] = tDialog.Option_3_1_2
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["ReqTrap1"] = tNpcGroup.TrapDuoBi 
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["DynaNpcGroupGen"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.TrapDuoBi
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_3_1_2]["StartAutoWay"]["FindWayPos"] = tPos.TrapDuoBi    
   

        

--rwtTask[tQuickSend_KaNuoSa.Option_4] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_4]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
--rwtTask[tQuickSend_KaNuoSa.Option_4]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_4]["isFirstOptionTask"] = 1  --是第一个选项任务 （配了这个的选项任务才会加入任务池）
--rwtTask[tQuickSend_KaNuoSa.Option_4]["TaskNpc"] = tNpc.TiQinLi        
--rwtTask[tQuickSend_KaNuoSa.Option_4]["DialogId"] = tDialog.Option_4
--rwtTask[tQuickSend_KaNuoSa.Option_4]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
--rwtTask[tQuickSend_KaNuoSa.Option_4]["OptionTask1"] = tQuickSend_KaNuoSa.Option_4_1_1  --选项1任务
--rwtTask[tQuickSend_KaNuoSa.Option_4]["OptionTask2"] = tQuickSend_KaNuoSa.Option_4_2_1  --选项2任务
--rwtTask[tQuickSend_KaNuoSa.Option_4]["StartAutoWay"] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_4]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_4]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tQuickSend_KaNuoSa.Option_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.TiQinLi       
--rwtTask[tQuickSend_KaNuoSa.Option_4]["StartAutoWay"]["FindWayGenId"] = tGenId.TiQinLi   

--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["TaskNpc"] = tNpc.TiQinLi        
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["isFinalOptionTask"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["AcceptDialogId"] = tDialog.Option_4_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["DialogId"] = tDialog.Option_4_1_1
--rwtTask[tQuickSend_KaNuoSa.Option_4_1_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁

--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1] = {}
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21608]
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["TaskType"] = CONST_TASK_TYPE.QUICKSEND
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["isOptionTask"] = 1   --是选项系列任务
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["TaskNpc"] = tNpc.TiQinLi        
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["isFinalOptionTask"] = 1
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["AcceptDialogId"] = tDialog.Option_4_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["DialogId"] = tDialog.Option_4_2_1
--rwtTask[tQuickSend_KaNuoSa.Option_4_2_1]["QuickSendTownId"] = nMapId    --配置为1000时为默认解锁
