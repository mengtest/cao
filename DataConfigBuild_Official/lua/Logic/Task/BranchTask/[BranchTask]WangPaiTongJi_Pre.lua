
--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--王牌通缉前置任务
--by:Syl

--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

--地图ID
local nMapId_KNSC = 1000

--任务ID
local tTask = {}
tTask.nWangPaiTongJiPre_1 = 70234 --赚钱的路子 	  爱琳娜的消息
tTask.nWangPaiTongJiPre_2 = 70235 --拜访纳塔娜    拜访纳塔娜
tTask.nWangPaiTongJiPre_3 = 70236 --逃犯          抓捕逃犯
tTask.nWangPaiTongJiPre_4 = 70237 --押送犯人      押送犯人
tTask.nWangPaiTongJiPre_5 = 70238 --抢悬赏        抢悬赏
tTask.nWangPaiTongJiPre_6 = 70239 --询问安道夫    询问安道夫
tTask.nWangPaiTongJiPre_7 = 70240 --魔法扑克牌    魔法扑克牌


--对话ID
local tDialog = {}
tDialog.nTask1 = 12704
tDialog.nTask2 = 12705
tDialog.nTask3 = 12706
tDialog.nTask4 = 12707
tDialog.nTask5 = 12708 
tDialog.nTask6 = 12709
tDialog.nTask7 = 12710
tDialog.nTask7_1 = 12711
--12715
--怪物：
local nMonster_1 = 9000660			 --10012  	食人魔·哈蒙   战前战后			 
local nMonsterGroup_1 = 900591
local nMonsterGroup_1_Gen = 1000207

local nMonster_2 = 9000661			 --10022  	纳塔娜			 
local nMonsterGroup_2 = 900592
local nMonsterGroup_2_Gen = 1000225

--Npc
local nNpc_NaTaNa = 3834    	 --纳塔娜         2053
local nNpc_JinWeiDuJun = 3835 	 --禁卫督军萨林   2011   GuardwarlordSalin
local nNpc_ShiRenMo = 3836 	 --食人魔
local nNPC_AnDaoFu = 3005 	     --铁臂安道夫



local nNpcGroup_NaTaNa = 20952
local nNpcGroup_JinWeiDuJun = 20960
local nNpcGroup_AnDaoFu = 20112
local nNpcGroup_ShiRenMo = 20966

local nNpcGroup_NaTaNa_Gen = 1000208 
local nNpcGroup_JinWeiDuJun_Gen = 1000216
local nNpcGroup_AnDaoFu_Gen = 2001655
local nNpcGroup_ShiRenMo_Gen = 1000224

--陷阱
local nTrap_1 = 30666		

local nTrap_1_Gen = 1000222

-------------------------------------------- 配置 ----------------------------------------------

rwtNpcGroup[nNpcGroup_NaTaNa] = rwtNpcGroup[nNpcGroup_NaTaNa] or {} 
rwtNpcGroup[nNpcGroup_NaTaNa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_NaTaNa]["NpcId"] = nNpc_NaTaNa

rwtNpc[nNpc_NaTaNa] = rwtNpc[nNpc_NaTaNa] or {}

rwtNpcGroup[nNpcGroup_JinWeiDuJun] = rwtNpcGroup[nNpcGroup_JinWeiDuJun] or {} 
rwtNpcGroup[nNpcGroup_JinWeiDuJun]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_JinWeiDuJun]["NpcId"] = nNpc_JinWeiDuJun

rwtNpc[nNpc_JinWeiDuJun] = rwtNpc[nNpc_JinWeiDuJun] or {}

rwtNpcGroup[nNpcGroup_ShiRenMo] = rwtNpcGroup[nNpcGroup_ShiRenMo] or {} 
rwtNpcGroup[nNpcGroup_ShiRenMo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ShiRenMo]["NpcId"] = nNpc_ShiRenMo

rwtNpc[nNpc_ShiRenMo] = rwtNpc[nNpc_ShiRenMo] or {}


rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap


--赚钱的路子
rwtTask[tTask.nWangPaiTongJiPre_1] = {}
rwtTask[tTask.nWangPaiTongJiPre_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nWangPaiTongJiPre_1]["NextTaskId"] = tTask.nWangPaiTongJiPre_2
rwtTask[tTask.nWangPaiTongJiPre_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nWangPaiTongJiPre_1]["DialogId"]= tDialog.nTask1


