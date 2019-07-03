--region *.lua
--Date
--此文件由[BabeLua]插件自动生成


--hyt
--endregion


--副本ID 夜幕古堡-城堡前副本
local nCopyMapId = 3080

--击败感染的冒险者
local nTarget1 = 60148
--和NPC管家对话
local nTarget2 = 60149

--首通掩码
local nTemp_PassCopyMap = 1136

--首通奖励
local nAwardId_PassCopyMap = 1000354


--副本任务目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21432]
rwtTarget[nTarget1]["KillMonsterGroup"] = 200378
rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][21433]
rwtTarget[nTarget2]["ReqDialogId"] = {6236}
rwtTarget[nTarget2]["ReqCount"] = 1


--怪物组
local nMonster1_1 = 1000545
local nMonster1_2 = 1000546
local nMonster_group1 = 200377
local nMonster2 = 1000547
local nMonster_group2 = 200378

--npc
local nNpc = 3589
local nNpc_Group = 20529

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
--副本首通掩码
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6235
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {3080001,3080002,3080003,3080004}
--副本首通检查和奖励
rwtCopyMapMission[nCopyMapId]["TargetAward2"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["ChkUserTempData"][1]["Data"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["GetServerAward"] = {}          
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["TargetAward2"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX


rwtNpc[nNpc] = rwtNpc[nNpc] or {}
rwtNpc[nNpc]["DialogId"] = {6236}

rwtNpcGroup[nNpc_Group] = rwtNpcGroup[nNpc_Group]or {}
rwtNpcGroup[nNpc_Group]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_Group]["NpcId"] = nNpc