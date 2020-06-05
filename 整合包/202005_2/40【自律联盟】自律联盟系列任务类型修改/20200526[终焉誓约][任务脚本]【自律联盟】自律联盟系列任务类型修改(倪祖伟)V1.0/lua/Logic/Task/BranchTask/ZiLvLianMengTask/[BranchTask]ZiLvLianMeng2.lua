--region 		[BranchTask]ZiLvLianMeng2.lua
--Purpose:		自律联盟任务第二阶段
--Creator: 		苏亚玲
--Created:		2020-04-18
--Modifier:		$Author: 倪祖伟$
--Modified:		$Date: 2020-05-26 $
--RCS-ID:		$Revision: 2 $
--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

local tTask_ZiLvLianMeng2 = {}
tTask_ZiLvLianMeng2.Task_1 = 70543               --与爱琳娜对话
tTask_ZiLvLianMeng2.Task_2 = 70544               --与安道夫对话
tTask_ZiLvLianMeng2.Task_3 = 70545               --在自律联盟内调查
tTask_ZiLvLianMeng2.Task_4 = 70546               --蜜酒与谣言
tTask_ZiLvLianMeng2.Task_5 = 70547               --酒馆大乱斗
tTask_ZiLvLianMeng2.Task_6 = 70548               --自律还是自律？
tTask_ZiLvLianMeng2.Task_7 = 70549               --疑虑


local tDialog_ZiLvLianMeng2 = {}
tDialog_ZiLvLianMeng2.Task_1 = 13526	
tDialog_ZiLvLianMeng2.Task_2 = 13527
tDialog_ZiLvLianMeng2.Task_3 = 13528
tDialog_ZiLvLianMeng2.Task_4 = 13529
tDialog_ZiLvLianMeng2.Task_5 = 13530
tDialog_ZiLvLianMeng2.Task_6 = 13531
tDialog_ZiLvLianMeng2.Task_7 = 13532


-------------------------------------------- 逻辑 ----------------------------------------------

function rwtZiLvLianMeng2_Task()
    if not rwTaskIsAccept(70543) and not rwTaskIsSuccess(70543) then
        rwLinkTaskAccept(70543)
    end
end



rwtLeagueLevelUp_Func[4] = rwtLeagueLevelUp_Func[4] or {}
table.insert(rwtLeagueLevelUp_Func[4],rwtZiLvLianMeng2_Task)

-------------------------------------------- 配置 ----------------------------------------------

--与爱琳娜对话
rwtTask[tTask_ZiLvLianMeng2.Task_1] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_1]["Title"]= tLuaText[LANGUAGE_CONFIG][22005]
rwtTask[tTask_ZiLvLianMeng2.Task_1]["NextTaskId"] = tTask_ZiLvLianMeng2.Task_2
rwtTask[tTask_ZiLvLianMeng2.Task_1]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask_ZiLvLianMeng2.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask_ZiLvLianMeng2.Task_1]["DialogId"]= tDialog_ZiLvLianMeng2.Task_1

