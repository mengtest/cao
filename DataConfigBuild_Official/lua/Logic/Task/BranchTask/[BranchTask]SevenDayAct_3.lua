--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion


--地图ID
local nMapId = 2001
local nTimeData = 1146 --七日任务掩码
--任务ID  70043  70050 
local tTask = {}
tTask.nQiRiDiSanRi1_1 = 70043 --红狮白纹鱼
tTask.nQiRiDiSanRi1_2 = 70044 --一定要吃鱼
tTask.nQiRiDiSanRi1_3 = 70045 --湖畔捕鱼
tTask.nQiRiDiSanRi1_4 = 70046 --囊中之物
tTask.nQiRiDiSanRi2_1 = 70047 --天才小厨娘
tTask.nQiRiDiSanRi2_2 = 70048 --中，中毒了？！
tTask.nQiRiDiSanRi2_3 = 70049 --明日再叙

--对话ID
local tDialog = {}
tDialog.nTask1_1_Accept = 11824
tDialog.nTask1_1 = 11825
tDialog.nTask1_2 = 11826
tDialog.nTask1_3 = 11827
tDialog.nTask1_4 = 11828  --11829 战后对白
tDialog.nTask2_1 = 11830
tDialog.nTask2_2 = 11831
tDialog.nTask2_3 = 11832

--陷阱ID
local tTrap = {}

tTrap.nTrap_HuPan = 30553
tTrap.nTrap_GenId_HuPan = 20010163
rwtNpcGroup[tTrap.nTrap_HuPan] = rwtNpcGroup[tTrap.nTrap_HuPan] or {} 
rwtNpcGroup[tTrap.nTrap_HuPan]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task1_4 = 30554
tTrap.nTrap_GenId_Task1_4 = 20010164
rwtNpcGroup[tTrap.nTrap_Task1_4] = rwtNpcGroup[tTrap.nTrap_Task1_4] or {} 
rwtNpcGroup[tTrap.nTrap_Task1_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

--怪物ID
local tMonster = {}

tMonster.nMonster_YuYao = 9000316
tMonster.nMonsterGroup_YuYao = 900397
tMonster.nMonsterGroup_GenId_YuYao = 20010165

--NPCID
local tSingleNpc = {}

---------建筑
tSingleNpc.nNpc_CanTing = 3602  --餐厅老板
tSingleNpc.nNpcGroup_CanTing = 10022
tSingleNpc.nNpcGroup_GenId_CanTing = 20010166
rwtNpc[tSingleNpc.nNpc_CanTing] = rwtNpc[tSingleNpc.nNpc_CanTing] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_CanTing] = rwtNpcGroup[tSingleNpc.nNpcGroup_CanTing] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_CanTing]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_CanTing]["NpcId1"] = tSingleNpc.nNpc_CanTing

tSingleNpc.nNpc_DaoYou = 3591
tSingleNpc.nNpcGroup_DaoYou = 20541
tSingleNpc.nNpcGroup_GenId_DaoYou = 20010167
rwtNpc[tSingleNpc.nNpc_DaoYou] = rwtNpc[tSingleNpc.nNpc_DaoYou] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoYou] = rwtNpcGroup[tSingleNpc.nNpcGroup_DaoYou] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoYou]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DaoYou]["NpcId"] = tSingleNpc.nNpc_DaoYou

tSingleNpc.nNpc_QiaoSiLang = 3592
tSingleNpc.nNpcGroup_QiaoSiLang = 20542
tSingleNpc.nNpcGroup_GenId_QiaoSiLang = 20010168
rwtNpc[tSingleNpc.nNpc_QiaoSiLang] = rwtNpc[tSingleNpc.nNpc_QiaoSiLang] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang] = rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_QiaoSiLang]["NpcId"] = tSingleNpc.nNpc_QiaoSiLang

--奖励  2000215  2000216 
local tQiRiDiSanRiAwardId = {}
tQiRiDiSanRiAwardId[1]=2000215
tQiRiDiSanRiAwardId[2]=2000216

--红狮白纹鱼
rwtTask[tTask.nQiRiDiSanRi1_1] = {}
rwtTask[tTask.nQiRiDiSanRi1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21435]
rwtTask[tTask.nQiRiDiSanRi1_1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
--rwtTask[tTask.nQiRiDiSanRi1_1]["PreTaskId"] = start
rwtTask[tTask.nQiRiDiSanRi1_1]["NextTaskId"] = tTask.nQiRiDiSanRi1_2
rwtTask[tTask.nQiRiDiSanRi1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nQiRiDiSanRi1_1]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi1_1]["ReqTrap1"] = tTrap.nTrap_HuPan
rwtTask[tTask.nQiRiDiSanRi1_1]["DialogId"] = tDialog.nTask1_1
rwtTask[tTask.nQiRiDiSanRi1_1]["AcceptDialogId"] = tDialog.nTask1_1_Accept
rwtTask[tTask.nQiRiDiSanRi1_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi1_1]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_HuPan
rwtTask[tTask.nQiRiDiSanRi1_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi1_1]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nQiRiDiSanRi1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_1]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_HuPan
rwtTask[tTask.nQiRiDiSanRi1_1]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_HuPan

