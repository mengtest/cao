--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--ZY


--endregion
local nCopyMapId = 3076

local nTrap = 30530


--首通掩码
local nTemp_PassCopyMap = 1142

--首通奖励
local nAwardId_PassCopyMap = 1000360

rwtNpcGroup[nTrap] = rwtNpcGroup[nTrap] or {}
rwtNpcGroup[nTrap]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap]["Awards"] = {}
rwtNpcGroup[nTrap]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6234

local nTarget = 60140

rwtTarget[nTarget] = rwtTarget[nTarget] or {}
rwtTarget[nTarget]["Title"] = ""
rwtTarget[nTarget]["ReqDialogId"] = 6234
rwtTarget[nTarget]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.CopyMap
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = "次数不足"
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
--副本首通掩码
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--副本首通检查和奖励
rwtCopyMapMission[nCopyMapId]["TargetAward1"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Data"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"] = {}          
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6233
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2066
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Pos"] = "-18.91,-4.20,-33.98"
