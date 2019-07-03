--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--不冬岛支线
--by 胡青

--endregion
local tBranchTask = {}
      tBranchTask.PreTask = 10449
      tBranchTask.Task1   = 70088    -- 了解不冬岛
      tBranchTask.Task2   = 70089    --醒醒，别睡了
      tBranchTask.Task3   = 70090    --枭鹰的目的
      tBranchTask.Task4   = 70091    --获得木板（0/2）
      tBranchTask.Task5   = 70092    --看，我承包的地
      tBranchTask.Task6   = 70093    --目标，暖虫草
      tBranchTask.Task7   = 70094    --爱琳娜的计划

local tDialog = {}
      tDialog[1] =  11654  --寻路到弗莱特后对白
      tDialog[2] =  11655  --采集前对白
      tDialog[3] =  11656  --枭鹰的目的
      tDialog[4] =  11657  --看，我承包的地
      tDialog[5] =  11658  --目标，暖虫草
      tDialog[6] =  11659  --爱琳娜的计划

local tNpc = {}
      tNpc.FuLaiTe    = 3383   --弗莱特
      tNpc.XieWeiQi   = 3557   --岛民谢维奇

rwtNpc[tNpc.XieWeiQi] = rwtNpc[tNpc.XieWeiQi] or {}

local tNpc_group = {}
      tNpc_group.FuLaiTe  = 20408     --弗莱特
      tNpc_group.XieWeiQi = 20513     --岛民谢维奇

local tCollect = {}
      tCollect.Board = 60299  --木板

local nMonster_Group = 900383  --枭鹰
local nMonster       = 9000302

local nTrap_1 = 30520  --杀怪陷阱

local tGenEvent = {}
      tGenEvent.Collect_Board_1     = 20050118   --木板1
      tGenEvent.Collect_Board_2     = 20050119   --木板2
      tGenEvent.Npc_FuLaiTe         = 20050035   --弗莱特
      tGenEvent.Npc_XieWeiQi        = 20050120   --岛民谢维奇
      tGenEvent.Monster_1           = 20050121   --枭鹰
      tGenEvent.Trap_1              = 20050122   --杀怪陷阱

local sPos_BranchTask4 = "12.53,4.282,-9.46"

rwtNpcGroup[tNpc_group.XieWeiQi] = rwtNpcGroup[tNpc_group.XieWeiQi] or {} 
rwtNpcGroup[tNpc_group.XieWeiQi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpc_group.XieWeiQi]["NpcId"]= tNpc.XieWeiQi

rwtNpcGroup[tCollect.Board] = rwtNpcGroup[tCollect.Board] or {} 
rwtNpcGroup[tCollect.Board]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtTask[tBranchTask.Task1] = {}
rwtTask[tBranchTask.Task1]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task1]["PreTaskId"] = tBranchTask.PreTask
rwtTask[tBranchTask.Task1]["NextTaskId"] = tBranchTask.Task2
rwtTask[tBranchTask.Task1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBranchTask.Task1]["TaskNpc"] = tNpc.FuLaiTe
rwtTask[tBranchTask.Task1]["DialogId"] = tDialog[1]
rwtTask[tBranchTask.Task1]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task1]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task1]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.FuLaiTe
rwtTask[tBranchTask.Task1]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Npc_FuLaiTe
                     
rwtTask[tBranchTask.Task2] = {}
rwtTask[tBranchTask.Task2]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task2]["PreTaskId"] = tBranchTask.Task1
rwtTask[tBranchTask.Task2]["NextTaskId"] = tBranchTask.Task3
rwtTask[tBranchTask.Task2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBranchTask.Task2]["TaskNpc"] = tNpc.XieWeiQi
rwtTask[tBranchTask.Task2]["DialogId"] = tDialog[2]
rwtTask[tBranchTask.Task2]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task2]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.XieWeiQi
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Npc_XieWeiQi

rwtTask[tBranchTask.Task3] = {}
rwtTask[tBranchTask.Task3]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task3]["PreTaskId"] = tBranchTask.Task2
rwtTask[tBranchTask.Task3]["NextTaskId"] = tBranchTask.Task4
rwtTask[tBranchTask.Task3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBranchTask.Task3]["TaskNpc"] = tNpc.XieWeiQi
rwtTask[tBranchTask.Task3]["DialogId"] = tDialog[3]
rwtTask[tBranchTask.Task3]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task3]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.XieWeiQi
rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Npc_XieWeiQi

rwtTask[tBranchTask.Task4] = {}
rwtTask[tBranchTask.Task4]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task4]["PreTaskId"] = tBranchTask.Task3
rwtTask[tBranchTask.Task4]["NextTaskId"] = tBranchTask.Task5
rwtTask[tBranchTask.Task4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tBranchTask.Task4]["ReqCollectId1"] = tCollect.Board
rwtTask[tBranchTask.Task4]["ReqCollectCount1"] =  2
rwtTask[tBranchTask.Task4]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Board_1
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][2] = {}
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][2]["GenId"] = tGenEvent.Collect_Board_2
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tBranchTask.Task4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task4]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task4]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBranchTask.Task4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task4]["StartAutoWay"]["FindWayPos"] = sPos_BranchTask4

rwtTask[tBranchTask.Task5] = {}
rwtTask[tBranchTask.Task5]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task5]["PreTaskId"] = tBranchTask.Task4
rwtTask[tBranchTask.Task5]["NextTaskId"] = tBranchTask.Task6
rwtTask[tBranchTask.Task5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBranchTask.Task5]["TaskNpc"] = tNpc.XieWeiQi
rwtTask[tBranchTask.Task5]["DialogId"] = tDialog[4]
rwtTask[tBranchTask.Task5]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task5]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.XieWeiQi
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Npc_XieWeiQi

rwtTask[tBranchTask.Task6] = {}
rwtTask[tBranchTask.Task6]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task6]["PreTaskId"] = tBranchTask.Task5
rwtTask[tBranchTask.Task6]["NextTaskId"] = tBranchTask.Task7
rwtTask[tBranchTask.Task6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBranchTask.Task6]["DialogId"]= tDialog[5]
rwtTask[tBranchTask.Task6]["ReqTrap1"] = nTrap_1
rwtTask[tBranchTask.Task6]["MonsterGroupGenId"] = tGenEvent.Monster_1
rwtTask[tBranchTask.Task6]["KillMonsterGroup1"]= nMonster_Group
rwtTask[tBranchTask.Task6]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Monster_1
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][2] = {}
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][2]["GenId"] = tGenEvent.Trap_1
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task6]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Monster_1

rwtTask[tBranchTask.Task7] = {}
rwtTask[tBranchTask.Task7]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21380]
rwtTask[tBranchTask.Task7]["PreTaskId"] = tBranchTask.Task6
rwtTask[tBranchTask.Task7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBranchTask.Task7]["TaskNpc"] = tNpc.XieWeiQi
rwtTask[tBranchTask.Task7]["DialogId"] = tDialog[6]
rwtTask[tBranchTask.Task7]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task7]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.XieWeiQi
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Npc_XieWeiQi



