--region *.lua
--Date
--三月边陲巡查任务
--By:Nzw


--endregion

--******************************数据定义*****************************
------------------任务id---------------
local nSYBCXunChaTask = 50126    --前往执行巡查工作

local tSYBCXunCha = {}
--巡查线1 镇长的委托
tSYBCXunCha.Task1 = 50141   --前往执行巡查工作动画1
tSYBCXunCha.Task1_1 = 50127     --和伊诺克对话
tSYBCXunCha.Task1_2 = 50128     --鹿角兽（0/1）
tSYBCXunCha.Task1_3 = 50129     --鹿角怪（0/1）
tSYBCXunCha.Task1_4 = 50268     --了解真实情况
tSYBCXunCha.Task1_5 = 50269     --接过协议
tSYBCXunCha.Task1_6 = 50130     --回复伊诺克
tSYBCXunCha.Task1_7 = 50131     --返回联盟交接任务

--巡查线2 遗骸调查
tSYBCXunCha.Task2 = 50142	--前往执行巡查工作动画1
tSYBCXunCha.Task2_1 = 50132     --和阿比旦对话
tSYBCXunCha.Task2_2 = 50133     --前往遗骸进行调查
tSYBCXunCha.Task2_3 = 50134     --在遗骸附近搜查
tSYBCXunCha.Task2_4 = 50135     --回复阿比旦
tSYBCXunCha.Task2_5 = 50136     --返回联盟交接任务

-----------------NPC--------------------------
local nNpc_ZhenZhang = 3129  --伊诺克镇长
local nNpc_ABD = 3216        --阿比旦
local nNpc_Cat = 3080        --比多猫
local nNpc_LJG = 3519        --鹿角怪
rwtNpc[nNpc_LJG] =rwtNpc[nNpc_LJG] or {}

rwtNpcGroup[20493] = rwtNpcGroup[20493] or {}
rwtNpcGroup[20493]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20493]["NpcId"]= nNpc_LJG

----------------collection--------------------
local nCollect_JianGu = 60136   --采集物剑骨堆
local nGenId_Collect_JianGu = 20030364

rwtNpcGroup[nCollect_JianGu] = rwtNpcGroup[nCollect_JianGu] or {}
rwtNpcGroup[nCollect_JianGu]["Type"] = CONST_NPCGROUP_TYPE.Collect

local nCollect_LJG = 60286   --采集物鹿角怪
local nGenId_Collect_LJG = 20030499

rwtNpcGroup[nCollect_LJG] = rwtNpcGroup[nCollect_LJG] or {}
rwtNpcGroup[nCollect_LJG]["Type"] = CONST_NPCGROUP_TYPE.Collect

-------------------Trap------------------------
local nTrap_Accept = 30375      --三月边陲巡查任务接取任务陷阱
local nTrap_JianGu = 30376      --调查剑骨陷阱
local nTrap_LJShou = 30385      --鹿角兽战斗陷阱
local nTrap_LJGuai = 30386      --鹿角怪战斗陷阱

local nGenId_Trap_Accept = 20030365 
local nGenId_Trap_JianGu = 20030366 
local nGenId_Trap_LJShou = 20030382 
local nGenId_Trap_LJGuai = 20030383 

rwtNpcGroup[nTrap_Accept] = rwtNpcGroup[nTrap_Accept] or {} 
rwtNpcGroup[nTrap_Accept]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_JianGu] = rwtNpcGroup[nTrap_JianGu] or {} 
rwtNpcGroup[nTrap_JianGu]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_LJShou] = rwtNpcGroup[nTrap_LJShou] or {} 
rwtNpcGroup[nTrap_LJShou]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_LJGuai] = rwtNpcGroup[nTrap_LJGuai] or {} 
rwtNpcGroup[nTrap_LJGuai]["Type"] = CONST_NPCGROUP_TYPE.Trap

---------------Monster------------------------------
local nMonsterGroup_LJShou = 900293     --鹿角兽
local nMonsterGroup_LJGuai = 900294     --鹿角怪
local nMonsterGroup_SMJuRen = 900295    --沙漠巨人

local nGenId_Monster_LJShou = 20030361  --鹿角兽
local nGenId_Monster_LJGuai = 20030362  --鹿角怪
local nGenId_Monster_SMJuRen = 20030363 --沙漠巨人

--------------DialogId------------------------------
--Trap
-- local tDialogId.Task1_High = 10111   --镇长委托对白，镜头至高点时
-- local tDialogId.Task1_NPC = 10111    --镇长委托对白，镜头至NPC时
-- local tDialogId.Task2_High = 10111   --遗骸调查对白，镜头至高点时
-- local tDialogId.Task2_NPC = 10111    --遗骸调查对白，镜头至NPC时

