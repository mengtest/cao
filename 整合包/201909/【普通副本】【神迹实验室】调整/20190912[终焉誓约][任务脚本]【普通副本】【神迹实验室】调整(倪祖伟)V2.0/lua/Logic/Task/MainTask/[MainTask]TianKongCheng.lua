--region [MainTask]TianKongCheng
--Purpose:		主线天空城
--Creator: 		林多娜
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-09-12 $
--RCS-ID:		$Revision: 2 $
--endregion

--endregion

local tTianKong = {}

--tTianKong.task1 = 10471
tTianKong.taskCg1 = 10607
tTianKong.task2 = 10472
tTianKong.task3 = 10473
tTianKong.task4 = 10474
tTianKong.task5 = 10475
tTianKong.task6 = 10476
tTianKong.task7 = 10477
tTianKong.task8 = 10478
tTianKong.task9 = 10479
tTianKong.task10 = 10480
tTianKong.task11 = 10481
tTianKong.task12 = 10482
tTianKong.task13 = 10483
tTianKong.task14 = 10484
tTianKong.task15 = 10485
tTianKong.task16 = 10486
tTianKong.task17 = 10487
tTianKong.task18 = 10488
tTianKong.task19 = 10489
tTianKong.task20 = 10490
tTianKong.task21 = 10491
tTianKong.task22 = 10492
tTianKong.task23 = 10493
tTianKong.task24 = 10494
tTianKong.task25 = 10495
tTianKong.task26 = 10496
tTianKong.task27 = 10497


local tAward = {}

tAward.id1 = 2000298 
tAward.id2 = 2000299 
tAward.id3 = 2000300 
tAward.id4 = 2000301 
tAward.id5 = 2000302 
tAward.id6 = 2000303
tAward.id7 = 2000304
------------------------------------------
-------------------新增闲聊NPC----------------
local tNpc_XianLiao = {}
tNpc_XianLiao[1] = 3728	-- 镇民勒纳
tNpc_XianLiao[2] = 3729	-- 镇民苏特纳
tNpc_XianLiao[3] = 3730	-- 镇民蒂拉
tNpc_XianLiao[4] = 3731	-- 布兰
tNpc_XianLiao[5] = 3732	-- 镇民贝耶尔
tNpc_XianLiao[6] = 3733	-- 镇民西芙
tNpc_XianLiao[7] = 3734	-- 镇民斯卡娣
tNpc_XianLiao[8] = 3735	-- 格林尔
tNpc_XianLiao[9] = 3736	-- 镇民埃米
tNpc_XianLiao[10] = 3737	-- 镇民费茵

local tNpcGroup_XianLiao = {}
tNpcGroup_XianLiao[1] =	20689	-- 镇民勒纳
tNpcGroup_XianLiao[2] =	20690	-- 镇民苏特纳
tNpcGroup_XianLiao[3] =	20691	-- 镇民蒂拉
tNpcGroup_XianLiao[4] =	20692	-- 布兰
tNpcGroup_XianLiao[5] =	20693	-- 镇民贝耶尔
tNpcGroup_XianLiao[6] =	20694	-- 镇民西芙
tNpcGroup_XianLiao[7] =	20695	-- 镇民斯卡娣
tNpcGroup_XianLiao[8] =	20696	-- 格林尔
tNpcGroup_XianLiao[9] =	20697	-- 镇民埃米
tNpcGroup_XianLiao[10] = 20698	-- 镇民费茵

rwtNpc[tNpc_XianLiao[1]] = rwtNpc[tNpc_XianLiao[1]] or {}	  -- 镇民勒纳
rwtNpc[tNpc_XianLiao[1]]["DialogId"]   = {1800,1801,1802}
rwtNpc[tNpc_XianLiao[2]] = rwtNpc[tNpc_XianLiao[2]] or {}	  -- 镇民苏特纳
rwtNpc[tNpc_XianLiao[2]]["DialogId"]   = {1803,1804,1805}
rwtNpc[tNpc_XianLiao[3]] = rwtNpc[tNpc_XianLiao[3]] or {}	  -- 镇民蒂拉
rwtNpc[tNpc_XianLiao[3]]["DialogId"]   = {1806,1807,1808}
rwtNpc[tNpc_XianLiao[4]] = rwtNpc[tNpc_XianLiao[4]] or {}	  -- 布兰
rwtNpc[tNpc_XianLiao[4]]["DialogId"]   = {1809,1810,1811}
rwtNpc[tNpc_XianLiao[5]] = rwtNpc[tNpc_XianLiao[5]] or {}	  -- 镇民贝耶尔
rwtNpc[tNpc_XianLiao[5]]["DialogId"]   = {1812,1813,1814}
rwtNpc[tNpc_XianLiao[6]] = rwtNpc[tNpc_XianLiao[6]] or {}	  -- 镇民西芙
rwtNpc[tNpc_XianLiao[6]]["DialogId"]   = {1815,1816,1817}
rwtNpc[tNpc_XianLiao[7]] = rwtNpc[tNpc_XianLiao[7]] or {}	  -- 镇民斯卡娣
rwtNpc[tNpc_XianLiao[7]]["DialogId"]   = {1818,1819,1820}
rwtNpc[tNpc_XianLiao[8]] = rwtNpc[tNpc_XianLiao[8]] or {}	  -- 格林尔
rwtNpc[tNpc_XianLiao[8]]["DialogId"]   = {1821,1822,1823}
rwtNpc[tNpc_XianLiao[9]] = rwtNpc[tNpc_XianLiao[9]] or {}	  -- 镇民埃米
rwtNpc[tNpc_XianLiao[9]]["DialogId"]   = {1824,1825,1826}
rwtNpc[tNpc_XianLiao[10]] = rwtNpc[tNpc_XianLiao[10]] or {}	  -- 镇民费茵
rwtNpc[tNpc_XianLiao[10]]["DialogId"]  = {1824,1825,1826}

