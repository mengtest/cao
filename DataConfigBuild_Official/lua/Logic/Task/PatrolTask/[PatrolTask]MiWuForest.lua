--region *.lua
--Date
--���ļ���[BabeLua]����Զ�����
--����ɭ��Ѳ������
--HYQ
----***************************���ݶ���***************************
--Ѳ�齱�����ã�
--��ͨ����
local nNormal_Box_AwardId = 2000152

---------MapID
--200301 ð����Ӫ��
--200302 ���±���
--200303 ����ɭ��
--200304 ��ҹɭ��
--200305 ����ɭ��

local nMapId = 2003
local nTownId = 200305

--���� ����ɭ��Ѳ������  50114  50125   +      50137  50138 
local tTask = {}
tTask.nMiWuXunChaTask1 = 50114	--ǰ��ִ��Ѳ�鹤��

tTask.nMiWuXunChaTask1_1 = 50137	--ǰ��ִ��Ѳ�鹤������1
tTask.nMiWuXunChaTask2 = 50115	--�͸粼��ð���߶Ի�
tTask.nMiWuXunChaTask3 = 50116	--ǰ��Ѱ��������
tTask.nMiWuXunChaTask4 = 50117	--������ǰѲ��
tTask.nMiWuXunChaTask4_1 = 50272	--�粼��ð���߳���
--ѡ��1��׷���粼��ð����
tTask.nMiWuXunChaTask4_2 = 50273
tTask.nMiWuXunChaTask4_3 = 50274
tTask.nMiWuXunChaTask4_4 = 50275
--ѡ��2���Ƚ����ش�������
tTask.nMiWuXunChaTask5 = 50118	--�������ر���
tTask.nMiWuXunChaTask5_1 = 50125 --ǰ�����ĳ�
tTask.nMiWuXunChaTask6 = 50119	--�������˽�������

tTask.nMiWuXunChaTask1_2 = 50138	--ǰ��ִ��Ѳ�鹤������2
tTask.nMiWuXunChaTask7 = 50120	--��ð��������Ի�
tTask.nMiWuXunChaTask8 = 50121	--���Ž�ӡ׷��ħ��
tTask.nMiWuXunChaTask9 = 50122	--����Ӫ�ؽ��е���
tTask.nMiWuXunChaTask10 =50123	--����¹���޶ӳ�
tTask.nMiWuXunChaTask11 =50124	--�������˽�������

--�԰� 11003  11018 +   11089  11090 
local tDialog = {}
tDialog.nDialog_Task1 = 11003
tDialog.nDialog_Task2 = 11004
tDialog.nDialog_Task3 = 11005
tDialog.nDialog_Task4 = 11006
tDialog.nDialog_Task4_1 = 11462
tDialog.nDialog_Task4_1_1 = 11610    --�����֮��Ķ԰�
tDialog.nDialog_Task4_2 = 11464
tDialog.nDialog_Task4_3 = 11465
tDialog.nDialog_Task4_4 = 11466
tDialog.nDialog_Task5 =  11517  ---11007�����������ǻ�������أ�<br>����̫�ƻ��ˣ�
tDialog.nDialog_Task5_1 = 11611 --�������ĳ������԰�
tDialog.nDialog_Task6 = 11008
tDialog.nDialog_Task7 = 11009
tDialog.nDialog_Task8 = 11010
tDialog.nDialog_Task9 = 11011
tDialog.nDialog_Task10 =11012
tDialog.nDialog_Task11 =11013
tDialog.nDialog_Task1_1 = 11089
tDialog.nDialog_Task1_2 = 11090

tDialog.nDialog_cg1 = 11014
tDialog.nDialog_cg2 = 11015
tDialog.nDialog_cg3 = 11016
tDialog.nDialog_cg4 = 11017
tDialog.nDialog_win_Lu  = 11018

