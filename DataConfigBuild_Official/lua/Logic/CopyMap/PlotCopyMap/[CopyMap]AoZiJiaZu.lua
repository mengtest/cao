--region *.lua
--Date
--奥兹家族
--NiZW   

--endregion
--===========================副本基础配置====================================--
local tSkyShiYanCreateGen = {
    3148001,3148002,3148003,3148004,3148005,    --怪物
    3148006,3148007,3148008,3148009,3148010           --NPC
    }

local nCopyMapMissId = 3148

rwtTarget[60127] = {}
rwtTarget[60127]["Title"] = tLuaText[LANGUAGE_CONFIG][21230]
rwtTarget[60127]["KillMonsterGroup"] = 200329
rwtTarget[60127]["ReqCount"] = 1

rwtTarget[60128] = {}
rwtTarget[60128]["Title"] = tLuaText[LANGUAGE_CONFIG][21231]
rwtTarget[60128]["ReqDialogId"] = 5481
rwtTarget[60128]["ReqCount"] = 1

rwtTarget[60129] = {}
rwtTarget[60129]["Title"] = tLuaText[LANGUAGE_CONFIG][21232]
rwtTarget[60129]["KillMonsterGroup"] = 200330
rwtTarget[60129]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 3
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60127}
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60128}
rwtCopyMapMission[nCopyMapMissId]["Target3"] = {60129}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5439
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tSkyShiYanCreateGen
rwtCopyMapMission[nCopyMapMissId]["MapInitFunc"]=function(nMissionId,nMapId)
    rwSpecialStatus_AddEffect(7,0,2020,"25.01,1.64,-24.4101")
end

