--region [BranchTask]AoZiJiaZu_Day3.lua
--Purpose:		奥兹家族第三天
--Creator: 		倪祖伟
--Created:		2019-10-31
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-10-31 $
--RCS-ID:		$Revision: 1 $
--endregion

local MapId = 1000
local NPCGroup_TaiLei = 20992
local NPC_TaiLei = 3859  --泰雷
local GenId_TaiLei = 1000233
local NPCGroup_TeLuoDe = 20228
local Npc_TeLuoDe = 3028 --特罗德
local GenId_TeLuoDe = 1000047
-- --爷爷书房
-- local Npc_TeLuoDeShuFang=3963--特罗德,书房
-- local NPCGroup_Shufang = 10024
-- local tGenEvent_Shufang = 1000173
--罗兰镇书房
local NPCGroup_Trap = 30676
local GenId_Trap = 1000232
-- local nNPC_DaWei = 3004
local nNpcBuild_Office = 30706  --罗兰镇书房
local nNpcBuild_Office_GenId = 20010285

local ExitPuzzled = 109120
local LockTaskId = 10221
local tTaskId = {}
tTaskId[1] = 70264
tTaskId[2] = 70265
tTaskId[3] = 70266
tTaskId[4] = 70267
tTaskId[5] = 70268
tTaskId[6] = 70269
tTaskId[7] = 70270
tTaskId[8] = 70271
tTaskId[9] = 70336
tTaskId[11]= 70431
tTaskId[12]= 70432

tTaskId[10]= 70337





local tDialogs = {}
tDialogs[1] = 12776
tDialogs[2] = 12777
tDialogs["Copy"] = 12995
tDialogs[3] = 12778
tDialogs[4] = 12779
tDialogs[5] = 12780
tDialogs[6] = 12781
tDialogs[7] = 12782
tDialogs[8] = 12785
tDialogs[9] = 12796
tDialogs[10]= 13174
tDialogs[11]= 13175

rwtNpc[NPC_TaiLei] = rwtNpc[NPC_TaiLei] or {}
-- rwtNpc[NPC_TaiLei]["NpcProcess"] = function(nGroupTypeId)
--     if rwTaskChkUserInTask(tTaskId[2]) then
--         rwOpenNpcChatDialog(tDialogs[2],CONST_NPCCHAT_TYPE.TASK,tTaskId[2])
--     end
--     if rwTaskChkUserInTask(tTaskId[3]) then
--         rwOpenNpcChatDialog(12914)
--     end
-- end
-- rwtDialog[12914] = rwtDialog[12914] or {}
-- rwtDialog[12914]["DialogEnd"] = function()
--     rwEnterMap(3148)
-- end

rwtNpcGroup[NPCGroup_TaiLei] = rwtNpcGroup[NPCGroup_TaiLei] or {} 
rwtNpcGroup[NPCGroup_TaiLei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[NPCGroup_TaiLei]["NpcId"]= NPC_TaiLei

rwtNpcGroup[NPCGroup_Trap] = rwtNpcGroup[NPCGroup_Trap] or {} 
rwtNpcGroup[NPCGroup_Trap]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcBuild_Office] = rwtNpcGroup[nNpcBuild_Office] or {} 
rwtNpcGroup[nNpcBuild_Office]["Type"] = CONST_NPCGROUP_TYPE.Trap

--======================任务流程===========================================

rwtTask[tTaskId[1]] = {}
rwtTask[tTaskId[1]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21840]
rwtTask[tTaskId[1]]["PreTaskId"] = nil
rwtTask[tTaskId[1]]["NextTaskId"] = tTaskId[2]
rwtTask[tTaskId[1]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId[1]]["DialogId"] = tDialogs[1]
rwtTask[tTaskId[1]]["LockTask"] = LockTaskId
rwtTask[tTaskId[1]]["LackDialogId"] = tDialogs[8]