---11610 ��������ս��԰�
--11611�������ĳ������԰�
-----
--genid 
--NPC 3321  3322 and   3331  3333 
--NPC Group 20342  20343 
--GenId 20030367  20030381 
--NPC���Ķ԰�   1544  1547 
--�ȶ�è
local nNpc_BiDuoMao = 3080
--�粼��ð���� ����npc ģ��NPCID: 2012
local nNpc_GeBuLin = 3321      
local nNpcGroup_GeBuLin = 20342
local nNpcGroup_GenId_GeBuLin = 20030367
--ð���߲��� ����npc ģ��NPCID��2021
local nNpc_NanQingNian = 3322      
local nNpcGroup_NanQingNian = 20343
local nNpcGroupId_GenId_NanQingNian = 20030368
--��������  3331
--��ħ��������  3332
--���ĳ�����   3543
--���ĳ����� ����npc ģ��NPCID��
local nNpc_ShuXinChengShouWei = 3543      
local nNpcGroup_ShuXinChengShouWei = 20509
local nNpcGroupId_GenId_ShuXinChengShouWei = 20030509

--npc��npc���ʼ��
--�粼��
rwtNpc[nNpc_GeBuLin] = rwtNpc[nNpc_GeBuLin] or {}
rwtNpc[nNpc_GeBuLin]["DialogId"] = {1544,1545}
rwtNpcGroup[nNpcGroup_GeBuLin] = rwtNpcGroup[nNpcGroup_GeBuLin] or {}
rwtNpcGroup[nNpcGroup_GeBuLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_GeBuLin]["NpcId"]= nNpc_GeBuLin
--ð��������
rwtNpc[nNpc_NanQingNian] = rwtNpc[nNpc_NanQingNian] or {}
rwtNpc[nNpc_NanQingNian]["DialogId"] = {1546,1547}
rwtNpcGroup[nNpcGroup_NanQingNian] = rwtNpcGroup[nNpcGroup_NanQingNian] or {}
rwtNpcGroup[nNpcGroup_NanQingNian]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_NanQingNian]["NpcId"]= nNpc_NanQingNian
--���ĳ�����

rwtNpc[nNpc_ShuXinChengShouWei] = rwtNpc[nNpc_ShuXinChengShouWei] or {}
--rwtNpc[nNpc_ShuXinChengShouWei]["DialogId"] = {1546,1547}
rwtNpcGroup[nNpcGroup_ShuXinChengShouWei] = rwtNpcGroup[nNpcGroup_ShuXinChengShouWei] or {}
rwtNpcGroup[nNpcGroup_ShuXinChengShouWei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ShuXinChengShouWei]["NpcId"]= nNpc_ShuXinChengShouWei

--���� 40097  40098 
local nTreasureBox_Task5 = 40097
local nGenId_NpcGroup_TreasureBox_Task5 = 20030369
rwtNpcGroup[nTreasureBox_Task5] = rwtNpcGroup[nTreasureBox_1] or {} 
rwtNpcGroup[nTreasureBox_Task5]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasureBox_Task5]["Dialog"] = tDialog.nDialog_Task5
rwtNpcGroup[nTreasureBox_Task5]["Awards"] = {}
--rwtNpcGroup[nTreasureBox_Task5]["Awards"]["AwardId"] = nNormal_Box_AwardId 
--rwtNpcGroup[nTreasureBox_Task5]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBox_Task5
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

