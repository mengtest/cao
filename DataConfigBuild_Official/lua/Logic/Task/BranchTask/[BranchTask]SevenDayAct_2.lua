
--地图ID
local nMapId    = 2001
local nMapId_2  = 1000

local nTimeData = 1146 --七日任务掩码

--任务ID
local tSevenDayAct_Day2 = {}
      tSevenDayAct_Day2.Task_1 = 70034  --准备启程
      tSevenDayAct_Day2.Task_2 = 70035  --专业导游
      tSevenDayAct_Day2.Task_3 = 70036  --传说中的三女神
      --tSevenDayAct_Day2.Task_4 = 70037  --传说中的三女神
      tSevenDayAct_Day2.Task_5 = 70038  --黑影来袭
      tSevenDayAct_Day2.Task_6 = 70039  --导游的关怀
      tSevenDayAct_Day2.Task_7 = 70040  --奇怪的团友
      tSevenDayAct_Day2.Task_8 = 70041  --讨厌的团友
      tSevenDayAct_Day2.Task_9 = 70042  --再续前程

--对话ID
local tDialog = {}
      tDialog.nTask1 = 11815
      tDialog.nTask2 = 11816
      tDialog.nTask3 = 11817
      --tDialog.nTask4 = 11818
      tDialog.nTask5 = 11819
      tDialog.nTask6 = 11820
      tDialog.nTask7 = 11821
      tDialog.nTask8 = 11822
      tDialog.nTask9 = 11823

local sPos_Task_3 = "41.00,-0.02,-32.90"
local sPos_Task_5 = "46.68,0.03,-37.49"

