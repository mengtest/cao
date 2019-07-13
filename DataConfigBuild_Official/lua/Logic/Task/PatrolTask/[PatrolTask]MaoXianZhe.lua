--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--冒险者营地巡查任务
--By:mzy


--endregion

--******************************数据定义*****************************
------------------任务id---------------
local tMaoXianZhePatrolTask = {}

tMaoXianZhePatrolTask.Pre = 50103  --冒险者营地巡查初始任务
--巡查线1
--tMaoXianZhePatrolTask.Way1 = {}
--tMaoXianZhePatrolTask.Way1.First = 50139	--前往执行巡查工作动画1
--tMaoXianZhePatrolTask.Way1.Task1 = 50104  --和冒险者迈尔斯对话

--tMaoXianZhePatrolTask.Way1.Task5 = 50287  --在营地进行调查

--tMaoXianZhePatrolTask.Way1.Task2 = 50105  --驱赶戈壁火狐

--tMaoXianZhePatrolTask.Way1.Task6 = 50288  --审问戈壁火狐
--tMaoXianZhePatrolTask.Way1.Task7 = 50289  --在原地查看情况

--tMaoXianZhePatrolTask.Way1.Task3 = 50106  --回报冒险者迈尔斯
--tMaoXianZhePatrolTask.Way1.Task4 = 50107  --返回联盟交接任务