--�ٱ��� 40133
local nTreasureBox_Task5_1 = 40133
local nGenId_NpcGroup_TreasureBox_Task5_1 = 20030389
rwtNpcGroup[nTreasureBox_Task5_1] = rwtNpcGroup[nTreasureBox_Task5_1] or {} 
rwtNpcGroup[nTreasureBox_Task5_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox

--������   40156 
local nTreasureBox_Task4_3 = 40156
local nGenId_NpcGroup_TreasureBox_Task4_3 = 20030482 

rwtNpcGroup[nTreasureBox_Task4_3] = rwtNpcGroup[nTreasureBox_Task4_3] or {} 
rwtNpcGroup[nTreasureBox_Task4_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox

--����     9000210  9000212 
--������   900296  900298 
local nMonster_Task4 = 9000210       --��Ⱦ��ð����
local nMonsterGroup_Task4 = 900296
local nMonster_GenId_Task4 = 20030370
local nMonster_Task9 = 9000211       --����սʿ
local nMonsterGroup_Task9 = 900297
local nMonster_GenId_Task9 = 20030371
local nMonster_Task10 = 9000212      --¹���޶ӳ�
local nMonsterGroup_Task10 = 900298
local nMonster_GenId_Task10 = 20030372

--��ͼ
local nMapId = 2003

--����   30377  30383 
local nTrap_Task1 = 30377    --������������Ѳ������
local nTrap_Task3 = 30378
local nTrap_Task4 = 30379
local nTrap_Task4_2 = 30492
local nTrap_Task8 = 30380
local nTrap_Task9 = 30381
local nTrap_Task10 =30381
local nGenId_Trap_Task1 = 20030373
local nGenId_Trap_Task3 = 20030374
local nGenId_Trap_Task4 = 20030375
local nGenId_Trap_Task4_2 = 20030481
local nGenId_Trap_Task8 = 20030376
local nGenId_Trap_Task9 = 20030377
local nGenId_Trap_Task10 = 20030377 --����һ��������ͬһ������
rwtNpcGroup[nTrap_Task1] = rwtNpcGroup[nTrap_Task1] or {} 
rwtNpcGroup[nTrap_Task1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task3] = rwtNpcGroup[nTrap_Task3] or {} 
rwtNpcGroup[nTrap_Task3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task4] = rwtNpcGroup[nTrap_Task4] or {} 
rwtNpcGroup[nTrap_Task4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task4_2] = rwtNpcGroup[nTrap_Task4_2] or {} 
rwtNpcGroup[nTrap_Task4_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task8] = rwtNpcGroup[nTrap_Task8] or {} 
rwtNpcGroup[nTrap_Task8]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task9] = rwtNpcGroup[nTrap_Task9] or {} 
rwtNpcGroup[nTrap_Task9]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task10] = rwtNpcGroup[nTrap_Task10] or {} 
rwtNpcGroup[nTrap_Task10]["Type"] = CONST_NPCGROUP_TYPE.Trap

--AwardId
local nAwardId_Task6 = 1000027 --��ʱ����ã���Ҫ����
local nAwardId_Task11 =1000027 --

--����
local nCg_01 = 3415
local nCg_02 = 3416

rwtTask[tTask.nMiWuXunChaTask1] = {}
rwtTask[tTask.nMiWuXunChaTask1]["Title"] = tLuaText[LANGUAGE_CONFIG][20931]
rwtTask[tTask.nMiWuXunChaTask1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tTask.nMiWuXunChaTask1]["AcceptDialogId"] = tDialog.nDialog_Task1
rwtTask[tTask.nMiWuXunChaTask1]["ReqTrap1" ]= nTrap_Task1
rwtTask[tTask.nMiWuXunChaTask1]["PatrolFirstTask"] = 1
rwtTask[tTask.nMiWuXunChaTask1]["PatrolAfterTask"] ={tTask.nMiWuXunChaTask1_1,tTask.nMiWuXunChaTask1_2}
rwtTask[tTask.nMiWuXunChaTask1]["PatrolTaskAreaId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1]["PatrolTaskTownId"] = nTownId
rwtTask[tTask.nMiWuXunChaTask1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task1
rwtTask[tTask.nMiWuXunChaTask1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask1]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask1]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task1
rwtTask[tTask.nMiWuXunChaTask1]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task1

rwtTask[tTask.nMiWuXunChaTask1_1] = {}
rwtTask[tTask.nMiWuXunChaTask1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20932]
rwtTask[tTask.nMiWuXunChaTask1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nMiWuXunChaTask1_1]["NextTaskId" ]= tTask.nMiWuXunChaTask2
rwtTask[tTask.nMiWuXunChaTask1_1]["DialogId"] = tDialog.nDialog_Task1_1
rwtTask[tTask.nMiWuXunChaTask1_1]["ReqTrap1" ]= nTrap_Task1
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task1
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_GeBuLin
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask1_1]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask1_1]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task1
rwtTask[tTask.nMiWuXunChaTask1_1]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task1

