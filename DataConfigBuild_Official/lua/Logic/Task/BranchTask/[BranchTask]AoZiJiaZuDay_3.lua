-- region *.lua
-- Date
-- Maker:Nizw

-- endregion

local MapId = 1000
local NPCGroup_TaiLei = 20992
local NPC_TaiLei = 3859  --泰雷
local GenId_TaiLei = 1000233
local NPCGroup_TeLuoDe = 20228
local Npc_TeLuoDe = 3028 --特罗德
local GenId_TeLuoDe = 1000047

local NPCGroup_Trap = 30676
local GenId_Trap = 1000232

local LockTaskId = 10100
local tTaskId = {}
tTaskId[1] = 70264
tTaskId[2] = 70265
tTaskId[3] = 70266
tTaskId[4] = 70267
tTaskId[5] = 70268
tTaskId[6] = 70269
tTaskId[7] = 70270
tTaskId[8] = 70271

local tDialogs = {}
tDialogs[1] = 12776
tDialogs[2] = 12777
tDialogs[3] = 12778
tDialogs[4] = 12779
tDialogs[5] = 12780
tDialogs[6] = 12781
tDialogs[7] = 12782

rwtNpcGroup[NPCGroup_TaiLei] = rwtNpcGroup[NPCGroup_TaiLei] or {} 
rwtNpcGroup[NPCGroup_TaiLei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[NPCGroup_TaiLei]["NpcId"]= NPC_TaiLei

rwtNpcGroup[NPCGroup_Trap] = rwtNpcGroup[NPCGroup_Trap] or {} 
rwtNpcGroup[NPCGroup_Trap]["Type"] = CONST_NPCGROUP_TYPE.Trap

--======================任务流程===========================================

rwtTask[tTaskId[1]] = {}
rwtTask[tTaskId[1]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21840]
rwtTask[tTaskId[1]]["PreTaskId"] = nil
rwtTask[tTaskId[1]]["NextTaskId"] = tTaskId[2]
rwtTask[tTaskId[1]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId[1]]["DialogId"] = tDialogs[1]
rwtTask[tTaskId[1]]["LockTask"] = LockTaskId
rwtTask[tTaskId[1]]["LackDialogId"] = tDialogs[1]

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
rwtTask[tTaskId[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTaskId[3]] = {}
rwtTask[tTaskId[3]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[3]]["PreTaskId"] = tTaskId[2]
rwtTask[tTaskId[3]]["NextTaskId"] = tTaskId[4]
rwtTask[tTaskId[3]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTaskId[3]]["PassCopyMap1"] = {3011}
rwtTask[tTaskId[3]]["ClickEnterMap"] = 3011
rwtTask[tTaskId[3]]["IsClickComplete"] = 1

rwtTask[tTaskId[4]] = {}
rwtTask[tTaskId[4]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[4]]["PreTaskId"] = tTaskId[3]
rwtTask[tTaskId[4]]["NextTaskId"] = tTaskId[5]
rwtTask[tTaskId[4]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTaskId[4]]["AutoTaskDialog"] = tDialogs[3]
rwtTask[tTaskId[4]]["DialogId"] = tDialogs[3]

rwtTask[tTaskId[5]] = {}
rwtTask[tTaskId[5]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[5]]["PreTaskId"] = tTaskId[4]
rwtTask[tTaskId[5]]["NextTaskId"] = tTaskId[6]
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
rwtTask[tTaskId[6]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[6]]["PreTaskId"] = tTaskId[5]
rwtTask[tTaskId[6]]["NextTaskId"] = tTaskId[7]
rwtTask[tTaskId[6]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId[6]]["TaskNpc"] = Npc_TeLuoDe
rwtTask[tTaskId[6]]["DialogId"] = tDialogs[5]
rwtTask[tTaskId[6]]["StartAutoWay"] = {}
rwtTask[tTaskId[6]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId[6]]["StartAutoWay"]["FindWayMapId"] = MapId
rwtTask[tTaskId[6]]["StartAutoWay"]["FindWayGroupId"] = NPCGroup_TeLuoDe
rwtTask[tTaskId[6]]["StartAutoWay"]["FindWayGenId"] = GenId_TeLuoDe

rwtTask[tTaskId[7]] = {}
rwtTask[tTaskId[7]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[7]]["PreTaskId"] = tTaskId[5]
rwtTask[tTaskId[7]]["NextTaskId"] = tTaskId[8]
rwtTask[tTaskId[7]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId[7]]["TaskNpc"] = Npc_TeLuoDe
rwtTask[tTaskId[7]]["DialogId"] = tDialogs[6]
rwtTask[tTaskId[7]]["StartAutoWay"] = {}
rwtTask[tTaskId[7]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId[7]]["StartAutoWay"]["FindWayMapId"] = MapId
rwtTask[tTaskId[7]]["StartAutoWay"]["FindWayGroupId"] = NPCGroup_TeLuoDe
rwtTask[tTaskId[7]]["StartAutoWay"]["FindWayGenId"] = GenId_TeLuoDe

rwtTask[tTaskId[8]] = {}
rwtTask[tTaskId[8]]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21841]
rwtTask[tTaskId[8]]["PreTaskId"] = tTaskId[7]
rwtTask[tTaskId[8]]["NextTaskId"] = nil
rwtTask[tTaskId[8]]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTaskId[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTaskId[8]]["TaskNpc"] = Npc_TeLuoDe
rwtTask[tTaskId[8]]["DialogId"] = tDialogs[7]
rwtTask[tTaskId[8]]["StartAutoWay"] = {}
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayMapId"] = MapId
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayGroupId"] = NPCGroup_Trap
rwtTask[tTaskId[8]]["StartAutoWay"]["FindWayGenId"] = GenId_Trap
rwtTask[tTaskId[8]]["DynaNpcGroupGen"] = {}
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1]["GenId"] = GenId_Trap
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1]["MapId"] = MapId
rwtTask[tTaskId[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