rwtNpcGroup[tNpcGroup_XianLiao[1]] = rwtNpcGroup[tNpcGroup_XianLiao[1]] or {}	-- 镇民勒纳							
rwtNpcGroup[tNpcGroup_XianLiao[1]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc								
rwtNpcGroup[tNpcGroup_XianLiao[1]]["NpcId"]= tNpc_XianLiao[1]								
rwtNpcGroup[tNpcGroup_XianLiao[2]] = rwtNpcGroup[tNpcGroup_XianLiao[2]] or {}	-- 镇民苏特纳				
rwtNpcGroup[tNpcGroup_XianLiao[2]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc										
rwtNpcGroup[tNpcGroup_XianLiao[2]]["NpcId"]= tNpc_XianLiao[2]					
rwtNpcGroup[tNpcGroup_XianLiao[3]] = rwtNpcGroup[tNpcGroup_XianLiao[3]] or {}	-- 镇民蒂拉						
rwtNpcGroup[tNpcGroup_XianLiao[3]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc					
rwtNpcGroup[tNpcGroup_XianLiao[3]]["NpcId"]= tNpc_XianLiao[3]											
rwtNpcGroup[tNpcGroup_XianLiao[4]] = rwtNpcGroup[tNpcGroup_XianLiao[4]] or {}	-- 布兰						
rwtNpcGroup[tNpcGroup_XianLiao[4]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc										
rwtNpcGroup[tNpcGroup_XianLiao[4]]["NpcId"]= tNpc_XianLiao[4]					
rwtNpcGroup[tNpcGroup_XianLiao[5]] = rwtNpcGroup[tNpcGroup_XianLiao[5]] or {}	-- 镇民贝耶尔						
rwtNpcGroup[tNpcGroup_XianLiao[5]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc								
rwtNpcGroup[tNpcGroup_XianLiao[5]]["NpcId"]= tNpc_XianLiao[5]						
rwtNpcGroup[tNpcGroup_XianLiao[6]] = rwtNpcGroup[tNpcGroup_XianLiao[6]] or {}	-- 镇民西芙		
rwtNpcGroup[tNpcGroup_XianLiao[6]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc							
rwtNpcGroup[tNpcGroup_XianLiao[6]]["NpcId"]= tNpc_XianLiao[6]					
rwtNpcGroup[tNpcGroup_XianLiao[7]] = rwtNpcGroup[tNpcGroup_XianLiao[7]] or {}	-- 镇民斯卡娣		
rwtNpcGroup[tNpcGroup_XianLiao[7]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc								
rwtNpcGroup[tNpcGroup_XianLiao[7]]["NpcId"]= tNpc_XianLiao[7]						
rwtNpcGroup[tNpcGroup_XianLiao[8]] = rwtNpcGroup[tNpcGroup_XianLiao[8]] or {}	-- 格林尔					
rwtNpcGroup[tNpcGroup_XianLiao[8]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc							
rwtNpcGroup[tNpcGroup_XianLiao[8]]["NpcId"]= tNpc_XianLiao[8]					
rwtNpcGroup[tNpcGroup_XianLiao[9]] = rwtNpcGroup[tNpcGroup_XianLiao[9]] or {}	-- 镇民埃米											
rwtNpcGroup[tNpcGroup_XianLiao[9]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc			
rwtNpcGroup[tNpcGroup_XianLiao[9]]["NpcId"]= tNpc_XianLiao[9]									
rwtNpcGroup[tNpcGroup_XianLiao[10]] = rwtNpcGroup[tNpcGroup_XianLiao[10]] or {}	-- 镇民费茵				
rwtNpcGroup[tNpcGroup_XianLiao[10]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc								
rwtNpcGroup[tNpcGroup_XianLiao[10]]["NpcId"]= tNpc_XianLiao[10]								


--------------------------------------------
--NPC

local nNpc_1 = 3398      --塔蕾娅
local nNpc_2 = 3399	     --玛露茜
local nNpc_3 = 3400	     --镇民阿尼雅
local nNpc_4 = 3401	     --镇民尤菲
local nNpc_5 = 3402	     --镇民德纳罗
local nNpc_6 = 3403	     --镇民柯罗
local nNpc_7 = 3404	     --大臣奥兰德
local nNpc_8 = 3404	  --3405   --大臣奥兰德1
local nNpc_9 = 3408	     --纳雅卫兵
local nNpc_10 = 3409	     --玛露茜爸爸
local nNpc_11 = 3381	     --米兰达

rwtNpc[nNpc_1] = rwtNpc[nNpc_1] or {}
rwtNpc[nNpc_1]["DialogId"] = {1778,1779,1740,1741,1742}
rwtNpc[nNpc_2] = rwtNpc[nNpc_2] or {}
rwtNpc[nNpc_2]["DialogId"] = {1743,1744,1745}
rwtNpc[nNpc_3] = rwtNpc[nNpc_3] or {}
rwtNpc[nNpc_3]["DialogId"] = {1746,1747,1748}
rwtNpc[nNpc_4] = rwtNpc[nNpc_4] or {}
rwtNpc[nNpc_4]["DialogId"] = {1749,1750,1751}
rwtNpc[nNpc_5] = rwtNpc[nNpc_5] or {}
rwtNpc[nNpc_5]["DialogId"] = {1752,1753,1754}
rwtNpc[nNpc_6] = rwtNpc[nNpc_6] or {}
rwtNpc[nNpc_6]["DialogId"] = {1755,1756,1757}
rwtNpc[nNpc_7] = rwtNpc[nNpc_7] or {}
rwtNpc[nNpc_7]["DialogId"] = {1758,1759,1760}
rwtNpc[nNpc_8] = rwtNpc[nNpc_8] or {}

rwtNpc[nNpc_11] = rwtNpc[nNpc_11] or {}
rwtNpc[nNpc_11]["DialogId"] = {1761,1762,1763}


local nNpcGroup_1 = 20420		--塔蕾娅
local nNpcGroup_2 = 20421		--玛露茜
local nNpcGroup_3 = 20422		--镇民阿尼雅
local nNpcGroup_4 = 20423		--镇民尤菲
local nNpcGroup_5 = 20424		--镇民德纳罗
local nNpcGroup_6 = 20425		--镇民柯罗
local nNpcGroup_7 = 20426		--大臣奥兰德
local nNpcGroup_8 = 20427		--大臣奥兰德


local nNpcGroup_1_gen = 20040002		--塔蕾娅
local nNpcGroup_2_gen = 20040003		--玛露茜
local nNpcGroup_3_gen = 20040004		--镇民阿尼雅
local nNpcGroup_4_gen = 20040005		--镇民尤菲
local nNpcGroup_5_gen = 20040006		--镇民德纳罗
local nNpcGroup_6_gen = 20040007		--镇民柯罗
local nNpcGroup_7_gen = 20040008		--大臣奥兰德
local nNpcGroup_8_gen = 20040009		--大臣奥兰德1

rwtNpcGroup[nNpcGroup_1] = rwtNpcGroup[nNpcGroup_1] or {}
rwtNpcGroup[nNpcGroup_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_1]["NpcId"]= nNpc_1
rwtNpcGroup[nNpcGroup_2] = rwtNpcGroup[nNpcGroup_2] or {}
rwtNpcGroup[nNpcGroup_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_2]["NpcId"]= nNpc_2
rwtNpcGroup[nNpcGroup_3] = rwtNpcGroup[nNpcGroup_3] or {}
rwtNpcGroup[nNpcGroup_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_3]["NpcId"]= nNpc_3
rwtNpcGroup[nNpcGroup_4] = rwtNpcGroup[nNpcGroup_4] or {}
rwtNpcGroup[nNpcGroup_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_4]["NpcId"]= nNpc_4
rwtNpcGroup[nNpcGroup_5] = rwtNpcGroup[nNpcGroup_5] or {}
rwtNpcGroup[nNpcGroup_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_5]["NpcId"]= nNpc_5
rwtNpcGroup[nNpcGroup_6] = rwtNpcGroup[nNpcGroup_6] or {}
rwtNpcGroup[nNpcGroup_6]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_6]["NpcId"]= nNpc_6
rwtNpcGroup[nNpcGroup_7] = rwtNpcGroup[nNpcGroup_7] or {}
rwtNpcGroup[nNpcGroup_7]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_7]["NpcId"]= nNpc_7
rwtNpcGroup[nNpcGroup_8] = rwtNpcGroup[nNpcGroup_8] or {}
rwtNpcGroup[nNpcGroup_8]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_8]["NpcId"]= nNpc_8

--采集物
local nCollect_1 = 60219 --脚印
local nCollect_1_gen = 20040010 --脚印
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}	    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect

--建筑
local nBuilding_1 = 10016 --神迹实验室
local nBuilding_2 = 10017 --玛露茜的家

local nBuilding_1_gen = 20040011 --神迹实验室
local nBuilding_2_gen = 20040012 --玛露茜的家

rwtNpcGroup[nBuilding_1] = rwtNpcGroup[nBuilding_1] or {}
rwtNpcGroup[nBuilding_1]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
--rwtNpcGroup[nBuilding_2] = rwtNpcGroup[nBuilding_2] or {}
--rwtNpcGroup[nBuilding_2]["Type"] = CONST_NPCGROUP_TYPE.MapNpc

--副本 玛露茜3d
rwtNpcGroup[50045] = rwtNpcGroup[50045] or {}
rwtNpcGroup[50045]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50045]["CopyMapList"] = {3069}

--神迹实验室
rwtNpcGroup[50046] = rwtNpcGroup[50046] or {}
rwtNpcGroup[50046]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50046]["UnlockDialog"] = 6216
-- rwtNpcGroup[50046]["Dialog"] = 6217
rwtNpcGroup[50046]["CopyMapList"] = {3071}


--怪物
local nMonsterGroup_1 = 900317  --纳雅卫兵
local nMonsterGroup_2 = 900318  --镇民德纳罗
local nMonsterGroup_3 = 900319  --先驱者8号

local nMonsterGroup_1_gen = 20040024	 --纳雅卫兵
local nMonsterGroup_2_gen = 20040026	 --镇民德纳罗
local nMonsterGroup_3_gen = 20040027	 --先驱者8号
local nMonsterGroup_4_gen = 20040025	 --纳雅卫兵

--陷阱
local nTrap_1 = 30436
local nTrap_2 = 30437
local nTrap_3 = 30438
local nTrap_4 = 30439
local nTrap_5 = 30440
local nTrap_6 = 30441
local nTrap_7 = 30442
local nTrap_8 = 30443
local nTrap_9 = 30444
local nTrap_10 = 30445
local nTrap_11 = 30446
local nTrap_12 = 30447
local nTrap_13 = 30448
local nTrap_14 = 30449
local nTrap_15 = 30450  

local nTrap_1_gen = 20040013
local nTrap_2_gen = 20040014
local nTrap_3_gen = 20040015
local nTrap_4_gen = 20040016
local nTrap_5_gen = 20040017
local nTrap_6_gen = 20040018
local nTrap_7_gen = 20040019
local nTrap_8_gen = 20040020
local nTrap_9_gen = 20040021
local nTrap_10_gen = 20040022
local nTrap_11_gen = 20040023
local nTrap_12_gen = 20040024
local nTrap_13_gen = 20040025
local nTrap_14_gen = 20040026
local nTrap_15_gen = 20040027

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

rwtNpcGroup[nTrap_8] = rwtNpcGroup[nTrap_8] or {}
rwtNpcGroup[nTrap_8]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_9] = rwtNpcGroup[nTrap_9] or {}	
rwtNpcGroup[nTrap_9]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_10] = rwtNpcGroup[nTrap_10] or {} 
rwtNpcGroup[nTrap_10]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_11] = rwtNpcGroup[nTrap_11] or {} 
rwtNpcGroup[nTrap_11]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_12] = rwtNpcGroup[nTrap_12] or {} 
rwtNpcGroup[nTrap_12]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_13] = rwtNpcGroup[nTrap_13] or {}  
rwtNpcGroup[nTrap_13]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_14] = rwtNpcGroup[nTrap_14] or {}   
rwtNpcGroup[nTrap_14]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_15] = rwtNpcGroup[nTrap_15] or {}	
rwtNpcGroup[nTrap_15]["Type"] = CONST_NPCGROUP_TYPE.Trap

