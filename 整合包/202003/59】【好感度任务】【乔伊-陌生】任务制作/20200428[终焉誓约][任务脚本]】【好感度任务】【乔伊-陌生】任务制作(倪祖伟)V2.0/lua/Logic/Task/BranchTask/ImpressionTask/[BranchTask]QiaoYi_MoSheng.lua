--region [BranchTask]QiaoYi_MoSheng
--Purpose:		好感度任务-乔伊陌生
--Creator: 		倪祖伟
--Created:		2020-4-28
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-4-28 $
--RCS-ID:		$Revision: 1 $
--endregion


local tTask_1 = 70561  --

local tDialog_1 = 13547

local nAwardID = 2000786
local nHeroId = 401

rwtTask[tTask_1] = {}
rwtTask[tTask_1]["Title"] = tLuaText[LANGUAGE_CONFIG][22008]
rwtTask[tTask_1]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tTask_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask_1]["IsClickComplete"] = 0
rwtTask[tTask_1]["DialogId"] = tDialog_1
rwtTask[tTask_1]["AutoTaskDialog"] = tDialog_1
rwtTask[tTask_1]["Awards"] = {}
rwtTask[tTask_1]["Awards"]["Events"] = {}
rwtTask[tTask_1]["Awards"]["Events"][1] = {}
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionChk"] = {}  --亲密度任务检查
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionChk"][1] = {}
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionChk"][1]["HeroId"] = nHeroId  --英雄id
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 1 --任务序号（impression_task表对应）
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 1  --结局序号（结局1,2.. ）
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 0 --需求英雄亲密度等级
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionSet"] = {}  --亲密度掩码设置
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionSet"][1] = {}
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionSet"][1]["HeroId"] = nHeroId
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 1
rwtTask[tTask_1]["Awards"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 1
rwtTask[tTask_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardID
rwtTask[tTask_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_1

