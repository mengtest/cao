--region [PatrolTask]AiHaoShenDian.lua
--Purpose:		哀嚎神殿巡查
--Creator: 		黄艳婷
--Created:		2019-10-17
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-12-06 $
--RCS-ID:		$Revision: 4 $
--endregion

----******************************************************
--巡查奖励配置：
--普通宝箱
local nNormal_Box_AwardId = 2000152

--接巡查任务/出发巡查
local tAiHaoShenDianTask = {}

tAiHaoShenDianTask.Task1 = 50000
--巡查线场景动画新增任务
tAiHaoShenDianTask.Task1_1 = 50147
tAiHaoShenDianTask.Task1_2 = 50148
tAiHaoShenDianTask.Task1_3 = 50149
tAiHaoShenDianTask.Task1_4 = 50150
tAiHaoShenDianTask.Task1_5 = 50151
tAiHaoShenDianTask.Task1_6 = 50152

--巡查线一/神秘宝箱
--开启宝箱
tAiHaoShenDianTask.Task2 = 50001
--回复联盟
tAiHaoShenDianTask.Task3 = 50002
--巡查线二
--开启宝箱    
tAiHaoShenDianTask.Task4 = 50003
--回报联盟
tAiHaoShenDianTask.Task5 = 50004
 --巡查线三
--调查石碑
tAiHaoShenDianTask.Task6 = 50005
--回报联盟
tAiHaoShenDianTask.Task7 = 50006
 --巡查线四
--调查石碑
tAiHaoShenDianTask.Task8 = 50007
--灰白联盟
tAiHaoShenDianTask.Task9 = 50008
 --巡查线五
--解救
tAiHaoShenDianTask.Task10 = 50009
--询问
tAiHaoShenDianTask.Task11 = 50010

--新增追踪恶灵气息
tAiHaoShenDianTask.TaskNew_1 = 50208
--新增在附近详细查看
tAiHaoShenDianTask.TaskNew_2 = 50209
--解救被控制的佣兵
tAiHaoShenDianTask.Task12 = 50011
--告知佣兵托尼
tAiHaoShenDianTask.Task13 = 50012
--回报联盟
tAiHaoShenDianTask.Task14 = 50013

--巡查线六
--对话择欧密探
tAiHaoShenDianTask.Task15 = 50014
--选项一
--镇压亡魂死徒
tAiHaoShenDianTask.Task16 = 50015
--新增检查魔物消失的地点
tAiHaoShenDianTask.TaskNew_3 = 50210
--镇压亡魂死士
tAiHaoShenDianTask.Task17 = 50016
--新增再次检查
tAiHaoShenDianTask.TaskNew_4 = 50211
--回复欧泽密探
tAiHaoShenDianTask.Task18 = 50017
--回报联盟
tAiHaoShenDianTask.Task19 = 50018
--新增和泽欧密探对话
tAiHaoShenDianTask.TaskNew_5 = 50212
--新增查看石碑
tAiHaoShenDianTask.TaskNew_6 = 50213
--新增查看石碑
tAiHaoShenDianTask.TaskNew_7 = 50214
--新增战胜魔法侍魂
tAiHaoShenDianTask.TaskNew_8 = 50215
--新增回复泽欧密探
tAiHaoShenDianTask.TaskNew_9 = 50216
--新增返回联盟交接任务
tAiHaoShenDianTask.TaskNew_10 = 50217

local nMapId = 2001 --地图id
local nBiDuoMao = 3080  --比多猫npc
local nBiDuoMao_Group = 20115
local nBiDuoMao_Gen = 2001658
local nZeOu = 3070  --泽欧探长
local nZeOu_Group = 20094
local nZeOu_Gen = 2001183
local nTony = 3069 --佣兵托尼
local nTony_Group = 20095
local nTony_Gen = 2001184
--npc组
--宝箱 
local nTreasureBox_1 = 40073
local nTreasureBox_2 = 40074

rwtNpcGroup[nTreasureBox_1] = rwtNpcGroup[nTreasureBox_1] or {}  --宝箱1
rwtNpcGroup[nTreasureBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_1]["Awards"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nTreasureBox_2] = rwtNpcGroup[nTreasureBox_2] or {}  --宝箱2
rwtNpcGroup[nTreasureBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasureBox_2]["Dialog"]= 10881
rwtNpcGroup[nTreasureBox_2]["Awards"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--石碑 
local nCollect_1 = 60112
local nCollect_1_gen = 2001881
local nCollect_2 = 60113
local nCollect_2_gen = 2001882
local nCollect_3 = 60198
local nCollect_3_gen = 2001980
local nCollect_4 = 60199
local nCollect_4_gen1 = 2001981
local nCollect_4_gen2 = 2001982
local nCollect_5 = 60200
local nCollect_5_gen1 = 2001983
local nCollect_5_gen2 = 2001984

rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}     --石碑1
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}     --石碑2
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}     --查看
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}     --检查
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}     --查看石碑
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--陷阱 30327-30334
local nTrap_1 = 30327
local nTrap_gen_1 = 2001873
local nTrap_2 = 30328
local nTrap_gen_2 = 2001874 
local nTrap_3 = 30329 
local nTrap_gen_3 = 2001875
local nTrap_4 = 30330 
local nTrap_gen_4 = 2001876
local nTrap_5 = 30331 
local nTrap_gen_5 = 2001877
local nTrap_6 = 30332 
local nTrap_gen_6 = 2001878
local nTrap_7 = 30420 
local nTrap_gen_7 = 2001986

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}   
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}   
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}  
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}  
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_6] = rwtNpcGroup[nTrap_6] or {}  
rwtNpcGroup[nTrap_6]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_7] = rwtNpcGroup[nTrap_7] or {}  
rwtNpcGroup[nTrap_7]["Type"] = CONST_NPCGROUP_TYPE.Trap