--寻路坐标
local sPos_Task1 = '93.76,-0.10,-4.83'
local sPos_Task2 = '88.82,-0.10,-0.72'
local sPos_Task3 = '34.53,0.71,54.20'
local sPos_Task5 = '-51.62,0.71,67.25'
local sPos_Task6 = '16.24,4.84,12.09'
local sPos_Task15 = '-55.31,0.71,72.57'
local sPos_Task18 = '15.23,20.01,-72.42'
local sPos_Task23 = '45.43,0.71,69.33'
-----------------------------------------------------------------------------------
--传说中的天空城
--rwtTask[tTianKong.task1] = {}
--rwtTask[tTianKong.task1]["Title"]= tLuaText[LANGUAGE_CONFIG][21210]
--rwtTask[tTianKong.task1]["PreTaskId"] = 10508
--rwtTask[tTianKong.task1]["NextTaskId"]= tTianKong.taskCg1
--rwtTask[tTianKong.task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTianKong.task1]["DialogId"]= 11258
--rwtTask[tTianKong.task1]["ReqTrap1"] = nTrap_1
--rwtTask[tTianKong.task1]["DynaNpcGroupGen"] = {}
--rwtTask[tTianKong.task1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTianKong.task1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_1_gen
--rwtTask[tTianKong.task1]["DynaNpcGroupGen"][1]["MapId"] = 2004
--rwtTask[tTianKong.task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
----rwtTask[tTianKong.task1]["OpenTransfer"] = CONST_TRANSFER_INDEX.
----rwtTask[tTianKong.task1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][xxx]
--rwtTask[tTianKong.task1]["IsClickComplete"] = 0
--rwtTask[tTianKong.task1]["StartAutoWay"] = {}
--rwtTask[tTianKong.task1]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tTianKong.task1]["StartAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task1]["StartAutoWay"]["FindWayPos"] = sPos_Task1
--rwtTask[tTianKong.task1]["OpenTransfer"] = CONST_TRANSFER_INDEX.TIANKONGCHENG
--rwtTask[tTianKong.task1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10063]

rwtTask[tTianKong.taskCg1] = {}
rwtTask[tTianKong.taskCg1]["Title"]= tLuaText[LANGUAGE_CONFIG][21210]
rwtTask[tTianKong.taskCg1]["PreTaskId"] = 10508
rwtTask[tTianKong.taskCg1]["NextTaskId"]= tTianKong.task2
rwtTask[tTianKong.taskCg1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.taskCg1]["DialogId"]= 11843
rwtTask[tTianKong.taskCg1]["ReqTrap1"] = nTrap_2
rwtTask[tTianKong.taskCg1]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.taskCg1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.taskCg1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_2_gen
rwtTask[tTianKong.taskCg1]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.taskCg1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.taskCg1]["StartAutoWay"] = {}
rwtTask[tTianKong.taskCg1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.taskCg1]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.taskCg1]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tTianKong.taskCg1]["StartAutoWay"]["FindWayGenId"] = nTrap_2_gen
rwtTask[tTianKong.taskCg1]["OpenTransfer"] = CONST_TRANSFER_INDEX.TIANKONGCHENG
rwtTask[tTianKong.taskCg1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10063]

