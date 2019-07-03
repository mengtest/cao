--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--月神森林巡查任务
--HYT
----******************************************************
--任务 50093 - 50102
--采集 60127
--怪物  9000194 9000195
--gen 20030351 20030352
local nYueShenSenLin1 = 50093
  
  
local nYueShenSenLin1_1 = 50145	--前往执行巡查工作动画1
--和树人首领对话
local nYueShenSenLin2 = 50094
--前往采集月神水晶
local nYueShenSenLin3 = 50095
--返回树人部落
local nYueShenSenLinNew_1 = 50276
--选项1
--场景动画 50285/50286
--鉴定月神水晶
local nYueShenSenLinNew_2 = 50277
--返回树人部落
local nYueShenSenLinNew_3 = 50278
--和树人首领洛克对话
local nYueShenSenLinNew_4 = 50279
--立刻回去查看
local nYueShenSenLinNew_5 = 50280
--返回联盟交接任务
local nYueShenSenLin5 = 50097

--选项2
--返回树人部落
local nYueShenSenLinNew_6 = 50281

local nYueShenSenLin4 = 50096
--和树人首领洛克对话
local nYueShenSenLinNew_7 = 50282
--为树神恢复魔法  忘记配置
local nYueShenSenLinNew_8 = 50285
--返回联盟交接任务
local nYueShenSenLinNew_9 = 50283

local nYueShenSenLin1_2 = 50146	--前往执行巡查工作动画2
--和德鲁伊首领对话
local nYueShenSenLin6 = 50098
--和德鲁伊守卫对话
local nYueShenSenLin7 = 50099
--前往森林寻找偷猎者
local nYueShenSenLin8 = 50100
--救助小树精
local nYueShenSenLinNew_10 = 50284
--回复德鲁伊首领
local nYueShenSenLin9 = 50101
--返回联盟交接任务
local nYueShenSenLin10 = 50102

local nBiDuoMao = 3080

--npc 树人首领
local nNpc1 = 3544
local nNpc_group = 20477
local nNpc_gen = 20030486

rwtNpc[nNpc1] = rwtNpc[nNpc1] or {}

rwtNpcGroup[nNpc_group] = rwtNpcGroup[nNpc_group] or {}  --树人首领
rwtNpcGroup[nNpc_group]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_group]["NpcId"]= nNpc1

--陷阱 30370-30371
local nTrap_1 = 30370
local nTrap_gen_1 = 20030351
local nTrap_2 = 30371
local nTrap_gen_2 = 20030352 
local nTrap_3 = 30490
local nTrap_gen_3 = 20030487 
local nTrap_4 = 30491
local nTrap_gen_4 = 20030488 

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}   
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}   
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}   
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
--对白
local nDialogId1 = 11097   --动画对白1
local nDialogId2 = 11098   --动画对白2
local nDialog_1 = 10990
local nDialog_2 = 10993
local nDialog_3 = 10994
local nDialog_4 = 10996
local nDialog_5 = 10998
local nDialog_6 = 10999
local nDialog_7 = 11000
local nDialog_8 = 11001

local nDialogNew_1 = 11521
local nDialogNew_2 = 11522
local nDialogNew_3 = 11523
local nDialogNew_4 = 11524
local nDialogNew_5 = 11525
local nDialogNew_6 = 11526
local nDialogNew_7 = 11527
local nDialogNew_8 = 11528
local nDialogNew_9 = 11529
local nDialogNew_10 = 11530
local nDialogNew_11 = 11531
local nDialogNew_12 = 11532
local nDialogNew_13 = 11533
local nDialogNew_14 = 11534
local nDialogNew_15 = 11535
local nDialogNew_16 = 11536
local nDialogNew_17 = 11537

--采集
rwtNpcGroup[60127] = rwtNpcGroup[60127] or {}     
rwtNpcGroup[60127]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--鉴定月神水晶
rwtNpcGroup[60285] = rwtNpcGroup[60285] or {}     
rwtNpcGroup[60285]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--恢复魔法
rwtNpcGroup[60271] = rwtNpcGroup[60271] or {}     
rwtNpcGroup[60271]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--小树精
rwtNpcGroup[60272] = rwtNpcGroup[60272] or {}     
rwtNpcGroup[60272]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--怪物 阿噗 9000194
local nMonster_group_Apu = 900290
local nMonster_gen_Apu = 20030354

--森林游侠 9000195/9000196
local nMonster_group_YouXia = 900291
local nMonster_gen_YouXia = 20030355

--新增 阿噗 9000287
local nMonster_group_Apu2 = 900368
local nMonster_gen_Apu2 = 20030491

