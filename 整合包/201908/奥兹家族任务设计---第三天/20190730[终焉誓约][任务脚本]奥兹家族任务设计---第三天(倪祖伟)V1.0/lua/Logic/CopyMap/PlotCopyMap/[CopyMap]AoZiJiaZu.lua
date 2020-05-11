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
local nTempData = 1232
local nCollectTime = 1
--掩码data6记录第二个任务的触发的对白
local nUserId = rwUserGetId()

local tWuMangXing = {}          --五芒星
tWuMangXing[3148001] = {                  --3148001
    3148004,3148005
}
tWuMangXing[3148002] = {          --3148002             3148003
    3148003,3148005
}
tWuMangXing[3148003] = {              --3148004     3148005
    3148002,3148004
}
tWuMangXing[3148004] = {
    3148001,3148003
}
tWuMangXing[3148005] = {
    3148001,3148002
}

local tWuMangXingDataIndex = {}
tWuMangXingDataIndex[3148001] = CONST_TEMP_DATA.Data1
tWuMangXingDataIndex[3148002] = CONST_TEMP_DATA.Data2
tWuMangXingDataIndex[3148003] = CONST_TEMP_DATA.Data3
tWuMangXingDataIndex[3148004] = CONST_TEMP_DATA.Data4
tWuMangXingDataIndex[3148005] = CONST_TEMP_DATA.Data5


local tEffecInfo = {}
tEffecInfo["An"] = 2021
tEffecInfo["Ming"] = 2018
tEffecInfo["WuMangXing"] = 2020
--===================================
rwtTarget[60320] = {}
rwtTarget[60320]["Title"] = tLuaText[LANGUAGE_CONFIG][21230]
rwtTarget[60320]["ReqDialogId"] = 6918
rwtTarget[60320]["ReqCount"] = 1

rwtTarget[60321] = {}
rwtTarget[60321]["Title"] = tLuaText[LANGUAGE_CONFIG][21231]
-- rwtTarget[60321]["ReqTrap"] = 5481
-- rwtTarget[60321]["ReqCount"] = 1

rwtTarget[60322] = {}
-- rwtTarget[60322]["Title"] = tLuaText[LANGUAGE_CONFIG][]
rwtTarget[60322]["ReqDialogId"] = 6920
rwtTarget[60322]["ReqCount"] = 1

rwtTarget[60323] = {}
-- rwtTarget[60323]["Title"] = tLuaText[LANGUAGE_CONFIG][]
rwtTarget[60323]["ReqDialogId"] = 6921
rwtTarget[60323]["ReqCount"] = 1



rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 4
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60320}
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60321}
rwtCopyMapMission[nCopyMapMissId]["Target3"] = {60322}
rwtCopyMapMission[nCopyMapMissId]["Target4"] = {60323}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6922
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tSkyShiYanCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 3148001
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 3148002
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = 4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 3148003
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = 4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 3148004
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = 4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = 3148005
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["EffectId"] = tEffecInfo["WuMangXing"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Pos"] = "25.01,1.64,-24.4101"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["SetValue"] = 1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["SetValue"] = 1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][5]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][5]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][5]["SetValue"] = 1
--用于第二个任务中触发陷阱出对白的，陷阱不删除，但是对白只触发一次
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6]["SetValue"] = 0


function rwCopyMapAoZiJiaZu_Collect(GenId)
    if not tWuMangXing[GenId] then
        return
    end
    rwCopyMapAoZiJiaZu_EffectChange(GenId)      --自身光效转换
    for _, v in ipairs(tWuMangXing[GenId]) do   --五芒星对面光效转换
        rwCopyMapAoZiJiaZu_EffectChange(v)
    end
    rwCopyMapAoZiJiaZu_ChkWuMangXing()
end

function rwCopyMapAoZiJiaZu_EffectChange(GenId)
    local dataIndex = tWuMangXingDataIndex[GenId]                   --获取对应的DataIndex
    if rwTempDataGetValue(nTempData,dataIndex,nUserId) == 1 then  --=1则为灰暗状态
        rwSpecialStatus_RemoveEffect(4,GenId, tEffecInfo["An"])             --光效转为明，掩码记录为2
        rwSpecialStatus_AddEffect(4,GenId, tEffecInfo["Ming"], "", 0,30)
        rwUserTempDataSet(nTempData,2,dataIndex,nUserId)
    elseif rwTempDataGetValue(nTempData,dataIndex,nUserId) == 2 then  --=2则为明状态
        rwSpecialStatus_RemoveEffect(4,GenId, tEffecInfo["Ming"])               --光效转为暗，掩码记录为1
        rwSpecialStatus_AddEffect(4,GenId, tEffecInfo["An"], "", 0,30)
        rwUserTempDataSet(nTempData,1,dataIndex,nUserId)
    end
end

