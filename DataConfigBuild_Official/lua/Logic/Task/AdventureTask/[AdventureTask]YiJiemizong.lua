
--奇遇：异界迷踪

------------------------------------------MainID

local nMapId = 1000

------------------------------------------TaskID

local nYiJiemizong1 = 35000 --了解贵族的委托
local nYiJiemizong2 = 35001 --找出袭击的真凶
local nYiJiemizong3 = 35002 --告知任务的结果
local nYiJiemizong4 = 35003 --明白事情的真相

------------------------------------------AutoPos

 --导航到奇怪的生物(M)
 --导航到卡恩斯特(N)
 
 
------------------------------------------NPC

local nNpcRes_KaEnSTe = 3319

rwtNpc[nNpcRes_KaEnSTe] = rwtNpc[nNpcRes_KaEnSTe] or {}

------------------------------------------Monster

local nMonsterId_QGSW_1 = 9000167

------------------------------------------GroupID

--NPC
local nNpcGroup_KaEnSTe_1 = 20331

--Monster
local nMonsterGroup_QGSW_1 = 900274

--Trap
local nTrapGroup_KillQGSW_1 = 30351
local nTrapGroup_TrapDialog_1 = 30352

------------------------------------------DialogId

--NPC
local nDialogId_Npc_KaEnSTe_1 = 10794
local nDialogId_Npc_KaEnSTe_2 = 10795

--Trap
local nDialogId_Trap_KillQGSW_1 = 10796
local nDialogId_Trap_TrapDialog_1 = 10797


------------------------------------------GenID

-- NPC
local nGenId_Npc_KaEnSTe_1 = 1000097

-- Monster
local nGenId_Monster_QGSW_1 = 1000098

-- Trap
local nGenId_Trap_KillQGSW_1 = 1000099
local nGenId_Trap_TrapDialog_1 = 1000100

------------------------------------------rwtNpc

--奇遇触发

rwtNpcGroup[30390] = rwtNpcGroup[30390] or {}
rwtNpcGroup[30390]["Type"] = CONST_NPCGROUP_TYPE.Adventure
rwtNpcGroup[30390]["TrapAcceptTask"] = 35000
rwtNpcGroup[30390]["AdventureJudgeType"] = {}
rwtNpcGroup[30390]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30390]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtNpcGroup[30390]["AdventureJudgeType"][1]["Value"] = -1
--[[
rwtNpcGroup[30390]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30390]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.USER
rwtNpcGroup[30390]["AdventureJudgeType"][1]["USER_INT_LEVEL"] = function(nLevel)
	if nLevel >= 10 then
		return true
	else
		return false
	end
end
rwtNpcGroup[30390]["AdventureJudgeType"][2] = {}
rwtNpcGroup[30390]["AdventureJudgeType"][2]["Type"] = CONST_ADVENTURE_TYPE.HEROOTHER
rwtNpcGroup[30390]["AdventureJudgeType"][2]["AllFightHero"] = {201}
--]]


------------------------------------------rwtNpcGroup

