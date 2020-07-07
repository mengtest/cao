--region [MercenaryTask]JingJiDao.lua
--Purpose:		委托任务-鲸脊岛
--Creator: 		倪祖伟
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-07-02 $
--RCS-ID:		$Revision: 4 $
--endregion

--**************************************数据****************************************
local nMercenaryTownId = 200503

local tJingJiDaoMercenaryTask1 = {20822,20823,20824,20825,20826}
local tJingJiDaoMercenaryTask2 = {20827,20828,20829,20830,20831}
local tJingJiDaoMercenaryTask3 = {20832,20833,20834,20835,20836}
local tJingJiDaoMercenaryTask4 = {20837,20838,20839,20840,20841}
-------------对白ID-------------

local nAccept_Dialog = {}
      nAccept_Dialog[1]= 12134 
      nAccept_Dialog[2]= 12138
      nAccept_Dialog[3]= 12140
      nAccept_Dialog[4]= 12142

local nDialog = {}
      -- nDialog[11] = 12135 --战斗前对白-客户端战前事件（900446，900447）
      nDialog[12] = 12136 --战斗后对白
      -- nDialog[21] = 12137 --战前对白客户端战前事件（900449）
      nDialog[22] = 12139
      nDialog[3] = 12141
      nDialog[41] = 12143
      nDialog[42] = 12144

-------------NPC组-----------------------
---------采集物-----------
--珍贵的珊瑚
local nCollect_ShanHu       = 60324
local nGenId_ShanHu         = 20050190

-------------Monster组-----------


local nMonster_Task1_1    = 900446  --"9000424,9000425"
local nMonster_Task1_2    = 900447  --"9000424,9000425"
local nGenId_Monster_Task1_1 = 20050193
local nGenId_Monster_Task1_2 = 20050194


local nMonster_TanBaoZhe    = 900448      --9000426
local nGenId_Monster_TanBaoZhe = 20050195
local nTrap_Task4        = 30811
local nGenId_Trap_Task4  = 20050191
rwtNpcGroup[nTrap_Task4] = {}
rwtNpcGroup[nTrap_Task4]["Type"] = CONST_NPCGROUP_TYPE.Trap

local nMonster_JuMo         = 900449      --9000428
local nGenId_Monster_JuMo   = 20050196

-----------采集物--------
rwtNpcGroup[nCollect_ShanHu] = rwtNpcGroup[nCollect_ShanHu] or {}
rwtNpcGroup[nCollect_ShanHu]["Type"] = CONST_NPCGROUP_TYPE.Collect
--****************************************任务*******************************************
-------鲸脊缉盗------
--品质D
rwtTask[tJingJiDaoMercenaryTask1[1]] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask1[1]]["KillMonsterGroup1"] = nMonster_Task1_1        --任意击杀两只怪的一只
rwtTask[tJingJiDaoMercenaryTask1[1]]["KillMonsterGroup2"] = nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[1]]["KillMonsterGroupCount1"] = 1
rwtTask[tJingJiDaoMercenaryTask1[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[1]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask1[1]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[1]]["IsMercenaryBattleDialog"] = nDialog[12]
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask1[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayTypeId"]=2
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayGroupId"] =nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayGenId"] =nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[1]]["MercenaryGroup"] = 20050301

--品质C
rwtTask[tJingJiDaoMercenaryTask1[2]] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask1[2]]["KillMonsterGroup1"] = nMonster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[2]]["KillMonsterGroup2"] = nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[2]]["KillMonsterGroupCount1"] = 1
rwtTask[tJingJiDaoMercenaryTask1[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[2]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask1[2]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[2]]["IsMercenaryBattleDialog"] = nDialog[12]
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask1[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[2]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayTypeId"]=2
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayGroupId"] =nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayGenId"] =nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[2]]["MercenaryGroup"] = 20050301

--品质B
rwtTask[tJingJiDaoMercenaryTask1[3]] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask1[3]]["KillMonsterGroup1"] = nMonster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[3]]["KillMonsterGroup2"] = nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[3]]["KillMonsterGroupCount1"] = 1
rwtTask[tJingJiDaoMercenaryTask1[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[3]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask1[3]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[3]]["IsMercenaryBattleDialog"] = nDialog[12]
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask1[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayTypeId"]=2
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayGroupId"] =nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayGenId"] =nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[3]]["MercenaryGroup"] = 20050301

--品质A
rwtTask[tJingJiDaoMercenaryTask1[4]] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask1[4]]["KillMonsterGroup1"] = nMonster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[4]]["KillMonsterGroup2"] = nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[4]]["KillMonsterGroupCount1"] = 1
rwtTask[tJingJiDaoMercenaryTask1[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[4]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask1[4]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[4]]["IsMercenaryBattleDialog"] = nDialog[12]
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask1[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[4]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayTypeId"]=2
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayGroupId"] =nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayGenId"] =nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[4]]["MercenaryGroup"] = 20050301