function rwCopyMapAoZiJiaZu_ChkWuMangXing()
    for i = 1,5 do
        if rwTempDataGetValue(nTempData,CONST_TEMP_DATA["Data"..i],nUserId) == 1 then
            return
        end
    end
    --没有返回，则表示全是2，全亮
    rwBaseTarget:create(60321):EventOnTargetUpdate()
    --删除路障
    rwDelGenEvent(3148010)
end

rwtNpcGroup[30680] = rwtNpcGroup[30680] or {}
rwtNpcGroup[30680]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30680]["Awards"] = {}
rwtNpcGroup[30680]["Awards"]["Events"] = {}
rwtNpcGroup[30680]["Awards"]["Events"][1] = {}
rwtNpcGroup[30680]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[30680]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6918

rwtNpcGroup[30681] = rwtNpcGroup[30681] or {}
rwtNpcGroup[30681]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30681]["Awards"] = {}
rwtNpcGroup[30681]["Awards"]["Events"] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = 1232
rwtNpcGroup[30681]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[30681]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[30681]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6919
rwtNpcGroup[30681]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[30681]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1232
rwtNpcGroup[30681]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[30681]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1

rwtNpcGroup[30682] = rwtNpcGroup[30682] or {}
rwtNpcGroup[30682]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30682]["Awards"] = {}
rwtNpcGroup[30682]["Awards"]["Events"] = {}
rwtNpcGroup[30682]["Awards"]["Events"][1] = {}
rwtNpcGroup[30682]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[30682]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6920

rwtNpcGroup[30683] = rwtNpcGroup[30683] or {}
rwtNpcGroup[30683]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30683]["Awards"] = {}
rwtNpcGroup[30683]["Awards"]["Events"] = {}
rwtNpcGroup[30683]["Awards"]["Events"][1] = {}
rwtNpcGroup[30683]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[30683]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6921

--================================
--对白后删除陷阱
rwtDialog[6918] = rwtDialog[6918] or {}
rwtDialog[6918]["DialogEndInit"] = {}
rwtDialog[6918]["DialogEndInit"]["Events"] = {}
rwtDialog[6918]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6918]["DialogEndInit"]["Events"][1]["DynDelete"] = {3148006}

-- rwtDialog[6919] = rwtDialog[6919] or {}
-- rwtDialog[6919]["DialogEndInit"] = {}
-- rwtDialog[6919]["DialogEndInit"]["Events"] = {}
-- rwtDialog[6919]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[6919]["DialogEndInit"]["Events"][1]["DynDelete"] = {3148007}

rwtDialog[6920] = rwtDialog[6920] or {}
rwtDialog[6920]["DialogEndInit"] = {}
rwtDialog[6920]["DialogEndInit"]["Events"] = {}
rwtDialog[6920]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6920]["DialogEndInit"]["Events"][1]["DynDelete"] = {3148008}

rwtDialog[6921] = rwtDialog[6921] or {}
rwtDialog[6921]["DialogEndInit"] = {}
rwtDialog[6921]["DialogEndInit"]["Events"] = {}
rwtDialog[6921]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6921]["DialogEndInit"]["Events"][1]["DynDelete"] = {3148009}


rwtNpcGroup[60459] = rwtNpcGroup[60459] or {}
rwtNpcGroup[60459]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60459]["CollectTime"] = nCollectTime
rwtNpcGroup[60459]["NotDel"] = 1
rwtNpcGroup[60459]["Func"] = function(nGenEventId)
    rwCopyMapAoZiJiaZu_Collect(nGenEventId)
end

rwtNpcGroup[60460] = rwtNpcGroup[60460] or {}
rwtNpcGroup[60460]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60460]["CollectTime"] = nCollectTime
rwtNpcGroup[60460]["NotDel"] = 1
rwtNpcGroup[60460]["Func"] = function(nGenEventId)
    rwCopyMapAoZiJiaZu_Collect(nGenEventId)
end

rwtNpcGroup[60461] = rwtNpcGroup[60461] or {}
rwtNpcGroup[60461]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60461]["CollectTime"] = nCollectTime
rwtNpcGroup[60461]["NotDel"] = 1
rwtNpcGroup[60461]["Func"] = function(nGenEventId)
    rwCopyMapAoZiJiaZu_Collect(nGenEventId)
end

rwtNpcGroup[60462] = rwtNpcGroup[60462] or {}
rwtNpcGroup[60462]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60462]["CollectTime"] = nCollectTime
rwtNpcGroup[60462]["NotDel"] = 1
rwtNpcGroup[60462]["Func"] = function(nGenEventId)
    rwCopyMapAoZiJiaZu_Collect(nGenEventId)
end

rwtNpcGroup[60463] = rwtNpcGroup[60463] or {}
rwtNpcGroup[60463]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60463]["CollectTime"] = nCollectTime
rwtNpcGroup[60463]["NotDel"] = 1
rwtNpcGroup[60463]["Func"] = function(nGenEventId)
    rwCopyMapAoZiJiaZu_Collect(nGenEventId)
end