local nDialog_1 = 10878
local nDialog_2 = 11099
local nDialog_3 = 10881
local nDialog_4 = 10882
local nDialog_5 = 11101
local nDialog_6 = 10884
local nDialog_7 = 10885
local nDialog_8 = 11102
local nDialog_9 = 10887
local nDialog_10 = 11103
local nDialog_11 = 10889
local nDialog_12 = 10890
local nDialog_13 = 11191
local nDialog_14 = 10891
local nDialog_15 = 10892
local nDialog_16 = 10893
local nDialog_17 = 11104
local nDialog_18 = 11192
local nDialog_19 = 10896
local nDialog_20 = 11193
local nDialog_21 = 10897
local nDialog_22 = 11194
local nDialog_23 = 10898
local nDialog_24 = 11195
local nDialog_25 = 11196
local nDialog_26 = 11197
local nDialog_27 = 11198
local nDialog_28 = 11199
local nDialog_29 = 11976 --虽然她暂时解除了魔化，但需要马上进行治疗。我得立刻通知托尼。

--怪物
--
local nMonster1_group = 900263
local nMonster1_gen = 2001883

local nMonster2_group = 900264
local nMonster2_gen = 2001884

local nMonster3_group = 900265
local nMonster3_gen = 2001885

local nMonster4_group = 900266
local nMonster4_gen = 2001886

local nMonster5_group = 900307
local nMonster5_gen = 2001985


-- nAiHaoShenDianTask
rwtTask[tAiHaoShenDianTask.Task1] = {}
rwtTask[tAiHaoShenDianTask.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20762]
rwtTask[tAiHaoShenDianTask.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tAiHaoShenDianTask.Task1]["AcceptDialogId"] = nDialog_1
rwtTask[tAiHaoShenDianTask.Task1]["ReqTrap1"] = nTrap_1
rwtTask[tAiHaoShenDianTask.Task1]["PatrolFirstTask"] = 1
rwtTask[tAiHaoShenDianTask.Task1]["PatrolAfterTask"] = {tAiHaoShenDianTask.Task1_1,tAiHaoShenDianTask.Task1_2,tAiHaoShenDianTask.Task1_3,tAiHaoShenDianTask.Task1_4,tAiHaoShenDianTask.Task1_5,tAiHaoShenDianTask.Task1_6}
rwtTask[tAiHaoShenDianTask.Task1]["PatrolTaskAreaId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1]["PatrolTaskTownId"] = 200105
rwtTask[tAiHaoShenDianTask.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAiHaoShenDianTask.Task1]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task1]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task1]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task1]["StartAutoWay"]["FindWayGroupId"] =nTrap_1
rwtTask[tAiHaoShenDianTask.Task1]["StartAutoWay"]["FindWayGenId"] =nTrap_gen_1

--新增 场景动画1
rwtTask[tAiHaoShenDianTask.Task1_1] = {}
rwtTask[tAiHaoShenDianTask.Task1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20763]
rwtTask[tAiHaoShenDianTask.Task1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.Task1_1]["NextTaskId" ]= tAiHaoShenDianTask.Task2
rwtTask[tAiHaoShenDianTask.Task1_1]["DialogId"] = nDialog_2
rwtTask[tAiHaoShenDianTask.Task1_1]["AutoTaskDialog"] = nDialog_2
rwtTask[tAiHaoShenDianTask.Task1_1]["ReqTrap1" ]= nTrap_1
rwtTask[tAiHaoShenDianTask.Task1_1]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tAiHaoShenDianTask.Task1_1]["StartAutoWay"] = {}
-- rwtTask[tAiHaoShenDianTask.Task1_1]["StartAutoWay"]["FindWayTypeId"]=0
-- rwtTask[tAiHaoShenDianTask.Task1_1]["StartAutoWay"]["FindWayMapId"] =nMapId
-- rwtTask[tAiHaoShenDianTask.Task1_1]["StartAutoWay"]["FindWayPos"] = " -26.96,0.44,-172.70"

--开启宝箱
rwtTask[tAiHaoShenDianTask.Task2] = {}
rwtTask[tAiHaoShenDianTask.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][20764]
rwtTask[tAiHaoShenDianTask.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tAiHaoShenDianTask.Task2]["NextTaskId"] = tAiHaoShenDianTask.Task3
rwtTask[tAiHaoShenDianTask.Task2]["ReqTreasureBox"] = nTreasureBox_1
rwtTask[tAiHaoShenDianTask.Task2]["DialogId"] = nDialog_3
rwtTask[tAiHaoShenDianTask.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task2]["DynaNpcGroupGen"][1]["GenId"] = 2001879
rwtTask[tAiHaoShenDianTask.Task2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task2]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task2]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task2]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task2]["StartAutoWay"]["FindWayGroupId"] =nTreasureBox_1
rwtTask[tAiHaoShenDianTask.Task2]["StartAutoWay"]["FindWayGenId"] =2001879