rwtTask[tTask.nMiWuXunChaTask2] = {}
rwtTask[tTask.nMiWuXunChaTask2]["Title"] = tLuaText[LANGUAGE_CONFIG][20933]
rwtTask[tTask.nMiWuXunChaTask2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nMiWuXunChaTask2]["DialogId"] = tDialog.nDialog_Task2
rwtTask[tTask.nMiWuXunChaTask2]["TaskNpc" ]= nNpc_GeBuLin
rwtTask[tTask.nMiWuXunChaTask2]["NextTaskId" ]= tTask.nMiWuXunChaTask3
rwtTask[tTask.nMiWuXunChaTask2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_GeBuLin
rwtTask[tTask.nMiWuXunChaTask2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask2]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask2]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_GeBuLin
rwtTask[tTask.nMiWuXunChaTask2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_GeBuLin

rwtTask[tTask.nMiWuXunChaTask3] = {}
rwtTask[tTask.nMiWuXunChaTask3]["Title"] = tLuaText[LANGUAGE_CONFIG][20934]
rwtTask[tTask.nMiWuXunChaTask3]["NextTaskId" ]= tTask.nMiWuXunChaTask4
rwtTask[tTask.nMiWuXunChaTask3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nMiWuXunChaTask3]["ReqTrap1" ]= nTrap_Task3
rwtTask[tTask.nMiWuXunChaTask3]["DialogId"] = tDialog.nDialog_Task3
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task3
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_TreasureBox_Task5_1
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroup_GenId_GeBuLin
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTask.nMiWuXunChaTask3]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask3]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask3]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task3
rwtTask[tTask.nMiWuXunChaTask3]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task3

rwtTask[tTask.nMiWuXunChaTask4] = {}
rwtTask[tTask.nMiWuXunChaTask4]["Title"] = tLuaText[LANGUAGE_CONFIG][20935]
rwtTask[tTask.nMiWuXunChaTask4]["NextTaskId" ]= tTask.nMiWuXunChaTask4_1
rwtTask[tTask.nMiWuXunChaTask4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nMiWuXunChaTask4]["DialogId"] = tDialog.nDialog_Task4
rwtTask[tTask.nMiWuXunChaTask4]["ReqTrap1"] = nTrap_Task4
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task4
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][3]["GenId"] = nGenId_NpcGroup_TreasureBox_Task5_1
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][4]["GenId"] = nNpcGroup_GenId_GeBuLin
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4]["KillMonsterGroup1" ]= nMonsterGroup_Task4
rwtTask[tTask.nMiWuXunChaTask4]["MonsterGroupGenId"] = nMonster_GenId_Task4
rwtTask[tTask.nMiWuXunChaTask4]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask4]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tTask.nMiWuXunChaTask4]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4

rwtTask[tTask.nMiWuXunChaTask4_1] = {}
rwtTask[tTask.nMiWuXunChaTask4_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20935]--[nil]��ʱʹ�ã��ȶ԰��ĵ�������
rwtTask[tTask.nMiWuXunChaTask4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTask.nMiWuXunChaTask4_1]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask4_1]["OptionTask1"] = tTask.nMiWuXunChaTask4_2
rwtTask[tTask.nMiWuXunChaTask4_1]["OptionTask2"] = tTask.nMiWuXunChaTask5
rwtTask[tTask.nMiWuXunChaTask4_1]["AcceptDialogId"] = tDialog.nDialog_Task4_1_1 --�����֮����Ķ԰�
rwtTask[tTask.nMiWuXunChaTask4_1]["DialogId"] = tDialog.nDialog_Task4_1
rwtTask[tTask.nMiWuXunChaTask4_1]["ReqTrap1"] = nTrap_Task4
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_TreasureBox_Task5_1 --������
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4_1]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask4_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask4_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tTask.nMiWuXunChaTask4_1]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4