--与安道夫对话
rwtTask[tTask_ZiLvLianMeng2.Task_2] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][22005]
rwtTask[tTask_ZiLvLianMeng2.Task_2]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask_ZiLvLianMeng2.Task_2]["PreTaskId"] = tTask_ZiLvLianMeng2.Task_1
rwtTask[tTask_ZiLvLianMeng2.Task_2]["NextTaskId"] = tTask_ZiLvLianMeng2.Task_3
rwtTask[tTask_ZiLvLianMeng2.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_ZiLvLianMeng2.Task_2]["DialogId"] = tDialog_ZiLvLianMeng2.Task_2
rwtTask[tTask_ZiLvLianMeng2.Task_2]["TaskNpc"] = 3005
rwtTask[tTask_ZiLvLianMeng2.Task_2]["StartAutoWay"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayGroupId"] = 20112
rwtTask[tTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayGenId"] = 2001655
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"][1] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000793
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_ZiLvLianMeng2.Task_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_ZiLvLianMeng2.Task_2

--在自律联盟内调查
rwtTask[tTask_ZiLvLianMeng2.Task_3] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][22005]
rwtTask[tTask_ZiLvLianMeng2.Task_3]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask_ZiLvLianMeng2.Task_3]["PreTaskId"] = tTask_ZiLvLianMeng2.Task_2
rwtTask[tTask_ZiLvLianMeng2.Task_3]["NextTaskId"] = tTask_ZiLvLianMeng2.Task_4
rwtTask[tTask_ZiLvLianMeng2.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_ZiLvLianMeng2.Task_3]["DialogId"] = tDialog_ZiLvLianMeng2.Task_3
rwtTask[tTask_ZiLvLianMeng2.Task_3]["TaskNpc"] = 3080
rwtTask[tTask_ZiLvLianMeng2.Task_3]["StartAutoWay"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayGenId"] = 2001658


--蜜酒与谣言
rwtTask[tTask_ZiLvLianMeng2.Task_4] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][22005]
rwtTask[tTask_ZiLvLianMeng2.Task_4]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask_ZiLvLianMeng2.Task_4]["PreTaskId"] = tTask_ZiLvLianMeng2.Task_3
rwtTask[tTask_ZiLvLianMeng2.Task_4]["NextTaskId"] = tTask_ZiLvLianMeng2.Task_7
rwtTask[tTask_ZiLvLianMeng2.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_ZiLvLianMeng2.Task_4]["DialogId"] = tDialog_ZiLvLianMeng2.Task_4
rwtTask[tTask_ZiLvLianMeng2.Task_4]["TaskNpc"] = 3193
rwtTask[tTask_ZiLvLianMeng2.Task_4]["StartAutoWay"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayGroupId"] = 20234
rwtTask[tTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayGenId"] = 1000053
rwtTask[tTask_ZiLvLianMeng2.Task_4]["KillMonsterGroup1"]= 900614
rwtTask[tTask_ZiLvLianMeng2.Task_4]["MonsterGroupGenId"] = 1000298
rwtTask[tTask_ZiLvLianMeng2.Task_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["DynaNpcGroupGen"][1]["GenId"] = 1000298
rwtTask[tTask_ZiLvLianMeng2.Task_4]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTask_ZiLvLianMeng2.Task_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1]["LeagueExp"] = 100
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000794
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_ZiLvLianMeng2.Task_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_ZiLvLianMeng2.Task_4

--酒馆大乱斗
--rwtTask[tTask_ZiLvLianMeng2.Task_5] = {}
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][22005]
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["TaskType"] = CONST_TASK_TYPE.LIANMENG
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["PreTaskId"] = tTask_ZiLvLianMeng2.Task_4
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["NextTaskId"] = tTask_ZiLvLianMeng2.Task_6
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["DialogId"] = tDialog_ZiLvLianMeng2.Task_5
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["TaskNpc"] = 3968
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["StartAutoWay"] = {}
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayGroupId"] = 21069
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayGenId"] = 1000266
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["KillMonsterGroup1"]= 900614
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["MonsterGroupGenId"] = 1000298
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["DynaNpcGroupGen"] = {}
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["DynaNpcGroupGen"][1]["GenId"] = 1000298
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[tTask_ZiLvLianMeng2.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete


--自律还是自律？
--rwtTask[tTask_ZiLvLianMeng2.Task_6] = {}
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][22005]
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["TaskType"] = CONST_TASK_TYPE.LIANMENG
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["PreTaskId"] = tTask_ZiLvLianMeng2.Task_5
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["NextTaskId"] = tTask_ZiLvLianMeng2.Task_7
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["DialogId"] = tDialog_ZiLvLianMeng2.Task_6
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["TaskNpc"] = 3193
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["StartAutoWay"] = {}
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayGroupId"] = 20234
--rwtTask[tTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayGenId"] = 1000053


--疑虑
rwtTask[tTask_ZiLvLianMeng2.Task_7] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][22005]
rwtTask[tTask_ZiLvLianMeng2.Task_7]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tTask_ZiLvLianMeng2.Task_7]["PreTaskId"] = tTask_ZiLvLianMeng2.Task_4
rwtTask[tTask_ZiLvLianMeng2.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_ZiLvLianMeng2.Task_7]["DialogId"] = tDialog_ZiLvLianMeng2.Task_7
rwtTask[tTask_ZiLvLianMeng2.Task_7]["TaskNpc"] = 3005
rwtTask[tTask_ZiLvLianMeng2.Task_7]["StartAutoWay"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayGroupId"] = 20112
rwtTask[tTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayGenId"] = 2001655
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["LeagueExp"] = 200
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000768
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_ZiLvLianMeng2.Task_7


-------------------------------------------- 备注 ----------------------------------------------

--[[

申请：
    战后对白：   13533
    战后事件：   100422
    怪物：9000697  9000698     900614      1000298
    NPC：    格蕾          4219
             强壮的猎人    4220
             精瘦的猎人    4221
             暗月          4222

]]--