--回复联盟
rwtTask[tAiHaoShenDianTask.Task3] = {}
rwtTask[tAiHaoShenDianTask.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.Task3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task3]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.Task3]["DialogId"] = nDialog_4
rwtTask[tAiHaoShenDianTask.Task3]["PatrolLastTask"] = 1
rwtTask[tAiHaoShenDianTask.Task3]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task3]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.Task3]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.Task3]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen


--新增 场景动画2
rwtTask[tAiHaoShenDianTask.Task1_2] = {}
rwtTask[tAiHaoShenDianTask.Task1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20763]
rwtTask[tAiHaoShenDianTask.Task1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.Task1_2]["NextTaskId" ]= tAiHaoShenDianTask.Task4
rwtTask[tAiHaoShenDianTask.Task1_2]["DialogId"] = 11100
rwtTask[tAiHaoShenDianTask.Task1_2]["AutoTaskDialog"] = 11100
rwtTask[tAiHaoShenDianTask.Task1_2]["ReqTrap1" ]= nTrap_1
rwtTask[tAiHaoShenDianTask.Task1_2]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tAiHaoShenDianTask.Task1_2]["StartAutoWay"] = {}
-- rwtTask[tAiHaoShenDianTask.Task1_2]["StartAutoWay"]["FindWayTypeId"]=0
-- rwtTask[tAiHaoShenDianTask.Task1_2]["StartAutoWay"]["FindWayMapId"] =nMapId
-- rwtTask[tAiHaoShenDianTask.Task1_2]["StartAutoWay"]["FindWayPos"] = " -26.96,0.44,-172.70"

--开启宝箱    
rwtTask[tAiHaoShenDianTask.Task4] = {}
rwtTask[tAiHaoShenDianTask.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20764]
rwtTask[tAiHaoShenDianTask.Task4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tAiHaoShenDianTask.Task4]["NextTaskId"] = tAiHaoShenDianTask.Task5
rwtTask[tAiHaoShenDianTask.Task4]["ReqTreasureBox"] = nTreasureBox_2
rwtTask[tAiHaoShenDianTask.Task4]["DialogId"]= nDialog_3
rwtTask[tAiHaoShenDianTask.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task4]["DynaNpcGroupGen"][1]["GenId"] = 2001880
rwtTask[tAiHaoShenDianTask.Task4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task4]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task4]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task4]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task4]["StartAutoWay"]["FindWayGroupId"] =nTreasureBox_2
rwtTask[tAiHaoShenDianTask.Task4]["StartAutoWay"]["FindWayGenId"] =2001880


--回报联盟
rwtTask[tAiHaoShenDianTask.Task5] = {}
rwtTask[tAiHaoShenDianTask.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.Task5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task5]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.Task5]["DialogId"] = nDialog_4
rwtTask[tAiHaoShenDianTask.Task5]["PatrolLastTask"] = 1 
rwtTask[tAiHaoShenDianTask.Task5]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task5]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.Task5]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.Task5]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen

--新增 场景动画3
rwtTask[tAiHaoShenDianTask.Task1_3] = {}
rwtTask[tAiHaoShenDianTask.Task1_3]["Title"] =tLuaText[LANGUAGE_CONFIG][20763]
rwtTask[tAiHaoShenDianTask.Task1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.Task1_3]["NextTaskId" ]= tAiHaoShenDianTask.Task6
rwtTask[tAiHaoShenDianTask.Task1_3]["DialogId"] = nDialog_5
rwtTask[tAiHaoShenDianTask.Task1_3]["AutoTaskDialog"] = nDialog_5
rwtTask[tAiHaoShenDianTask.Task1_3]["ReqTrap1" ]= nTrap_1
rwtTask[tAiHaoShenDianTask.Task1_3]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tAiHaoShenDianTask.Task1_3]["StartAutoWay"] = {}
-- rwtTask[tAiHaoShenDianTask.Task1_3]["StartAutoWay"]["FindWayTypeId"]=0
-- rwtTask[tAiHaoShenDianTask.Task1_3]["StartAutoWay"]["FindWayMapId"] =nMapId
-- rwtTask[tAiHaoShenDianTask.Task1_3]["StartAutoWay"]["FindWayPos"] = " -26.96,0.44,-172.70"

--调查石碑
rwtTask[tAiHaoShenDianTask.Task6] = {}
rwtTask[tAiHaoShenDianTask.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][20770]
rwtTask[tAiHaoShenDianTask.Task6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAiHaoShenDianTask.Task6]["NextTaskId"] = tAiHaoShenDianTask.Task7
rwtTask[tAiHaoShenDianTask.Task6]["DialogId"] = nDialog_6
--rwtTask[tAiHaoShenDianTask.Task6]["PatrolCg"] = 2110
rwtTask[tAiHaoShenDianTask.Task6]["ReqCollectId1"] = nCollect_1
rwtTask[tAiHaoShenDianTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = nCollect_1_gen
rwtTask[tAiHaoShenDianTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task6]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task6]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task6]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task6]["StartAutoWay"]["FindWayGroupId"] =nCollect_1
rwtTask[tAiHaoShenDianTask.Task6]["StartAutoWay"]["FindWayGenId"] =nCollect_1_gen

