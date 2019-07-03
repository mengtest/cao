


---------------------------------------------------------------------新版-----------------------------------------------------------------------------
--地图ID
local nMapId_LMDL = 2001
local nMapId_ZLLM = 1001
local nMapId_MZGD = 2002

--任务ID
local tTask = {}
tTask.nSiTiShen1 = 70000 --城镇守卫官的求援
tTask.nSiTiShen2 = 70001 --守卫官的请求
tTask.nSiTiShen3 = 70002 --四蹄神的重现
tTask.nSiTiShen4 = 70003 --亡灵再现
tTask.nSiTiShen5 = 70004 --消灭魔物
tTask.nSiTiShen6 = 70005 --不断出现的魔物
tTask.nSiTiShen7 = 70006 --事后报告

--对话ID
local tDialog = {}
tDialog.nTask1 = 11467
tDialog.nTask2 = 11468
tDialog.nTask3 = 11469
tDialog.nTask4 = 11470
tDialog.nTask5 = 11471  
tDialog.nTask6 = 11477
 --11477  （魔物还在不断地出现，<br>光凭我们三个好像快顶不住了！）之前的表现--11473拼死守护的时刻到了，我的朋友们！ 
 --11472魔物还在不断地出现，<br>光凭我们三个好像快顶不住了！
 --11474哦！我的宝贝孙女！爷爷来晚咯！<br>——让爷爷来搞定这些混蛋！
 --11475……啊，真是个难以对付的对手啊！多亏了泰雷和特<br>罗德大人……温丽大小姐，你没事吧。
tDialog.nTask7 = 11476

--陷阱ID
local tTrap = {}
--亡灵再现
tTrap.nTrap_Task4 = 30494
tTrap.nTrap_GenId_Task4 = 2002020
rwtNpcGroup[tTrap.nTrap_Task4] = rwtNpcGroup[tTrap.nTrap_Task4] or {} 
rwtNpcGroup[tTrap.nTrap_Task4]["Type"] = CONST_NPCGROUP_TYPE.Trap

--苍白獠牙赛特
tTrap.nTrap_Task5 = 30500
tTrap.nTrap_GenId_Task5 = 2002024
rwtNpcGroup[tTrap.nTrap_Task5] = rwtNpcGroup[tTrap.nTrap_Task5] or {} 
rwtNpcGroup[tTrap.nTrap_Task5]["Type"] = CONST_NPCGROUP_TYPE.Trap

--怪物ID
local tMonster = {}

tMonster.nMonster_Task5 = 9000284
tMonster.nMonsterGroup_Task5 = 900366
tMonster.nMonsterGroup_GenId_Task5 = 2002031

--NPCID
local tSingleNpc = {}

tSingleNpc.nNpc_JuFuZhanShi = 3184
tSingleNpc.nNpcGroup_JuFuZhanShi = 20221
tSingleNpc.nNpcGroup_GenId_JuFuZhanShi = 1001012

tSingleNpc.nNpc_JiLa = 3042
tSingleNpc.nNpcGroup_JiLa = 20114
tSingleNpc.nNpcGroup_GenId_JiLa = 2001657

tSingleNpc.nNpc_ShouChengGuanFT = 3501
tSingleNpc.nNpcGroup_ShouChengGuanFT = 20487
tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT = 20010141
rwtNpc[tSingleNpc.nNpc_ShouChengGuanFT] = rwtNpc[tSingleNpc.nNpc_ShouChengGuanFT] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT]["NpcId"] = tSingleNpc.nNpc_ShouChengGuanFT

tSingleNpc.nNpc_ShouChengGuanAK = 3502
tSingleNpc.nNpcGroup_ShouChengGuanAK = 20488
tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK = 2002032
rwtNpc[tSingleNpc.nNpc_ShouChengGuanAK] = rwtNpc[tSingleNpc.nNpc_ShouChengGuanAK] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK]["NpcId"] = tSingleNpc.nNpc_ShouChengGuanAK


--奖励  
local tSiTiShenAwardId = {}
tSiTiShenAwardId[1]=2000214
tSiTiShenAwardId[2]=2000313
tSiTiShenAwardId[3]=2000314 

--城镇守卫官的求援
rwtTask[tTask.nSiTiShen1] = {}
rwtTask[tTask.nSiTiShen1]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen1]["NextTaskId"] = tTask.nSiTiShen2
rwtTask[tTask.nSiTiShen1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nSiTiShen1]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen1]["TaskNpc"] = tSingleNpc.nNpc_JuFuZhanShi
rwtTask[tTask.nSiTiShen1]["DialogId"] = tDialog.nTask1
--rwtTask[tTask.nSiTiShen1]["AutoTaskDialog"] =  tDialog.nTask1
--rwtTask[tTask.nSiTiShen1]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nSiTiShen1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JuFuZhanShi
--rwtTask[tTask.nSiTiShen1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JuFuZhanShi

--守卫官的请求
rwtTask[tTask.nSiTiShen2] = {}
rwtTask[tTask.nSiTiShen2]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen2]["PreTaskId"] = tTask.nSiTiShen1
rwtTask[tTask.nSiTiShen2]["NextTaskId"] = tTask.nSiTiShen3
rwtTask[tTask.nSiTiShen2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nSiTiShen2]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen2]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanFT
rwtTask[tTask.nSiTiShen2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nSiTiShen2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nSiTiShen2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nSiTiShen2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
rwtTask[tTask.nSiTiShen2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nSiTiShen2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nSiTiShen2]["StartAutoWay"] = {}
rwtTask[tTask.nSiTiShen2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nSiTiShen2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nSiTiShen2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanFT
rwtTask[tTask.nSiTiShen2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
rwtTask[tTask.nSiTiShen2]["Awards"] = {}
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"] = {}
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tSiTiShenAwardId[1]
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nSiTiShen2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nSiTiShen2

--四蹄神的重现
rwtTask[tTask.nSiTiShen3] = {}
rwtTask[tTask.nSiTiShen3]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen3]["PreTaskId"] = tTask.nSiTiShen2
rwtTask[tTask.nSiTiShen3]["NextTaskId"] = tTask.nSiTiShen4
rwtTask[tTask.nSiTiShen3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nSiTiShen3]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen3]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanAK
rwtTask[tTask.nSiTiShen3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nSiTiShen3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nSiTiShen3]["StartAutoWay"] = {}
rwtTask[tTask.nSiTiShen3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nSiTiShen3]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanAK
rwtTask[tTask.nSiTiShen3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK

--亡灵再现
rwtTask[tTask.nSiTiShen4] = {}
rwtTask[tTask.nSiTiShen4]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen4]["PreTaskId"] = tTask.nSiTiShen3
rwtTask[tTask.nSiTiShen4]["NextTaskId"] = tTask.nSiTiShen5
rwtTask[tTask.nSiTiShen4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nSiTiShen4]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen4]["ReqTrap1"] = tTrap.nTrap_Task4
rwtTask[tTask.nSiTiShen4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nSiTiShen4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nSiTiShen4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nSiTiShen4]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task4
rwtTask[tTask.nSiTiShen4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nSiTiShen4]["StartAutoWay"] = {}
rwtTask[tTask.nSiTiShen4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nSiTiShen4]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen4]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task4
rwtTask[tTask.nSiTiShen4]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task4