--拜访纳塔娜
rwtTask[tTask.nWangPaiTongJiPre_2] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21831]
rwtTask[tTask.nWangPaiTongJiPre_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_2]["PreTaskId"] = tTask.nWangPaiTongJiPre_1
rwtTask[tTask.nWangPaiTongJiPre_2]["NextTaskId"] = tTask.nWangPaiTongJiPre_3
rwtTask[tTask.nWangPaiTongJiPre_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWangPaiTongJiPre_2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nWangPaiTongJiPre_2]["TaskNpc"] = nNpc_NaTaNa
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_NaTaNa
rwtTask[tTask.nWangPaiTongJiPre_2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


--逃犯
rwtTask[tTask.nWangPaiTongJiPre_3] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21832]
rwtTask[tTask.nWangPaiTongJiPre_3]["PreTaskId" ]= tTask.nWangPaiTongJiPre_2
rwtTask[tTask.nWangPaiTongJiPre_3]["NextTaskId" ]= tTask.nWangPaiTongJiPre_4
rwtTask[tTask.nWangPaiTongJiPre_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_1_Gen
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_ShiRenMo_Gen
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][3]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nWangPaiTongJiPre_3]["KillMonsterGroup1" ]= nMonsterGroup_1
rwtTask[tTask.nWangPaiTongJiPre_3]["MonsterGroupGenId"] = nMonsterGroup_1_Gen
rwtTask[tTask.nWangPaiTongJiPre_3]["TaskNpc"] = nNpc_ShiRenMo
rwtTask[tTask.nWangPaiTongJiPre_3]["DialogId"]= tDialog.nTask3
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShiRenMo
rwtTask[tTask.nWangPaiTongJiPre_3]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_ShiRenMo_Gen

--押送犯人
rwtTask[tTask.nWangPaiTongJiPre_4] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21833]
rwtTask[tTask.nWangPaiTongJiPre_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_4]["PreTaskId"] = tTask.nWangPaiTongJiPre_3
rwtTask[tTask.nWangPaiTongJiPre_4]["NextTaskId"] = tTask.nWangPaiTongJiPre_5
rwtTask[tTask.nWangPaiTongJiPre_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWangPaiTongJiPre_4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nWangPaiTongJiPre_4]["TaskNpc"] = nNpc_JinWeiDuJun
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_JinWeiDuJun
rwtTask[tTask.nWangPaiTongJiPre_4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_JinWeiDuJun_Gen
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_JinWeiDuJun_Gen
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


--抢悬赏
rwtTask[tTask.nWangPaiTongJiPre_5] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["Title"]= tLuaText[LANGUAGE_CONFIG][21834]
rwtTask[tTask.nWangPaiTongJiPre_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nWangPaiTongJiPre_5]["PreTaskId"]= tTask.nWangPaiTongJiPre_4
rwtTask[tTask.nWangPaiTongJiPre_5]["NextTaskId"]= tTask.nWangPaiTongJiPre_6
rwtTask[tTask.nWangPaiTongJiPre_5]["DialogId"]= tDialog.nTask5
rwtTask[tTask.nWangPaiTongJiPre_5]["ReqTrap1"]= nTrap_1
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_1_Gen
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tTask.nWangPaiTongJiPre_5]["StartAutoWay"]["FindWayGenId"] = nTrap_1_Gen


--询问安道夫
rwtTask[tTask.nWangPaiTongJiPre_6] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["Title"] = tLuaText[LANGUAGE_CONFIG][218385]
rwtTask[tTask.nWangPaiTongJiPre_6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_6]["PreTaskId"] = tTask.nWangPaiTongJiPre_5
rwtTask[tTask.nWangPaiTongJiPre_6]["NextTaskId"] = tTask.nWangPaiTongJiPre_7
rwtTask[tTask.nWangPaiTongJiPre_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWangPaiTongJiPre_6]["DialogId"] = tDialog.nTask7
rwtTask[tTask.nWangPaiTongJiPre_6]["TaskNpc"] = nNPC_AnDaoFu
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AnDaoFu
rwtTask[tTask.nWangPaiTongJiPre_6]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_AnDaoFu_Gen
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

--魔法扑克牌
rwtTask[tTask.nWangPaiTongJiPre_7] = {}
rwtTask[tTask.nWangPaiTongJiPre_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21836]
rwtTask[tTask.nWangPaiTongJiPre_7]["PreTaskId"] = tTask.nWangPaiTongJiPre_6
rwtTask[tTask.nWangPaiTongJiPre_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nWangPaiTongJiPre_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nWangPaiTongJiPre_7]["DialogId"] = tDialog.nTask6
rwtTask[tTask.nWangPaiTongJiPre_7]["TaskNpc"] = nNPC_AnDaoFu
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_NaTaNa_Gen
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_2_Gen
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nWangPaiTongJiPre_7]["KillMonsterGroup1" ]= nMonsterGroup_2
rwtTask[tTask.nWangPaiTongJiPre_7]["MonsterGroupGenId"] = nMonsterGroup_2_Gen
rwtTask[tTask.nWangPaiTongJiPre_7]["StartAutoWay"] = {}
rwtTask[tTask.nWangPaiTongJiPre_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nWangPaiTongJiPre_7]["StartAutoWay"]["FindWayMapId"] = nMapId_KNSC
rwtTask[tTask.nWangPaiTongJiPre_7]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AnDaoFu
rwtTask[tTask.nWangPaiTongJiPre_7]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_AnDaoFu_Gen