--回报联盟
 
rwtTask[tAiHaoShenDianTask.Task7] = {}
rwtTask[tAiHaoShenDianTask.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.Task7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task7]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.Task7]["DialogId"] = nDialog_7
rwtTask[tAiHaoShenDianTask.Task7]["PatrolLastTask"] = 1  
rwtTask[tAiHaoShenDianTask.Task7]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task7]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task7]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.Task7]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.Task7]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen

--rwtTask[tAiHaoShenDianTask.Task7]["AwardId"] = 2000129 

--新增 场景动画4
rwtTask[tAiHaoShenDianTask.Task1_4] = {}
rwtTask[tAiHaoShenDianTask.Task1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20763]
rwtTask[tAiHaoShenDianTask.Task1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.Task1_4]["NextTaskId" ]= tAiHaoShenDianTask.Task8
rwtTask[tAiHaoShenDianTask.Task1_4]["DialogId"] = nDialog_8
rwtTask[tAiHaoShenDianTask.Task1_4]["AutoTaskDialog"] = nDialog_8
rwtTask[tAiHaoShenDianTask.Task1_4]["ReqTrap1" ]= nTrap_1
rwtTask[tAiHaoShenDianTask.Task1_4]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1_4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tAiHaoShenDianTask.Task1_4]["StartAutoWay"] = {}
-- rwtTask[tAiHaoShenDianTask.Task1_4]["StartAutoWay"]["FindWayTypeId"]=0
-- rwtTask[tAiHaoShenDianTask.Task1_4]["StartAutoWay"]["FindWayMapId"] =nMapId
-- rwtTask[tAiHaoShenDianTask.Task1_4]["StartAutoWay"]["FindWayPos"] = " -26.96,0.44,-172.70"

--调查石碑
rwtTask[tAiHaoShenDianTask.Task8] = {}
rwtTask[tAiHaoShenDianTask.Task8]["Title"] = tLuaText[LANGUAGE_CONFIG][20770]
rwtTask[tAiHaoShenDianTask.Task8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAiHaoShenDianTask.Task8]["NextTaskId"] = tAiHaoShenDianTask.Task9
rwtTask[tAiHaoShenDianTask.Task8]["DialogId"] = nDialog_9
--rwtTask[tAiHaoShenDianTask.Task8]["PatrolCg"] = 2111
rwtTask[tAiHaoShenDianTask.Task8]["ReqCollectId1"] = nCollect_2
rwtTask[tAiHaoShenDianTask.Task8]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task8]["DynaNpcGroupGen"][1]["GenId"] = nCollect_2_gen
rwtTask[tAiHaoShenDianTask.Task8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task8]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task8]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task8]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task8]["StartAutoWay"]["FindWayGroupId"] =nCollect_2
rwtTask[tAiHaoShenDianTask.Task8]["StartAutoWay"]["FindWayGenId"] =nCollect_2_gen

--回报联盟

rwtTask[tAiHaoShenDianTask.Task9] = {}
rwtTask[tAiHaoShenDianTask.Task9]["Title"] = tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.Task9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task9]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.Task9]["DialogId"] = nDialog_7
rwtTask[tAiHaoShenDianTask.Task9]["PatrolLastTask"] = 1  
rwtTask[tAiHaoShenDianTask.Task9]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task9]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task9]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.Task9]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.Task9]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen

--rwtTask[tAiHaoShenDianTask.Task9]["AwardId"] = 2000130

--新增 场景动画5
rwtTask[tAiHaoShenDianTask.Task1_5] = {}
rwtTask[tAiHaoShenDianTask.Task1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20763]
rwtTask[tAiHaoShenDianTask.Task1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.Task1_5]["NextTaskId" ]= tAiHaoShenDianTask.Task10
rwtTask[tAiHaoShenDianTask.Task1_5]["DialogId"] = nDialog_10
rwtTask[tAiHaoShenDianTask.Task1_5]["AutoTaskDialog"] = nDialog_10
rwtTask[tAiHaoShenDianTask.Task1_5]["ReqTrap1" ]= nTrap_1
rwtTask[tAiHaoShenDianTask.Task1_5]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1_5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tAiHaoShenDianTask.Task1_5]["StartAutoWay"] = {}
-- rwtTask[tAiHaoShenDianTask.Task1_5]["StartAutoWay"]["FindWayTypeId"]=0
-- rwtTask[tAiHaoShenDianTask.Task1_5]["StartAutoWay"]["FindWayMapId"] =nMapId
-- rwtTask[tAiHaoShenDianTask.Task1_5]["StartAutoWay"]["FindWayPos"] = " -26.96,0.44,-172.70"