--陷阱ID
local tTrap = {}
      tTrap.nTrap_Trap1 = 30551
      tTrap.nTrap_GenId_Trap1 = 20010157
      rwtNpcGroup[tTrap.nTrap_Trap1] = rwtNpcGroup[tTrap.nTrap_Trap1] or {} 
      rwtNpcGroup[tTrap.nTrap_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
      
      tTrap.nTrap_Trap2 = 30552
      tTrap.nTrap_GenId_Trap2 = 20010158
      rwtNpcGroup[tTrap.nTrap_Trap2] = rwtNpcGroup[tTrap.nTrap_Trap2] or {} 
      rwtNpcGroup[tTrap.nTrap_Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap

--怪物ID
local tMonster = {}

      tMonster.nMonster_KuangHuaZhe = 9000315
      tMonster.nMonsterGroup_KuangHuaZhe = 900396
      tMonster.nMonsterGroup_GenId_KuangHuaZhe = 20010159

--NPCID
local tSingleNpc = {}

      tSingleNpc.nNpc_Kaka = 3591
      tSingleNpc.nNpcGroup_Kaka = 20530
      tSingleNpc.nNpcGroup_GenId_Kaka = 1000172
      tSingleNpc.nNpcGroup_GenId_Kaka_2 = 20010162
      rwtNpc[tSingleNpc.nNpc_Kaka] = rwtNpc[tSingleNpc.nNpc_Kaka] or {}
	  rwtNpc[tSingleNpc.nNpc_Kaka]["DialogId"] = {1668,1669,1670}

      rwtNpcGroup[tSingleNpc.nNpcGroup_Kaka] = rwtNpcGroup[tSingleNpc.nNpcGroup_Kaka] or {} 
      rwtNpcGroup[tSingleNpc.nNpcGroup_Kaka]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
      rwtNpcGroup[tSingleNpc.nNpcGroup_Kaka]["NpcId"] = tSingleNpc.nNpc_Kaka


      tSingleNpc.nNpc_QiaoSiLang = 3592
      tSingleNpc.nNpcGroup_QiaoSiLang = 20531
      tSingleNpc.nNpcGroup_GenId_QiaoSiLang = 20010160
      rwtNpc[tSingleNpc.nNpc_QiaoSiLang] = rwtNpc[tSingleNpc.nNpc_QiaoSiLang] or {}
	  rwtNpc[tSingleNpc.nNpc_QiaoSiLang]["DialogId"] = {1674,1675,1676}
      rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang] = rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang] or {} 
      rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
      rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang]["NpcId"] = tSingleNpc.nNpc_QiaoSiLang

      tSingleNpc.nNpc_WuSa = 3593
      tSingleNpc.nNpcGroup_WuSa = 20532
      tSingleNpc.nNpcGroup_GenId_WuSa = 20010161
      rwtNpc[tSingleNpc.nNpc_WuSa] = rwtNpc[tSingleNpc.nNpc_WuSa] or {}
	  rwtNpc[tSingleNpc.nNpc_WuSa]["DialogId"] = {1671,1672,1673}
      rwtNpcGroup[tSingleNpc.nNpcGroup_WuSa] = rwtNpcGroup[tSingleNpc.nNpcGroup_WuSa] or {} 
      rwtNpcGroup[tSingleNpc.nNpcGroup_WuSa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
      rwtNpcGroup[tSingleNpc.nNpcGroup_WuSa]["NpcId"] = tSingleNpc.nNpc_WuSa

local tAwardId = {}
tAwardId[1] = 2000240   -- 旅程的开始
tAwardId[2] = 2000241   -- 三女神码头
tAwardId[3] = 2000242   -- 以假乱真
--专业导游
rwtTask[tSevenDayAct_Day2.Task_2] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21429]
rwtTask[tSevenDayAct_Day2.Task_2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_2]["NextTaskId"] = tSevenDayAct_Day2.Task_3
rwtTask[tSevenDayAct_Day2.Task_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day2.Task_2]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_2]["TaskNpc"] = tSingleNpc.nNpc_Kaka
rwtTask[tSevenDayAct_Day2.Task_2]["AcceptDialogId"] = tDialog.nTask1
rwtTask[tSevenDayAct_Day2.Task_2]["DialogId"] = tDialog.nTask2
rwtTask[tSevenDayAct_Day2.Task_2]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Kaka
rwtTask[tSevenDayAct_Day2.Task_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_2
rwtTask[tSevenDayAct_Day2.Task_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day2.Task_2]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day2.Task_2]["StartAutoWay"]["FindWayMapId"] = nMapId_2
rwtTask[tSevenDayAct_Day2.Task_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Kaka
rwtTask[tSevenDayAct_Day2.Task_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Kaka
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[1]
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tSevenDayAct_Day2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSevenDayAct_Day2.Task_2

--传说中的三女神
rwtTask[tSevenDayAct_Day2.Task_3] = {}
rwtTask[tSevenDayAct_Day2.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21430]
rwtTask[tSevenDayAct_Day2.Task_3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_3]["PreTaskId"] = tSevenDayAct_Day2.Task_2
rwtTask[tSevenDayAct_Day2.Task_3]["NextTaskId"] = tSevenDayAct_Day2.Task_5
rwtTask[tSevenDayAct_Day2.Task_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tSevenDayAct_Day2.Task_3]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_3]["DialogId"] = tDialog.nTask3
rwtTask[tSevenDayAct_Day2.Task_3]["ReqTrap1"] =  tTrap.nTrap_Trap1
rwtTask[tSevenDayAct_Day2.Task_3]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day2.Task_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Trap1
rwtTask[tSevenDayAct_Day2.Task_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day2.Task_3]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day2.Task_3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tSevenDayAct_Day2.Task_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_3]["StartAutoWay"]["FindWayPos"] = sPos_Task_3

--黑影来袭
rwtTask[tSevenDayAct_Day2.Task_5] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21430]
rwtTask[tSevenDayAct_Day2.Task_5]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_5]["PreTaskId"] = tSevenDayAct_Day2.Task_3
rwtTask[tSevenDayAct_Day2.Task_5]["NextTaskId"] = tSevenDayAct_Day2.Task_6
rwtTask[tSevenDayAct_Day2.Task_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSevenDayAct_Day2.Task_5]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_5]["KillMonsterGroup1"] =   tMonster.nMonsterGroup_KuangHuaZhe
rwtTask[tSevenDayAct_Day2.Task_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_KuangHuaZhe
rwtTask[tSevenDayAct_Day2.Task_5]["ReqTrap1"] =  tTrap.nTrap_Trap2
rwtTask[tSevenDayAct_Day2.Task_5]["DialogId"] = tDialog.nTask5
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Trap2
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete          
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][2]["GenId"] = tMonster.nMonsterGroup_GenId_KuangHuaZhe
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day2.Task_5]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tSevenDayAct_Day2.Task_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_5]["StartAutoWay"]["FindWayPos"] = sPos_Task_5
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[2]
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tSevenDayAct_Day2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSevenDayAct_Day2.Task_5