--巡查线2
tMaoXianZhePatrolTask.Way2 = {}
tMaoXianZhePatrolTask.Way2.First = 50140	--前往执行巡查工作动画1
tMaoXianZhePatrolTask.Way2.Task1 = 50108  --和首领埃尼奥对话
tMaoXianZhePatrolTask.Way2.Task2 = 50109  --询问小女巫弥尔[
tMaoXianZhePatrolTask.Way2.Task3 = 50110  --采集草药（0/2）
tMaoXianZhePatrolTask.Way2.Task4 = 50111  --和小女巫弥尔对话
tMaoXianZhePatrolTask.Way2.Task5 = 50112  --回复首领埃尼奥
tMaoXianZhePatrolTask.Way2.Task6 = 50113  --返回联盟交接任务



----------------对白id------------
--动画id
--local nCg_Way1 = 3411       --巡查线1
local nCg_Way2 = 3412       --巡查线2

local nCg_3 = 1         --巡查线1黑影袭击火狐
--动画对白id
local nDialog_Oper1_1 = 10968
local nDialog_Oper1_2 = 10969
local nDialog_Oper1_3 = 10982
local nDialog_Oper1_4 = 11513
local nDialog_Oper2_1 = 10970
local nDialog_Oper2_2 = 10971

local nDialog_Oper3_1 = 11510

--接取巡查任务
local nDialog_Task_XunCha = 10975

----巡查线1
--local nDialog_Way1_Task1_1 = 11091
--local nDialog_Way1_Task1 = 10976    
--local nDialog_Way1_Task2 = 10977    
--local nDialog_Way1_Task3 = 10978    
--local nDialog_Way1_Task4 = 10979   

----新增对白
--local nDialog_Way1_Task5 = 11507    --采集后对白
--local nDialog_Way1_Task6 = 11508    --审问火狐
--local nDialog_Way1_Task7 = 11509    --查看情况

--巡查线2
local nDialog_Way2_Task1_1 = 11092
local nDialog_Way2_Task1 = 10980    
local nDialog_Way2_Task2 = 10981    
--local nDialog_Way2_Task3 = 1    
local nDialog_Way2_Task4 = 10983    
local nDialog_Way2_Task5 = 10984    
local nDialog_Way2_Task6 = 10985 

----------------NPCgroup----------
--陷阱
local nTrap_1 = 30373
local nTrap_GenId_1 = 20030356

local nTrap_2 = 30374
local nTrap_GenId_2 = 20030357

--采集物
local nCollect_1 = 60128        --草药
local nCollect_1_GenId1 = 20030358
local nCollect_1_GenId2 = 20030359

local nCollect_2 = 60283        --调查
local nCollect_2_GenId = 20030492

local nCollect_3 = 60284        --查看情况
local nCollect_3_GenId = 20030493

--NPC
--戈壁火狐
local nSingleNpc_1 = 20492
local nSingleNpc_GenId_1 = 20030494
----------------npcid--------------
local nNpc_MaiErSi = 3140      --迈尔斯
local nNpc_EiNiAo = 3142      --埃尼奥
local nNpc_MiEr = 3118      --小女巫弥尔
local nNpc_BiDuoMao = 3080      --比多猫


--新增NPC
local nNpc_HuoHu = 3330     --戈壁火狐

local nNpc_Murder = 3513   --神秘凶手

local nNpc_WuGui = 3514   --女巫仆从 巫傀

---------------monsterGroup------------
--戈壁火狐
local nMonsterGroup_1 = 900292
local nMonsterGroup_GenId_1 = 20030360

--女巫仆从 巫傀
local nMonsterGroup_Witch = 900367
local nMonsterGroup_GenId_Witch = 20030495

---------------monster----------------
--戈壁火狐
local nMonster_1 = 9000206
--女巫仆从
local nMonster_Witch = 9000285

--******************************逻辑*****************************
----------------NPCgroup----------
---------------陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

-----------采集物
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect


--调查
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["Func"] = function()
   rwOpenNpcChatDialog(nDialog_Way1_Task5)
end

--查看情况
rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["Func"] = function()
   rwOpenNpcChatDialog(nDialog_Way1_Task7)
end

--------------------NPC
--戈壁火狐
rwtNpcGroup[nSingleNpc_1] = rwtNpcGroup[nSingleNpc_1] or {}
rwtNpcGroup[nSingleNpc_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nSingleNpc_1]["NpcId"] = nNpc_HuoHu



----------------NPC----------
--戈壁火狐
rwtNpc[nNpc_HuoHu] = rwtNpc[nNpc_HuoHu] or {}




--******************************任务*****************************
----------------------------接取巡查任务-----------
--前往执行巡查工作
rwtTask[tMaoXianZhePatrolTask.Pre] = {}

rwtTask[tMaoXianZhePatrolTask.Pre] = {}
rwtTask[tMaoXianZhePatrolTask.Pre]["Title"] = tLuaText[LANGUAGE_CONFIG][20918]
rwtTask[tMaoXianZhePatrolTask.Pre]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Pre]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tMaoXianZhePatrolTask.Pre]["ReqTrap1"] = nTrap_1
rwtTask[tMaoXianZhePatrolTask.Pre]["AcceptDialogId"] = nDialog_Task_XunCha
rwtTask[tMaoXianZhePatrolTask.Pre]["PatrolFirstTask"] = 1
rwtTask[tMaoXianZhePatrolTask.Pre]["PatrolAfterTask"] = {tMaoXianZhePatrolTask.Way2.First}
rwtTask[tMaoXianZhePatrolTask.Pre]["PatrolTaskAreaId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Pre]["PatrolTaskTownId"] = 200301
        
rwtTask[tMaoXianZhePatrolTask.Pre]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZhePatrolTask.Pre]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZhePatrolTask.Pre]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tMaoXianZhePatrolTask.Pre]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Pre]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel  
rwtTask[tMaoXianZhePatrolTask.Pre]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Pre]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Pre]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Pre]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tMaoXianZhePatrolTask.Pre]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1


-----------------------------------------巡查线一：冒险者的烦恼---------------------------------