--֧��1��׷���粼��ð����
rwtTask[tTask.nMiWuXunChaTask4_2] = {}
rwtTask[tTask.nMiWuXunChaTask4_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20935]--[nil]
rwtTask[tTask.nMiWuXunChaTask4_2]["NextTaskId"] = tTask.nMiWuXunChaTask4_3
rwtTask[tTask.nMiWuXunChaTask4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nMiWuXunChaTask4_2]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask4_2]["ReqTrap1"] =  nTrap_Task4_2
rwtTask[tTask.nMiWuXunChaTask4_2]["DialogId"] = tDialog.nDialog_Task4_2
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4_2
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_TreasureBox_Task5_1
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4_2]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask4_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask4_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4_2
rwtTask[tTask.nMiWuXunChaTask4_2]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4_2

rwtTask[tTask.nMiWuXunChaTask4_3] = {}
rwtTask[tTask.nMiWuXunChaTask4_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20935]--[nil]
rwtTask[tTask.nMiWuXunChaTask4_3]["NextTaskId"] = tTask.nMiWuXunChaTask4_4
rwtTask[tTask.nMiWuXunChaTask4_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tTask.nMiWuXunChaTask4_3]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask4_3]["ReqTreasureBox" ]= nTreasureBox_Task4_3
rwtTask[tTask.nMiWuXunChaTask4_3]["DialogId"] = tDialog.nDialog_Task4_3
rwtTask[tTask.nMiWuXunChaTask4_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask4_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask4_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_TreasureBox_Task4_3
rwtTask[tTask.nMiWuXunChaTask4_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask4_3]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask4_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask4_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask4_3]["StartAutoWay"]["FindWayGroupId"] = nTreasureBox_Task4_3
rwtTask[tTask.nMiWuXunChaTask4_3]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_TreasureBox_Task4_3


rwtTask[tTask.nMiWuXunChaTask4_4] = {}
rwtTask[tTask.nMiWuXunChaTask4_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20937]
rwtTask[tTask.nMiWuXunChaTask4_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask4_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nMiWuXunChaTask4_4]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[tTask.nMiWuXunChaTask4_4]["DialogId"] = tDialog.nDialog_Task4_4
rwtTask[tTask.nMiWuXunChaTask4_4]["PatrolLastTask"] = 1
rwtTask[tTask.nMiWuXunChaTask4_4]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask4_4]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask4_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask4_4]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tTask.nMiWuXunChaTask4_4]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tTask.nMiWuXunChaTask4_4]["StartAutoWay"]["FindWayGenId"] = 2001658

--֧��2�����佻������
rwtTask[tTask.nMiWuXunChaTask5] = {}
rwtTask[tTask.nMiWuXunChaTask5]["Title"] = tLuaText[LANGUAGE_CONFIG][20936]
rwtTask[tTask.nMiWuXunChaTask5]["NextTaskId" ]= tTask.nMiWuXunChaTask5_1
rwtTask[tTask.nMiWuXunChaTask5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tTask.nMiWuXunChaTask5]["ReqTreasureBox" ]= nTreasureBox_Task5
rwtTask[tTask.nMiWuXunChaTask5]["DialogId" ]= tDialog.nDialog_Task5
rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_TreasureBox_Task5
rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][2] = {}
--rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_GeBuLin
--rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][2]["MapId"] = nMapId
--rwtTask[tTask.nMiWuXunChaTask5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask5]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask5]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask5]["StartAutoWay"]["FindWayGroupId"] = nTreasureBox_Task5
rwtTask[tTask.nMiWuXunChaTask5]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_TreasureBox_Task5