--消灭魔物
rwtTask[tTask.nSiTiShen5] = {}
rwtTask[tTask.nSiTiShen5]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen5]["PreTaskId"] = tTask.nSiTiShen4
rwtTask[tTask.nSiTiShen5]["NextTaskId"] = tTask.nSiTiShen6
rwtTask[tTask.nSiTiShen5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nSiTiShen5]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task5
rwtTask[tTask.nSiTiShen5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task5
rwtTask[tTask.nSiTiShen5]["ReqTrap1"] = tTrap.nTrap_Task5
rwtTask[tTask.nSiTiShen5]["DialogId"] = tDialog.nTask5
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task5
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task5
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nSiTiShen5]["StartAutoWay"] = {}
rwtTask[tTask.nSiTiShen5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nSiTiShen5]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task5
rwtTask[tTask.nSiTiShen5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task5
rwtTask[tTask.nSiTiShen5]["Awards"] = {}
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"] = {}
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"][1] = {}
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tSiTiShenAwardId[2]
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nSiTiShen5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nSiTiShen5

--不断出现的魔物
rwtTask[tTask.nSiTiShen6] = {}
rwtTask[tTask.nSiTiShen6]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen6]["PreTaskId"] = tTask.nSiTiShen5
rwtTask[tTask.nSiTiShen6]["NextTaskId"] = tTask.nSiTiShen7
rwtTask[tTask.nSiTiShen6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nSiTiShen6]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen6]["ReqTrap1"] = tTrap.nTrap_Task5
rwtTask[tTask.nSiTiShen6]["AcceptDialogId"] = tDialog.nTask6
rwtTask[tTask.nSiTiShen6]["DialogId"] = tDialog.nTask6
rwtTask[tTask.nSiTiShen6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nSiTiShen6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nSiTiShen6]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task5
rwtTask[tTask.nSiTiShen6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
rwtTask[tTask.nSiTiShen6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen6]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen6]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen6]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen6]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task5
--rwtTask[tTask.nSiTiShen6]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task5