rwtTask[tTianKong.task2] = {}
rwtTask[tTianKong.task2]["Title"]= tLuaText[LANGUAGE_CONFIG][21210]
rwtTask[tTianKong.task2]["PreTaskId"] = tTianKong.taskCg1
rwtTask[tTianKong.task2]["NextTaskId"]= tTianKong.task3
rwtTask[tTianKong.task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTianKong.task2]["DialogId"]= 11259
rwtTask[tTianKong.task2]["ReqTrap1"] = nTrap_2
rwtTask[tTianKong.task2]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_1_gen
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][2]["GenId"] = nTrap_2_gen
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][2]["MapId"] = 2004
rwtTask[tTianKong.task2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task2]["StartAutoWay"] = {}
rwtTask[tTianKong.task2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTianKong.task2]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_1
rwtTask[tTianKong.task2]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_1_gen
rwtTask[tTianKong.task2]["MonsterGroupGenId"] = nMonsterGroup_1_gen
rwtTask[tTianKong.task2]["KillMonsterGroup1"]= nMonsterGroup_1

rwtTask[tTianKong.task2]["Awards"] = {}
rwtTask[tTianKong.task2]["Awards"]["Events"] = {}
rwtTask[tTianKong.task2]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id1
rwtTask[tTianKong.task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task2

--快跑，背后有……
rwtTask[tTianKong.task3] = {}
rwtTask[tTianKong.task3]["Title"]= tLuaText[LANGUAGE_CONFIG][21211]
rwtTask[tTianKong.task3]["PreTaskId"] = tTianKong.task2
rwtTask[tTianKong.task3]["NextTaskId"]= tTianKong.task4
rwtTask[tTianKong.task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task3]["AcceptDialogId"]= 11260
rwtTask[tTianKong.task3]["DialogId"]= 11261
rwtTask[tTianKong.task3]["ReqTrap1"] = nTrap_3
rwtTask[tTianKong.task3]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_3_gen
rwtTask[tTianKong.task3]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task3]["IsClickComplete"] = 0
rwtTask[tTianKong.task3]["StartAutoWay"] = {}
rwtTask[tTianKong.task3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task3]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task3]["StartAutoWay"]["FindWayPos"] = sPos_Task3


