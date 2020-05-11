--region [BranchTask]XiMeng_MoSheng.lua
--Purpose:		好感度-西蒙陌生
--Creator: 		林多娜
--Created:		2019-8-21
--Modifier:		$Author:倪祖伟	$
--Modified:		$Date:2019-10-10$
--RCS-ID:		$Revision: 3	$
--endregion


--endregion
local tBranchTask = {}
      tBranchTask[1]  = 70284   
      tBranchTask[2]  = 70285   
      tBranchTask[3]  = 70286   
--      tBranchTask[4]  = 70287  
--	  tBranchTask[5]  = 70296

local nTemp = 1236  --掩码

--local nItem_1 = 7000400  --泡发的南瓜饼   2019.9.4 删除
--local nItem_2 = 7000410  --真金白银南瓜饼

local nAwardId_1 = 2000592  --泡发的南瓜饼
local nAwardId_2 = 2000593  --真金白银南瓜饼

local nAward_1 = 2000631;
local nAward_2 = 2000632;

local tDialog = {}
      tDialog[1] =  12846  
      tDialog[2] =  12847  
      tDialog[3] =  12848  
      tDialog[4] =  12849  
      tDialog[5] =  12850
--	  tDialog[6] =  12851
--	  tDialog[7] =  12852 

local tTrap = {}
	  tTrap[1] =  30692
	  tTrap[2] =  30693


local tGenEvent = {}
      tGenEvent[1] = 20010278
      tGenEvent[2] = 20010279

--------------------------------------------------------------------
--陷阱
rwtNpcGroup[tTrap[1]] = rwtNpcGroup[tTrap[1]] or {} 
rwtNpcGroup[tTrap[1]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap[2]] = rwtNpcGroup[tTrap[2]] or {} 
rwtNpcGroup[tTrap[2]]["Type"] = CONST_NPCGROUP_TYPE.Trap

----物品使用
--rwtItem[nItem_1] = rwtItem[nItem_1] or {}
--rwtItem[nItem_1]["Awards"] = {}
--rwtItem[nItem_1]["Awards"]["Events"] = {}
--rwtItem[nItem_1]["Awards"]["Events"][1] = {}
--rwtItem[nItem_1]["Awards"]["Events"][1]["OpenDialog"] = {}
--rwtItem[nItem_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog[6] }

--rwtItem[nItem_2] = rwtItem[nItem_2] or {}
--rwtItem[nItem_2]["Awards"] = {}
--rwtItem[nItem_2]["Awards"]["Events"] = {}
--rwtItem[nItem_2]["Awards"]["Events"][1] = {}
--rwtItem[nItem_2]["Awards"]["Events"][1]["OpenDialog"] = {}
--rwtItem[nItem_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog[7] }
-----------------------------------

--任务

rwtTask[tBranchTask[1]] = {}
rwtTask[tBranchTask[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][21860]
rwtTask[tBranchTask[1]]["NextTaskId"] = tBranchTask[2]
rwtTask[tBranchTask[1]]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tBranchTask[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask[1]]["DialogId"] = tDialog[1]
rwtTask[tBranchTask[1]]["IsClickComplete"] = 0

                     
rwtTask[tBranchTask[2]] = {}
rwtTask[tBranchTask[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][21861]
--rwtTask[tBranchTask[2]]["PreTaskId"] = tBranchTask[1]
rwtTask[tBranchTask[2]]["NextTaskId"] = tBranchTask[3]
rwtTask[tBranchTask[2]]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tBranchTask[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tBranchTask[2]]["DialogId"] = tDialog[2]
rwtTask[tBranchTask[2]]["ReqTrap1"] = tTrap[1] 
rwtTask[tBranchTask[2]]["IsClickComplete"] = 0
rwtTask[tBranchTask[2]]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask[2]]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent[1]
rwtTask[tBranchTask[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tBranchTask[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask[2]]["StartAutoWay"] = {}
rwtTask[tBranchTask[2]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tBranchTask[2]]["StartAutoWay"]["FindWayGroupId"] = tTrap[1]
rwtTask[tBranchTask[2]]["StartAutoWay"]["FindWayGenId"] = tGenEvent[1]

rwtTask[tBranchTask[3]] = {}
rwtTask[tBranchTask[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][21862]
--rwtTask[tBranchTask[3]]["PreTaskId"] = tBranchTask[2]
rwtTask[tBranchTask[3]]["TaskType"] = CONST_TASK_TYPE.IMPRESSION
rwtTask[tBranchTask[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tBranchTask[3]]["DialogId"] = tDialog[3]
rwtTask[tBranchTask[3]]["ReqTrap1"] = tTrap[2] 
rwtTask[tBranchTask[3]]["IsClickComplete"] = 0
rwtTask[tBranchTask[3]]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask[3]]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent[2]
rwtTask[tBranchTask[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tBranchTask[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask[3]]["StartAutoWay"] = {}
rwtTask[tBranchTask[3]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tBranchTask[3]]["StartAutoWay"]["FindWayGroupId"] = tTrap[2]
rwtTask[tBranchTask[3]]["StartAutoWay"]["FindWayGenId"] = tGenEvent[2]
rwtTask[tBranchTask[3]]["OptionFunc1"] = function (nIndex,nType,nId,nOptionIndex)
		rwOpenNpcChatDialog(tDialog[4])
		--rwSetHeroImpressionTaskMask(101,1,1)
end
rwtTask[tBranchTask[3]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
		rwOpenNpcChatDialog(tDialog[5])
		--rwSetHeroImpressionTaskMask(101,1,10)
end

rwtDialog[tDialog[4]] = rwtDialog[tDialog[4]] or {}
rwtDialog[tDialog[4]]["DialogEndInit"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionChk"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["HeroId"] = 101
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 1
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 1
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 0
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionSet"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]["HeroId"] = 101
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 1
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 1

rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_1
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tDialog[4]

--rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
--rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 
--rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] =tDialog[4]


rwtDialog[tDialog[5]] = rwtDialog[tDialog[5]] or {}
rwtDialog[tDialog[5]]["DialogEndInit"] = {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionChk"] = {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]= {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["HeroId"] = 101
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["TaskIndex"] = 1
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["EndIndex"] = 2
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionChk"][1]["NeedHeroImpressionLevel"] = 0
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionSet"] = {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]= {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]["HeroId"] = 101
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]["TaskIndex"] = 1
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["ImpressionSet"][1]["EndIndex"] = 2

rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_2
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tDialog[5]

--rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
--rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 
--rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtDialog[tDialog[5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tDialog[5]
-------------------------------------