--事后报告
rwtTask[tTask.nSiTiShen7] = {}
rwtTask[tTask.nSiTiShen7]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
rwtTask[tTask.nSiTiShen7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nSiTiShen7]["PreTaskId"] = tTask.nSiTiShen6
--rwtTask[tTask.nSiTiShen7]["NextTaskId"] = End
rwtTask[tTask.nSiTiShen7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nSiTiShen7]["IsClickComplete"] = 0
rwtTask[tTask.nSiTiShen7]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanFT
rwtTask[tTask.nSiTiShen7]["DialogId"] = tDialog.nTask7
rwtTask[tTask.nSiTiShen7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nSiTiShen7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nSiTiShen7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
rwtTask[tTask.nSiTiShen7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nSiTiShen7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nSiTiShen7]["StartAutoWay"] = {}
rwtTask[tTask.nSiTiShen7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nSiTiShen7]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nSiTiShen7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanFT
rwtTask[tTask.nSiTiShen7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
rwtTask[tTask.nSiTiShen7]["Awards"] = {}
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"] = {}
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"][1] = {}
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tSiTiShenAwardId[3]
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nSiTiShen7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nSiTiShen7

--------------------------------------------------------------------------旧版----------------------------------------------------------------------------------

----地图ID
--local nMapId_LMDL = 2001
--local nMapId_YBGH = 1001
--local nMapId_MZGD = 2002

----任务ID
--local tTask = {}
--tTask.nSiTiShen1_1 = 70000 --危险的传言        向塔克打听传闻
--tTask.nSiTiShen1_2 = 70001 --老乞丐查理        找到老乞丐查理
--tTask.nSiTiShen1_3 = 70002 --商量对策          寻求城镇守卫官的帮助
--tTask.nSiTiShen1_4 = 70003 --扫荡怪物          清扫魔物（0/3）
--tTask.nSiTiShen1_5 = 70004 --收集线索          收集线索（0/1）
--tTask.nSiTiShen1_6 = 70005 --猎魔人的同伴      寻找猎魔执行官埃克
--tTask.nSiTiShen1_7 = 70006 --紧急治疗          紧急治疗
--tTask.nSiTiShen1_8 = 70007 --四蹄神的线索      埃克的关键信息
--tTask.nSiTiShen1_9 = 70008 --清除障碍          挑战黑战斧
--tTask.nSiTiShen1_10 =70009  --四蹄神的亡灵     -四蹄神的重现
--tTask.nSiTiShen2_1 = 70010 --拜访猎魔人        和城镇守卫官对话
--tTask.nSiTiShen2_2 = 70011 --前往罗兰镇        前往罗兰镇处理危机
--tTask.nSiTiShen2_3 = 70012 --遭到袭击的罗兰镇  和镇长大卫
--tTask.nSiTiShen2_4 = 70013 --战斗后的风车镇    前往风车镇处理危机
--tTask.nSiTiShen2_5 = 70014 --收集3个药草       采集血霜草（0/3）
--tTask.nSiTiShen2_6 = 70015 --商量对策          返回风车镇
--tTask.nSiTiShen3_1 = 70016 --雕刻家米吉帕      雕刻家米吉帕
--tTask.nSiTiShen3_2 = 70017 --再访猎魔人        城镇守卫官的帮助
--tTask.nSiTiShen3_3 = 70018 --鲁莽的米吉帕      寻找米吉帕
--tTask.nSiTiShen3_4 = 70019 --鹿角兽营地        消灭鹿角兽守卫（0/3）
--tTask.nSiTiShen3_5 = 70020 --受伤的米吉帕      和受伤的雕刻家对话
--tTask.nSiTiShen3_6 = 70021 --亡灵再现          亡灵再现
--tTask.nSiTiShen3_7 = 70022 --回到风车镇        再次挑战魔物
--tTask.nSiTiShen3_8 = 70023 --事件的后续        护送米吉帕回去
--tTask.nSiTiShen3_9 = 70024 --                  值钱的馈赠


----对话ID 11467  11506 
--local tDialog = {}
--tDialog.nTask1_1 = 11467
--tDialog.nTask1_2 = 11468
--tDialog.nTask1_2_1 = 11469 --给乞丐后
--tDialog.nTask1_3 = 11470
--tDialog.nTask1_4 = 11471
--tDialog.nTask1_5 = 11472
--tDialog.nTask1_6 = 11473
----tDialog.nTask1_7 = 
--tDialog.nTask1_8 = 11474
--tDialog.nTask1_9 = 11475
--tDialog.nTask1_10 = 11476
--tDialog.nTask1_10_1 = 11497 --空白（四蹄神动画对白）
--tDialog.nTask2_1 = 11477
--tDialog.nTask2_2 = 11478
--tDialog.nTask2_3 = 11479
--tDialog.nTask2_4 = 11480
--tDialog.nTask2_5 = 11481
--tDialog.nTask2_6 = 11482
--tDialog.nTask3_1 = 11483 
--tDialog.nTask3_2 = 11484
--tDialog.nTask3_3 = 11496 --空白（米吉帕动画对白）
--tDialog.nTask3_3_1 = 11485 --那个黑影是米吉帕吗？
--tDialog.nTask3_4 = 11486
--tDialog.nTask3_5 = 11487
--tDialog.nTask3_6 = 11488
--tDialog.nTask3_6_1 = 11489  --魔物还在不断地出现，光凭我们三个好像快顶不住了!

--tDialog.nTask3_7_1 = 11490   --泰雷:拼死守护的时刻到了！
--tDialog.nTask3_7_2 = 11495   --温丽，大姐头，我们也一起上吧！
--tDialog.nTask3_7 = 11491   --(战斗胜利触发对白)你们没人明白我在这里过的是多么痛苦，<br>到时候，我会加倍偿还的！
--tDialog.nTask3_7_3 = 11492  --……啊，真是个难以对付的对手啊，多亏了泰雷……温丽大小姐，你没事吧。
--tDialog.nTask3_8 = 11493  --儿子……我亲爱的儿子……你没事吧？,,,
--tDialog.nTask3_9 = 11494  --我们也该回去了，

----11495 --温丽，大姐头我们也一起上吧！


----Gen  第一  20010135  20010144   魔族 2002020  2002034 
----陷阱ID 30494  30501 
--local tTrap = {}
----鹿角怪
--tTrap.nTrap_Task1_4 = 30494
--tTrap.nTrap_GenId_Task1_4 = 2002020
--rwtNpcGroup[tTrap.nTrap_Task1_4] = rwtNpcGroup[tTrap.nTrap_Task1_4] or {} 
--rwtNpcGroup[tTrap.nTrap_Task1_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
----精英-鹿角怪队长(1只)
--tTrap.nTrap_Task1_9 = 30495
--tTrap.nTrap_GenId_Task1_9 = 2002021
--rwtNpcGroup[tTrap.nTrap_Task1_9] = rwtNpcGroup[tTrap.nTrap_Task1_9] or {} 
--rwtNpcGroup[tTrap.nTrap_Task1_9]["Type"] = CONST_NPCGROUP_TYPE.Trap
----大帝重刃前
--tTrap.nTrap_Task1_10 = 30501
--tTrap.nTrap_GenId_Task1_10 = 2002034
--rwtNpcGroup[tTrap.nTrap_Task1_10] = rwtNpcGroup[tTrap.nTrap_Task1_10] or {} 
--rwtNpcGroup[tTrap.nTrap_Task1_10]["Type"] = CONST_NPCGROUP_TYPE.Trap
----鹿角怪队长
--tTrap.nTrap_Task2_2 = 30496
--tTrap.nTrap_GenId_Task2_2 = 20010135
--rwtNpcGroup[tTrap.nTrap_Task2_2] = rwtNpcGroup[tTrap.nTrap_Task2_2] or {} 
--rwtNpcGroup[tTrap.nTrap_Task2_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
----雕刻家
--tTrap.nTrap_Task3_1 = 30497
--tTrap.nTrap_GenId_Task3_1 = 20010139
--rwtNpcGroup[tTrap.nTrap_Task3_1] = rwtNpcGroup[tTrap.nTrap_Task3_1] or {} 
--rwtNpcGroup[tTrap.nTrap_Task3_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
----陷阱
--tTrap.nTrap_Task3_3 = 30498
--tTrap.nTrap_GenId_Task3_3 = 2002022
--rwtNpcGroup[tTrap.nTrap_Task3_3] = rwtNpcGroup[tTrap.nTrap_Task3_3] or {} 
--rwtNpcGroup[tTrap.nTrap_Task3_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
----鹿角怪(3只)
--tTrap.nTrap_Task3_4 = 30499
--tTrap.nTrap_GenId_Task3_4 = 2002023
--rwtNpcGroup[tTrap.nTrap_Task3_4] = rwtNpcGroup[tTrap.nTrap_Task3_4] or {} 
--rwtNpcGroup[tTrap.nTrap_Task3_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
----苍白獠牙赛特
--tTrap.nTrap_Task3_6 = 30500
--tTrap.nTrap_GenId_Task3_6 = 2002024
--rwtNpcGroup[tTrap.nTrap_Task3_6] = rwtNpcGroup[tTrap.nTrap_Task3_6] or {} 
--rwtNpcGroup[tTrap.nTrap_Task3_6]["Type"] = CONST_NPCGROUP_TYPE.Trap

----采集物ID 60277  60282 
--local tCollect= {}

--tCollect.nCollect_KuiJiaSuiPian = 60277
--tCollect.nCollect_GenId_KuiJiaSuiPian = 2002025
--rwtNpcGroup[tCollect.nCollect_KuiJiaSuiPian] = rwtNpcGroup[tCollect.nCollect_KuiJiaSuiPian] or {} 
--rwtNpcGroup[tCollect.nCollect_KuiJiaSuiPian]["Type"] = CONST_NPCGROUP_TYPE.Collect

--tCollect.nCollect_ZhiLiao = 60278
--tCollect.nCollect_GenId_ZhiLiao = 2002026
--rwtNpcGroup[tCollect.nCollect_ZhiLiao] = rwtNpcGroup[tCollect.nCollect_ZhiLiao] or {} 
--rwtNpcGroup[tCollect.nCollect_ZhiLiao]["Type"] = CONST_NPCGROUP_TYPE.Collect

--tCollect.nCollect_XueShuangCao = 60279
--tCollect.nCollect_GenId_XueShuangCao = 20010136
--rwtNpcGroup[tCollect.nCollect_XueShuangCao] = rwtNpcGroup[tCollect.nCollect_XueShuangCao] or {} 
--rwtNpcGroup[tCollect.nCollect_XueShuangCao]["Type"] = CONST_NPCGROUP_TYPE.Collect

--tCollect.nCollect_XueShuangCao_2 = 60280
--tCollect.nCollect_GenId_XueShuangCao_2 = 20010137
--rwtNpcGroup[tCollect.nCollect_XueShuangCao_2] = rwtNpcGroup[tCollect.nCollect_XueShuangCao_2] or {} 
--rwtNpcGroup[tCollect.nCollect_XueShuangCao_2]["Type"] = CONST_NPCGROUP_TYPE.Collect

--tCollect.nCollect_XueShuangCao_3 = 60281
--tCollect.nCollect_GenId_XueShuangCao_3 = 20010138
--rwtNpcGroup[tCollect.nCollect_XueShuangCao_3] = rwtNpcGroup[tCollect.nCollect_XueShuangCao_3] or {} 
--rwtNpcGroup[tCollect.nCollect_XueShuangCao_3]["Type"] = CONST_NPCGROUP_TYPE.Collect

----怪物ID
--local tMonster = {}

----tMonster.nMonster_Task1_4 = 9000281
--tMonster.nMonsterGroup_Task1_4 = 900361
--tMonster.nMonsterGroup_GenId_Task1_4 = 2002027

----tMonster.nMonster_Task1_9 = 9000282
--tMonster.nMonsterGroup_Task1_9 = 900362
--tMonster.nMonsterGroup_GenId_Task1_9 = 2002028

----tMonster.nMonster_Task2_2 = 9000283
--tMonster.nMonsterGroup_Task2_2 = 900363
--tMonster.nMonsterGroup_GenId_Task2_2 =  20010140

----tMonster.nMonster_Task3_4 = 9000284
--tMonster.nMonsterGroup_Task3_4 = 900364
--tMonster.nMonsterGroup_GenId_Task3_4 = 2002029

----900365这是怪是打不过的超强怪
--tMonster.nMonsterGroup_Task3_6 = 900365
--tMonster.nMonsterGroup_GenId_Task3_6 = 2002030

--tMonster.nMonsterGroup_Task3_7 = 900366
--tMonster.nMonsterGroup_GenId_Task3_7 = 2002031



----NPCID    npcgroup20487  20491 
--local tSingleNpc = {}

--tSingleNpc.nNpc_JuFuZhanShi = 3184
--tSingleNpc.nNpcGroup_JuFuZhanShi = 20221
--tSingleNpc.nNpcGroup_GenId_JuFuZhanShi = 1001012

--tSingleNpc.nNpc_LaoQiGai = 3242
--tSingleNpc.nNpcGroup_LaoQiGai = 20144
--tSingleNpc.nNpcGroup_GenId_LaoQiGai = 2001721

--tSingleNpc.nNpc_DaWei = 3004
--tSingleNpc.nNpcGroup_DaWei = 10010
--tSingleNpc.nNpcGroup_GenId_DaWei = 2001537


--tSingleNpc.nNpc_ShouChengGuanFT = 3501
--tSingleNpc.nNpcGroup_ShouChengGuanFT = 20487
--tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT = 20010141
--rwtNpc[tSingleNpc.nNpc_ShouChengGuanFT] = rwtNpc[tSingleNpc.nNpc_ShouChengGuanFT] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT] or {} 
--rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanFT]["NpcId"] = tSingleNpc.nNpc_ShouChengGuanFT

--tSingleNpc.nNpc_ShouChengGuanAK = 3502
--tSingleNpc.nNpcGroup_ShouChengGuanAK = 20488
--tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK = 2002032
--rwtNpc[tSingleNpc.nNpc_ShouChengGuanAK] = rwtNpc[tSingleNpc.nNpc_ShouChengGuanAK] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK] or {} 
--rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_ShouChengGuanAK]["NpcId"] = tSingleNpc.nNpc_ShouChengGuanAK

--tSingleNpc.nNpc_KuBoLa = 3008
--tSingleNpc.nNpcGroup_KuBoLa = 20057
--tSingleNpc.nNpcGroup_GenId_KuBoLa = 2001412

--tSingleNpc.nNpc_JiMiPa_ShouShang = 3507
--tSingleNpc.nNpcGroup_JiMiPa_ShouShang = 20489
--tSingleNpc.nNpcGroup_GenId_JiMiPa_ShouShang = 2002033
--rwtNpc[tSingleNpc.nNpc_JiMiPa_ShouShang] = rwtNpc[tSingleNpc.nNpc_JiMiPa_ShouShang] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_JiMiPa_ShouShang] = rwtNpcGroup[tSingleNpc.nNpcGroup_JiMiPa_ShouShang] or {} 
--rwtNpcGroup[tSingleNpc.nNpcGroup_JiMiPa_ShouShang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_JiMiPa_ShouShang]["NpcId"] = tSingleNpc.nNpc_JiMiPa_ShouShang

----奖励  2000214  2000216 
--local tSiTiShenAwardId = {}
--tSiTiShenAwardId[1]=2000214
--tSiTiShenAwardId[2]=2000215
--tSiTiShenAwardId[3]=2000216


----危险的传言 向塔克打听传闻
--rwtTask[tTask.nSiTiShen1_1] = {}
--rwtTask[tTask.nSiTiShen1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
----rwtTask[tTask.nSiTiShen1_1]["PreTaskId"] = start
--rwtTask[tTask.nSiTiShen1_1]["NextTaskId"] = tTask.nSiTiShen1_2
--rwtTask[tTask.nSiTiShen1_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen1_1]["AutoTaskDialog"] =  tDialog.nTask1_1
--rwtTask[tTask.nSiTiShen1_1]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_1]["TaskNpc"] = tSingleNpc.nNpc_JuFuZhanShi
--rwtTask[tTask.nSiTiShen1_1]["DialogId"] = tDialog.nTask1_1
--rwtTask[tTask.nSiTiShen1_1]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_1]["StartAutoWay"]["FindWayMapId"] = nMapId_YBGH
--rwtTask[tTask.nSiTiShen1_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JuFuZhanShi
--rwtTask[tTask.nSiTiShen1_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JuFuZhanShi

----老乞丐查理 找到老乞丐查理
--rwtTask[tTask.nSiTiShen1_2] = {}
--rwtTask[tTask.nSiTiShen1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_2]["PreTaskId"] = tTask.nSiTiShen1_1
--rwtTask[tTask.nSiTiShen1_2]["NextTaskId"] = tTask.nSiTiShen1_3
--rwtTask[tTask.nSiTiShen1_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen1_2]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_2]["TaskNpc"] = tSingleNpc.nNpc_LaoQiGai
--rwtTask[tTask.nSiTiShen1_2]["DialogId"] = tDialog.nTask1_2
--rwtTask[tTask.nSiTiShen1_2]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen1_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoQiGai
--rwtTask[tTask.nSiTiShen1_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoQiGai

----商量对策 寻求城镇守卫官的帮助
--rwtTask[tTask.nSiTiShen1_3] = {}
--rwtTask[tTask.nSiTiShen1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_3]["PreTaskId"] = tTask.nSiTiShen1_2
--rwtTask[tTask.nSiTiShen1_3]["NextTaskId"] = tTask.nSiTiShen1_4
--rwtTask[tTask.nSiTiShen1_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen1_3]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_3]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen1_3]["DialogId"] = tDialog.nTask1_3
--rwtTask[tTask.nSiTiShen1_3]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_3]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen1_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen1_3]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen1_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen1_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT

----扫荡怪物 清扫魔物（0/3）
--rwtTask[tTask.nSiTiShen1_4] = {}
--rwtTask[tTask.nSiTiShen1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_4]["PreTaskId"] = tTask.nSiTiShen1_3
--rwtTask[tTask.nSiTiShen1_4]["NextTaskId"] = tTask.nSiTiShen1_5
--rwtTask[tTask.nSiTiShen1_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTask.nSiTiShen1_4]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_4]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_Task1_4
--rwtTask[tTask.nSiTiShen1_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task1_4
--rwtTask[tTask.nSiTiShen1_4]["ReqTrap1"] =  tTrap.nTrap_Task1_4
--rwtTask[tTask.nSiTiShen1_4]["DialogId"] = tDialog.nTask1_4
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task1_4
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task1_4
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][3]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen1_4]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_4]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_4]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tTask.nSiTiShen1_4]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task1_4
--rwtTask[tTask.nSiTiShen1_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task1_4

----收集线索
--rwtTask[tTask.nSiTiShen1_5] = {}
--rwtTask[tTask.nSiTiShen1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_5]["PreTaskId"] = tTask.nSiTiShen1_4
--rwtTask[tTask.nSiTiShen1_5]["NextTaskId"] = tTask.nSiTiShen1_6
--rwtTask[tTask.nSiTiShen1_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
--rwtTask[tTask.nSiTiShen1_5]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_5]["ReqCollectId1"] =   tCollect.nCollect_KuiJiaSuiPian
--rwtTask[tTask.nSiTiShen1_5]["ReqCollectOnceNum"] = 1
--rwtTask[tTask.nSiTiShen1_5]["ReqCollectCount1"] =  1
--rwtTask[tTask.nSiTiShen1_5]["DialogId"] = tDialog.nTask1_5
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_KuiJiaSuiPian
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen1_5]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_5]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_5]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_5]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_KuiJiaSuiPian
--rwtTask[tTask.nSiTiShen1_5]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_KuiJiaSuiPian