rwtTask[tTianKong.task4] = {}
rwtTask[tTianKong.task4]["Title"]= tLuaText[LANGUAGE_CONFIG][21211]
rwtTask[tTianKong.task4]["PreTaskId"] = tTianKong.task3
rwtTask[tTianKong.task4]["NextTaskId"]= tTianKong.task5
rwtTask[tTianKong.task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTianKong.task4]["DialogId"]= 11262
rwtTask[tTianKong.task4]["TaskNpc"] = nNpc_2 --玛露茜
rwtTask[tTianKong.task4]["IsClickComplete"] = 0
rwtTask[tTianKong.task4]["StartAutoWay"] = {}
rwtTask[tTianKong.task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task4]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_2
rwtTask[tTianKong.task4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_2_gen
--rwtTask[tTianKong.task4]["EndAutoWay"] = {}
--rwtTask[tTianKong.task4]["EndAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tTianKong.task4]["EndAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task4]["EndAutoWay"]["FindWayPos"] = sPos_Task5


rwtTask[tTianKong.task5] = {}
rwtTask[tTianKong.task5]["Title"]= tLuaText[LANGUAGE_CONFIG][21211]
rwtTask[tTianKong.task5]["PreTaskId"] = tTianKong.task4
rwtTask[tTianKong.task5]["NextTaskId"]= tTianKong.task6
rwtTask[tTianKong.task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tTianKong.task5]["DialogId"]= 11263
rwtTask[tTianKong.task5]["ReqTrap1"] = nTrap_4
rwtTask[tTianKong.task5]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_4_gen
rwtTask[tTianKong.task5]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task5]["IsClickComplete"] = 0
rwtTask[tTianKong.task5]["StartAutoWay"] = {}
rwtTask[tTianKong.task5]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task5]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task5]["StartAutoWay"]["FindWayPos"] = sPos_Task5

rwtTask[tTianKong.task5]["Awards"] = {}
rwtTask[tTianKong.task5]["Awards"]["Events"] = {}
rwtTask[tTianKong.task5]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id2
rwtTask[tTianKong.task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task5



--人类使者，参上！
rwtTask[tTianKong.task6] = {}
rwtTask[tTianKong.task6]["Title"]= tLuaText[LANGUAGE_CONFIG][21212]
rwtTask[tTianKong.task6]["PreTaskId"] =  tTianKong.task5
rwtTask[tTianKong.task6]["NextTaskId"] = tTianKong.task7
rwtTask[tTianKong.task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task6]["DialogId"]= 11844--11264
rwtTask[tTianKong.task6]["ReqTrap1"] = nTrap_5
rwtTask[tTianKong.task6]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_5_gen
rwtTask[tTianKong.task6]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task6]["IsClickComplete"] = 0
rwtTask[tTianKong.task6]["StartAutoWay"] = {}
rwtTask[tTianKong.task6]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task6]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task6]["StartAutoWay"]["FindWayPos"] = sPos_Task6


rwtTask[tTianKong.task7] = {}
rwtTask[tTianKong.task7]["Title"]= tLuaText[LANGUAGE_CONFIG][21212]
rwtTask[tTianKong.task7]["PreTaskId"] = tTianKong.task6
rwtTask[tTianKong.task7]["NextTaskId"]= tTianKong.task8
rwtTask[tTianKong.task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTianKong.task7]["DialogId"]= 11265
rwtTask[tTianKong.task7]["TaskNpc"] = nNpc_1
rwtTask[tTianKong.task7]["IsClickComplete"] = 0
rwtTask[tTianKong.task7]["StartAutoWay"] = {}
rwtTask[tTianKong.task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task7]["StartAutoWay"]["FindWayMapId"] = 2006
rwtTask[tTianKong.task7]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_1
rwtTask[tTianKong.task7]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_1_gen

rwtTask[tTianKong.task7]["Awards"] = {}
rwtTask[tTianKong.task7]["Awards"]["Events"] = {}
rwtTask[tTianKong.task7]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id3
rwtTask[tTianKong.task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task7


--卡诺萨名侦探
rwtTask[tTianKong.task8] = {}
rwtTask[tTianKong.task8]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
rwtTask[tTianKong.task8]["PreTaskId"] = tTianKong.task7
rwtTask[tTianKong.task8]["NextTaskId"]= tTianKong.task9
rwtTask[tTianKong.task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTianKong.task8]["AcceptDialogId"]= 11266
rwtTask[tTianKong.task8]["DialogId"]= 11267
rwtTask[tTianKong.task8]["TaskNpc"] = nNpc_3
rwtTask[tTianKong.task8]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task8]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_8_gen
rwtTask[tTianKong.task8]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTianKong.task8]["IsClickComplete"] = 0
rwtTask[tTianKong.task8]["StartAutoWay"] = {}
rwtTask[tTianKong.task8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task8]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task8]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_3
rwtTask[tTianKong.task8]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_3_gen



rwtTask[tTianKong.task9] = {}
rwtTask[tTianKong.task9]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
rwtTask[tTianKong.task9]["PreTaskId"] = tTianKong.task8
rwtTask[tTianKong.task9]["NextTaskId"]= tTianKong.task10
rwtTask[tTianKong.task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTianKong.task9]["DialogId"]= 11268
rwtTask[tTianKong.task9]["ReqTrap1"] = nTrap_6
rwtTask[tTianKong.task9]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_4_gen
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][2] = {}
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][2]["GenId"] = nTrap_6_gen
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][2]["MapId"] = 2004
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][3] = {}
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroup_8_gen
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][3]["MapId"] = 2004
rwtTask[tTianKong.task9]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTianKong.task9]["MonsterGroupGenId"] = nMonsterGroup_4_gen
rwtTask[tTianKong.task9]["KillMonsterGroup1"]= 900441
rwtTask[tTianKong.task9]["StartAutoWay"] = {}
rwtTask[tTianKong.task9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTianKong.task9]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task9]["StartAutoWay"]["FindWayGroupId"] = 900441
rwtTask[tTianKong.task9]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_4_gen


rwtTask[tTianKong.task10] = {}
rwtTask[tTianKong.task10]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
rwtTask[tTianKong.task10]["PreTaskId"] =  tTianKong.task9
rwtTask[tTianKong.task10]["NextTaskId"] = tTianKong.task16
rwtTask[tTianKong.task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task10]["DialogId"]= 11269
rwtTask[tTianKong.task10]["ReqTrap1"] = nTrap_6
rwtTask[tTianKong.task10]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][1]["GenId"] = nTrap_6_gen
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][2] = {}
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_8_gen
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][2]["MapId"] = 2004
rwtTask[tTianKong.task10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task10]["IsClickComplete"] = 0
rwtTask[tTianKong.task10]["StartAutoWay"] = {}
rwtTask[tTianKong.task10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task10]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task10]["StartAutoWay"]["FindWayGroupId"] = nTrap_6
rwtTask[tTianKong.task10]["StartAutoWay"]["FindWayGenId"] = nTrap_6_gen