--奇怪的生物战斗陷阱
rwtNpcGroup[nTrapGroup_KillQGSW_1] = rwtNpcGroup[nTrapGroup_KillQGSW_1] or {}
rwtNpcGroup[nTrapGroup_KillQGSW_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

--卡恩斯特
rwtNpcGroup[nNpcGroup_KaEnSTe_1] = rwtNpcGroup[nNpcGroup_KaEnSTe_1] or {}  
rwtNpcGroup[nNpcGroup_KaEnSTe_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KaEnSTe_1]["NpcId"] = nNpcRes_KaEnSTe

--原地对白陷阱
rwtNpcGroup[nTrapGroup_TrapDialog_1] = rwtNpcGroup[nTrapGroup_TrapDialog_1] or {}
rwtNpcGroup[nTrapGroup_TrapDialog_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

------------------------------------------Func






------------------------------------------MainTaskList

--[NPC对白][任务面板寻路]
rwtTask[nYiJiemizong1] = {}
rwtTask[nYiJiemizong1]["Title" ]= tLuaText[LANGUAGE_CONFIG][20102]
rwtTask[nYiJiemizong1]["PreTaskId" ]= 0
rwtTask[nYiJiemizong1]["NextTaskId" ]= nYiJiemizong2
rwtTask[nYiJiemizong1]["DialogId" ]= nDialogId_Npc_KaEnSTe_1
rwtTask[nYiJiemizong1]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYiJiemizong1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYiJiemizong1]["TaskNpc"] = nNpcRes_KaEnSTe
rwtTask[nYiJiemizong1]["DynaNpcGroupGen"] = {}
rwtTask[nYiJiemizong1]["DynaNpcGroupGen"][1] = {}
rwtTask[nYiJiemizong1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_KaEnSTe_1
rwtTask[nYiJiemizong1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nYiJiemizong1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

--[对白选择杀怪][自动寻路]
rwtTask[nYiJiemizong2] = {}
rwtTask[nYiJiemizong2]["Title" ]= tLuaText[LANGUAGE_CONFIG][20103]
rwtTask[nYiJiemizong2]["PreTaskId" ]= nYiJiemizong1
rwtTask[nYiJiemizong2]["NextTaskId" ]= nYiJiemizong3
rwtTask[nYiJiemizong2]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYiJiemizong2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"] = {}
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][1] = {}
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_KaEnSTe_1
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][2] = {}
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][2]["GenId"] = nGenId_Monster_QGSW_1
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][3] = {}
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][3]["GenId"] = nGenId_Trap_KillQGSW_1
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[nYiJiemizong2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYiJiemizong2]["KillMonsterGroup1" ]= nMonsterGroup_QGSW_1
rwtTask[nYiJiemizong2]["ReqTrap1"]= nTrapGroup_KillQGSW_1
rwtTask[nYiJiemizong2]["DialogId"]= nDialogId_Trap_KillQGSW_1
rwtTask[nYiJiemizong2]["MonsterGroupGenId"] = nGenId_Monster_QGSW_1
--rwtTask[nYiJiemizong2]["IsClickComplete"] = 1
rwtTask[nYiJiemizong2]["StartAutoWay"] = {}
rwtTask[nYiJiemizong2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nYiJiemizong2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nYiJiemizong2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_QGSW_1
rwtTask[nYiJiemizong2]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_QGSW_1

--[NPC对白][自动寻路]
rwtTask[nYiJiemizong3] = {}
rwtTask[nYiJiemizong3]["Title" ]= tLuaText[LANGUAGE_CONFIG][20104] 
rwtTask[nYiJiemizong3]["PreTaskId" ]= nYiJiemizong2
rwtTask[nYiJiemizong3]["NextTaskId" ]= nYiJiemizong4
rwtTask[nYiJiemizong3]["DialogId" ]= nDialogId_Npc_KaEnSTe_2
rwtTask[nYiJiemizong3]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYiJiemizong3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nYiJiemizong3]["TaskNpc"] = nNpcRes_KaEnSTe
rwtTask[nYiJiemizong3]["DynaNpcGroupGen"] = {}
rwtTask[nYiJiemizong3]["DynaNpcGroupGen"][1] = {}
rwtTask[nYiJiemizong3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Npc_KaEnSTe_1
rwtTask[nYiJiemizong3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nYiJiemizong3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYiJiemizong3]["StartAutoWay"] = {}
rwtTask[nYiJiemizong3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nYiJiemizong3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nYiJiemizong3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_KaEnSTe_1
rwtTask[nYiJiemizong3]["StartAutoWay"]["FindWayGenId"] = nGenId_Npc_KaEnSTe_1

--[陷阱对白][任务面板寻路]
rwtTask[nYiJiemizong4] = {}
rwtTask[nYiJiemizong4]["Title" ]= tLuaText[LANGUAGE_CONFIG][20105]
rwtTask[nYiJiemizong4]["PreTaskId" ]= nYiJiemizong3
rwtTask[nYiJiemizong4]["NextTaskId" ]= 0
rwtTask[nYiJiemizong4]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nYiJiemizong4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nYiJiemizong4]["AutoTaskDialog"] = nDialogId_Trap_TrapDialog_1
rwtTask[nYiJiemizong4]["DialogId" ]= nDialogId_Trap_TrapDialog_1
rwtTask[nYiJiemizong4]["ReqTrap1" ]= nTrapGroup_TrapDialog_1 
rwtTask[nYiJiemizong4]["DynaNpcGroupGen"] = {}
rwtTask[nYiJiemizong4]["DynaNpcGroupGen"][1] = {}
rwtTask[nYiJiemizong4]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_TrapDialog_1
rwtTask[nYiJiemizong4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nYiJiemizong4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nYiJiemizong4]["Awards"] = {}
rwtTask[nYiJiemizong4]["Awards"]["Events"] = {}
rwtTask[nYiJiemizong4]["Awards"]["Events"][1] = {}
rwtTask[nYiJiemizong4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nYiJiemizong4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nYiJiemizong4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000368
rwtTask[nYiJiemizong4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nYiJiemizong4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nYiJiemizong4

