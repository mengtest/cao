--region [MainTask]ZiLvLianMeng_1.lua
--Purpose:		自律联盟主线一
--Creator: 		黄业勤
--Created:		2020-04-28
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-05-26 $
--RCS-ID:		$Revision: 3 $


--Map ID
local nMapId = 1000

--Task ID
local tTask = {}
tTask.nZiLvLianMeng1_1 = 70540 --崭露头角             独当一面 （点面板）
tTask.nZiLvLianMeng1_2 = 70476 --崭露头角             崭露头角 （找安道夫）
tTask.nZiLvLianMeng1_3 = 70541 --崭露头角             崭露头角 （找吉拉）
tTask.nZiLvLianMeng1_4 = 70477 --古遗迹探索行         古遗迹探索行
tTask.nZiLvLianMeng1_5 = 70478 --古遗迹探索行（副本） 古遗迹探索行（副本）
tTask.nZiLvLianMeng1_6 = 70479 --冒险的报酬           冒险的报酬
tTask.nZiLvLianMeng1_7 = 70480 --赏金猎人之歌         冒险的报酬
tTask.nZiLvLianMeng1_8 = 70481 --赏金猎人之歌（酒馆） 赏金猎人之歌
tTask.nZiLvLianMeng1_9 = 70482 --积累资历             积累资历




--Dialog ID
local tDialog = {}
tDialog.nTask1_1 = 13522
tDialog.nTask1_2 = 13367
tDialog.nTask1_3 = 13523
tDialog.nTask1_4 = 13368
--tDialog.nTask1_5 = 13367
tDialog.nTask1_6 = 13369
tDialog.nTask1_7 = 13370
tDialog.nTask1_8 = 13371
tDialog.nTask1_9 = 13372

--NPCID
local tSingleNpc = {}
tSingleNpc.nCopyMapId = 3157
tSingleNpc.nNpcGroup_CopyMap = 50073
tSingleNpc.nNpcGroup_GenId_CopyMap = 3157001
rwtNpcGroup[tSingleNpc.nNpcGroup_CopyMap] = rwtNpcGroup[tSingleNpc.nNpcGroup_CopyMap] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[tSingleNpc.nNpcGroup_CopyMap]["CopyMapList"] = {3157}


tSingleNpc.nNpc_AnDaoFu = 3005
tSingleNpc.nNpcGroup_AnDaoFu = 20112
tSingleNpc.nNpcGroup_GenId_AnDaoFu = 2001655

tSingleNpc.nNpc_JiLa = 3042
tSingleNpc.nNpcGroup_JiLa = 20114
tSingleNpc.nNpcGroup_GenId_JiLa = 2001657

tSingleNpc.nNpc_LunNaDe = 3043
tSingleNpc.nNpcGroup_LunNaDe = 20113
tSingleNpc.nNpcGroup_GenId_LunNaDe = 2001656

tSingleNpc.nNpc_JiuGuan = 3968
tSingleNpc.nNpcGroup_JiuGuan = 21069
tSingleNpc.nNpcGroup_GenId_JiuGuan = 1000266
rwtNpc[tSingleNpc.nNpc_JiuGuan] = rwtNpc[tSingleNpc.nNpc_JiuGuan] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_JiuGuan] = rwtNpcGroup[tSingleNpc.nNpcGroup_JiuGuan] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_JiuGuan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_JiuGuan]["NpcId"] = tSingleNpc.nNpc_JiuGuan

--陷阱
tSingleNpc.Trap_1 = 30754			
tSingleNpc.nGenId_Trap_1 = 20010344
rwtNpcGroup[tSingleNpc.Trap_1] = rwtNpcGroup[tSingleNpc.Trap_1] or {}
rwtNpcGroup[tSingleNpc.Trap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tSingleNpc.Trap_1]["DelTrap"] = 1

--j奖励
local tZiLvLianMeng_1_AwardId = {}
tZiLvLianMeng_1_AwardId[1] = 2000783
tZiLvLianMeng_1_AwardId[2] = 2000784
tZiLvLianMeng_1_AwardId[3] = 2000785

--（点面板）
rwtTask[tTask.nZiLvLianMeng1_1] = {}
rwtTask[tTask.nZiLvLianMeng1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_1]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_1]["NextTaskId"] = tTask.nZiLvLianMeng1_2
rwtTask[tTask.nZiLvLianMeng1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng1_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_1]["DialogId"] = tDialog.nTask1_1
--rwtTask[tTask.nZiLvLianMeng1_1]["AutoTaskDialog"] = tDialog.nTask1_1


--崭露头角 （找安道夫）
rwtTask[tTask.nZiLvLianMeng1_2] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_2]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_2]["PreTaskId"] = tTask.nZiLvLianMeng1_1
rwtTask[tTask.nZiLvLianMeng1_2]["NextTaskId"] = tTask.nZiLvLianMeng1_3
rwtTask[tTask.nZiLvLianMeng1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_2]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng1_2]["DialogId"] = tDialog.nTask1_2
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMeng_1_AwardId[1]
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng1_2


