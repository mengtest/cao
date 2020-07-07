--region 		[BranchTask]AnYueCheng_Pre.lua
--Purpose:		暗月城前置
--Creator: 		倪祖伟
--Created:		2019-09-11
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-06-29 $
--RCS-ID:		$Revision: 10 $

--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

-- local nTempdata = 1234
local nTaskPre = 10248
--任务ID
local tTask = {}
tTask.nAnYueChengPre_1 = 70219 --来自远方的信息,意外的要求
tTask.nAnYueChengPre_2 = 70220 --来自远方的信息,意外的要求
tTask.nAnYueChengPre_3 = 70221 --来自远方的信息,意外的要求
tTask.nAnYueChengPre_4 = 70222 --亲，报团吗？,出发海地司城
  


--对话ID
local tDialog = {}
tDialog.nTask1 = 12862
tDialog.nTask2 = 12863
tDialog.nTask3 = 12864
tDialog.nTask4 = 12865
tDialog.nTask4_notimeSB = 12866
-- tDialog.nTask6_1 = 12869 --雾海危机活动面板


--Npc
local nNPCGroup_SaLind = 20949


local nNPC_SaLind = 3818

local tGenId_NPCGroup_SaLind = 20010252


-------------------------------------------- 配置 ----------------------------------------------

rwtNpcGroup[nNPCGroup_SaLind] = rwtNpcGroup[nNPCGroup_SaLind] or {} 
rwtNpcGroup[nNPCGroup_SaLind]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_SaLind]["NpcId"] = nNPC_SaLind
rwtNpc[nNPC_SaLind] = rwtNpc[nNPC_SaLind] or {}
rwtNpc[nNPC_SaLind]["ChkEvent"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["CondTask"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["CondTask"]["TaskId"] = tTask.nAnYueChengPre_4
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["CondTask"]["NoFinish"] = true
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["OpenDialog"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["OpenDialog"]["tDialog"] = {2150,2151}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]={}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][1] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][1]["StartTime"] = {Wday = CONST_WDAY_TYPE.Thursday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][1]["EndTime"] = {Wday = CONST_WDAY_TYPE.Thursday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][2] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][2]["StartTime"] = {Wday = CONST_WDAY_TYPE.Friday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][2]["EndTime"] = {Wday = CONST_WDAY_TYPE.Friday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][3] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][3]["StartTime"] = {Wday = CONST_WDAY_TYPE.Saturday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][3]["EndTime"] = {Wday = CONST_WDAY_TYPE.Saturday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][4] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][4]["StartTime"] = {Wday = CONST_WDAY_TYPE.Sunday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["CondTime"][4]["EndTime"] = {Wday = CONST_WDAY_TYPE.Sunday}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = 2152
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["FailEvents"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["FailEvents"]["OpenDialog"] = {}
rwtNpc[nNPC_SaLind]["ChkEvent"]["Events"][1]["FailEvents"]["FailEvents"]["OpenDialog"]["tDialog"] = {2149,2150,2151}
-- rwtNpc[nNPC_SaLind]["OutTimeDialog"] = {2149,2150,2151}
-- rwtNpc[nNPC_SaLind]["InTimeDialog"] = 2152

rwtDialog[2152] = rwtDialog[2152] or {}
rwtDialog[2152]["OptionFunc1"] = function ()
    rwOpenLocalWnd(CONST_MENUTYPE.Darkdairy)     
end

--================================================================
--来自远方的信息,意外的要求
rwtTask[tTask.nAnYueChengPre_1] = {}
rwtTask[tTask.nAnYueChengPre_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_1]["PreTaskId"] = nTaskPre
rwtTask[tTask.nAnYueChengPre_1]["NextTaskId"] = tTask.nAnYueChengPre_2
rwtTask[tTask.nAnYueChengPre_1]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
rwtTask[tTask.nAnYueChengPre_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTask.nAnYueChengPre_1]["PanelTalk"] = true
rwtTask[tTask.nAnYueChengPre_1]["DialogId"]= tDialog.nTask1
rwtTask[tTask.nAnYueChengPre_1]["OptionTask1"] = tTask.nAnYueChengPre_2
rwtTask[tTask.nAnYueChengPre_1]["OptionTask2"] = tTask.nAnYueChengPre_3


--来自远方的信息,意外的要求
rwtTask[tTask.nAnYueChengPre_2] = {}
rwtTask[tTask.nAnYueChengPre_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_2]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
rwtTask[tTask.nAnYueChengPre_2]["PreTaskId"] = tTask.nAnYueChengPre_1
rwtTask[tTask.nAnYueChengPre_2]["NextTaskId"] = tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nAnYueChengPre_2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nAnYueChengPre_2]["AutoTaskDialog"] = tDialog.nTask2



--来自远方的信息,意外的要求
rwtTask[tTask.nAnYueChengPre_3] = {}
rwtTask[tTask.nAnYueChengPre_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_3]["PreTaskId" ]= tTask.nAnYueChengPre_1
rwtTask[tTask.nAnYueChengPre_3]["NextTaskId" ]= tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_3]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
rwtTask[tTask.nAnYueChengPre_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nAnYueChengPre_3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nAnYueChengPre_3]["AutoTaskDialog"] = tDialog.nTask3