--解救
rwtTask[tAiHaoShenDianTask.Task10] = {}
rwtTask[tAiHaoShenDianTask.Task10]["Title"] = tLuaText[LANGUAGE_CONFIG][20776]
rwtTask[tAiHaoShenDianTask.Task10]["NextTaskId"] = tAiHaoShenDianTask.Task11
rwtTask[tAiHaoShenDianTask.Task10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAiHaoShenDianTask.Task10]["TaskNpc"] = nTony --佣兵托尼
rwtTask[tAiHaoShenDianTask.Task10]["DialogId"] = nDialog_11
rwtTask[tAiHaoShenDianTask.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task10]["DynaNpcGroupGen"][1]["GenId"] = nMonster1_gen
rwtTask[tAiHaoShenDianTask.Task10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task10]["MonsterGroupGenId"] = nMonster1_gen
rwtTask[tAiHaoShenDianTask.Task10]["KillMonsterGroup1" ]= nMonster1_group
rwtTask[tAiHaoShenDianTask.Task10]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask.Task10]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task10]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task10]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task10]["StartAutoWay"]["FindWayGroupId"] = nTony_Group
rwtTask[tAiHaoShenDianTask.Task10]["StartAutoWay"]["FindWayGenId"] = nTony_Gen

--询问
rwtTask[tAiHaoShenDianTask.Task11] = {}
rwtTask[tAiHaoShenDianTask.Task11]["Title"] = tLuaText[LANGUAGE_CONFIG][20777]
rwtTask[tAiHaoShenDianTask.Task11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task11]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_1
rwtTask[tAiHaoShenDianTask.Task11]["TaskNpc"] = nTony --佣兵托尼
rwtTask[tAiHaoShenDianTask.Task11]["DialogId"] = nDialog_12
rwtTask[tAiHaoShenDianTask.Task11]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task11]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task11]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task11]["StartAutoWay"]["FindWayGroupId"] = nTony_Group
rwtTask[tAiHaoShenDianTask.Task11]["StartAutoWay"]["FindWayGenId"] = nTony_Gen

--新增追踪恶灵气息
rwtTask[tAiHaoShenDianTask.TaskNew_1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20778]
rwtTask[tAiHaoShenDianTask.TaskNew_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.TaskNew_1]["NextTaskId"]= tAiHaoShenDianTask.TaskNew_2
rwtTask[tAiHaoShenDianTask.TaskNew_1]["DialogId"] = nDialog_13
rwtTask[tAiHaoShenDianTask.TaskNew_1]["ReqTrap1"]= nTrap_2
rwtTask[tAiHaoShenDianTask.TaskNew_1]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_2
rwtTask[tAiHaoShenDianTask.TaskNew_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_1]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_1]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_1]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_1]["StartAutoWay"]["FindWayGroupId"] =nTrap_2
rwtTask[tAiHaoShenDianTask.TaskNew_1]["StartAutoWay"]["FindWayGenId"] =nTrap_gen_2

--新增在附近详细查看
rwtTask[tAiHaoShenDianTask.TaskNew_2] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20779]
rwtTask[tAiHaoShenDianTask.TaskNew_2]["NextTaskId"] = tAiHaoShenDianTask.Task12
rwtTask[tAiHaoShenDianTask.TaskNew_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tAiHaoShenDianTask.TaskNew_2]["DialogId"] = 10912
rwtTask[tAiHaoShenDianTask.TaskNew_2]["ReqCollectId1"] = nCollect_3
rwtTask[tAiHaoShenDianTask.TaskNew_2]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_2]["DynaNpcGroupGen"][1]["GenId"] = nCollect_3_gen
rwtTask[tAiHaoShenDianTask.TaskNew_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_2]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_2]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_2]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_2]["StartAutoWay"]["FindWayGroupId"] =nCollect_3
rwtTask[tAiHaoShenDianTask.TaskNew_2]["StartAutoWay"]["FindWayGenId"] =nCollect_3_gen

--寻找米莱
rwtTask[tAiHaoShenDianTask.Task12] = {}
rwtTask[tAiHaoShenDianTask.Task12]["Title"] = tLuaText[LANGUAGE_CONFIG][20780]
rwtTask[tAiHaoShenDianTask.Task12]["NextTaskId"] = tAiHaoShenDianTask.Task13
rwtTask[tAiHaoShenDianTask.Task12]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tAiHaoShenDianTask.Task12]["TaskNpc"] = nTony --米莱
rwtTask[tAiHaoShenDianTask.Task12]["ReqTrap1"] = nTrap_3
rwtTask[tAiHaoShenDianTask.Task12]["DialogId"] = nDialog_14
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][1]["GenId"] = nMonster2_gen
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_3
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task12]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task12]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAiHaoShenDianTask.Task12]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task12]["StartAutoWay"]["FindWayGroupId"] = nMonster2_group
rwtTask[tAiHaoShenDianTask.Task12]["StartAutoWay"]["FindWayGenId"] = nMonster2_gen
rwtTask[tAiHaoShenDianTask.Task12]["MonsterGroupGenId"] = nMonster2_gen
rwtTask[tAiHaoShenDianTask.Task12]["KillMonsterGroup1" ]= nMonster2_group --黑色荆棘米莱
rwtTask[tAiHaoShenDianTask.Task12]["IsClickComplete"] = 0