--一定要吃鱼
rwtTask[tTask.nQiRiDiSanRi1_2] = {}
rwtTask[tTask.nQiRiDiSanRi1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21435]
rwtTask[tTask.nQiRiDiSanRi1_2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTask.nQiRiDiSanRi1_2]["PreTaskId"] = tTask.nQiRiDiSanRi1_1
rwtTask[tTask.nQiRiDiSanRi1_2]["NextTaskId"] = tTask.nQiRiDiSanRi1_3
rwtTask[tTask.nQiRiDiSanRi1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nQiRiDiSanRi1_2]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi1_2]["TaskNpc"] = tSingleNpc.nNpc_CanTing
rwtTask[tTask.nQiRiDiSanRi1_2]["DialogId"] = tDialog.nTask1_2
rwtTask[tTask.nQiRiDiSanRi1_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi1_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_CanTing
rwtTask[tTask.nQiRiDiSanRi1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi1_2]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nQiRiDiSanRi1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_CanTing
rwtTask[tTask.nQiRiDiSanRi1_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_CanTing

--湖畔捕鱼
rwtTask[tTask.nQiRiDiSanRi1_3] = {}
rwtTask[tTask.nQiRiDiSanRi1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21435]
rwtTask[tTask.nQiRiDiSanRi1_3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTask.nQiRiDiSanRi1_3]["PreTaskId"] = tTask.nQiRiDiSanRi1_2
rwtTask[tTask.nQiRiDiSanRi1_3]["NextTaskId"] = tTask.nQiRiDiSanRi1_4
rwtTask[tTask.nQiRiDiSanRi1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nQiRiDiSanRi1_3]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi1_3]["ReqTrap1"] = tTrap.nTrap_HuPan
rwtTask[tTask.nQiRiDiSanRi1_3]["DialogId"] = tDialog.nTask1_3
rwtTask[tTask.nQiRiDiSanRi1_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi1_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_HuPan
rwtTask[tTask.nQiRiDiSanRi1_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi1_3]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nQiRiDiSanRi1_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_HuPan
rwtTask[tTask.nQiRiDiSanRi1_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_HuPan

--囊中之物
rwtTask[tTask.nQiRiDiSanRi1_4] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21435]
rwtTask[tTask.nQiRiDiSanRi1_4]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTask.nQiRiDiSanRi1_4]["PreTaskId"] = tTask.nQiRiDiSanRi1_3
rwtTask[tTask.nQiRiDiSanRi1_4]["NextTaskId"] = tTask.nQiRiDiSanRi2_1
rwtTask[tTask.nQiRiDiSanRi1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nQiRiDiSanRi1_4]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi1_4]["KillMonsterGroup1"] = tMonster.nMonsterGroup_YuYao
rwtTask[tTask.nQiRiDiSanRi1_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_YuYao
rwtTask[tTask.nQiRiDiSanRi1_4]["ReqTrap1"] = tTrap.nTrap_Task1_4
rwtTask[tTask.nQiRiDiSanRi1_4]["DialogId"] = tDialog.nTask1_4
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_YuYao
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task1_4
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi1_4]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nQiRiDiSanRi1_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi1_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_YuYao
rwtTask[tTask.nQiRiDiSanRi1_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_YuYao
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tQiRiDiSanRiAwardId[1]
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nQiRiDiSanRi1_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nQiRiDiSanRi1_4

--天才小厨娘
rwtTask[tTask.nQiRiDiSanRi2_1] = {}
rwtTask[tTask.nQiRiDiSanRi2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21436]
rwtTask[tTask.nQiRiDiSanRi2_1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTask.nQiRiDiSanRi2_1]["PreTaskId"] = tTask.nQiRiDiSanRi1_4
rwtTask[tTask.nQiRiDiSanRi2_1]["NextTaskId"] = tTask.nQiRiDiSanRi2_2
rwtTask[tTask.nQiRiDiSanRi2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nQiRiDiSanRi2_1]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi2_1]["TaskNpc"] = tSingleNpc.nNpc_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_1]["DialogId"] = tDialog.nTask2_1
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nQiRiDiSanRi2_1]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nQiRiDiSanRi2_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_DaoYou

--中，中毒了？！
rwtTask[tTask.nQiRiDiSanRi2_2] = {}
rwtTask[tTask.nQiRiDiSanRi2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21436]
rwtTask[tTask.nQiRiDiSanRi2_2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTask.nQiRiDiSanRi2_2]["PreTaskId"] = tTask.nQiRiDiSanRi2_1
rwtTask[tTask.nQiRiDiSanRi2_2]["NextTaskId"] = tTask.nQiRiDiSanRi2_3
rwtTask[tTask.nQiRiDiSanRi2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nQiRiDiSanRi2_2]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi2_2]["TaskNpc"] = tSingleNpc.nNpc_QiaoSiLang
rwtTask[tTask.nQiRiDiSanRi2_2]["DialogId"] = tDialog.nTask2_2
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nQiRiDiSanRi2_2]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nQiRiDiSanRi2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_QiaoSiLang
rwtTask[tTask.nQiRiDiSanRi2_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang

--明日再叙
rwtTask[tTask.nQiRiDiSanRi2_3] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21436]
rwtTask[tTask.nQiRiDiSanRi2_3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tTask.nQiRiDiSanRi2_3]["PreTaskId"] = tTask.nQiRiDiSanRi2_2
--rwtTask[tTask.nQiRiDiSanRi2_3]["NextTaskId"] = End
rwtTask[tTask.nQiRiDiSanRi2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nQiRiDiSanRi2_3]["IsClickComplete"] = 0
rwtTask[tTask.nQiRiDiSanRi2_3]["TaskNpc"] = tSingleNpc.nNpc_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_3]["DialogId"] = tDialog.nTask2_3
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_QiaoSiLang
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nQiRiDiSanRi2_3]["StartAutoWay"] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nQiRiDiSanRi2_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nQiRiDiSanRi2_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_DaoYou
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tQiRiDiSanRiAwardId[2]
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nQiRiDiSanRi2_3
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtTask[tTask.nQiRiDiSanRi2_3]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tTask.nQiRiDiSanRi2_3]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,3) then
		rwAddUserRecordData(7,3)
	end 
end