--rwtTask[tMaoXianZhePatrolTask.Way1.First] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["Title"] = tLuaText[LANGUAGE_CONFIG][20919]
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["NextTaskId" ]= tMaoXianZhePatrolTask.Way1.Task1
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["DialogId"] = nDialog_Way1_Task1_1
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["ReqTrap1" ]= nTrap_1
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["IsClickComplete"] = 0
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
--rwtTask[tMaoXianZhePatrolTask.Way1.First]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1
----和冒险者迈尔斯对话 
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20920]
----rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["PatrolCg"] = nCg_Way1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["NextTaskId"] = tMaoXianZhePatrolTask.Way1.Task5
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["DialogId"] = nDialog_Way1_Task1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["TaskNpc"] = nNpc_MaiErSi
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["StartAutoWay"]["FindWayGroupId"] = 20182
--rwtTask[tMaoXianZhePatrolTask.Way1.Task1]["StartAutoWay"]["FindWayGenId"] = 20030044


----在营地进行调查
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21284]
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["NextTaskId"] = tMaoXianZhePatrolTask.Way1.Task2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["ReqCollectId1"] = nCollect_2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["ReqCollectCount1"] = 1


--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_2_GenId
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task5]["StartAutoWay"]["FindWayGenId"] = nCollect_2_GenId

----驱赶戈壁火狐
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["Title" ]= tLuaText[LANGUAGE_CONFIG][20921]
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["NextTaskId" ]= tMaoXianZhePatrolTask.Way1.Task6
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["ReqTrap1"] = nTrap_2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DialogId"] = nDialog_Way1_Task2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["KillMonsterGroup1" ]= nMonsterGroup_1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["IsClickComplete"] = 0
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["MonsterGroupGenId"] = nMonsterGroup_GenId_1

--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][2]["MapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete    
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
--rwtTask[tMaoXianZhePatrolTask.Way1.Task2]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2

----审问戈壁火狐 
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][21285]
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["NextTaskId"] = tMaoXianZhePatrolTask.Way1.Task7
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["DialogId"] = nDialog_Way1_Task6
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["TaskNpc"] = nNpc_HuoHu
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC

--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["DynaNpcGroupGen"][1]["GenId"] = nSingleNpc_GenId_1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task6]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_GenId_1


----在营地进行调查
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][21286]
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["NextTaskId"] = tMaoXianZhePatrolTask.Way1.Task3
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["ReqCollectId1"] = nCollect_3
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["ReqCollectCount1"] = 1

--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["DynaNpcGroupGen"][1]["GenId"] = nCollect_3_GenId
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["StartAutoWay"]["FindWayGroupId"] = nCollect_3
--rwtTask[tMaoXianZhePatrolTask.Way1.Task7]["StartAutoWay"]["FindWayGenId"] = nCollect_3_GenId


----回报冒险者迈尔斯 
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20922]
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["NextTaskId"] = tMaoXianZhePatrolTask.Way1.Task4
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["DialogId"] = nDialog_Way1_Task3
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["TaskNpc"] = nNpc_MaiErSi
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["StartAutoWay"]["FindWayGroupId"] = 20182
--rwtTask[tMaoXianZhePatrolTask.Way1.Task3]["StartAutoWay"]["FindWayGenId"] = 20030044