--rwtTask[tTianKong.task11] = {}
--rwtTask[tTianKong.task11]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
--rwtTask[tTianKong.task11]["PreTaskId"] = tTianKong.task7
--rwtTask[tTianKong.task11]["NextTaskId"]= tTianKong.task12
--rwtTask[tTianKong.task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTianKong.task11]["DialogId"]= 11270
--rwtTask[tTianKong.task11]["TaskNpc"] = nNpc_4
--rwtTask[tTianKong.task11]["IsClickComplete"] = 0
--rwtTask[tTianKong.task11]["StartAutoWay"] = {}
--rwtTask[tTianKong.task11]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTianKong.task11]["StartAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task11]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_4
--rwtTask[tTianKong.task11]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_4_gen


--rwtTask[tTianKong.task12] = {} 
--rwtTask[tTianKong.task12]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
--rwtTask[tTianKong.task12]["PreTaskId"] = tTianKong.task11
--rwtTask[tTianKong.task12]["NextTaskId"]= tTianKong.task13
--rwtTask[tTianKong.task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
--rwtTask[tTianKong.task12]["DialogId"]= 11271
--rwtTask[tTianKong.task12]["ReqCollectId1"] = nCollect_1
--rwtTask[tTianKong.task12]["ReqCollectCount1"] = 1
--rwtTask[tTianKong.task12]["DynaNpcGroupGen"] = {}
--rwtTask[tTianKong.task12]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTianKong.task12]["DynaNpcGroupGen"][1]["GenId"] = nCollect_1_gen
--rwtTask[tTianKong.task12]["DynaNpcGroupGen"][1]["MapId"] = 2004
--rwtTask[tTianKong.task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTianKong.task12]["StartAutoWay"] = {}
--rwtTask[tTianKong.task12]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTianKong.task12]["StartAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task12]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
--rwtTask[tTianKong.task12]["StartAutoWay"]["FindWayGenId"] = nCollect_1_gen


--rwtTask[tTianKong.task13] = {}
--rwtTask[tTianKong.task13]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
--rwtTask[tTianKong.task13]["PreTaskId"] = tTianKong.task12
--rwtTask[tTianKong.task13]["NextTaskId"]= tTianKong.task27
--rwtTask[tTianKong.task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTianKong.task13]["DialogId"]= 11272
--rwtTask[tTianKong.task13]["TaskNpc"] = nNpc_5
--rwtTask[tTianKong.task13]["DynaNpcGroupGen"] = {}
--rwtTask[tTianKong.task13]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTianKong.task13]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_2_gen
--rwtTask[tTianKong.task13]["DynaNpcGroupGen"][1]["MapId"] = 2004
--rwtTask[tTianKong.task13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTianKong.task13]["MonsterGroupGenId"] = nMonsterGroup_2_gen
--rwtTask[tTianKong.task13]["KillMonsterGroup1"]= nMonsterGroup_2
--rwtTask[tTianKong.task13]["StartAutoWay"] = {}
--rwtTask[tTianKong.task13]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTianKong.task13]["StartAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task13]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_5
--rwtTask[tTianKong.task13]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_5_gen

--rwtTask[tTianKong.task27] = {}
--rwtTask[tTianKong.task27]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
--rwtTask[tTianKong.task27]["PreTaskId"] = tTianKong.task13
--rwtTask[tTianKong.task27]["NextTaskId"]= tTianKong.task14
--rwtTask[tTianKong.task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTianKong.task27]["DialogId"]= 11273
--rwtTask[tTianKong.task27]["TaskNpc"] = nNpc_5
--rwtTask[tTianKong.task27]["IsClickComplete"] = 0
--rwtTask[tTianKong.task27]["StartAutoWay"] = {}
--rwtTask[tTianKong.task27]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTianKong.task27]["StartAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task27]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_5
--rwtTask[tTianKong.task27]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_5_gen


--rwtTask[tTianKong.task14] = {}
--rwtTask[tTianKong.task14]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
--rwtTask[tTianKong.task14]["PreTaskId"] =  tTianKong.task27
--rwtTask[tTianKong.task14]["NextTaskId"] = tTianKong.task15
--rwtTask[tTianKong.task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTianKong.task14]["DialogId"]= 11274
--rwtTask[tTianKong.task14]["ReqTrap1"] = nTrap_7
--rwtTask[tTianKong.task14]["DynaNpcGroupGen"] = {}
--rwtTask[tTianKong.task14]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTianKong.task14]["DynaNpcGroupGen"][1]["GenId"] = nTrap_7_gen
--rwtTask[tTianKong.task14]["DynaNpcGroupGen"][1]["MapId"] = 2004
--rwtTask[tTianKong.task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTianKong.task14]["IsClickComplete"] = 0

--rwtTask[tTianKong.task15] = {}
--rwtTask[tTianKong.task15]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
--rwtTask[tTianKong.task15]["PreTaskId"] =  tTianKong.task14
--rwtTask[tTianKong.task15]["NextTaskId"] = tTianKong.task16
--rwtTask[tTianKong.task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTianKong.task15]["DialogId"]= 11275
--rwtTask[tTianKong.task15]["ReqTrap1"] = nTrap_8
--rwtTask[tTianKong.task15]["DynaNpcGroupGen"] = {}
--rwtTask[tTianKong.task15]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTianKong.task15]["DynaNpcGroupGen"][1]["GenId"] = nTrap_8_gen
--rwtTask[tTianKong.task15]["DynaNpcGroupGen"][1]["MapId"] = 2004
--rwtTask[tTianKong.task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTianKong.task15]["IsClickComplete"] = 0
--rwtTask[tTianKong.task15]["StartAutoWay"] = {}
--rwtTask[tTianKong.task15]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tTianKong.task15]["StartAutoWay"]["FindWayMapId"] = 2004
--rwtTask[tTianKong.task15]["StartAutoWay"]["FindWayPos"] = sPos_Task15