rwtTask[nYueShenSenLin1] = {}
rwtTask[nYueShenSenLin1]["Title"] = tLuaText[LANGUAGE_CONFIG][20968]
rwtTask[nYueShenSenLin1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[nYueShenSenLin1]["AcceptDialogId"] = nDialog_1
rwtTask[nYueShenSenLin1]["ReqTrap1"] = nTrap_1
rwtTask[nYueShenSenLin1]["PatrolFirstTask"] = 1
rwtTask[nYueShenSenLin1]["PatrolAfterTask"] = {nYueShenSenLin1_1,nYueShenSenLin1_2}
rwtTask[nYueShenSenLin1]["PatrolTaskAreaId"] = 2003
rwtTask[nYueShenSenLin1]["PatrolTaskTownId"] = 200303  
rwtTask[nYueShenSenLin1]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLin1]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLin1]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_1
rwtTask[nYueShenSenLin1]["DynaNpcGroupGen"][1]["MapId"] =2003
rwtTask[nYueShenSenLin1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLin1]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin1]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[nYueShenSenLin1]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_1


rwtTask[nYueShenSenLin1_1] = {}
rwtTask[nYueShenSenLin1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20969]
rwtTask[nYueShenSenLin1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nYueShenSenLin1_1]["NextTaskId" ]= nYueShenSenLin2
rwtTask[nYueShenSenLin1_1]["DialogId"] = nDialogId1
rwtTask[nYueShenSenLin1_1]["ReqTrap1" ]= nTrap_1
rwtTask[nYueShenSenLin1_1]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLin1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLin1_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[nYueShenSenLin1_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLin1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLin1_1]["IsClickComplete"] = 0
rwtTask[nYueShenSenLin1_1]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin1_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin1_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[nYueShenSenLin1_1]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_1


--找到镇民拉夫
rwtTask[nYueShenSenLin2] = {}
rwtTask[nYueShenSenLin2]["Title"] = tLuaText[LANGUAGE_CONFIG][20970]
rwtTask[nYueShenSenLin2]["NextTaskId"] = nYueShenSenLin3
rwtTask[nYueShenSenLin2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLin2]["TaskNpc"] = 3150
rwtTask[nYueShenSenLin2]["PatrolCg"] = 3417
rwtTask[nYueShenSenLin2]["DialogId"] = nDialogNew_1
rwtTask[nYueShenSenLin2]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin2]["StartAutoWay"]["FindWayGroupId"] = 20192
rwtTask[nYueShenSenLin2]["StartAutoWay"]["FindWayGenId"] = 20030080

--前往采集月神水晶
rwtTask[nYueShenSenLin3] = {}
rwtTask[nYueShenSenLin3]["Title"] = tLuaText[LANGUAGE_CONFIG][20971]
rwtTask[nYueShenSenLin3]["NextTaskId"] = nYueShenSenLinNew_1
rwtTask[nYueShenSenLin3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nYueShenSenLin3]["ReqCollectId1"] = 60127
rwtTask[nYueShenSenLin3]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLin3]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLin3]["DynaNpcGroupGen"][1]["GenId"] = 20030353
rwtTask[nYueShenSenLin3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLin3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLin3]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin3]["StartAutoWay"]["FindWayGroupId"] = 60127
rwtTask[nYueShenSenLin3]["StartAutoWay"]["FindWayGenId"] = 20030353

--带回月神森林
rwtTask[nYueShenSenLinNew_1] = {}
rwtTask[nYueShenSenLinNew_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21287]
rwtTask[nYueShenSenLinNew_1]["NextTaskId"] = nYueShenSenLinNew_2
rwtTask[nYueShenSenLinNew_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nYueShenSenLinNew_1]["TaskNpc"] = nNpc1
rwtTask[nYueShenSenLinNew_1]["DialogId"] = nDialogNew_2
rwtTask[nYueShenSenLinNew_1]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_1]["DynaNpcGroupGen"][1]["GenId"] = nNpc_gen
rwtTask[nYueShenSenLinNew_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nYueShenSenLinNew_1]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_1]["StartAutoWay"]["FindWayGroupId"] = 20477
rwtTask[nYueShenSenLinNew_1]["StartAutoWay"]["FindWayGenId"] = nNpc_gen
rwtTask[nYueShenSenLinNew_1]["OptionTask1"] = nYueShenSenLinNew_2  --选项1任务
rwtTask[nYueShenSenLinNew_1]["OptionTask2"] = nYueShenSenLinNew_6  --选项2任务