rwtTask[tTask.nMiWuXunChaTask5_1] = {}
rwtTask[tTask.nMiWuXunChaTask5_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20931] --[nil]
rwtTask[tTask.nMiWuXunChaTask5_1]["NextTaskId" ]= tTask.nMiWuXunChaTask6
rwtTask[tTask.nMiWuXunChaTask5_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nMiWuXunChaTask5_1]["TaskNpc"] = nNpc_ShuXinChengShouWei
rwtTask[tTask.nMiWuXunChaTask5_1]["DialogId"] = tDialog.nDialog_Task5_1
rwtTask[tTask.nMiWuXunChaTask5_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask5_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask5_1]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroupId_GenId_ShuXinChengShouWei
rwtTask[tTask.nMiWuXunChaTask5_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask5_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tTask.nMiWuXunChaTask5_1]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask5_1]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask5_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask5_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask5_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuXinChengShouWei
rwtTask[tTask.nMiWuXunChaTask5_1]["StartAutoWay"]["FindWayGenId"] = nNpcGroupId_GenId_ShuXinChengShouWei


rwtTask[tTask.nMiWuXunChaTask6] = {}
rwtTask[tTask.nMiWuXunChaTask6]["Title"] = tLuaText[LANGUAGE_CONFIG][20937]
rwtTask[tTask.nMiWuXunChaTask6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nMiWuXunChaTask6]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[tTask.nMiWuXunChaTask6]["DialogId"] = tDialog.nDialog_Task6
rwtTask[tTask.nMiWuXunChaTask6]["PatrolLastTask"] = 1
rwtTask[tTask.nMiWuXunChaTask6]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask6]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask6]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tTask.nMiWuXunChaTask6]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tTask.nMiWuXunChaTask6]["StartAutoWay"]["FindWayGenId"] = 2001658

rwtTask[tTask.nMiWuXunChaTask1_2] = {}
rwtTask[tTask.nMiWuXunChaTask1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20938]
rwtTask[tTask.nMiWuXunChaTask1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nMiWuXunChaTask1_2]["NextTaskId" ]= tTask.nMiWuXunChaTask7
rwtTask[tTask.nMiWuXunChaTask1_2]["DialogId"] = tDialog.nDialog_Task1_2
rwtTask[tTask.nMiWuXunChaTask1_2]["ReqTrap1" ]= nTrap_Task1
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task1
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroupId_GenId_NanQingNian
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask1_2]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask1_2]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask1_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task1
rwtTask[tTask.nMiWuXunChaTask1_2]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task1


rwtTask[tTask.nMiWuXunChaTask7] = {}
rwtTask[tTask.nMiWuXunChaTask7]["Title"] = tLuaText[LANGUAGE_CONFIG][20939]
rwtTask[tTask.nMiWuXunChaTask7]["NextTaskId" ]= tTask.nMiWuXunChaTask8
rwtTask[tTask.nMiWuXunChaTask7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nMiWuXunChaTask7]["TaskNpc"] = nNpc_NanQingNian
rwtTask[tTask.nMiWuXunChaTask7]["DialogId"] = tDialog.nDialog_Task7
rwtTask[tTask.nMiWuXunChaTask7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask7]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroupId_GenId_NanQingNian
rwtTask[tTask.nMiWuXunChaTask7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask7]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask7]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask7]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_NanQingNian
rwtTask[tTask.nMiWuXunChaTask7]["StartAutoWay"]["FindWayGenId"] = nNpcGroupId_GenId_NanQingNian

