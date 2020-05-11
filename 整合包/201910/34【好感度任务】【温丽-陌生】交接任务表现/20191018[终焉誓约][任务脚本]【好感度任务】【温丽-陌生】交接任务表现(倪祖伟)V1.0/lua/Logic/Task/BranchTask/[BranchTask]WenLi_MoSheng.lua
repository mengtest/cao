
--region 		[BranchTask]ZhanDouLi_Pre.lua
--Purpose:		温丽陌生
--Creator: 		倪祖伟
--Created:		2019-09-27
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-10-18$
--RCS-ID:		$Revision: 2 $

--endregion


-------------------------------------------- 数据定义 ----------------------------------------------

--任务ID
local tTask = {}
tTask.HGD_winLi_MS_1 = 70341 --我要上新闻！,哪里来的野鸡记者？
tTask.HGD_winLi_MS_2 = 70342 --新闻出来啦！,新闻版面有牌面！
tTask.HGD_winLi_MS_3 = 70343 --深入访谈,大小姐的那些事
tTask.HGD_winLi_MS_4 = 70344 --头版头条？！,居然还有专题？
tTask.HGD_winLi_MS_5 = 70345 --魔法学院,360度访谈

    

--对话ID
local tDialog = {}
tDialog.nTask1 = 13010
tDialog.nTask2 = 13011
tDialog.nTask3 = 13012
tDialog.nTask4 = 13013
tDialog.nTask5 = 13014


--Npc
local nNPCGroupGebulinTT = 20219
local nNPC_GebulinTT = 3182
local nGenIdNPC_GebulinTT = 1001010

local nAwardId_1 = 2000623
local nAwardId_2 = 2000624
--================================================================
rwtTask[tTask.HGD_winLi_MS_1] = {}
rwtTask[tTask.HGD_winLi_MS_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21901]
rwtTask[tTask.HGD_winLi_MS_1]["NextTaskId"] = tTask.HGD_winLi_MS_3
rwtTask[tTask.HGD_winLi_MS_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.HGD_winLi_MS_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTask.HGD_winLi_MS_1]["DialogId"]= tDialog.nTask1
rwtTask[tTask.HGD_winLi_MS_1]["AutoTaskDialog"]= tDialog.nTask1
rwtTask[tTask.HGD_winLi_MS_1]["PanelTalk"]= true
rwtTask[tTask.HGD_winLi_MS_1]["OptionTask1"]= tTask.HGD_winLi_MS_3
rwtTask[tTask.HGD_winLi_MS_1]["OptionTask2"]= tTask.HGD_winLi_MS_4


-- rwtTask[tTask.HGD_winLi_MS_2] = {}
-- rwtTask[tTask.HGD_winLi_MS_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21902]
-- rwtTask[tTask.HGD_winLi_MS_2]["TaskType"] = CONST_TASK_TYPE.SIDE
-- -- rwtTask[tTask.HGD_winLi_MS_2]["PreTaskId"] = tTask.HGD_winLi_MS_1
-- rwtTask[tTask.HGD_winLi_MS_2]["NextTaskId"] = tTask.HGD_winLi_MS_3
-- rwtTask[tTask.HGD_winLi_MS_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
-- rwtTask[tTask.HGD_winLi_MS_2]["DialogId"] = tDialog.nTask2
-- rwtTask[tTask.HGD_winLi_MS_2]["AutoTaskDialog"] = tDialog.nTask2

rwtTask[tTask.HGD_winLi_MS_3] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21903]
rwtTask[tTask.HGD_winLi_MS_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.HGD_winLi_MS_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.HGD_winLi_MS_3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.HGD_winLi_MS_3]["AutoTaskDialog"] = tDialog.nTask3
rwtTask[tTask.HGD_winLi_MS_3]["Awards"] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionChk"] = {}  --亲密度任务检查
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionChk"][1] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionChk"][1]["HeroId"] = 201  --英雄id
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 1 --任务序号（impression_task表对应）
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 1 --结局序号（结局1,2.. ）
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 0 --需求英雄亲密度等级
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionSet"] = {}  --亲密度掩码设置
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionSet"][1] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionSet"][1]["HeroId"] = 201
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 1
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 1
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_1
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.HGD_winLi_MS_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.HGD_winLi_MS_3

-- rwtTask[tTask.HGD_winLi_MS_3]["TaskNpc"] = nNPC_GebulinTT
-- rwtTask[tTask.HGD_winLi_MS_3]["StartAutoWay"] = {}
-- rwtTask[tTask.HGD_winLi_MS_3]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask.HGD_winLi_MS_3]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tTask.HGD_winLi_MS_3]["StartAutoWay"]["FindWayGroupId"] = nNPCGroupGebulinTT
-- rwtTask[tTask.HGD_winLi_MS_3]["StartAutoWay"]["FindWayGenId"] = nGenIdNPC_GebulinTT



rwtTask[tTask.HGD_winLi_MS_4] = {}
rwtTask[tTask.HGD_winLi_MS_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21904]
rwtTask[tTask.HGD_winLi_MS_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.HGD_winLi_MS_4]["NextTaskId"] = tTask.HGD_winLi_MS_5
rwtTask[tTask.HGD_winLi_MS_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.HGD_winLi_MS_4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.HGD_winLi_MS_4]["AutoTaskDialog"] = tDialog.nTask4

rwtTask[tTask.HGD_winLi_MS_5] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21905]
rwtTask[tTask.HGD_winLi_MS_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.HGD_winLi_MS_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.HGD_winLi_MS_5]["DialogId"] = tDialog.nTask5
rwtTask[tTask.HGD_winLi_MS_5]["TaskNpc"] = nNPC_GebulinTT
rwtTask[tTask.HGD_winLi_MS_5]["StartAutoWay"] = {}
rwtTask[tTask.HGD_winLi_MS_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.HGD_winLi_MS_5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask.HGD_winLi_MS_5]["StartAutoWay"]["FindWayGroupId"] = nNPCGroupGebulinTT
rwtTask[tTask.HGD_winLi_MS_5]["StartAutoWay"]["FindWayGenId"] = nGenIdNPC_GebulinTT
rwtTask[tTask.HGD_winLi_MS_5]["Awards"] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionChk"] = {}  --亲密度任务检查
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionChk"][1] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionChk"][1]["HeroId"] = 201  --英雄id
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 1 --任务序号（impression_task表对应）
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 2  --结局序号（结局1,2.. ）
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 0 --需求英雄亲密度等级
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionSet"] = {}  --亲密度掩码设置
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionSet"][1] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionSet"][1]["HeroId"] = 201
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 1
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 2
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_2
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.HGD_winLi_MS_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.HGD_winLi_MS_5