--品质S
rwtTask[tJingJiDaoMercenaryTask1[5]] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask1[5]]["KillMonsterGroup1"] = nMonster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[5]]["KillMonsterGroup2"] = nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[5]]["KillMonsterGroupCount1"] = 1
rwtTask[tJingJiDaoMercenaryTask1[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[5]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask1[5]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[5]]["IsMercenaryBattleDialog"] = nDialog[12]
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask1[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Task1_1
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask1[5]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayTypeId"]=2
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayGroupId"] =nMonster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayGenId"] =nGenId_Monster_Task1_2
rwtTask[tJingJiDaoMercenaryTask1[5]]["MercenaryGroup"] = 20050301

-----实验的扫尾工作----------
--品质D
rwtTask[tJingJiDaoMercenaryTask2[1]] = {}
rwtTask[tJingJiDaoMercenaryTask2[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask2[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[1]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask2[1]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[1]]["IsMercenaryBattleDialog"] = nDialog[22]
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask2[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask2[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask2[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask2[1]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[1]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[1]]["MercenaryGroup"] = 20050302

--品质C
rwtTask[tJingJiDaoMercenaryTask2[2]] = {}
rwtTask[tJingJiDaoMercenaryTask2[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask2[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[2]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask2[2]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[2]]["IsMercenaryBattleDialog"] = nDialog[22]
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask2[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask2[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask2[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask2[2]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[2]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[2]]["MercenaryGroup"] = 20050302

--品质B
rwtTask[tJingJiDaoMercenaryTask2[3]] = {}
rwtTask[tJingJiDaoMercenaryTask2[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask2[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[3]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask2[3]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[3]]["IsMercenaryBattleDialog"] = nDialog[22]
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask2[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask2[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask2[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask2[3]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[3]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[3]]["MercenaryGroup"] = 20050302

--品质A
rwtTask[tJingJiDaoMercenaryTask2[4]] = {}
rwtTask[tJingJiDaoMercenaryTask2[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask2[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[4]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask2[4]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[4]]["IsMercenaryBattleDialog"] = nDialog[22]
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask2[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask2[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask2[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask2[4]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[4]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[4]]["MercenaryGroup"] = 20050302

--品质S
rwtTask[tJingJiDaoMercenaryTask2[5]] = {}
rwtTask[tJingJiDaoMercenaryTask2[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask2[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[5]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask2[5]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[5]]["IsMercenaryBattleDialog"] = nDialog[22]
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask2[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask2[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask2[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask2[5]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[5]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask2[5]]["MercenaryGroup"] = 20050302

-------珍贵的珊瑚------
--品质D
rwtTask[tJingJiDaoMercenaryTask3[1]] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask3[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[1]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask3[1]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[1]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask3[1]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[1]]["MercenaryGroup"] = 20050303

--品质C
rwtTask[tJingJiDaoMercenaryTask3[2]] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask3[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[2]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask3[2]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[2]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask3[2]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[2]]["MercenaryGroup"] = 20050303

--品质B
rwtTask[tJingJiDaoMercenaryTask3[3]] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask3[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[3]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask3[3]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[3]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask3[3]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[3]]["MercenaryGroup"] = 20050303

--品质A
rwtTask[tJingJiDaoMercenaryTask3[4]] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask3[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[4]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask3[4]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[4]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask3[4]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[4]]["MercenaryGroup"] = 20050303

--品质S
rwtTask[tJingJiDaoMercenaryTask3[5]] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask3[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[5]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask3[5]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[5]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask3[5]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask3[5]]["MercenaryGroup"] = 20050303

-------守护深海宝藏------
--品质D
rwtTask[tJingJiDaoMercenaryTask4[1]] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask4[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[1]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask4[1]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[1]]["DialogId"] = nDialog[41]
rwtTask[tJingJiDaoMercenaryTask4[1]]["ReqTrap1"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[1]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[1]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[1]]["MercenaryGroup"] = 20050304

--品质C
rwtTask[tJingJiDaoMercenaryTask4[2]] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask4[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[2]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask4[2]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[2]]["DialogId"] = nDialog[41]
rwtTask[tJingJiDaoMercenaryTask4[2]]["ReqTrap1"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[2]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[2]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[2]]["MercenaryGroup"] = 20050304

--品质B
rwtTask[tJingJiDaoMercenaryTask4[3]] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask4[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[3]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask4[3]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[3]]["DialogId"] = nDialog[41]
rwtTask[tJingJiDaoMercenaryTask4[3]]["ReqTrap1"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[3]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[3]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[3]]["MercenaryGroup"] = 20050304
--品质A
rwtTask[tJingJiDaoMercenaryTask4[4]] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask4[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[4]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask4[4]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[4]]["DialogId"] = nDialog[41]
rwtTask[tJingJiDaoMercenaryTask4[4]]["ReqTrap1"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[4]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[4]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[4]]["MercenaryGroup"] = 20050304
--品质S
rwtTask[tJingJiDaoMercenaryTask4[5]] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask4[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[5]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask4[5]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[5]]["DialogId"] = nDialog[41]
rwtTask[tJingJiDaoMercenaryTask4[5]]["ReqTrap1"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[5]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[5]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task4
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_Trap_Task4
rwtTask[tJingJiDaoMercenaryTask4[5]]["MercenaryGroup"] = 20050304

--[[
      备注
      1任务1-tJingJiDaoMercenaryTask1     两只任务怪是两个模样，但是进入战斗的时候是一样的
      900446  --"9000424,9000425"   是9000424的模样   
      900447  --"9000424,9000425"   是9000425的模样
      ===================
      2、任务4、tJingJiDaoMercenaryTask4
      任务开始时不刷出怪物，只有陷阱，
      陷阱触发对白，之后接黑屏，
      黑屏后怪物刷出，自动出战前对白，进战斗
      战斗胜利完成任务
      -------------
      这里利用进入动画时有自带黑幕
      任务类型设为触发陷阱出对白进入战斗
      动画接在陷阱对白后，动画内容，刷出怪物，触发对白
      陷阱对白结束后进入战斗
]]