--选项1：
--鉴定月神水晶
rwtTask[nYueShenSenLinNew_2] = {}
rwtTask[nYueShenSenLinNew_2]["Title"] =tLuaText[LANGUAGE_CONFIG][21288]
rwtTask[nYueShenSenLinNew_2]["NextTaskId"] = nYueShenSenLinNew_3
rwtTask[nYueShenSenLinNew_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nYueShenSenLinNew_2]["ReqCollectId1"] = 60285
rwtTask[nYueShenSenLinNew_2]["DialogId"] = nDialogNew_3
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][1]["GenId"] = 20030496
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][2] = {}
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][2]["GenId"] = nNpc_gen
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_2]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_2]["StartAutoWay"]["FindWayGroupId"] = 60285
rwtTask[nYueShenSenLinNew_2]["StartAutoWay"]["FindWayGenId"] = 20030496
--返回树人部落
rwtTask[nYueShenSenLinNew_3] = {}
rwtTask[nYueShenSenLinNew_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21289]
rwtTask[nYueShenSenLinNew_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nYueShenSenLinNew_3]["NextTaskId" ]= nYueShenSenLinNew_4
rwtTask[nYueShenSenLinNew_3]["DialogId"] = nDialogNew_4
rwtTask[nYueShenSenLinNew_3]["ReqTrap1" ]= nTrap_3
rwtTask[nYueShenSenLinNew_3]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_3
rwtTask[nYueShenSenLinNew_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_3]["IsClickComplete"] = 0
rwtTask[nYueShenSenLinNew_3]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[nYueShenSenLinNew_3]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_3
--与树人首领对话
rwtTask[nYueShenSenLinNew_4] = {}
rwtTask[nYueShenSenLinNew_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21290]
rwtTask[nYueShenSenLinNew_4]["NextTaskId"] = nYueShenSenLinNew_5
rwtTask[nYueShenSenLinNew_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLinNew_4]["TaskNpc"] = 3150
rwtTask[nYueShenSenLinNew_4]["DialogId"] = nDialogNew_5
rwtTask[nYueShenSenLinNew_4]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_4]["StartAutoWay"]["FindWayGroupId"] = 20192
rwtTask[nYueShenSenLinNew_4]["StartAutoWay"]["FindWayGenId"] = 20030080
--立即返回原处查看
rwtTask[nYueShenSenLinNew_5] = {}
rwtTask[nYueShenSenLinNew_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21291]
rwtTask[nYueShenSenLinNew_5]["NextTaskId"] = nYueShenSenLin5
rwtTask[nYueShenSenLinNew_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nYueShenSenLinNew_5]["DialogId"] = nDialogNew_6
--rwtTask[nYueShenSenLinNew_5]["TaskNpc"] = 3150
rwtTask[nYueShenSenLinNew_5]["MonsterGroupGenId"] = 20030491
rwtTask[nYueShenSenLinNew_5]["KillMonsterGroup1" ]= nMonster_group_Apu2
rwtTask[nYueShenSenLinNew_5]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_5]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_5]["DynaNpcGroupGen"][1]["GenId"] = 20030491
rwtTask[nYueShenSenLinNew_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_5]["IsClickComplete"] = 0
rwtTask[nYueShenSenLinNew_5]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nYueShenSenLinNew_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_5]["StartAutoWay"]["FindWayGroupId"] = 900368
rwtTask[nYueShenSenLinNew_5]["StartAutoWay"]["FindWayGenId"] = 20030491

--返回联盟交接任务
rwtTask[nYueShenSenLin5] = {}
rwtTask[nYueShenSenLin5]["Title"] = tLuaText[LANGUAGE_CONFIG][20973]
rwtTask[nYueShenSenLin5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLin5]["TaskNpc"] = nBiDuoMao
rwtTask[nYueShenSenLin5]["DialogId"] = nDialogNew_8
rwtTask[nYueShenSenLin5]["PatrolLastTask"] = 1  
rwtTask[nYueShenSenLin5]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin5]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nYueShenSenLin5]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[nYueShenSenLin5]["StartAutoWay"]["FindWayGenId"] = 2001658

