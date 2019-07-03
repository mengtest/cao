--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--副本
local nCopyMapId = 3082

--首通掩码
local nTemp_PassCopyMap = 1143

--首通奖励
local nAwardId_PassCopyMap = 1000361

--副本目标
local nTarget_1 = 60152     -- 寻找机关


--采集物
local nCollect_1 = 60313   --日记本1
local nGenId_Collect_1 = 3082006

rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6238 


rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21424]
rwtTarget[nTarget_1]["ReqCollectId"] = nCollect_1
rwtTarget[nTarget_1]["ReqCount"] = 1


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
--副本首通掩码
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6237