-- local tDialogId.Task_cg01_1 = 11020
-- local tDialogId.Task_cg01_2 = 11021
local tDialogId = {}
tDialogId.Task1_Accept = 11019

tDialogId.Task1 = 11093   --动画对白1
tDialogId.Task1_1 = 11022
tDialogId.Task1_2 = 11023
tDialogId.Task1_3 = 11024
tDialogId.Task1_4 = 11548
-- tDialogId.Task1_5 = 11026
tDialogId.Task1_6 = 11025
tDialogId.Task1_7 = 11026

-- local tDialogId.Task_cg02_1 = 11027
-- local tDialogId.Task_cg02_2 = 11028
tDialogId.Task2 = 11094     --动画对白2
tDialogId.Task2_1 = 11029     --动画对白2
tDialogId.Task2_2 = 11030     --动画对白2
tDialogId.Task2_3 = 11031     --动画对白2
tDialogId.Task2_4 = 11033     --动画对白2
tDialogId.Task2_5 = 11034     --动画对白2


------***************************任务***************************----
rwtTask[nSYBCXunChaTask] = {}
rwtTask[nSYBCXunChaTask]["Title"] = tLuaText[LANGUAGE_CONFIG][20944]
rwtTask[nSYBCXunChaTask]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nSYBCXunChaTask]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[nSYBCXunChaTask]["AcceptDialogId"] = tDialogId.Task1_Accept
rwtTask[nSYBCXunChaTask]["ReqTrap1"] = nTrap_Accept
rwtTask[nSYBCXunChaTask]["PatrolFirstTask"] = 1
rwtTask[nSYBCXunChaTask]["PatrolAfterTask"] = {tSYBCXunCha.Task1,tSYBCXunCha.Task2}
-- rwtTask[nSYBCXunChaTask]["PatrolAfterTask"] = {tSYBCXunCha.Task1_1,tSYBCXunCha.Task1_1}
rwtTask[nSYBCXunChaTask]["PatrolTaskAreaId"] = 2003
rwtTask[nSYBCXunChaTask]["PatrolTaskTownId"] = 200302
rwtTask[nSYBCXunChaTask]["DynaNpcGroupGen"] = {}
rwtTask[nSYBCXunChaTask]["DynaNpcGroupGen"][1] = {}
rwtTask[nSYBCXunChaTask]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Accept
rwtTask[nSYBCXunChaTask]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nSYBCXunChaTask]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nSYBCXunChaTask]["StartAutoWay"] = {}
rwtTask[nSYBCXunChaTask]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nSYBCXunChaTask]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nSYBCXunChaTask]["StartAutoWay"]["FindWayGroupId"] = nTrap_Accept
rwtTask[nSYBCXunChaTask]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Accept

--巡查线一：镇长的委托

rwtTask[tSYBCXunCha.Task1] = {}
rwtTask[tSYBCXunCha.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20945]
rwtTask[tSYBCXunCha.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tSYBCXunCha.Task1]["NextTaskId" ]= tSYBCXunCha.Task1_1
rwtTask[tSYBCXunCha.Task1]["DialogId"] = tDialogId.Task1
rwtTask[tSYBCXunCha.Task1]["ReqTrap1" ]= nTrap_Accept
rwtTask[tSYBCXunCha.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Accept
rwtTask[tSYBCXunCha.Task1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task1]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Accept
rwtTask[tSYBCXunCha.Task1]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Accept


rwtTask[tSYBCXunCha.Task1_1] = {}
rwtTask[tSYBCXunCha.Task1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20946]
rwtTask[tSYBCXunCha.Task1_1]["NextTaskId"] = tSYBCXunCha.Task1_2
rwtTask[tSYBCXunCha.Task1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task1_1]["TaskNpc"] = nNpc_ZhenZhang
rwtTask[tSYBCXunCha.Task1_1]["DialogId"] = tDialogId.Task1_1
rwtTask[tSYBCXunCha.Task1_1]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1_1]["StartAutoWay"]["FindWayGroupId"] = 20165
rwtTask[tSYBCXunCha.Task1_1]["StartAutoWay"]["FindWayGenId"] = 20030023

rwtTask[tSYBCXunCha.Task1_2] = {}
rwtTask[tSYBCXunCha.Task1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20947]
rwtTask[tSYBCXunCha.Task1_2]["NextTaskId"] = tSYBCXunCha.Task1_3
rwtTask[tSYBCXunCha.Task1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSYBCXunCha.Task1_2]["ReqTrap1"] = nTrap_LJShou
rwtTask[tSYBCXunCha.Task1_2]["DialogId"] = tDialogId.Task1_2
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_LJShou
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_LJShou
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task1_2]["MonsterGroupGenId"] = nGenId_Monster_LJShou
rwtTask[tSYBCXunCha.Task1_2]["KillMonsterGroup1"]= nMonsterGroup_LJShou
rwtTask[tSYBCXunCha.Task1_2]["IsClickComplete"] = 0
rwtTask[tSYBCXunCha.Task1_2]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_LJShou
rwtTask[tSYBCXunCha.Task1_2]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_LJShou