----猎魔人的同伴 寻找猎魔执行官埃克
--rwtTask[tTask.nSiTiShen1_6] = {}
--rwtTask[tTask.nSiTiShen1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_6]["PreTaskId"] = tTask.nSiTiShen1_5
--rwtTask[tTask.nSiTiShen1_6]["NextTaskId"] = tTask.nSiTiShen1_7
--rwtTask[tTask.nSiTiShen1_6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen1_6]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_6]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_6]["DialogId"] = tDialog.nTask1_6
--rwtTask[tTask.nSiTiShen1_6]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_6]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_6]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen1_6]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_6]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_6]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK

----紧急治疗
--rwtTask[tTask.nSiTiShen1_7] = {}
--rwtTask[tTask.nSiTiShen1_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_7]["PreTaskId"] = tTask.nSiTiShen1_6
--rwtTask[tTask.nSiTiShen1_7]["NextTaskId"] = tTask.nSiTiShen1_8
--rwtTask[tTask.nSiTiShen1_7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tTask.nSiTiShen1_7]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_7]["ReqCollectId1"] =   tCollect.nCollect_ZhiLiao
--rwtTask[tTask.nSiTiShen1_7]["ReqCollectOnceNum"] = 1
--rwtTask[tTask.nSiTiShen1_7]["ReqCollectCount1"] =  1
----rwtTask[tTask.nSiTiShen1_7]["DialogId"] = tDialog.nTask1_7
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_ZhiLiao
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_7]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_7]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_7]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_7]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_ZhiLiao
--rwtTask[tTask.nSiTiShen1_7]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_ZhiLiao

