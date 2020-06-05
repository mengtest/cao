--region 		[BranchTask]ZiLvLianMeng2_Pre.lua
--Purpose:		自律联盟前置任务第二阶段
--Creator: 		苏亚玲
--Created:		2020-04-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-05-26$
--RCS-ID:		$Revision:  3$
--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
local tPreTask_ZiLvLianMeng2 = {}
tPreTask_ZiLvLianMeng2.Task_1 = 70529               --与爱琳娜交谈
tPreTask_ZiLvLianMeng2.Task_2 = 70530               --与吉拉的对话
tPreTask_ZiLvLianMeng2.Task_3 = 70531               --与安道夫对话
tPreTask_ZiLvLianMeng2.Task_4 = 70532               --与伦纳德对话
tPreTask_ZiLvLianMeng2.Task_5 = 70533               --喂猫
tPreTask_ZiLvLianMeng2.Task_6 = 70534               --喂猫
tPreTask_ZiLvLianMeng2.Task_7 = 70535               --喂猫
tPreTask_ZiLvLianMeng2.Task_8 = 70536               --回报伦纳德


local tDialog_ZiLvLianMeng2 = {}
tDialog_ZiLvLianMeng2.Task_1 = 13510
tDialog_ZiLvLianMeng2.Task_2 = 13511
tDialog_ZiLvLianMeng2.Task_3 = 13512
tDialog_ZiLvLianMeng2.Task_4 = 13513
tDialog_ZiLvLianMeng2.Task_5 = 13514
tDialog_ZiLvLianMeng2.Task_6 = 13515
tDialog_ZiLvLianMeng2.Task_7 = 13516
tDialog_ZiLvLianMeng2.Task_8 = 13517

-------------------------------------------- 逻辑 ----------------------------------------------

function rwtZiLvLianMeng2_Pre_Task()
    if not rwTaskIsAccept(70529) and not rwTaskIsSuccess(70529) then
        rwLinkTaskAccept(70529)
    end
end



rwtLeagueLevelUp_Func[2] = rwtLeagueLevelUp_Func[2] or {}
table.insert(rwtLeagueLevelUp_Func[2],rwtZiLvLianMeng2_Pre_Task)

-------------------------------------------- 配置 ----------------------------------------------

--与爱琳娜的对话
rwtTask[tPreTask_ZiLvLianMeng2.Task_1] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_1]["Title"]= tLuaText[LANGUAGE_CONFIG][22003]
--rwtTask[tPreTask_ZiLvLianMeng2.Task_1]["PreTaskId"]= 
rwtTask[tPreTask_ZiLvLianMeng2.Task_1]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_2
rwtTask[tPreTask_ZiLvLianMeng2.Task_1]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tPreTask_ZiLvLianMeng2.Task_1]["DialogId"]= tDialog_ZiLvLianMeng2.Task_1

--与吉拉的对话
rwtTask[tPreTask_ZiLvLianMeng2.Task_2] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_1
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_3
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["DialogId"] = tDialog_ZiLvLianMeng2.Task_2
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["TaskNpc"] = 3042
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayGroupId"] = 20114
rwtTask[tPreTask_ZiLvLianMeng2.Task_2]["StartAutoWay"]["FindWayGenId"] = 2001657

--与安道夫对话
rwtTask[tPreTask_ZiLvLianMeng2.Task_3] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_2
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_4
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["DialogId"] = tDialog_ZiLvLianMeng2.Task_3
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["TaskNpc"] = 3005
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayGroupId"] = 20112
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["StartAutoWay"]["FindWayGenId"] = 2001655
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"][1] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000683
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_3

--与伦纳德对话
rwtTask[tPreTask_ZiLvLianMeng2.Task_4] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_3
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_5
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["DialogId"] = tDialog_ZiLvLianMeng2.Task_4
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["TaskNpc"] = 3043
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayGroupId"] = 20113
rwtTask[tPreTask_ZiLvLianMeng2.Task_4]["StartAutoWay"]["FindWayGenId"] = 2001656

--喂猫 斯利
rwtTask[tPreTask_ZiLvLianMeng2.Task_5] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_4
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_6
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["DialogId"] = tDialog_ZiLvLianMeng2.Task_5
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["TaskNpc"] = 3178
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayGroupId"] = 20215
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["StartAutoWay"]["FindWayGenId"] = 1001006
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1]["LeagueExp"] = 10
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000765
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_5
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 100001
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2]["GetServerAward"]["AwardMode"] = CONST_AWARD_MODE_TYPE.LEVELADAPT_AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_5]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_5


--喂猫 弗斯
rwtTask[tPreTask_ZiLvLianMeng2.Task_6] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_5
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_7
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["DialogId"] = tDialog_ZiLvLianMeng2.Task_6
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["TaskNpc"] = 3179
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayGroupId"] = 20216
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["StartAutoWay"]["FindWayGenId"] = 1001007
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1]["LeagueExp"] = 10
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000766
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_6
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 100001
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2]["GetServerAward"]["AwardMode"] = CONST_AWARD_MODE_TYPE.LEVELADAPT_AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_6]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_6

--喂猫 比格
rwtTask[tPreTask_ZiLvLianMeng2.Task_7] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_6
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["NextTaskId"] = tPreTask_ZiLvLianMeng2.Task_8
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["DialogId"] = tDialog_ZiLvLianMeng2.Task_7
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["TaskNpc"] = 3176
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayGroupId"] = 20213
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["StartAutoWay"]["FindWayGenId"] = 1001004
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["LeagueExp"] = 10
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000767
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_7
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 100001
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2]["GetServerAward"]["AwardMode"] = CONST_AWARD_MODE_TYPE.LEVELADAPT_AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_7]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_7

--回报伦纳德
rwtTask[tPreTask_ZiLvLianMeng2.Task_8] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Title"] = tLuaText[LANGUAGE_CONFIG][22003]
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["TaskType"] = CONST_TASK_TYPE.LIANMENG
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["PreTaskId"] = tPreTask_ZiLvLianMeng2.Task_7
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["DialogId"] = tDialog_ZiLvLianMeng2.Task_8
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["TaskNpc"] = 3043
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["StartAutoWay"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["StartAutoWay"]["FindWayGroupId"] = 20113
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["StartAutoWay"]["FindWayGenId"] = 2001656
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1]["LeagueExp"] = 50
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000682
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tPreTask_ZiLvLianMeng2.Task_8
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["UnLockSysId"] = {56} 
--处理美食任务光效
rwtTask[tPreTask_ZiLvLianMeng2.Task_8]["AwardFunc"] = function()
    rwFoodTask_AddEffect_Point()
end