rwtTask[tTask.nMiWuXunChaTask8] = {}
rwtTask[tTask.nMiWuXunChaTask8]["Title"] = tLuaText[LANGUAGE_CONFIG][20940]
rwtTask[tTask.nMiWuXunChaTask8]["NextTaskId" ]= tTask.nMiWuXunChaTask9
rwtTask[tTask.nMiWuXunChaTask8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nMiWuXunChaTask8]["ReqTrap1" ]= nTrap_Task8
rwtTask[tTask.nMiWuXunChaTask8]["DialogId"] = tDialog.nDialog_Task8
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task8
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroupId_GenId_NanQingNian
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask8]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask8]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask8]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task8
rwtTask[tTask.nMiWuXunChaTask8]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task8



rwtTask[tTask.nMiWuXunChaTask9] = {}
rwtTask[tTask.nMiWuXunChaTask9]["Title"] = tLuaText[LANGUAGE_CONFIG][20941]
rwtTask[tTask.nMiWuXunChaTask9]["NextTaskId"] = tTask.nMiWuXunChaTask10
rwtTask[tTask.nMiWuXunChaTask9]["DialogId"] = tDialog.nDialog_Task9
rwtTask[tTask.nMiWuXunChaTask9]["ReqTrap1"] = nTrap_Task9
rwtTask[tTask.nMiWuXunChaTask9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task9
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task9
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroupId_GenId_NanQingNian
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask9]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nMiWuXunChaTask9]["KillMonsterGroup1" ]= nMonsterGroup_Task9
rwtTask[tTask.nMiWuXunChaTask9]["MonsterGroupGenId"] = nMonster_GenId_Task9
rwtTask[tTask.nMiWuXunChaTask9]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask9]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask9]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task9
rwtTask[tTask.nMiWuXunChaTask9]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task9


rwtTask[tTask.nMiWuXunChaTask10] = {}
rwtTask[tTask.nMiWuXunChaTask10]["Title"] = tLuaText[LANGUAGE_CONFIG][20942]
rwtTask[tTask.nMiWuXunChaTask10]["NextTaskId" ]= tTask.nMiWuXunChaTask11
rwtTask[tTask.nMiWuXunChaTask10]["DialogId"] = tDialog.nDialog_Task10
rwtTask[tTask.nMiWuXunChaTask10]["ReqTrap1"] = nTrap_Task10
rwtTask[tTask.nMiWuXunChaTask10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task10
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task10
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroupId_GenId_NanQingNian
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tTask.nMiWuXunChaTask10]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nMiWuXunChaTask10]["KillMonsterGroup1" ]= nMonsterGroup_Task10
rwtTask[tTask.nMiWuXunChaTask10]["MonsterGroupGenId"] = nMonster_GenId_Task10
rwtTask[tTask.nMiWuXunChaTask10]["AcceptDialogId"] = tDialog.nDialog_Task10
rwtTask[tTask.nMiWuXunChaTask10]["IsClickComplete"] = 0


rwtTask[tTask.nMiWuXunChaTask11] = {}
rwtTask[tTask.nMiWuXunChaTask11]["Title"] = tLuaText[LANGUAGE_CONFIG][20943]
rwtTask[tTask.nMiWuXunChaTask11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tTask.nMiWuXunChaTask11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nMiWuXunChaTask11]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[tTask.nMiWuXunChaTask11]["DialogId"] = tDialog.nDialog_Task11
rwtTask[tTask.nMiWuXunChaTask11]["PatrolLastTask"] = 1
rwtTask[tTask.nMiWuXunChaTask11]["IsClickComplete"] = 0
rwtTask[tTask.nMiWuXunChaTask11]["StartAutoWay"] = {}
rwtTask[tTask.nMiWuXunChaTask11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nMiWuXunChaTask11]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tTask.nMiWuXunChaTask11]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tTask.nMiWuXunChaTask11]["StartAutoWay"]["FindWayGenId"] = 2001658