----四蹄神的线索 埃克的关键信息
--rwtTask[tTask.nSiTiShen1_8] = {}
--rwtTask[tTask.nSiTiShen1_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_8]["PreTaskId"] = tTask.nSiTiShen1_7
--rwtTask[tTask.nSiTiShen1_8]["NextTaskId"] = tTask.nSiTiShen1_9
--rwtTask[tTask.nSiTiShen1_8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen1_8]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_8]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_8]["DialogId"] = tDialog.nTask1_8
--rwtTask[tTask.nSiTiShen1_8]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_8]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_8]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen1_8]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_8]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_8]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_8]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_8]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK

----清除障碍 挑战黑战斧
--rwtTask[tTask.nSiTiShen1_9] = {}
--rwtTask[tTask.nSiTiShen1_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_9]["PreTaskId"] = tTask.nSiTiShen1_8
--rwtTask[tTask.nSiTiShen1_9]["NextTaskId"] = tTask.nSiTiShen1_10
--rwtTask[tTask.nSiTiShen1_9]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTask.nSiTiShen1_9]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_9]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_Task1_9
--rwtTask[tTask.nSiTiShen1_9]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task1_9
--rwtTask[tTask.nSiTiShen1_9]["ReqTrap1"] =  tTrap.nTrap_Task1_9
--rwtTask[tTask.nSiTiShen1_9]["DialogId"] = tDialog.nTask1_9
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task1_9
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task1_9
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanAK
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][3]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_9]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_9]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_9]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tTask.nSiTiShen1_9]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_9]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task1_9
--rwtTask[tTask.nSiTiShen1_9]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task1_9

----四蹄神的亡灵 四蹄神的重现
--rwtTask[tTask.nSiTiShen1_10] = {}
--rwtTask[tTask.nSiTiShen1_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21279]
--rwtTask[tTask.nSiTiShen1_10]["PreTaskId"] = tTask.nSiTiShen1_9
--rwtTask[tTask.nSiTiShen1_10]["NextTaskId"] = tTask.nSiTiShen2_1
--rwtTask[tTask.nSiTiShen1_10]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nSiTiShen1_10]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen1_10]["AcceptDialogId"] = tDialog.nTask1_10_1
--rwtTask[tTask.nSiTiShen1_10]["ReqTrap1"] =  tTrap.nTrap_Task1_10
--rwtTask[tTask.nSiTiShen1_10]["DialogId"] = tDialog.nTask1_10
--rwtTask[tTask.nSiTiShen1_10]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen1_10]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen1_10]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task1_10
--rwtTask[tTask.nSiTiShen1_10]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen1_10]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen1_10]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen1_10]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen1_10]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task1_10
--rwtTask[tTask.nSiTiShen1_10]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task1_10
--rwtTask[tTask.nSiTiShen1_10]["Awards"] = {}
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"] = {}
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"][1] = {}
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tSiTiShenAwardId[1]
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tTask.nSiTiShen1_10]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nSiTiShen1_10

----拜访猎魔人 和城镇守卫官对话
--rwtTask[tTask.nSiTiShen2_1] = {}
--rwtTask[tTask.nSiTiShen2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21280]
--rwtTask[tTask.nSiTiShen2_1]["PreTaskId"] = tTask.nSiTiShen1_10
--rwtTask[tTask.nSiTiShen2_1]["NextTaskId"] = tTask.nSiTiShen2_2
--rwtTask[tTask.nSiTiShen2_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen2_1]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen2_1]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen2_1]["DialogId"] = tDialog.nTask2_1
--rwtTask[tTask.nSiTiShen2_1]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen2_1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen2_1]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen2_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen2_1]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen2_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen2_1]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen2_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT

----前往罗兰镇 前往罗兰镇处理危机
--rwtTask[tTask.nSiTiShen2_2] = {}
--rwtTask[tTask.nSiTiShen2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21280]
--rwtTask[tTask.nSiTiShen2_2]["PreTaskId"] = tTask.nSiTiShen2_1
--rwtTask[tTask.nSiTiShen2_2]["NextTaskId"] = tTask.nSiTiShen2_3
--rwtTask[tTask.nSiTiShen2_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTask.nSiTiShen2_2]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen2_2]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_Task2_2
--rwtTask[tTask.nSiTiShen2_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task2_2
--rwtTask[tTask.nSiTiShen2_2]["ReqTrap1"] =  tTrap.nTrap_Task2_2
--rwtTask[tTask.nSiTiShen2_2]["DialogId"] = tDialog.nTask2_2
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task2_2
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_Task2_2
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][3]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen2_2]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen2_2]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tTask.nSiTiShen2_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task2_2
--rwtTask[tTask.nSiTiShen2_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task2_2

----遭到袭击的罗兰镇 和镇长大卫
--rwtTask[tTask.nSiTiShen2_3] = {}
--rwtTask[tTask.nSiTiShen2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21280]
--rwtTask[tTask.nSiTiShen2_3]["PreTaskId"] = tTask.nSiTiShen2_2
--rwtTask[tTask.nSiTiShen2_3]["NextTaskId"] = tTask.nSiTiShen2_4
--rwtTask[tTask.nSiTiShen2_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen2_3]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen2_3]["TaskNpc"] = tSingleNpc.nNpc_DaWei
--rwtTask[tTask.nSiTiShen2_3]["DialogId"] = tDialog.nTask2_3
--rwtTask[tTask.nSiTiShen2_3]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen2_3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen2_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_DaWei
--rwtTask[tTask.nSiTiShen2_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_DaWei

----战斗后的风车镇 前往风车镇处理危机
--rwtTask[tTask.nSiTiShen2_4] = {}
--rwtTask[tTask.nSiTiShen2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21280]
--rwtTask[tTask.nSiTiShen2_4]["PreTaskId"] = tTask.nSiTiShen2_3
--rwtTask[tTask.nSiTiShen2_4]["NextTaskId"] = tTask.nSiTiShen2_5
--rwtTask[tTask.nSiTiShen2_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen2_4]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen2_4]["TaskNpc"] = tSingleNpc.nNpc_KuBoLa
--rwtTask[tTask.nSiTiShen2_4]["DialogId"] = tDialog.nTask2_4
--rwtTask[tTask.nSiTiShen2_4]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen2_4]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen2_4]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_KuBoLa
--rwtTask[tTask.nSiTiShen2_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_KuBoLa

----收集3个药草 采集血霜草（0/3）
--rwtTask[tTask.nSiTiShen2_5] = {}
--rwtTask[tTask.nSiTiShen2_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21280]
--rwtTask[tTask.nSiTiShen2_5]["PreTaskId"] = tTask.nSiTiShen2_4
--rwtTask[tTask.nSiTiShen2_5]["NextTaskId"] = tTask.nSiTiShen2_6
--rwtTask[tTask.nSiTiShen2_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tTask.nSiTiShen2_5]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen2_5]["ReqCollectId1"] =   tCollect.nCollect_XueShuangCao
----rwtTask[tTask.nSiTiShen2_5]["ReqCollectOnceNum"] = 1
--rwtTask[tTask.nSiTiShen2_5]["ReqCollectCount1"] =  3
--rwtTask[tTask.nSiTiShen2_5]["DialogId"] = tDialog.nTask2_5
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_XueShuangCao
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_XueShuangCao_2
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][3]["GenId"] = tCollect.nCollect_GenId_XueShuangCao_3
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][3]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_5]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen2_5]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen2_5]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen2_5]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_5]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_XueShuangCao
--rwtTask[tTask.nSiTiShen2_5]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_XueShuangCao