--送回托尼
rwtTask[tAiHaoShenDianTask.Task13] = {}
rwtTask[tAiHaoShenDianTask.Task13]["Title"] = tLuaText[LANGUAGE_CONFIG][20781]
rwtTask[tAiHaoShenDianTask.Task13]["NextTaskId"] = tAiHaoShenDianTask.Task14
rwtTask[tAiHaoShenDianTask.Task13]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task13]["TaskNpc"] = nTony --佣兵托尼
--rwtTask[tAiHaoShenDianTask.Task13]["ReqTrap1"] = nTrap_4
rwtTask[tAiHaoShenDianTask.Task13]["DialogId"] = nDialog_15
--rwtTask[tAiHaoShenDianTask.Task13]["DynaNpcGroupGen"] = {}
--rwtTask[tAiHaoShenDianTask.Task13]["DynaNpcGroupGen"][1] = {}
--rwtTask[tAiHaoShenDianTask.Task13]["DynaNpcGroupGen"][1]["GenId"] =nTrap_gen_4
--rwtTask[tAiHaoShenDianTask.Task13]["DynaNpcGroupGen"][1]["MapId"] =nMapId
--rwtTask[tAiHaoShenDianTask.Task13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task13]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task13]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task13]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task13]["StartAutoWay"]["FindWayGroupId"] =nTony_Group
rwtTask[tAiHaoShenDianTask.Task13]["StartAutoWay"]["FindWayGenId"] =nTony_Gen

--回报联盟
rwtTask[tAiHaoShenDianTask.Task14] = {}
rwtTask[tAiHaoShenDianTask.Task14]["Title"] =tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.Task14]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task14]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.Task14]["DialogId"] = nDialog_16
rwtTask[tAiHaoShenDianTask.Task14]["PatrolLastTask"] = 1
rwtTask[tAiHaoShenDianTask.Task14]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task14]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task14]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.Task14]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.Task14]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen  

--新增 场景动画6
rwtTask[tAiHaoShenDianTask.Task1_6] = {}
rwtTask[tAiHaoShenDianTask.Task1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20763]
rwtTask[tAiHaoShenDianTask.Task1_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask.Task1_6]["NextTaskId" ]= tAiHaoShenDianTask.Task15
rwtTask[tAiHaoShenDianTask.Task1_6]["DialogId"] = nDialog_17
rwtTask[tAiHaoShenDianTask.Task1_6]["AutoTaskDialog"] = nDialog_17
rwtTask[tAiHaoShenDianTask.Task1_6]["ReqTrap1" ]= nTrap_1
rwtTask[tAiHaoShenDianTask.Task1_6]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task1_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task1_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tAiHaoShenDianTask.Task1_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task1_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tAiHaoShenDianTask.Task1_6]["StartAutoWay"] = {}
-- rwtTask[tAiHaoShenDianTask.Task1_6]["StartAutoWay"]["FindWayTypeId"]=0
-- rwtTask[tAiHaoShenDianTask.Task1_6]["StartAutoWay"]["FindWayMapId"] =nMapId
-- rwtTask[tAiHaoShenDianTask.Task1_6]["StartAutoWay"]["FindWayPos"] = " -26.96,0.44,-172.70"

--对话择欧密探
rwtTask[tAiHaoShenDianTask.Task15] = {}
rwtTask[tAiHaoShenDianTask.Task15]["Title"] = tLuaText[LANGUAGE_CONFIG][20784]
rwtTask[tAiHaoShenDianTask.Task15]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tAiHaoShenDianTask.Task15]["NextTaskId"] = tAiHaoShenDianTask.Task16
rwtTask[tAiHaoShenDianTask.Task15]["TaskNpc"] = nZeOu
rwtTask[tAiHaoShenDianTask.Task15]["DialogId"] = nDialog_18
--rwtTask[tAiHaoShenDianTask.Task15]["PatrolCg"] = 2113
rwtTask[tAiHaoShenDianTask.Task15]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task15]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task15]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task15]["StartAutoWay"]["FindWayGroupId"] = nZeOu_Group
rwtTask[tAiHaoShenDianTask.Task15]["StartAutoWay"]["FindWayGenId"] = nZeOu_Gen
rwtTask[tAiHaoShenDianTask.Task15]["OptionTask1"] = tAiHaoShenDianTask.Task16 --选项1任务
rwtTask[tAiHaoShenDianTask.Task15]["OptionTask2"] = tAiHaoShenDianTask.TaskNew_5  --选项2任务

--选项一
--镇压亡魂死徒
rwtTask[tAiHaoShenDianTask.Task16] = {}
rwtTask[tAiHaoShenDianTask.Task16]["Title"] = tLuaText[LANGUAGE_CONFIG][20785]
rwtTask[tAiHaoShenDianTask.Task16]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_3
rwtTask[tAiHaoShenDianTask.Task16]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAiHaoShenDianTask.Task16]["DialogId"] = nDialog_19
rwtTask[tAiHaoShenDianTask.Task16]["ReqTrap1"] = nTrap_5
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][1]["GenId"] =nMonster3_gen
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][1]["MapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][2]["GenId"] =nTrap_gen_5
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task16]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task16]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAiHaoShenDianTask.Task16]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task16]["StartAutoWay"]["FindWayGroupId"] = nMonster3_group
rwtTask[tAiHaoShenDianTask.Task16]["StartAutoWay"]["FindWayGenId"] = nMonster3_gen
rwtTask[tAiHaoShenDianTask.Task16]["MonsterGroupGenId"] = nMonster3_gen
rwtTask[tAiHaoShenDianTask.Task16]["KillMonsterGroup1" ]= nMonster3_group
rwtTask[tAiHaoShenDianTask.Task16]["IsClickComplete"] = 0