--（找吉拉）
rwtTask[tTask.nZiLvLianMeng1_3] = {}
rwtTask[tTask.nZiLvLianMeng1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_3]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_3]["PreTaskId"] = tTask.nZiLvLianMeng1_2
rwtTask[tTask.nZiLvLianMeng1_3]["NextTaskId"] = tTask.nZiLvLianMeng1_4
rwtTask[tTask.nZiLvLianMeng1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_3]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng1_3]["DialogId"] = tDialog.nTask1_3
rwtTask[tTask.nZiLvLianMeng1_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng1_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng1_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

--古遗迹探索行
rwtTask[tTask.nZiLvLianMeng1_4] = {}
rwtTask[tTask.nZiLvLianMeng1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_4]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_4]["PreTaskId"] = tTask.nZiLvLianMeng1_3
rwtTask[tTask.nZiLvLianMeng1_4]["NextTaskId"] = tTask.nZiLvLianMeng1_5
rwtTask[tTask.nZiLvLianMeng1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng1_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_4]["DialogId"] = tDialog.nTask1_4
rwtTask[tTask.nZiLvLianMeng1_4]["ReqTrap1" ]= tSingleNpc.Trap_1
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nGenId_Trap_1
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_CopyMap
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTask.nZiLvLianMeng1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tTask.nZiLvLianMeng1_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nZiLvLianMeng1_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.Trap_1
rwtTask[tTask.nZiLvLianMeng1_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nGenId_Trap_1


--古遗迹探索行（副本）
rwtTask[tTask.nZiLvLianMeng1_5] = {}
rwtTask[tTask.nZiLvLianMeng1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_5]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_5]["PreTaskId"] = tTask.nZiLvLianMeng1_4
rwtTask[tTask.nZiLvLianMeng1_5]["NextTaskId"] = tTask.nZiLvLianMeng1_6
rwtTask[tTask.nZiLvLianMeng1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTask.nZiLvLianMeng1_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_5]["OpenCopyMap"] = tSingleNpc.nCopyMapId
rwtTask[tTask.nZiLvLianMeng1_5]["PassCopyMap1"] = tSingleNpc.nCopyMapId
rwtTask[tTask.nZiLvLianMeng1_5]["PassCopyMapCount1"] = 1
rwtTask[tTask.nZiLvLianMeng1_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng1_5]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_CopyMap
rwtTask[tTask.nZiLvLianMeng1_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nZiLvLianMeng1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tTask.nZiLvLianMeng1_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nZiLvLianMeng1_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_CopyMap
rwtTask[tTask.nZiLvLianMeng1_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_CopyMap

--冒险的报酬
rwtTask[tTask.nZiLvLianMeng1_6] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_6]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_6]["PreTaskId"] = tTask.nZiLvLianMeng1_5
rwtTask[tTask.nZiLvLianMeng1_6]["NextTaskId"] = tTask.nZiLvLianMeng1_7
rwtTask[tTask.nZiLvLianMeng1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_6]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_6]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng1_6]["DialogId"] = tDialog.nTask1_6
rwtTask[tTask.nZiLvLianMeng1_6]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng1_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng1_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMeng_1_AwardId[2]
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng1_6
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][2] = {}
rwtTask[tTask.nZiLvLianMeng1_6]["Awards"]["Events"][2]["LeagueExp"] =  100

--赏金猎人之歌
rwtTask[tTask.nZiLvLianMeng1_7] = {}
rwtTask[tTask.nZiLvLianMeng1_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_7]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_7]["PreTaskId"] = tTask.nZiLvLianMeng1_6
rwtTask[tTask.nZiLvLianMeng1_7]["NextTaskId"] = tTask.nZiLvLianMeng1_8
rwtTask[tTask.nZiLvLianMeng1_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_7]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_7]["TaskNpc"] = tSingleNpc.nNpc_LunNaDe
rwtTask[tTask.nZiLvLianMeng1_7]["DialogId"] = tDialog.nTask1_7
rwtTask[tTask.nZiLvLianMeng1_7]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng1_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LunNaDe
rwtTask[tTask.nZiLvLianMeng1_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LunNaDe

--赏金猎人之歌（酒馆）
rwtTask[tTask.nZiLvLianMeng1_8] = {}
rwtTask[tTask.nZiLvLianMeng1_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_8]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_8]["PreTaskId"] = tTask.nZiLvLianMeng1_7
rwtTask[tTask.nZiLvLianMeng1_8]["NextTaskId"] = tTask.nZiLvLianMeng1_9
rwtTask[tTask.nZiLvLianMeng1_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_8]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_8]["TaskNpc"] = tSingleNpc.nNpc_JiuGuan
rwtTask[tTask.nZiLvLianMeng1_8]["DialogId"] = tDialog.nTask1_8
rwtTask[tTask.nZiLvLianMeng1_8]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tTask.nZiLvLianMeng1_8]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiuGuan
rwtTask[tTask.nZiLvLianMeng1_8]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiuGuan

--积累资历
rwtTask[tTask.nZiLvLianMeng1_9] = {}
rwtTask[tTask.nZiLvLianMeng1_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21965]
rwtTask[tTask.nZiLvLianMeng1_9]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask.nZiLvLianMeng1_9]["PreTaskId"] = tTask.nZiLvLianMeng1_8
--rwtTask[tTask.nZiLvLianMeng1_9]["NextTaskId"] = 
rwtTask[tTask.nZiLvLianMeng1_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng1_9]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_9]["DialogId"] = tDialog.nTask1_9
rwtTask[tTask.nZiLvLianMeng1_9]["AutoTaskDialog"] = tDialog.nTask1_9
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMeng_1_AwardId[3]
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng1_9
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][2] = {}
rwtTask[tTask.nZiLvLianMeng1_9]["Awards"]["Events"][2]["LeagueExp"] =  200


function ZiLvLianMengZhuXian_1_Accept()  --接受自律联盟主线第一阶段
    rwLinkTaskAccept(tTask.nZiLvLianMeng1_1)
--    rwTaskAdd(tTask.nZiLvLianMeng1_1)
end
--玩家升级联盟等级3级时接任务
rwtLeagueLevelUp_Func[3] = rwtLeagueLevelUp_Func[3] or {}
table.insert(rwtLeagueLevelUp_Func[3],ZiLvLianMengZhuXian_1_Accept)