----商量对策 返回风车镇
--rwtTask[tTask.nSiTiShen2_6] = {}
--rwtTask[tTask.nSiTiShen2_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21280]
--rwtTask[tTask.nSiTiShen2_6]["PreTaskId"] = tTask.nSiTiShen2_5
--rwtTask[tTask.nSiTiShen2_6]["NextTaskId"] = tTask.nSiTiShen3_1
--rwtTask[tTask.nSiTiShen2_6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen2_6]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen2_6]["TaskNpc"] = tSingleNpc.nNpc_KuBoLa
--rwtTask[tTask.nSiTiShen2_6]["DialogId"] = tDialog.nTask2_6
--rwtTask[tTask.nSiTiShen2_6]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen2_6]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen2_6]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen2_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_KuBoLa
--rwtTask[tTask.nSiTiShen2_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_KuBoLa
--rwtTask[tTask.nSiTiShen2_6]["Awards"] = {}
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"] = {}
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"][1] = {}
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tSiTiShenAwardId[2]
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tTask.nSiTiShen2_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nSiTiShen2_6

----雕刻家米吉帕
--rwtTask[tTask.nSiTiShen3_1] = {}
--rwtTask[tTask.nSiTiShen3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21281]
--rwtTask[tTask.nSiTiShen3_1]["PreTaskId"] = tTask.nSiTiShen2_6
--rwtTask[tTask.nSiTiShen3_1]["NextTaskId"] = tTask.nSiTiShen3_2
--rwtTask[tTask.nSiTiShen3_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nSiTiShen3_1]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_1]["ReqTrap1"] =  tTrap.nTrap_Task3_1
--rwtTask[tTask.nSiTiShen3_1]["DialogId"] = tDialog.nTask3_1
--rwtTask[tTask.nSiTiShen3_1]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_1]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_1
--rwtTask[tTask.nSiTiShen3_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_1]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen3_1]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_1]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task3_1
--rwtTask[tTask.nSiTiShen3_1]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task3_1

----再访猎魔人 城镇守卫官的帮助
--rwtTask[tTask.nSiTiShen3_2] = {}
--rwtTask[tTask.nSiTiShen3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21281]
--rwtTask[tTask.nSiTiShen3_2]["PreTaskId"] = tTask.nSiTiShen3_1
--rwtTask[tTask.nSiTiShen3_2]["NextTaskId"] = tTask.nSiTiShen3_3
--rwtTask[tTask.nSiTiShen3_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen3_2]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_2]["TaskNpc"] = tSingleNpc.nNpc_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen3_2]["DialogId"] = tDialog.nTask3_2
--rwtTask[tTask.nSiTiShen3_2]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen3_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen3_2]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen3_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen3_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT

----鲁莽的米吉帕 寻找米吉帕
--rwtTask[tTask.nSiTiShen3_3] = {}
--rwtTask[tTask.nSiTiShen3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21281]
--rwtTask[tTask.nSiTiShen3_3]["PreTaskId"] = tTask.nSiTiShen3_2
--rwtTask[tTask.nSiTiShen3_3]["NextTaskId"] = tTask.nSiTiShen3_4
--rwtTask[tTask.nSiTiShen3_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nSiTiShen3_3]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_3]["ReqTrap1"] =  tTrap.nTrap_Task3_3
--rwtTask[tTask.nSiTiShen3_3]["DialogId"] = tDialog.nTask3_3
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_3
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShouChengGuanFT
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_3]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen3_3]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task3_3
--rwtTask[tTask.nSiTiShen3_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task3_3

----鹿角兽营地 消灭鹿角兽守卫消灭鹿角兽守卫
--rwtTask[tTask.nSiTiShen3_4] = {}
--rwtTask[tTask.nSiTiShen3_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21281]
--rwtTask[tTask.nSiTiShen3_4]["PreTaskId"] = tTask.nSiTiShen3_3
--rwtTask[tTask.nSiTiShen3_4]["NextTaskId"] = tTask.nSiTiShen3_5
--rwtTask[tTask.nSiTiShen3_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTask.nSiTiShen3_4]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_4]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_Task3_4
--rwtTask[tTask.nSiTiShen3_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task3_4
--rwtTask[tTask.nSiTiShen3_4]["ReqTrap1"] =  tTrap.nTrap_Task3_4
--rwtTask[tTask.nSiTiShen3_4]["DialogId"] = tDialog.nTask3_4
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_4
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_Task3_4
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_4]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_4]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tTask.nSiTiShen3_4]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task3_4
--rwtTask[tTask.nSiTiShen3_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task3_4

----受伤的米吉帕
--rwtTask[tTask.nSiTiShen3_5] = {}
--rwtTask[tTask.nSiTiShen3_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21281]
--rwtTask[tTask.nSiTiShen3_5]["PreTaskId"] = tTask.nSiTiShen3_4
--rwtTask[tTask.nSiTiShen3_5]["NextTaskId"] = tTask.nSiTiShen3_6
--rwtTask[tTask.nSiTiShen3_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask.nSiTiShen3_5]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_5]["TaskNpc"] = tSingleNpc.nNpc_JiMiPa_ShouShang
--rwtTask[tTask.nSiTiShen3_5]["DialogId"] = tDialog.nTask3_5
--rwtTask[tTask.nSiTiShen3_5]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_5]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_5]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_JiMiPa_ShouShang
--rwtTask[tTask.nSiTiShen3_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen3_5]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_5]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen3_5]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiMiPa_ShouShang
--rwtTask[tTask.nSiTiShen3_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiMiPa_ShouShang

----亡灵再现
--rwtTask[tTask.nSiTiShen3_6] = {}
--rwtTask[tTask.nSiTiShen3_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21281]
--rwtTask[tTask.nSiTiShen3_6]["PreTaskId"] = tTask.nSiTiShen3_5
--rwtTask[tTask.nSiTiShen3_6]["NextTaskId"] = tTask.nSiTiShen3_7
--rwtTask[tTask.nSiTiShen3_6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nSiTiShen3_6]["IsClickComplete"] = 1
--rwtTask[tTask.nSiTiShen3_6]["ReqTrap1"] =  tTrap.nTrap_Task3_6
--rwtTask[tTask.nSiTiShen3_6]["DialogId"] = tDialog.nTask3_6
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_6
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_Task3_6
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_JiMiPa_ShouShang
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][3]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_6]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask.nSiTiShen3_6]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_6]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tTask.nSiTiShen3_6]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_6]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task3_6
--rwtTask[tTask.nSiTiShen3_6]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task3_6


----再次挑战魔物
--rwtTask[tTask.nSiTiShen3_7] = {}
--rwtTask[tTask.nSiTiShen3_7]["Title"] = tLuaText[LANGUAGE_CONFIG][nil]
--rwtTask[tTask.nSiTiShen3_7]["PreTaskId"] = tTask.nSiTiShen3_6
--rwtTask[tTask.nSiTiShen3_7]["NextTaskId"] = tTask.nSiTiShen3_8
--rwtTask[tTask.nSiTiShen3_7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTask.nSiTiShen3_7]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_7]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_Task3_7
--rwtTask[tTask.nSiTiShen3_7]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task3_7
--rwtTask[tTask.nSiTiShen3_7]["AcceptDialogId"] =tDialog.nTask3_6_1
--rwtTask[tTask.nSiTiShen3_7]["ReqTrap1"] =  tTrap.nTrap_Task3_6
--rwtTask[tTask.nSiTiShen3_7]["DialogId"] = tDialog.nTask3_7_2
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_6
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_Task3_7
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_JiMiPa_ShouShang
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][3]["MapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_7]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
--rwtTask[tTask.nSiTiShen3_7]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_7]["StartAutoWay"]["FindWayTypeId"] = 2
--rwtTask[tTask.nSiTiShen3_7]["StartAutoWay"]["FindWayMapId"] = nMapId_MZGD
--rwtTask[tTask.nSiTiShen3_7]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task3_7
--rwtTask[tTask.nSiTiShen3_7]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task3_7

----护送米吉帕回去
--rwtTask[tTask.nSiTiShen3_8] = {}
--rwtTask[tTask.nSiTiShen3_8]["Title"] = tLuaText[LANGUAGE_CONFIG][nil]
--rwtTask[tTask.nSiTiShen3_8]["PreTaskId"] = tTask.nSiTiShen3_7
--rwtTask[tTask.nSiTiShen3_8]["NextTaskId"] = tTask.nSiTiShen3_9
--rwtTask[tTask.nSiTiShen3_8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nSiTiShen3_8]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_8]["ReqTrap1"] =  tTrap.nTrap_Task3_1
--rwtTask[tTask.nSiTiShen3_8]["DialogId"] = tDialog.nTask3_8
--rwtTask[tTask.nSiTiShen3_8]["AcceptDialogId"] = tDialog.nTask3_7_3  --需要做进亡灵消失之后的动画里，暂时放这里
--rwtTask[tTask.nSiTiShen3_8]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_8]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_8]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_1
--rwtTask[tTask.nSiTiShen3_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_8]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_8]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen3_8]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_8]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task3_1
--rwtTask[tTask.nSiTiShen3_8]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task3_1

----值钱的馈赠
--rwtTask[tTask.nSiTiShen3_9] = {}
--rwtTask[tTask.nSiTiShen3_9]["Title"] = tLuaText[LANGUAGE_CONFIG][nil]
--rwtTask[tTask.nSiTiShen3_9]["PreTaskId"] = tTask.nSiTiShen3_8
----rwtTask[tTask.nSiTiShen3_9]["NextTaskId"] = End
--rwtTask[tTask.nSiTiShen3_9]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask.nSiTiShen3_9]["IsClickComplete"] = 0
--rwtTask[tTask.nSiTiShen3_9]["ReqTrap1"] =  tTrap.nTrap_Task3_1
--rwtTask[tTask.nSiTiShen3_9]["DialogId"] = tDialog.nTask3_9
--rwtTask[tTask.nSiTiShen3_9]["DynaNpcGroupGen"] = {}
--rwtTask[tTask.nSiTiShen3_9]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask.nSiTiShen3_9]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_1
--rwtTask[tTask.nSiTiShen3_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nSiTiShen3_9]["StartAutoWay"] = {}
--rwtTask[tTask.nSiTiShen3_9]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nSiTiShen3_9]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
--rwtTask[tTask.nSiTiShen3_9]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task3_1
--rwtTask[tTask.nSiTiShen3_9]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task3_1
--rwtTask[tTask.nSiTiShen3_9]["Awards"] = {}
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"] = {}
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"][1] = {}
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tSiTiShenAwardId[3]
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tTask.nSiTiShen3_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nSiTiShen3_9