--亲，报团吗？,出发海地司城   
rwtTask[tTask.nAnYueChengPre_4] = {}
rwtTask[tTask.nAnYueChengPre_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21864]
rwtTask[tTask.nAnYueChengPre_4]["TaskType"] = CONST_TASK_TYPE.WuHaiWeiJi
-- rwtTask[tTask.nAnYueChengPre_4]["PreTaskId"] = tTask.nAnYueChengPre_3
rwtTask[tTask.nAnYueChengPre_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nAnYueChengPre_4]["FinishDialogId"] = {tDialog.nTask4,tDialog.nTask4_notimeSB}

rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["StartTime"] = {Wday = CONST_WDAY_TYPE.Thursday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["EndTime"] = {Wday = CONST_WDAY_TYPE.Thursday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][2] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][2]["StartTime"] = {Wday = CONST_WDAY_TYPE.Friday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][2]["EndTime"] = {Wday = CONST_WDAY_TYPE.Friday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][3] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][3]["StartTime"] = {Wday = CONST_WDAY_TYPE.Saturday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][3]["EndTime"] = {Wday = CONST_WDAY_TYPE.Saturday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][4] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][4]["StartTime"] = {Wday = CONST_WDAY_TYPE.Sunday}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][4]["EndTime"] = {Wday = CONST_WDAY_TYPE.Sunday}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["StartTime"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["EndTime"] = {}
-- rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["CondTime"][1]["KaiFuDays"] = {start = 4,ChiXu = 8,JianGe = 7}

rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.nTask4_notimeSB
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[tTask.nAnYueChengPre_4]["NpcEndAward"]["Events"][1]["FailEvents"]["OpenDialog"]["nId"] = tTask.nAnYueChengPre_4

rwtTask[tTask.nAnYueChengPre_4]["TaskNpc"] = nNPC_SaLind
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayGenId"] = tGenId_NPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_4]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.WuHaiWeiJi_Liget}   --多英雄解锁
rwtTask[tTask.nAnYueChengPre_4]["Awards"] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000633
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nAnYueChengPre_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nAnYueChengPre_4


--[[备注
    老船长：nNPC_SaLind = 3818（）
    在未完成任务70222时，闲聊对白2150；2151
    在完成前置任务70222后，在周1~周3（活动时间外）出现闲聊对白（2149，2150，2151。因为2149含有“周4周日的字”）
    在完成前置任务70222后，在周4~周7（活动时间内）出现闲聊对白（2152），选项1可以直接进入雾海危机活动界面

    配置：判读是否未完成任务70222
    成功:播放对白（2150；2151）（未完成任务）
    失败：判断时间是否在活动时间内（周4~周7）
            成功：播放对白2152
            失败：播放对白（2149，2150，2151）
    -----------------------------------
    rwtTask[tTask.nAnYueChengPre_4]["PreTaskId"] = tTask.nAnYueChengPre_3
    任务4的 PreTaskId被屏蔽，因为任务2和任务3是选项任务，在接到任务4之前，不知道是任务2还是任务3
--]]