--选项2
rwtTask[nYueShenSenLinNew_6] = {}
rwtTask[nYueShenSenLinNew_6]["Title"] =tLuaText[LANGUAGE_CONFIG][21292]
rwtTask[nYueShenSenLinNew_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nYueShenSenLinNew_6]["NextTaskId" ]= nYueShenSenLinNew_7
rwtTask[nYueShenSenLinNew_6]["DialogId"] = nDialogNew_10
rwtTask[nYueShenSenLinNew_6]["AcceptDialogId"] = nDialogNew_9
rwtTask[nYueShenSenLinNew_6]["ReqTrap1" ]= nTrap_4
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_4
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][2] = {}
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][2]["GenId"] = nNpc_gen
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_6]["IsClickComplete"] = 0
rwtTask[nYueShenSenLinNew_6]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_6]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_6]["StartAutoWay"]["FindWayGroupId"] = nTrap_4
rwtTask[nYueShenSenLinNew_6]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_4

rwtTask[nYueShenSenLinNew_7] = {}
rwtTask[nYueShenSenLinNew_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21293]
rwtTask[nYueShenSenLinNew_7]["NextTaskId"] = nYueShenSenLinNew_8
rwtTask[nYueShenSenLinNew_7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nYueShenSenLinNew_7]["DialogId"] = nDialogNew_11
rwtTask[nYueShenSenLinNew_7]["TaskNpc"] = 3150
rwtTask[nYueShenSenLinNew_7]["MonsterGroupGenId"] = nMonster_gen_Apu
rwtTask[nYueShenSenLinNew_7]["KillMonsterGroup1" ]= nMonster_group_Apu
rwtTask[nYueShenSenLinNew_7]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_7]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_7]["DynaNpcGroupGen"][1]["GenId"] = nMonster_gen_Apu
rwtTask[nYueShenSenLinNew_7]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_7]["IsClickComplete"] = 0
rwtTask[nYueShenSenLinNew_7]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_7]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_7]["StartAutoWay"]["FindWayGroupId"] = 20192
rwtTask[nYueShenSenLinNew_7]["StartAutoWay"]["FindWayGenId"] = 20030080

--新增
rwtTask[nYueShenSenLinNew_8] = {}
rwtTask[nYueShenSenLinNew_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21294]
rwtTask[nYueShenSenLinNew_8]["NextTaskId"] = nYueShenSenLinNew_9
rwtTask[nYueShenSenLinNew_8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nYueShenSenLinNew_8]["ReqCollectId1"] = 60271
rwtTask[nYueShenSenLinNew_8]["DialogId"] = nDialogNew_13
rwtTask[nYueShenSenLinNew_8]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_8]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_8]["DynaNpcGroupGen"][1]["GenId"] = 20030489
rwtTask[nYueShenSenLinNew_8]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_8]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_8]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_8]["StartAutoWay"]["FindWayGroupId"] = 60271
rwtTask[nYueShenSenLinNew_8]["StartAutoWay"]["FindWayGenId"] = 20030489

--返回联盟交接任务
rwtTask[nYueShenSenLinNew_9] = {}
rwtTask[nYueShenSenLinNew_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21295]
rwtTask[nYueShenSenLinNew_9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLinNew_9]["TaskNpc"] = nBiDuoMao
rwtTask[nYueShenSenLinNew_9]["DialogId"] = nDialogNew_14
rwtTask[nYueShenSenLinNew_9]["PatrolLastTask"] = 1  
rwtTask[nYueShenSenLinNew_9]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_9]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nYueShenSenLinNew_9]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[nYueShenSenLinNew_9]["StartAutoWay"]["FindWayGenId"] = 2001658

--任务线2
rwtTask[nYueShenSenLin1_2] = {}
rwtTask[nYueShenSenLin1_2]["Title"] =tLuaText[LANGUAGE_CONFIG][20974]
rwtTask[nYueShenSenLin1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nYueShenSenLin1_2]["NextTaskId" ]= nYueShenSenLin6
rwtTask[nYueShenSenLin1_2]["DialogId"] = nDialogId2
rwtTask[nYueShenSenLin1_2]["ReqTrap1" ]= nTrap_1
rwtTask[nYueShenSenLin1_2]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLin1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLin1_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[nYueShenSenLin1_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLin1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLin1_2]["IsClickComplete"] = 0
rwtTask[nYueShenSenLin1_2]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin1_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin1_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[nYueShenSenLin1_2]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_1

--和德鲁伊首领对话
rwtTask[nYueShenSenLin6] = {}
rwtTask[nYueShenSenLin6]["Title"] = tLuaText[LANGUAGE_CONFIG][20975]
rwtTask[nYueShenSenLin6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin6]["NextTaskId"] = nYueShenSenLin7
rwtTask[nYueShenSenLin6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLin6]["TaskNpc"] = 3156
rwtTask[nYueShenSenLin6]["DialogId"] = nDialog_5
rwtTask[nYueShenSenLin6]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin6]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin6]["StartAutoWay"]["FindWayGroupId"] = 20198
rwtTask[nYueShenSenLin6]["StartAutoWay"]["FindWayGenId"] = 20030086