--导游的关怀
rwtTask[tSevenDayAct_Day2.Task_6] = {}
rwtTask[tSevenDayAct_Day2.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21431]
rwtTask[tSevenDayAct_Day2.Task_6]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_6]["PreTaskId"] = tSevenDayAct_Day2.Task_5
rwtTask[tSevenDayAct_Day2.Task_6]["NextTaskId"] = tSevenDayAct_Day2.Task_7
rwtTask[tSevenDayAct_Day2.Task_6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tSevenDayAct_Day2.Task_6]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_6]["AcceptDialogId"] = tDialog.nTask6
rwtTask[tSevenDayAct_Day2.Task_6]["DialogId"] = tDialog.nTask6

--奇怪的团友
rwtTask[tSevenDayAct_Day2.Task_7] = {}
rwtTask[tSevenDayAct_Day2.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21431]
rwtTask[tSevenDayAct_Day2.Task_7]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_7]["PreTaskId"] = tSevenDayAct_Day2.Task_6
rwtTask[tSevenDayAct_Day2.Task_7]["NextTaskId"] = tSevenDayAct_Day2.Task_8
rwtTask[tSevenDayAct_Day2.Task_7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day2.Task_7]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_7]["TaskNpc"] = tSingleNpc.nNpc_QiaoSiLang
rwtTask[tSevenDayAct_Day2.Task_7]["DialogId"] = tDialog.nTask7
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_WuSa
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][3] = {}
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_Kaka_2
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_7]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day2.Task_7]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day2.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day2.Task_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_QiaoSiLang
rwtTask[tSevenDayAct_Day2.Task_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang

--讨厌的团友
rwtTask[tSevenDayAct_Day2.Task_8] = {}
rwtTask[tSevenDayAct_Day2.Task_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21431]
rwtTask[tSevenDayAct_Day2.Task_8]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_8]["PreTaskId"] = tSevenDayAct_Day2.Task_7
rwtTask[tSevenDayAct_Day2.Task_8]["NextTaskId"] = tSevenDayAct_Day2.Task_9
rwtTask[tSevenDayAct_Day2.Task_8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day2.Task_8]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_8]["TaskNpc"] = tSingleNpc.nNpc_WuSa
rwtTask[tSevenDayAct_Day2.Task_8]["DialogId"] = tDialog.nTask8
rwtTask[tSevenDayAct_Day2.Task_8]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day2.Task_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_8]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_WuSa
rwtTask[tSevenDayAct_Day2.Task_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day2.Task_8]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day2.Task_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day2.Task_8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_8]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_WuSa
rwtTask[tSevenDayAct_Day2.Task_8]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_WuSa

--再续前程
rwtTask[tSevenDayAct_Day2.Task_9] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21431]
rwtTask[tSevenDayAct_Day2.Task_9]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day2.Task_9]["PreTaskId"] = tSevenDayAct_Day2.Task_8
--rwtTask[tSevenDayAct_Day2.Task_9]["NextTaskId"] = End
rwtTask[tSevenDayAct_Day2.Task_9]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day2.Task_9]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day2.Task_9]["TaskNpc"] = tSingleNpc.nNpc_Kaka
rwtTask[tSevenDayAct_Day2.Task_9]["DialogId"] = tDialog.nTask9
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Kaka_2
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][3] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_WuSa
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_9]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day2.Task_9]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day2.Task_9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day2.Task_9]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Kaka
rwtTask[tSevenDayAct_Day2.Task_9]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Kaka_2
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[3]
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSevenDayAct_Day2.Task_9
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtTask[tSevenDayAct_Day2.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tSevenDayAct_Day2.Task_9]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,2) then
		rwAddUserRecordData(7,2)
	end 
end