rwtTask[tTianKong.task16] = {}
rwtTask[tTianKong.task16]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
rwtTask[tTianKong.task16]["PreTaskId"] = tTianKong.task10
rwtTask[tTianKong.task16]["NextTaskId"]= tTianKong.task17
rwtTask[tTianKong.task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTianKong.task16]["DialogId"]= 11276
rwtTask[tTianKong.task16]["TaskNpc"] = nNpc_6
rwtTask[tTianKong.task16]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task16]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_3_gen
rwtTask[tTianKong.task16]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTianKong.task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task16]["MonsterGroupGenId"] = nMonsterGroup_3_gen
rwtTask[tTianKong.task16]["KillMonsterGroup1"]= nMonsterGroup_3
rwtTask[tTianKong.task16]["StartAutoWay"] = {}
rwtTask[tTianKong.task16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task16]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTianKong.task16]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_6
rwtTask[tTianKong.task16]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_6_gen


rwtTask[tTianKong.task17] = {}
rwtTask[tTianKong.task17]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
rwtTask[tTianKong.task17]["PreTaskId"] = tTianKong.task16
rwtTask[tTianKong.task17]["NextTaskId"]= tTianKong.task18
rwtTask[tTianKong.task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTianKong.task17]["DialogId"]= 11277
rwtTask[tTianKong.task17]["TaskNpc"] = nNpc_6
rwtTask[tTianKong.task17]["StartAutoWay"] = {}
rwtTask[tTianKong.task17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task17]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTianKong.task17]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_6
rwtTask[tTianKong.task17]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_6_gen


rwtTask[tTianKong.task18] = {}
rwtTask[tTianKong.task18]["Title"]= tLuaText[LANGUAGE_CONFIG][21213]
rwtTask[tTianKong.task18]["PreTaskId"] = tTianKong.task17
rwtTask[tTianKong.task18]["NextTaskId"]= tTianKong.task19
rwtTask[tTianKong.task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task18]["DialogId"]= 11278
rwtTask[tTianKong.task18]["ReqTrap1"] = nTrap_9
rwtTask[tTianKong.task18]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task18]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task18]["DynaNpcGroupGen"][1]["GenId"] = nTrap_9_gen
rwtTask[tTianKong.task18]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tTianKong.task18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task18]["StartAutoWay"] = {}
rwtTask[tTianKong.task18]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task18]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tTianKong.task18]["StartAutoWay"]["FindWayPos"] = sPos_Task18

rwtTask[tTianKong.task18]["Awards"] = {}
rwtTask[tTianKong.task18]["Awards"]["Events"] = {}
rwtTask[tTianKong.task18]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id4
rwtTask[tTianKong.task18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task18

--真相只有一个
rwtTask[tTianKong.task19] = {}
rwtTask[tTianKong.task19]["Title"]= tLuaText[LANGUAGE_CONFIG][21214]
rwtTask[tTianKong.task19]["PreTaskId"] = tTianKong.task18
rwtTask[tTianKong.task19]["NextTaskId"]= tTianKong.task20
rwtTask[tTianKong.task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task19]["DialogId"]= 11279
rwtTask[tTianKong.task19]["ReqTrap1"] = nTrap_8
rwtTask[tTianKong.task19]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task19]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task19]["DynaNpcGroupGen"][1]["GenId"] = nTrap_8_gen
rwtTask[tTianKong.task19]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task19]["StartAutoWay"] = {}
rwtTask[tTianKong.task19]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task19]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task19]["StartAutoWay"]["FindWayPos"] = sPos_Task15


rwtTask[tTianKong.task20] = {}
rwtTask[tTianKong.task20]["Title"]= tLuaText[LANGUAGE_CONFIG][21214]
rwtTask[tTianKong.task20]["PreTaskId"] = tTianKong.task19
rwtTask[tTianKong.task20]["NextTaskId"]= tTianKong.task21
rwtTask[tTianKong.task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTianKong.task20]["PassCopyMap1"] = {3069}
rwtTask[tTianKong.task20]["PassCopyMapCount1"] = 1
rwtTask[tTianKong.task20]["IsClickComplete"] = 1
rwtTask[tTianKong.task20]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task20]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task20]["DynaNpcGroupGen"][1]["GenId"] = 20040012
rwtTask[tTianKong.task20]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete


rwtTask[tTianKong.task21] = {}
rwtTask[tTianKong.task21]["Title"]= tLuaText[LANGUAGE_CONFIG][21214]
rwtTask[tTianKong.task21]["PreTaskId"] = tTianKong.task20
rwtTask[tTianKong.task21]["NextTaskId"]= tTianKong.task22
rwtTask[tTianKong.task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task21]["DialogId"]= 11280
rwtTask[tTianKong.task21]["ReqTrap1"] = nTrap_8
rwtTask[tTianKong.task21]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task21]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task21]["DynaNpcGroupGen"][1]["GenId"] = nTrap_8_gen
rwtTask[tTianKong.task21]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task21]["UnlockCopyMap1"] = 3071
rwtTask[tTianKong.task21]["UnlockCopyMap2"] = 3146
rwtTask[tTianKong.task21]["StartAutoWay"] = {}
rwtTask[tTianKong.task21]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task21]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task21]["StartAutoWay"]["FindWayPos"] = sPos_Task15


rwtTask[tTianKong.task22] = {} 
rwtTask[tTianKong.task22]["Title"]= tLuaText[LANGUAGE_CONFIG][21214]
rwtTask[tTianKong.task22]["PreTaskId"] = tTianKong.task21
rwtTask[tTianKong.task22]["NextTaskId"]= tTianKong.task23
rwtTask[tTianKong.task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTianKong.task22]["PassCopyMap1"] = 3071
rwtTask[tTianKong.task22]["OpenCopyMap"] = 3071
rwtTask[tTianKong.task22]["PassCopyMapCount1"] = 1
rwtTask[tTianKong.task22]["IsClickComplete"] = 1
rwtTask[tTianKong.task22]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task22]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task22]["DynaNpcGroupGen"][1]["GenId"] = 20040028
rwtTask[tTianKong.task22]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task22]["StartAutoWay"] = {}
rwtTask[tTianKong.task22]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task22]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task22]["StartAutoWay"]["FindWayPos"] = "47.94,0.71,72.61"
rwtTask[tTianKong.task22]["UnLockZhouHui"]=3146