----返回联盟交接任务 
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20923]
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["DialogId"] = nDialog_Way1_Task4
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["TaskNpc"] = nNpc_BiDuoMao
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["PatrolLastTask"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["StartAutoWay"] = {}
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["StartAutoWay"]["FindWayGroupId"] = 20115
--rwtTask[tMaoXianZhePatrolTask.Way1.Task4]["StartAutoWay"]["FindWayGenId"] = 2001658



-----------------------------------------巡查线二：首领的请求---------------------------------

rwtTask[tMaoXianZhePatrolTask.Way2.First] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.First]["Title"] = tLuaText[LANGUAGE_CONFIG][20924]
rwtTask[tMaoXianZhePatrolTask.Way2.First]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.First]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMaoXianZhePatrolTask.Way2.First]["NextTaskId" ]= tMaoXianZhePatrolTask.Way2.Task1
rwtTask[tMaoXianZhePatrolTask.Way2.First]["DialogId"] = nDialog_Way2_Task1_1
rwtTask[tMaoXianZhePatrolTask.Way2.First]["ReqTrap1" ]= nTrap_1
rwtTask[tMaoXianZhePatrolTask.Way2.First]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.First]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.First]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tMaoXianZhePatrolTask.Way2.First]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.First]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZhePatrolTask.Way2.First]["IsClickComplete"] = 0
rwtTask[tMaoXianZhePatrolTask.Way2.First]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.First]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.First]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.First]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tMaoXianZhePatrolTask.Way2.First]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1
--和首领埃尼奥对话 
rwtTask[tMaoXianZhePatrolTask.Way2.Task1] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["Title"] =tLuaText[LANGUAGE_CONFIG][20925]
--rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["PatrolCg"] = nCg_Way2
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["NextTaskId"] = tMaoXianZhePatrolTask.Way2.Task2
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["DialogId"] = nDialog_Way2_Task1
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["TaskNpc"] = nNpc_EiNiAo
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["StartAutoWay"]["FindWayGroupId"] = 10031
rwtTask[tMaoXianZhePatrolTask.Way2.Task1]["StartAutoWay"]["FindWayGenId"] = 20030584

--询问小女巫弥尔 
rwtTask[tMaoXianZhePatrolTask.Way2.Task2] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][20926]
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["NextTaskId"] = tMaoXianZhePatrolTask.Way2.Task3
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["DialogId"] = nDialog_Way2_Task2
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["TaskNpc"] = nNpc_MiEr
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZhePatrolTask.Way2.Task2]["StartAutoWay"]["FindWayGenId"] = 20030132

--采集草药（0/2） 
rwtTask[tMaoXianZhePatrolTask.Way2.Task3] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20927]
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["NextTaskId"] = tMaoXianZhePatrolTask.Way2.Task4
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["ReqCollectId1"] = nCollect_1
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["ReqCollectCount1"] = 2


rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_1_GenId1
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][2]["GenId"] = nCollect_1_GenId2
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[tMaoXianZhePatrolTask.Way2.Task3]["StartAutoWay"]["FindWayGenId"] = nCollect_1_GenId1

--和小女巫弥尔对话 
rwtTask[tMaoXianZhePatrolTask.Way2.Task4] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20928]
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["NextTaskId"] = tMaoXianZhePatrolTask.Way2.Task5
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["DialogId"] = nDialog_Way2_Task4
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["TaskNpc"] = nNpc_MiEr

rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["KillMonsterGroup1" ]= nMonsterGroup_Witch
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["IsClickComplete"] = 0
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["MonsterGroupGenId"] = nMonsterGroup_GenId_Witch
                              
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_Witch
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["StartAutoWay"]["FindWayGroupId"] = 20202
rwtTask[tMaoXianZhePatrolTask.Way2.Task4]["StartAutoWay"]["FindWayGenId"] = 20030132

--回复首领埃尼奥 
rwtTask[tMaoXianZhePatrolTask.Way2.Task5] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][20929]
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["NextTaskId"] = tMaoXianZhePatrolTask.Way2.Task6
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["DialogId"] = nDialog_Way2_Task5
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["TaskNpc"] = nNpc_EiNiAo
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["StartAutoWay"]["FindWayGroupId"] = 10031
rwtTask[tMaoXianZhePatrolTask.Way2.Task5]["StartAutoWay"]["FindWayGenId"] = 20030584

--返回联盟交接任务 
rwtTask[tMaoXianZhePatrolTask.Way2.Task6] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][20930]
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["DialogId"] = nDialog_Way2_Task6
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["TaskNpc"] = nNpc_BiDuoMao
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["PatrolLastTask"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["StartAutoWay"] = {}
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tMaoXianZhePatrolTask.Way2.Task6]["StartAutoWay"]["FindWayGenId"] = 2001658