rwtTask[tSYBCXunCha.Task1_3] = {}
rwtTask[tSYBCXunCha.Task1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20948]
rwtTask[tSYBCXunCha.Task1_3]["NextTaskId"] = tSYBCXunCha.Task1_4
rwtTask[tSYBCXunCha.Task1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSYBCXunCha.Task1_3]["ReqTrap1"] = nTrap_LJGuai
rwtTask[tSYBCXunCha.Task1_3]["DialogId"] = tDialogId.Task1_3
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_LJGuai
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_LJGuai
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task1_3]["MonsterGroupGenId"] = nGenId_Monster_LJGuai
rwtTask[tSYBCXunCha.Task1_3]["KillMonsterGroup1"]= nMonsterGroup_LJGuai
rwtTask[tSYBCXunCha.Task1_3]["IsClickComplete"] = 0
rwtTask[tSYBCXunCha.Task1_3]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_LJGuai
rwtTask[tSYBCXunCha.Task1_3]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_LJGuai

rwtTask[tSYBCXunCha.Task1_4] = {}
rwtTask[tSYBCXunCha.Task1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21282]
rwtTask[tSYBCXunCha.Task1_4]["NextTaskId"] = tSYBCXunCha.Task1_5
rwtTask[tSYBCXunCha.Task1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task1_4]["TaskNpc"] = nNpc_LJG
rwtTask[tSYBCXunCha.Task1_4]["DialogId"] = tDialogId.Task1_4
rwtTask[tSYBCXunCha.Task1_4]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1_4]["StartAutoWay"]["FindWayGroupId"] = 20493                                                                                                                                                                       
rwtTask[tSYBCXunCha.Task1_4]["StartAutoWay"]["FindWayGenId"] = 20030498
rwtTask[tSYBCXunCha.Task1_4]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task1_4]["DynaNpcGroupGen"][1]["GenId"] = 20030498
rwtTask[tSYBCXunCha.Task1_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tSYBCXunCha.Task1_5] = {}
rwtTask[tSYBCXunCha.Task1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21283]
rwtTask[tSYBCXunCha.Task1_5]["NextTaskId"] = tSYBCXunCha.Task1_6
rwtTask[tSYBCXunCha.Task1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tSYBCXunCha.Task1_5]["ReqCollectId1"] = nCollect_LJG
-- rwtTask[tSYBCXunCha.Task1_5]["DialogId"] = tDialogId.Task1_5
rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Collect_LJG
rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][2] = {}
-- rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][2]["GenId"] = 20030498
-- rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][2]["MapId"] = 2003
-- rwtTask[tSYBCXunCha.Task1_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task1_5]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1_5]["StartAutoWay"]["FindWayGroupId"] = 60286                                                                                                                                                                      
rwtTask[tSYBCXunCha.Task1_5]["StartAutoWay"]["FindWayGenId"] = 20030499


rwtTask[tSYBCXunCha.Task1_6] = {}
rwtTask[tSYBCXunCha.Task1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20949]
rwtTask[tSYBCXunCha.Task1_6]["NextTaskId"] = tSYBCXunCha.Task1_7
rwtTask[tSYBCXunCha.Task1_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task1_6]["TaskNpc"] = nNpc_ZhenZhang
rwtTask[tSYBCXunCha.Task1_6]["DialogId"] = tDialogId.Task1_6
rwtTask[tSYBCXunCha.Task1_6]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_6]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task1_6]["StartAutoWay"]["FindWayGroupId"] = 20165                                                                                                                                                                       
rwtTask[tSYBCXunCha.Task1_6]["StartAutoWay"]["FindWayGenId"] = 20030023

rwtTask[tSYBCXunCha.Task1_7] = {}
rwtTask[tSYBCXunCha.Task1_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20950]
rwtTask[tSYBCXunCha.Task1_7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task1_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task1_7]["TaskNpc"] = nNpc_Cat
rwtTask[tSYBCXunCha.Task1_7]["DialogId"] = tDialogId.Task1_7
rwtTask[tSYBCXunCha.Task1_7]["PatrolLastTask"] = 1
rwtTask[tSYBCXunCha.Task1_7]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task1_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task1_7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tSYBCXunCha.Task1_7]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tSYBCXunCha.Task1_7]["StartAutoWay"]["FindWayGenId"] = 2001658


--巡查线二：遗骸调查