--和德鲁伊守卫对话
rwtTask[nYueShenSenLin7] = {}
rwtTask[nYueShenSenLin7]["Title"] = tLuaText[LANGUAGE_CONFIG][20976]
rwtTask[nYueShenSenLin7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin7]["NextTaskId"] = nYueShenSenLin8
rwtTask[nYueShenSenLin7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLin7]["TaskNpc"] = 3155
rwtTask[nYueShenSenLin7]["DialogId"] = nDialog_6
rwtTask[nYueShenSenLin7]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin7]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin7]["StartAutoWay"]["FindWayGroupId"] = 20197
rwtTask[nYueShenSenLin7]["StartAutoWay"]["FindWayGenId"] = 20030085


--前往森林寻找偷猎者
rwtTask[nYueShenSenLin8] = {}
rwtTask[nYueShenSenLin8]["Title"] = tLuaText[LANGUAGE_CONFIG][20977]
rwtTask[nYueShenSenLin8]["NextTaskId"] = nYueShenSenLinNew_10
rwtTask[nYueShenSenLin8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nYueShenSenLin8]["DialogId"] = nDialog_7
rwtTask[nYueShenSenLin8]["ReqTrap1"] = nTrap_2
rwtTask[nYueShenSenLin8]["MonsterGroupGenId"] = nMonster_gen_YouXia
rwtTask[nYueShenSenLin8]["KillMonsterGroup1" ]= nMonster_group_YouXia
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_2
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][2] = {}
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][2]["GenId"] = nMonster_gen_YouXia
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[nYueShenSenLin8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLin8]["IsClickComplete"] = 0
rwtTask[nYueShenSenLin8]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin8]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin8]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[nYueShenSenLin8]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_2

--救助小树精
rwtTask[nYueShenSenLinNew_10] = {}
rwtTask[nYueShenSenLinNew_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21296]
rwtTask[nYueShenSenLinNew_10]["NextTaskId"] = nYueShenSenLin9
rwtTask[nYueShenSenLinNew_10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLinNew_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nYueShenSenLinNew_10]["ReqCollectId1"] = 60272
rwtTask[nYueShenSenLinNew_10]["DialogId"] = nDialogNew_17
rwtTask[nYueShenSenLinNew_10]["DynaNpcGroupGen"] = {}
rwtTask[nYueShenSenLinNew_10]["DynaNpcGroupGen"][1] = {}
rwtTask[nYueShenSenLinNew_10]["DynaNpcGroupGen"][1]["GenId"] = 20030490
rwtTask[nYueShenSenLinNew_10]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nYueShenSenLinNew_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYueShenSenLinNew_10]["StartAutoWay"] = {}
rwtTask[nYueShenSenLinNew_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLinNew_10]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLinNew_10]["StartAutoWay"]["FindWayGroupId"] = 60272
rwtTask[nYueShenSenLinNew_10]["StartAutoWay"]["FindWayGenId"] = 20030490

rwtTask[nYueShenSenLin9] = {}
rwtTask[nYueShenSenLin9]["Title"] = tLuaText[LANGUAGE_CONFIG][20978]
rwtTask[nYueShenSenLin9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin9]["NextTaskId"] = nYueShenSenLin10
rwtTask[nYueShenSenLin9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLin9]["TaskNpc"] = 3156
rwtTask[nYueShenSenLin9]["DialogId"] = nDialog_8
rwtTask[nYueShenSenLin9]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin9]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nYueShenSenLin9]["StartAutoWay"]["FindWayGroupId"] = 20198
rwtTask[nYueShenSenLin9]["StartAutoWay"]["FindWayGenId"] = 20030086

rwtTask[nYueShenSenLin10] = {}
rwtTask[nYueShenSenLin10]["Title"] = tLuaText[LANGUAGE_CONFIG][20979]
rwtTask[nYueShenSenLin10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nYueShenSenLin10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYueShenSenLin10]["TaskNpc"] = nBiDuoMao
rwtTask[nYueShenSenLin10]["DialogId"] = nDialog_4
rwtTask[nYueShenSenLin10]["PatrolLastTask"] = 1 
--rwtTask[nYueShenSenLin10]["AwardId"] = 2000122
rwtTask[nYueShenSenLin10]["StartAutoWay"] = {}
rwtTask[nYueShenSenLin10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYueShenSenLin10]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nYueShenSenLin10]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[nYueShenSenLin10]["StartAutoWay"]["FindWayGenId"] = 2001658