rwtTask[tTianKong.task22]["Awards"] = {}
rwtTask[tTianKong.task22]["Awards"]["Events"] = {}
rwtTask[tTianKong.task22]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task22]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task22]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id5
rwtTask[tTianKong.task22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task22


--难解的感情
rwtTask[tTianKong.task23] = {}
rwtTask[tTianKong.task23]["Title"]= tLuaText[LANGUAGE_CONFIG][21215]
rwtTask[tTianKong.task23]["PreTaskId"] = tTianKong.task22
rwtTask[tTianKong.task23]["NextTaskId"]= tTianKong.task24
rwtTask[tTianKong.task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTianKong.task23]["DialogId"]= 11281
rwtTask[tTianKong.task23]["ReqTrap1"] = nTrap_10
rwtTask[tTianKong.task23]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task23]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task23]["DynaNpcGroupGen"][1]["GenId"] = nTrap_10_gen
rwtTask[tTianKong.task23]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task23]["StartAutoWay"] = {}
rwtTask[tTianKong.task23]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task23]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task23]["StartAutoWay"]["FindWayPos"] = sPos_Task23

rwtTask[tTianKong.task24] = {}
rwtTask[tTianKong.task24]["Title"]= tLuaText[LANGUAGE_CONFIG][21215]
rwtTask[tTianKong.task24]["PreTaskId"] = tTianKong.task23
rwtTask[tTianKong.task24]["NextTaskId"]= tTianKong.task25
rwtTask[tTianKong.task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tTianKong.task24]["DialogId"]= 11282
rwtTask[tTianKong.task24]["ReqTrap1"] = nTrap_11
rwtTask[tTianKong.task24]["DynaNpcGroupGen"] = {}
rwtTask[tTianKong.task24]["DynaNpcGroupGen"][1] = {}
rwtTask[tTianKong.task24]["DynaNpcGroupGen"][1]["GenId"] = nTrap_11_gen
rwtTask[tTianKong.task24]["DynaNpcGroupGen"][1]["MapId"] = 2004
rwtTask[tTianKong.task24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTianKong.task24]["StartAutoWay"] = {}
rwtTask[tTianKong.task24]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTianKong.task24]["StartAutoWay"]["FindWayMapId"] = 2004
rwtTask[tTianKong.task24]["StartAutoWay"]["FindWayPos"] = sPos_Task5

rwtTask[tTianKong.task24]["Awards"] = {}
rwtTask[tTianKong.task24]["Awards"]["Events"] = {}
rwtTask[tTianKong.task24]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task24]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task24]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id6
rwtTask[tTianKong.task24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task24

--纳雅城二三事
rwtTask[tTianKong.task25] = {}
rwtTask[tTianKong.task25]["Title"]= tLuaText[LANGUAGE_CONFIG][21216]
rwtTask[tTianKong.task25]["PreTaskId"] = tTianKong.task24
rwtTask[tTianKong.task25]["NextTaskId"]= tTianKong.task26
rwtTask[tTianKong.task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTianKong.task25]["DialogId"]= 11283
rwtTask[tTianKong.task25]["TaskNpc"] = nNpc_7
rwtTask[tTianKong.task25]["IsClickComplete"] = 0
rwtTask[tTianKong.task25]["StartAutoWay"] = {}
rwtTask[tTianKong.task25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task25]["StartAutoWay"]["FindWayMapId"] = 2006
rwtTask[tTianKong.task25]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_7
rwtTask[tTianKong.task25]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_7_gen
--rwtTask[tTianKong.task25]["EndAutoWay"] = {}
--rwtTask[tTianKong.task25]["EndAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTianKong.task25]["EndAutoWay"]["FindWayMapId"] = 2006
--rwtTask[tTianKong.task25]["EndAutoWay"]["FindWayGroupId"] = nNpcGroup_7
--rwtTask[tTianKong.task25]["EndAutoWay"]["FindWayGenId"] = nNpcGroup_7_gen

rwtTask[tTianKong.task26] = {}
rwtTask[tTianKong.task26]["Title"]= tLuaText[LANGUAGE_CONFIG][21216]
rwtTask[tTianKong.task26]["PreTaskId"] = tTianKong.task25
rwtTask[tTianKong.task26]["NextTaskId"]= 10509 -------------------
rwtTask[tTianKong.task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTianKong.task26]["DialogId"]= 11284
rwtTask[tTianKong.task26]["TaskNpc"] = nNpc_1
rwtTask[tTianKong.task26]["IsClickComplete"] = 0
rwtTask[tTianKong.task26]["StartAutoWay"] = {}
rwtTask[tTianKong.task26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTianKong.task26]["StartAutoWay"]["FindWayMapId"] = 2006
rwtTask[tTianKong.task26]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_1
rwtTask[tTianKong.task26]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_1_gen
--rwtTask[tTianKong.task26]["EndAutoWay"] = {}
--rwtTask[tTianKong.task26]["EndAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTianKong.task26]["EndAutoWay"]["FindWayMapId"] = 2006
--rwtTask[tTianKong.task26]["EndAutoWay"]["FindWayGroupId"] = nNpcGroup_1
--rwtTask[tTianKong.task26]["EndAutoWay"]["FindWayGenId"] = nNpcGroup_1_gen

rwtTask[tTianKong.task26]["Awards"] = {}
rwtTask[tTianKong.task26]["Awards"]["Events"] = {}
rwtTask[tTianKong.task26]["Awards"]["Events"][1] = {}
rwtTask[tTianKong.task26]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTianKong.task26]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTianKong.task26]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.id7
rwtTask[tTianKong.task26]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTianKong.task26]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTianKong.task26
rwtTask[tTianKong.task26]["OpenMercenaryTask"] = {}
rwtTask[tTianKong.task26]["OpenMercenaryTask"]["AreaId"] = 2005
rwtTask[tTianKong.task26]["OpenMercenaryTask"]["TownId"] = 200502