rwtTask[tSYBCXunCha.Task2] = {}
rwtTask[tSYBCXunCha.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][20951]
rwtTask[tSYBCXunCha.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tSYBCXunCha.Task2]["NextTaskId" ]= tSYBCXunCha.Task2_1
rwtTask[tSYBCXunCha.Task2]["DialogId"] = tDialogId.Task2
rwtTask[tSYBCXunCha.Task2]["ReqTrap1" ]= nTrap_Accept
rwtTask[tSYBCXunCha.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Accept
rwtTask[tSYBCXunCha.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task2]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task2]["StartAutoWay"]["FindWayGroupId"] = nTrap_Accept
rwtTask[tSYBCXunCha.Task2]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Accept

rwtTask[tSYBCXunCha.Task2_1] = {}
rwtTask[tSYBCXunCha.Task2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20952]
rwtTask[tSYBCXunCha.Task2_1]["NextTaskId"] = tSYBCXunCha.Task2_2
rwtTask[tSYBCXunCha.Task2_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task2_1]["TaskNpc"] = nNpc_ABD
rwtTask[tSYBCXunCha.Task2_1]["DialogId"] = tDialogId.Task2_1
rwtTask[tSYBCXunCha.Task2_1]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task2_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task2_1]["StartAutoWay"]["FindWayGroupId"] = 20156
rwtTask[tSYBCXunCha.Task2_1]["StartAutoWay"]["FindWayGenId"] = 20030014

rwtTask[tSYBCXunCha.Task2_2] = {}
rwtTask[tSYBCXunCha.Task2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20953]
rwtTask[tSYBCXunCha.Task2_2]["NextTaskId"] = tSYBCXunCha.Task2_3
rwtTask[tSYBCXunCha.Task2_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSYBCXunCha.Task2_2]["ReqCollectId1"] = nCollect_JianGu
rwtTask[tSYBCXunCha.Task2_2]["DialogId"] = tDialogId.Task2_2
rwtTask[tSYBCXunCha.Task2_2]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task2_2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Collect_JianGu
rwtTask[tSYBCXunCha.Task2_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task2_2]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task2_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task2_2]["StartAutoWay"]["FindWayGroupId"] = nCollect_JianGu
rwtTask[tSYBCXunCha.Task2_2]["StartAutoWay"]["FindWayGenId"] = nGenId_Collect_JianGu

rwtTask[tSYBCXunCha.Task2_3] = {}
rwtTask[tSYBCXunCha.Task2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20954]
rwtTask[tSYBCXunCha.Task2_3]["NextTaskId"] = tSYBCXunCha.Task2_4
rwtTask[tSYBCXunCha.Task2_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSYBCXunCha.Task2_3]["ReqTrap1"] = nTrap_JianGu
rwtTask[tSYBCXunCha.Task2_3]["DialogId"] = tDialogId.Task2_3
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"] = {}
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_JianGu
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_SMJuRen
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tSYBCXunCha.Task2_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSYBCXunCha.Task2_3]["MonsterGroupGenId"] = nGenId_Monster_SMJuRen
rwtTask[tSYBCXunCha.Task2_3]["KillMonsterGroup1"]= nMonsterGroup_SMJuRen
rwtTask[tSYBCXunCha.Task2_3]["IsClickComplete"] = 0
rwtTask[tSYBCXunCha.Task2_3]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task2_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task2_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_JianGu
rwtTask[tSYBCXunCha.Task2_3]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_JianGu

rwtTask[tSYBCXunCha.Task2_4] = {}
rwtTask[tSYBCXunCha.Task2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20955]
rwtTask[tSYBCXunCha.Task2_4]["NextTaskId"] = tSYBCXunCha.Task2_5
rwtTask[tSYBCXunCha.Task2_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task2_4]["TaskNpc"] = nNpc_ABD
rwtTask[tSYBCXunCha.Task2_4]["DialogId"] = tDialogId.Task2_4
rwtTask[tSYBCXunCha.Task2_4]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task2_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSYBCXunCha.Task2_4]["StartAutoWay"]["FindWayGroupId"] = 20156
rwtTask[tSYBCXunCha.Task2_4]["StartAutoWay"]["FindWayGenId"] = 20030014

rwtTask[tSYBCXunCha.Task2_5] = {}
rwtTask[tSYBCXunCha.Task2_5]["Title"] =tLuaText[LANGUAGE_CONFIG][20956]
rwtTask[tSYBCXunCha.Task2_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tSYBCXunCha.Task2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSYBCXunCha.Task2_5]["TaskNpc"] = nNpc_Cat
rwtTask[tSYBCXunCha.Task2_5]["DialogId"] = tDialogId.Task2_5
rwtTask[tSYBCXunCha.Task2_5]["PatrolLastTask"] = 1
rwtTask[tSYBCXunCha.Task2_5]["StartAutoWay"] = {}
rwtTask[tSYBCXunCha.Task2_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSYBCXunCha.Task2_5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tSYBCXunCha.Task2_5]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tSYBCXunCha.Task2_5]["StartAutoWay"]["FindWayGenId"] = 2001658