rwtTask[tTaskId[2]] = {}
rwtTask[tTaskId[2]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21840]
rwtTask[tTaskId[2]]["PreTaskId"] = tTaskId[1]
rwtTask[tTaskId[2]]["NextTaskId"] = tTaskId[3]
rwtTask[tTaskId[2]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId[2]]["TaskNpc"] = NPC_TaiLei
rwtTask[tTaskId[2]]["DialogId"] = tDialogs[2]
rwtTask[tTaskId[2]]["StartAutoWay"] = {}
rwtTask[tTaskId[2]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId[2]]["StartAutoWay"]["FindWayMapId"] = MapId
rwtTask[tTaskId[2]]["StartAutoWay"]["FindWayGroupId"] = NPCGroup_TaiLei
rwtTask[tTaskId[2]]["StartAutoWay"]["FindWayGenId"] = GenId_TaiLei
rwtTask[tTaskId[2]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[2]]["DynaNpcGroupGen"][1]["GenId"] = GenId_TaiLei
rwtTask[tTaskId[2]]["DynaNpcGroupGen"][1]["MapId"] = MapId
rwtTask[tTaskId[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
-- rwtTask[tTaskId[2]]["DialogueEndFunc"]=function()
--     rwEnterMap(3148)
-- end

rwtTask[tTaskId[3]] = {}
rwtTask[tTaskId[3]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[3]]["PreTaskId"] = tTaskId[2]
rwtTask[tTaskId[3]]["NextTaskId"] = tTaskId[4]
rwtTask[tTaskId[3]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTaskId[3]]["PassCopyMap1"] = {3148}
rwtTask[tTaskId[3]]["TaskNpc"] = NPC_TaiLei
rwtTask[tTaskId[3]]["DialogId"] = tDialogs["Copy"]
rwtTask[tTaskId[3]]["ClickEnterMap"] = 3148
rwtTask[tTaskId[3]]["IsClickComplete"] = 1
rwtTask[tTaskId[3]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[3]]["DynaNpcGroupGen"][1]["GenId"] = GenId_TaiLei
rwtTask[tTaskId[3]]["DynaNpcGroupGen"][1]["MapId"] = MapId
rwtTask[tTaskId[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTaskId[3]]["AutoTaskDialog"] = tDialogs["Copy"]


rwtTask[tTaskId[4]] = {}
rwtTask[tTaskId[4]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21842]
rwtTask[tTaskId[4]]["PreTaskId"] = tTaskId[3]
rwtTask[tTaskId[4]]["NextTaskId"] = tTaskId[5]
rwtTask[tTaskId[4]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId[4]]["AutoTaskDialog"] = tDialogs[3]
rwtTask[tTaskId[4]]["DialogId"] = tDialogs[3]

rwtTask[tTaskId[5]] = {}
rwtTask[tTaskId[5]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21842]
rwtTask[tTaskId[5]]["PreTaskId"] = tTaskId[4]
rwtTask[tTaskId[5]]["NextTaskId"] = tTaskId[7]
rwtTask[tTaskId[5]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTaskId[5]]["OptionTask1"] = tTaskId[6]
rwtTask[tTaskId[5]]["OptionTask2"] = tTaskId[7]
rwtTask[tTaskId[5]]["TaskNpc"] = Npc_TeLuoDe
rwtTask[tTaskId[5]]["DialogId"] = tDialogs[4]
rwtTask[tTaskId[5]]["StartAutoWay"] = {}
rwtTask[tTaskId[5]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId[5]]["StartAutoWay"]["FindWayMapId"] = MapId
rwtTask[tTaskId[5]]["StartAutoWay"]["FindWayGroupId"] = NPCGroup_TeLuoDe
rwtTask[tTaskId[5]]["StartAutoWay"]["FindWayGenId"] = GenId_TeLuoDe

rwtTask[tTaskId[6]] = {}
rwtTask[tTaskId[6]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21842]
rwtTask[tTaskId[6]]["PreTaskId"] = tTaskId[5]
rwtTask[tTaskId[6]]["NextTaskId"] = tTaskId[7]
rwtTask[tTaskId[6]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId[6]]["TaskNpc"] = Npc_TeLuoDe
rwtTask[tTaskId[6]]["DialogId"] = tDialogs[5]
rwtTask[tTaskId[6]]["AutoTaskDialog"] = tDialogs[5]

rwtTask[tTaskId[7]] = {}
rwtTask[tTaskId[7]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21842]
rwtTask[tTaskId[7]]["PreTaskId"] = tTaskId[5]
rwtTask[tTaskId[7]]["NextTaskId"] = tTaskId[8]
rwtTask[tTaskId[7]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId[7]]["TaskNpc"] = Npc_TeLuoDe
rwtTask[tTaskId[7]]["DialogId"] = tDialogs[6]
rwtTask[tTaskId[7]]["AutoTaskDialog"] = tDialogs[6]


rwtTask[tTaskId[8]] = {}
rwtTask[tTaskId[8]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21842]
rwtTask[tTaskId[8]]["PreTaskId"] = tTaskId[7]
rwtTask[tTaskId[8]]["NextTaskId"] = tTaskId[9]
rwtTask[tTaskId[8]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId[8]]["ReqTrap1"] = NPCGroup_Trap
rwtTask[tTaskId[8]]["DialogId"] = tDialogs[7]
rwtTask[tTaskId[8]]["CloseDialog"] = 0
rwtTask[tTaskId[8]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1]["GenId"] = GenId_Trap
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1]["MapId"] = MapId
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTaskId[8]]["StartAutoWay"] = {}
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayMapId"] = MapId
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayGroupId"] = NPCGroup_Trap
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayGenId"] = GenId_Trap


rwtTask[tTaskId[9]] = {}
rwtTask[tTaskId[9]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21843]
rwtTask[tTaskId[9]]["PreTaskId"] = tTaskId[8]
-- rwtTask[tTaskId[9]]["NextTaskId"] = tTaskId[10]
rwtTask[tTaskId[9]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTaskId[9]]["OptionTask1"] = tTaskId[11]
rwtTask[tTaskId[9]]["OptionTask2"] = tTaskId[12]
rwtTask[tTaskId[9]]["ReqTrap1"] = NPCGroup_Trap
rwtTask[tTaskId[9]]["DialogId"] = tDialogs[8]
rwtTask[tTaskId[9]]["AutoTaskDialog"] = tDialogs[8]
rwtTask[tTaskId[9]]["CloseDialog"] = 0
rwtTask[tTaskId[9]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[9]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[9]]["DynaNpcGroupGen"][1]["GenId"] = GenId_Trap
rwtTask[tTaskId[9]]["DynaNpcGroupGen"][1]["MapId"] = MapId
rwtTask[tTaskId[9]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId[11]] = {}
rwtTask[tTaskId[11]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21843]
rwtTask[tTaskId[11]]["PreTaskId"] = tTaskId[9]
rwtTask[tTaskId[11]]["NextTaskId"] = tTaskId[10]
rwtTask[tTaskId[11]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[11]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId[11]]["DialogId"] = tDialogs[10]
rwtTask[tTaskId[11]]["AutoTaskDialog"] = tDialogs[10]
rwtTask[tTaskId[11]]["ReqTrap1"]= NPCGroup_Trap
rwtTask[tTaskId[11]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[11]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[11]]["DynaNpcGroupGen"][1]["GenId"] = GenId_Trap
rwtTask[tTaskId[11]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId[11]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId[12]] = {}
rwtTask[tTaskId[12]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21843]
rwtTask[tTaskId[12]]["PreTaskId"] = tTaskId[9]
rwtTask[tTaskId[12]]["NextTaskId"] = tTaskId[10]
rwtTask[tTaskId[12]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId[12]]["DialogId"] = tDialogs[11]
rwtTask[tTaskId[12]]["AutoTaskDialog"] = tDialogs[11]
rwtTask[tTaskId[12]]["ReqTrap1"]= NPCGroup_Trap
rwtTask[tTaskId[12]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[12]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[12]]["DynaNpcGroupGen"][1]["GenId"] = GenId_Trap
rwtTask[tTaskId[12]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTaskId[10]] = {}
rwtTask[tTaskId[10]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21843]
-- rwtTask[tTaskId[10]]["PreTaskId"] = tTaskId[9]
-- rwtTask[tTaskId[10]]["NextTaskId"] = nil
rwtTask[tTaskId[10]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTaskId[10]]["DialogId"] = tDialogs[9]
rwtTask[tTaskId[10]]["AutoTaskDialog"] = tDialogs[9]
rwtTask[tTaskId[10]]["ReqTrap1"]= NPCGroup_Trap

rwtTask[tTaskId[10]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[10]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[10]]["DynaNpcGroupGen"][1]["GenId"] = GenId_Trap
rwtTask[tTaskId[10]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tTaskId[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId[10]]["Awards"] = {}
rwtTask[tTaskId[10]]["Awards"]["Events"] = {}
rwtTask[tTaskId[10]]["Awards"]["Events"][1] = {}
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1235
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000970
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTaskId[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTaskId[10]