--新增检查魔物消失的地点
rwtTask[tAiHaoShenDianTask.TaskNew_3] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20786]
rwtTask[tAiHaoShenDianTask.TaskNew_3]["NextTaskId"] = tAiHaoShenDianTask.Task17
rwtTask[tAiHaoShenDianTask.TaskNew_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAiHaoShenDianTask.TaskNew_3]["DialogId"] = nDialog_20
rwtTask[tAiHaoShenDianTask.TaskNew_3]["ReqCollectId1"] = nCollect_4
rwtTask[tAiHaoShenDianTask.TaskNew_3]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_4_gen1
rwtTask[tAiHaoShenDianTask.TaskNew_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_3]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_3]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_3]["StartAutoWay"]["FindWayGroupId"] =nCollect_4
rwtTask[tAiHaoShenDianTask.TaskNew_3]["StartAutoWay"]["FindWayGenId"] =nCollect_4_gen1


--镇压亡魂死士
rwtTask[tAiHaoShenDianTask.Task17] = {}
rwtTask[tAiHaoShenDianTask.Task17]["Title"] = tLuaText[LANGUAGE_CONFIG][20787]
rwtTask[tAiHaoShenDianTask.Task17]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_4
rwtTask[tAiHaoShenDianTask.Task17]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAiHaoShenDianTask.Task17]["DialogId"] = nDialog_21
rwtTask[tAiHaoShenDianTask.Task17]["ReqTrap1"] = nTrap_6
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][1]["GenId"] = nMonster4_gen
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_6
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task17]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.Task17]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task17]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tAiHaoShenDianTask.Task17]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tAiHaoShenDianTask.Task17]["StartAutoWay"]["FindWayGroupId"] = nMonster4_group
rwtTask[tAiHaoShenDianTask.Task17]["StartAutoWay"]["FindWayGenId"] = nMonster4_gen
rwtTask[tAiHaoShenDianTask.Task17]["MonsterGroupGenId"] = nMonster4_gen
rwtTask[tAiHaoShenDianTask.Task17]["KillMonsterGroup1" ]= nMonster4_group
rwtTask[tAiHaoShenDianTask.Task17]["IsClickComplete"] = 0

--新增再次检查
rwtTask[tAiHaoShenDianTask.TaskNew_4] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20788]
rwtTask[tAiHaoShenDianTask.TaskNew_4]["NextTaskId"] = tAiHaoShenDianTask.Task18
rwtTask[tAiHaoShenDianTask.TaskNew_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAiHaoShenDianTask.TaskNew_4]["DialogId"] = nDialog_22
rwtTask[tAiHaoShenDianTask.TaskNew_4]["ReqCollectId1"] = nCollect_4
rwtTask[tAiHaoShenDianTask.TaskNew_4]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_4_gen2
rwtTask[tAiHaoShenDianTask.TaskNew_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_4]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_4]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_4]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_4]["StartAutoWay"]["FindWayGroupId"] =nCollect_4
rwtTask[tAiHaoShenDianTask.TaskNew_4]["StartAutoWay"]["FindWayGenId"] =nCollect_4_gen2

--回复欧泽密探
rwtTask[tAiHaoShenDianTask.Task18] = {}
rwtTask[tAiHaoShenDianTask.Task18]["Title"] = tLuaText[LANGUAGE_CONFIG][20789]
rwtTask[tAiHaoShenDianTask.Task18]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task18]["NextTaskId"] = tAiHaoShenDianTask.Task19
rwtTask[tAiHaoShenDianTask.Task18]["TaskNpc"] = nZeOu --泽欧
rwtTask[tAiHaoShenDianTask.Task18]["DialogId"] = nDialog_23
rwtTask[tAiHaoShenDianTask.Task18]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task18]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task18]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.Task18]["StartAutoWay"]["FindWayGroupId"] = nZeOu_Group
rwtTask[tAiHaoShenDianTask.Task18]["StartAutoWay"]["FindWayGenId"] = nZeOu_Gen

--回报联盟
rwtTask[tAiHaoShenDianTask.Task19] = {}
rwtTask[tAiHaoShenDianTask.Task19]["Title"] = tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.Task19]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.Task19]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.Task19]["DialogId"] = nDialog_16
rwtTask[tAiHaoShenDianTask.Task19]["PatrolLastTask"] = 1 
rwtTask[tAiHaoShenDianTask.Task19]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.Task19]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.Task19]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.Task19]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.Task19]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen 

--rwtTask[tAiHaoShenDianTask.Task19]["AwardId"] = 2000132

--选项二
--新增和泽欧密探对话
rwtTask[tAiHaoShenDianTask.TaskNew_5] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20791]
rwtTask[tAiHaoShenDianTask.TaskNew_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.TaskNew_5]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_6
rwtTask[tAiHaoShenDianTask.TaskNew_5]["TaskNpc"] = nZeOu --泽欧
rwtTask[tAiHaoShenDianTask.TaskNew_5]["DialogId"] = nDialog_24
rwtTask[tAiHaoShenDianTask.TaskNew_5]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_5]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_5]["StartAutoWay"]["FindWayGroupId"] = nZeOu_Group
rwtTask[tAiHaoShenDianTask.TaskNew_5]["StartAutoWay"]["FindWayGenId"] = nZeOu_Gen

--新增查看石碑
rwtTask[tAiHaoShenDianTask.TaskNew_6] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20792]
rwtTask[tAiHaoShenDianTask.TaskNew_6]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_7
rwtTask[tAiHaoShenDianTask.TaskNew_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAiHaoShenDianTask.TaskNew_6]["DialogId"] = nDialog_25
rwtTask[tAiHaoShenDianTask.TaskNew_6]["ReqCollectId1"] = nCollect_5
rwtTask[tAiHaoShenDianTask.TaskNew_6]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_6]["DynaNpcGroupGen"][1]["GenId"] = nCollect_5_gen1
rwtTask[tAiHaoShenDianTask.TaskNew_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_6]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_6]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_6]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_6]["StartAutoWay"]["FindWayGroupId"] =nCollect_5
rwtTask[tAiHaoShenDianTask.TaskNew_6]["StartAutoWay"]["FindWayGenId"] =nCollect_5_gen1

--新增查看石碑
rwtTask[tAiHaoShenDianTask.TaskNew_7] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20793]
rwtTask[tAiHaoShenDianTask.TaskNew_7]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_8
rwtTask[tAiHaoShenDianTask.TaskNew_7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tAiHaoShenDianTask.TaskNew_7]["DialogId"] = nDialog_26
rwtTask[tAiHaoShenDianTask.TaskNew_7]["ReqCollectId1"] = nCollect_5
rwtTask[tAiHaoShenDianTask.TaskNew_7]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_7]["DynaNpcGroupGen"][1]["GenId"] = nCollect_5_gen2
rwtTask[tAiHaoShenDianTask.TaskNew_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_7]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_7]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_7]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_7]["StartAutoWay"]["FindWayGroupId"] =nCollect_5
rwtTask[tAiHaoShenDianTask.TaskNew_7]["StartAutoWay"]["FindWayGenId"] =nCollect_5_gen2

--新增战胜魔法侍魂
rwtTask[tAiHaoShenDianTask.TaskNew_8] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_8]["Title"] = tLuaText[LANGUAGE_CONFIG][20794]
rwtTask[tAiHaoShenDianTask.TaskNew_8]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_9
rwtTask[tAiHaoShenDianTask.TaskNew_8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DialogId"] = nDialog_27
rwtTask[tAiHaoShenDianTask.TaskNew_8]["AutoTaskDialog"] = nDialog_27
rwtTask[tAiHaoShenDianTask.TaskNew_8]["ReqTrap1"] = nTrap_7
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][1]["GenId"] = nMonster5_gen
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_7
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tAiHaoShenDianTask.TaskNew_8]["StartAutoWay"] = {}
--rwtTask[tAiHaoShenDianTask.TaskNew_8]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tAiHaoShenDianTask.TaskNew_8]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tAiHaoShenDianTask.TaskNew_8]["StartAutoWay"]["FindWayGroupId"] = nTrap_7
--rwtTask[tAiHaoShenDianTask.TaskNew_8]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_7
rwtTask[tAiHaoShenDianTask.TaskNew_8]["MonsterGroupGenId"] = nMonster5_gen
rwtTask[tAiHaoShenDianTask.TaskNew_8]["KillMonsterGroup1" ]= nMonster5_group
rwtTask[tAiHaoShenDianTask.TaskNew_8]["IsClickComplete"] = 0

--新增回复泽欧密探
rwtTask[tAiHaoShenDianTask.TaskNew_9] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20789]
rwtTask[tAiHaoShenDianTask.TaskNew_9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.TaskNew_9]["NextTaskId"] = tAiHaoShenDianTask.TaskNew_10
rwtTask[tAiHaoShenDianTask.TaskNew_9]["TaskNpc"] = nZeOu --泽欧
rwtTask[tAiHaoShenDianTask.TaskNew_9]["DialogId"] = nDialog_28
rwtTask[tAiHaoShenDianTask.TaskNew_9]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_9]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_9]["StartAutoWay"]["FindWayMapId"] =nMapId
rwtTask[tAiHaoShenDianTask.TaskNew_9]["StartAutoWay"]["FindWayGroupId"] = nZeOu_Group
rwtTask[tAiHaoShenDianTask.TaskNew_9]["StartAutoWay"]["FindWayGenId"] = nZeOu_Gen

--新增回报联盟
rwtTask[tAiHaoShenDianTask.TaskNew_10] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20765]
rwtTask[tAiHaoShenDianTask.TaskNew_10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tAiHaoShenDianTask.TaskNew_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask.TaskNew_10]["TaskNpc"] = nBiDuoMao
rwtTask[tAiHaoShenDianTask.TaskNew_10]["DialogId"] = nDialog_16
rwtTask[tAiHaoShenDianTask.TaskNew_10]["PatrolLastTask"] = 1 
rwtTask[tAiHaoShenDianTask.TaskNew_10]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask.TaskNew_10]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask.TaskNew_10]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask.TaskNew_10]["StartAutoWay"]["FindWayGroupId"] =nBiDuoMao_Group
rwtTask[tAiHaoShenDianTask.TaskNew_10]["StartAutoWay"]["FindWayGenId"] =nBiDuoMao_Gen 