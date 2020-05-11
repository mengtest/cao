--region [CopyMap]AoZiJiaZu_Day3.lua
--Purpose:		奥兹家族第三天副本
--Creator: 		倪祖伟
--Created:		2019-10-31
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-02-13 $
--RCS-ID:		$Revision: 5 $
--endregion
--===========================副本基础配置====================================--
-- 3148001 ~3148005 五芒星采集NPC GenID
-- 3148006 房间2触发动画陷阱
-- 3148007 五芒星中心陷阱
-- 3148010 前往房间2的光墙；  3148022  光墙下的陷阱
-- 3148011~3148013  房间1 3采集
-- 3148015  房间2 采集； 3148014 房间2 隐藏采集；  3148018  房间2 怪物采集
-- 3148016  房间3 采集； 3148017 房间3 隐藏采集；  3148019  房间3 怪物采集

-- 3148020；3148021  怪一怪二

local BaoDiNum = 15
local tPos = {}
   tPos[1] = "22.49,1.643,-22.01"
   tPos[2] = "21.93,1.643,-26.18"
   tPos[3] = "26.62,1.643,-21.36"
   tPos[4] = "25.36,1.643,-27.95"
   tPos[5] = "28.42,1.643,-25.13"

local LinePos = {}
LinePos[3148001] = {}
LinePos[3148001]["Child"] = 3148004
LinePos[3148001]["Father"] = 3148005
LinePos[3148001]["Pos"] = "1.37,0,-2.89"
LinePos[3148001]["Rot"] = "0,-26.6,0"

LinePos[3148002] = {}
LinePos[3148002]["Child"] = 3148005
LinePos[3148002]["Father"] = 3148003
LinePos[3148002]["Pos"] = "3.18,0,0.57"
LinePos[3148002]["Rot"] = "0,81.5,0"

LinePos[3148003] = {}
LinePos[3148003]["Child"] = 3148002
LinePos[3148003]["Father"] = 3148004
LinePos[3148003]["Pos"] = "-2.45,0,-2.34"
LinePos[3148003]["Rot"] = "0,44.8,0"

LinePos[3148004] = {}
LinePos[3148004]["Child"] = 3148003
LinePos[3148004]["Father"] = 3148001
LinePos[3148004]["Pos"] = "0.56,0,3.31"
LinePos[3148004]["Rot"] = "0,10.21,0"

LinePos[3148005] = {}
LinePos[3148005]["Child"] = 3148001
LinePos[3148005]["Father"] = 3148002
LinePos[3148005]["Pos"] = "-3.06,0,1.61"
LinePos[3148005]["Rot"] = "0,-62.6,0"

local tSkyShiYanCreateGen = {
    -- 3148001,3148002,3148003,3148004,3148005,
    3148006,3148007,3148010,
    3148011,3148012,3148013,3148015,3148016,3148018,3148019,3148020,3148021,3148022
}
local tSevenColGenID = {
    3148011,3148012,3148013,3148014,3148015,3148016,3148017
}
local tGenIDAboutFZ = {
    3148001,3148002,3148003,3148004,3148005,        --五小心
    3148010,3148022                                 --障碍、障碍陷阱
}

local nCopyMapMissId = 3148
local nTempData = 1232
--data1~data5 记录各个小星星的灯亮暗；data6 记录次数 ;--data8 是否再试一次；
--data7 = 法阵状态：0：无法采集（房间1未采集完，或未到达光墙）；1：开始解谜阶段（触发爱琳娜对白）；2：第一次采集；3：正式开始；
local nCollectTime = 0
--掩码data6记录第二个任务的触发的对白

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

-- local tWuMangPosIndex = {}
-- tWuMangPosIndex[3148001] = 1
-- tWuMangPosIndex[3148002] = 2
-- tWuMangPosIndex[3148003] = 3
-- tWuMangPosIndex[3148004] = 4
-- tWuMangPosIndex[3148005] = 5

local tEffecInfo = {}
tEffecInfo["An"] = 2083--2021
tEffecInfo["Ming"] = 2079--2018
tEffecInfo["WuMangXing"] = 2077--2020
tEffecInfo["FaZhenO"] = 2078--2028
tEffecInfo["Line"] = 2080
--==================================
local tNpcGroup= {}
tNpcGroup.collet1 = 60473
tNpcGroup.collet2 = 60474
tNpcGroup.collet3 = 60475
tNpcGroup.collet4 = 60476
tNpcGroup.collet5 = 60477
tNpcGroup.collet6 = 60478
tNpcGroup.collet7 = 60479
tNpcGroup.monster1= 60480
tNpcGroup.monster2= 60481

-- tNpcGroup.Trap1 = 30683
tNpcGroup.Trap2 = 30680
-- tNpcGroup.Trap3 = 30682
tNpcGroup.TrapFZ = 30681
tNpcGroup.TrapDo = 30706


local tGenId = {}
tGenId.collet1 = 3148011
tGenId.collet2 = 3148012
tGenId.collet3 = 3148013
tGenId.collet4 = 3148014
tGenId.collet5 = 3148015
tGenId.collet6 = 3148016
tGenId.collet7 = 3148017
tGenId.Colmonster1= 3148018
tGenId.Colmonster2= 3148019
tGenId.monster1= 3148020
tGenId.monster2= 3148021
tGenId.valveDoor=3148010
tGenId.TrapDoor= 3148022
--=================================
local tDialog = {}
tDialog.EnterMap = 6918
tDialog.pos2 = 7027         --房间2对白

tDialog.FaZe = 7024         --触发法阵陷阱对白
tDialog.FaZeNoClU = 6919    --法阵对白-房间一采集未采集完
tDialog.FZone = 7025
tDialog.FZovr = 7026
tDialog.BaoDi = 7058
tDialog.FZTryAgain = 7039   --保底次数后再次尝试

tDialog.Door = 7023
tDialog.Collet1 = 6920
tDialog.Collet2 = 6921
tDialog.Collet3 = 6922
tDialog.Collet1_3 = 7022    --房间一全部采集完成对白
tDialog.Collet4 = 7029
tDialog.Collet5 = 7030
tDialog.Collet4_5 = 7038    --房间二全部采集完对白
tDialog.Collet6 = 7040
tDialog.Collet7 = 7041
tDialog.Collet6_7 = 7042    --房间三全部采集完对白
tDialog.battle = 7028       --怪物战前对白
tDialog.pass = 7043         --通关对白

--===================================
rwtTarget[60320] = {}
rwtTarget[60320]["Title"] = tLuaText[LANGUAGE_CONFIG][21890]
rwtTarget[60320]["ReqCollectId"] = {tNpcGroup.collet1,tNpcGroup.collet2,tNpcGroup.collet3,tNpcGroup.collet4,tNpcGroup.collet5,tNpcGroup.collet6,tNpcGroup.collet7}
-- rwtTarget[60320]["ReqDialogId"] = tDialog.EnterMap
rwtTarget[60320]["ReqCount"] = 7

rwtTarget[60321] = {}
rwtTarget[60321]["Title"] = tLuaText[LANGUAGE_CONFIG][21891]
rwtTarget[60321]["ReqDialogId"] = tDialog.pass
rwtTarget[60321]["ReqCount"] = 1

-- rwtTarget[60322] = {}
-- rwtTarget[60322]["Title"] = tLuaText[LANGUAGE_CONFIG][21892]
-- rwtTarget[60322]["ReqTrap"] = 30682
-- -- rwtTarget[60322]["ReqDialogId"] = tDialog.pos2
-- rwtTarget[60322]["ReqCount"] = 1

-- rwtTarget[60323] = {}
-- rwtTarget[60323]["Title"] = tLuaText[LANGUAGE_CONFIG][21893]
-- -- rwtTarget[60323]["ReqTrap"] = 30683
-- rwtTarget[60323]["ReqDialogId"] = 7028
-- rwtTarget[60323]["ReqCount"] = 1



rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60320}
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60321}
-- rwtCopyMapMission[nCopyMapMissId]["Target3"] = {60322}
-- rwtCopyMapMission[nCopyMapMissId]["Target4"] = {60323}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tSkyShiYanCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 3148001
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = tEffecInfo["An"]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Scale"] = 30
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 4
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 3148002
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = tEffecInfo["An"]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Scale"] = 30
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = 4
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 3148003
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = tEffecInfo["An"]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Scale"] = 30
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = 4
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 3148004
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = tEffecInfo["An"]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Scale"] = 30
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = 4
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = 3148005
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = tEffecInfo["An"]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Scale"] = 30

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Pos"] = tPos[1]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Pos"] = tPos[2]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Pos"] = tPos[3]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Pos"] = tPos[4]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = tEffecInfo["An"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Pos"] = tPos[5]
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Scale"] = 30
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["EffectId"] = tEffecInfo["WuMangXing"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Pos"] = "25.01,1.64,-24.4101"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Angle"] = "0,27,0"
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
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][6]["SetValue"] = -1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][7] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][7]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][7]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][7]["SetValue"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][8] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][8]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][8]["DataIndex"] = CONST_TEMP_DATA.Data8
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][8]["SetValue"] = 0


--五芒星采集函数
--相关光效转换
--采集次数+1（data6记录）
--判断是否完成
function rwCopyMapAoZiJiaZu_Collect(GenId)
    if not tWuMangXing[GenId] then
        return
    end
    rwCopyMapAoZiJiaZu_EffectChange(GenId,1)      --自身光效转换
    for _, v in ipairs(tWuMangXing[GenId]) do   --五芒星对面光效转换
        rwCopyMapAoZiJiaZu_EffectChange(v,2)
    end
    local index = rwTempDataGetValue(nTempData,CONST_TEMP_DATA.Data6,rwUserGetId())
    
    --检查是否通关，否则进行保底检测
    if not rwCopyMapAoZiJiaZu_ChkWuMangXing() then
        if index >= BaoDiNum-1 then
            rwOpenNpcChatDialog(tDialog.BaoDi)
            return
        end
    end
    rwUserTempDataSet(nTempData,index+1,CONST_TEMP_DATA.Data6,rwUserGetId())
end

function rwCopyMapAoZiJiaZu_EffectChange(GenId,isFirt)
    local dataIndex = tWuMangXingDataIndex[GenId]                   --获取对应的DataIndex
    if rwTempDataGetValue(nTempData,dataIndex,rwUserGetId()) == 1 then  --=1则为灰暗状态
        rwSpecialStatus_AddEffect(4,GenId, tEffecInfo["Ming"], "", 0,35)
        rwUserTempDataSet(nTempData,2,dataIndex,rwUserGetId())
        rwCopyMapAoZiJiaZu_CreateLine(GenId,isFirt)
    elseif rwTempDataGetValue(nTempData,dataIndex,rwUserGetId()) == 2 then  --=2则为明状态
        rwSpecialStatus_RemoveEffect(4,GenId, tEffecInfo["Ming"])               --光效转为暗，掩码记录为1
        rwUserTempDataSet(nTempData,1,dataIndex,rwUserGetId())
        rwCopyMapAoZiJiaZu_DeleteLine(GenId)
    end
end

function rwCopyMapAoZiJiaZu_CreateLine(GenId,isFirt)
    if not rwChkTable(LinePos[GenId]) then
        return
    end
    local dataIndex1 = tWuMangXingDataIndex[LinePos[GenId]["Child"]]
    if rwTempDataGetValue(nTempData,dataIndex1,rwUserGetId()) == isFirt then
        rwSpecialStatus_AddEffect(4,GenId,tEffecInfo["Line"],LinePos[GenId]["Pos"],LinePos[GenId]["Rot"])
    end
    
    local dataIndex2 = tWuMangXingDataIndex[LinePos[GenId]["Father"]]
    if rwTempDataGetValue(nTempData,dataIndex2,rwUserGetId()) == 2 then
        rwSpecialStatus_AddEffect(4,LinePos[GenId]["Father"],tEffecInfo["Line"],LinePos[LinePos[GenId]["Father"]]["Pos"],LinePos[LinePos[GenId]["Father"]]["Rot"])
    end
end

function rwCopyMapAoZiJiaZu_DeleteLine(GenId)
    if not rwChkTable(LinePos[GenId]) then
        return
    end
    rwSpecialStatus_RemoveEffect(4,GenId,tEffecInfo["Line"])
    local father = LinePos[GenId]["Father"]
    rwSpecialStatus_RemoveEffect(4,father,tEffecInfo["Line"])
end

function rwCopyMapAoZiJiaZu_PassFaZhen()
    rwSpecialStatus_AddEffect(7,0, tEffecInfo["FaZhenO"], "25.01,1.64,-24.4101","0,27,0")
    rwSpecialStatus_RemoveEffect(7,0,tEffecInfo["WuMangXing"])
    rwOpenNpcChatDialog(tDialog.FZovr)
    --rwBaseTarget:create(60320):EventOnTargetUpdate()
    --删除路障
    for i,v in ipairs(tGenIDAboutFZ) do
        rwDelGenEvent(v)
    end
    for i,v in ipairs(tPos) do
        rwSpecialStatus_AddEffect(7,0, tEffecInfo.Ming, v,0,30)
    end
end

function rwCopyMapAoZiJiaZu_ChkWuMangXing()
    if rwTempDataGetValue(nTempData,CONST_TEMP_DATA["Data6"],rwUserGetId()) == -1 then
        rwOpenNpcChatDialog(tDialog.FZone)
    end
    for i = 1,5 do
        if rwTempDataGetValue(nTempData,CONST_TEMP_DATA["Data"..i],rwUserGetId()) == 1 then
            return false
        end
    end
    --没有返回，则表示全是2，全亮
    rwCopyMapAoZiJiaZu_PassFaZhen()
    return true
end


rwtNpcGroup[tNpcGroup.Trap2] = rwtNpcGroup[tNpcGroup.Trap2] or {}
rwtNpcGroup[tNpcGroup.Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.Trap2]["DelTrap"] = 1
rwtNpcGroup[tNpcGroup.Trap2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.pos2
rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1]["PlaySceneAnimation"]={}
rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 17201
rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tNpcGroup.Trap2]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

-- rwtNpcGroup[tNpcGroup.Trap3] = rwtNpcGroup[tNpcGroup.Trap3] or {}
-- rwtNpcGroup[tNpcGroup.Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[tNpcGroup.Trap3]["DelTrap"] = 1
-- rwtNpcGroup[tNpcGroup.Trap3]["Awards"] = {}
-- rwtNpcGroup[tNpcGroup.Trap3]["Awards"]["Events"] = {}
-- rwtNpcGroup[tNpcGroup.Trap3]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tNpcGroup.Trap3]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[tNpcGroup.Trap3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.pos3


rwtNpcGroup[tNpcGroup.TrapDo] = rwtNpcGroup[tNpcGroup.TrapDo] or {}
rwtNpcGroup[tNpcGroup.TrapDo]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[tNpcGroup.TrapDo]["DelTrap"] = 1
rwtNpcGroup[tNpcGroup.TrapDo]["Awards"] = {}
rwtNpcGroup[tNpcGroup.TrapDo]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.TrapDo]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.TrapDo]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.TrapDo]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Door


rwtDialog[tDialog.Door] = rwtDialog[tDialog.Door] or {}
rwtDialog[tDialog.Door]["DialogEndInit"] = {}
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1]["DynCreate"] = {3148007}
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtDialog[tDialog.Door]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1

-- rwtDialog[tDialog.Door]["DialogEnd"] = function(nid)
--     rwSpecialStatus_AddEffect(4,3148001, tEffecInfo["An"], "", 0,30)
--     rwSpecialStatus_AddEffect(4,3148002, tEffecInfo["An"], "", 0,30)
--     rwSpecialStatus_AddEffect(4,3148003, tEffecInfo["An"], "", 0,30)
--     rwSpecialStatus_AddEffect(4,3148004, tEffecInfo["An"], "", 0,30)
--     rwSpecialStatus_AddEffect(4,3148005, tEffecInfo["An"], "", 0,30)
-- end


rwtNpcGroup[tNpcGroup.TrapFZ] = rwtNpcGroup[tNpcGroup.TrapFZ] or {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.TrapFZ]["DelTrap"] = 1
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempData
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data7
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.FaZeNoClU
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["ChkUserTempData"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["ChkUserTempData"][1] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data7
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["ChkUserTempData"][1]["Value"] = 1
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = tDialog.FaZe
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["SetUserTempData"] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["SetUserTempData"][1] = {}
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtNpcGroup[tNpcGroup.TrapFZ]["Awards"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 2


rwtDialog[tDialog.FaZe] = rwtDialog[tDialog.FaZe] or {}
rwtDialog[tDialog.FaZe]["DialogEndInit"] = {}
rwtDialog[tDialog.FaZe]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.FaZe]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.FaZe]["DialogEndInit"]["Events"][1]["DynCreate"] = {3148001,3148002,3148003,3148004,3148005}
rwtDialog[tDialog.FaZe]["DialogEndInit"]["Events"][1]["DynDelete"] = {3148007}

rwtDialog[tDialog.BaoDi] = rwtDialog[tDialog.BaoDi] or {}
rwtDialog[tDialog.BaoDi]["OptionFunc1"] = function()
	rwOpenNpcChatDialog(tDialog.FZTryAgain)
end
rwtDialog[tDialog.BaoDi]["OptionFunc2"] = function()
    rwCopyMapAoZiJiaZu_PassFaZhen()
end

rwtDialog[tDialog.FZTryAgain] = rwtDialog[tDialog.FZTryAgain] or {}
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"] = {}
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtDialog[tDialog.FZTryAgain]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0

--==五芒星=====================================================
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

--=============================================
rwtNpcGroup[tNpcGroup.collet1] = rwtNpcGroup[tNpcGroup.collet1] or {}
rwtNpcGroup[tNpcGroup.collet1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet1

rwtNpcGroup[tNpcGroup.collet2] = rwtNpcGroup[tNpcGroup.collet2] or {}
rwtNpcGroup[tNpcGroup.collet2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet2

rwtNpcGroup[tNpcGroup.collet3] = rwtNpcGroup[tNpcGroup.collet3] or {}
rwtNpcGroup[tNpcGroup.collet3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet3]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet3]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet3

rwtNpcGroup[tNpcGroup.collet4] = rwtNpcGroup[tNpcGroup.collet4] or {}
rwtNpcGroup[tNpcGroup.collet4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet4]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet4]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet4]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet4

rwtNpcGroup[tNpcGroup.collet5] = rwtNpcGroup[tNpcGroup.collet5] or {}
rwtNpcGroup[tNpcGroup.collet5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet5]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet5]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet5]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet5]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet5]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet5

rwtNpcGroup[tNpcGroup.collet6] = rwtNpcGroup[tNpcGroup.collet6] or {}
rwtNpcGroup[tNpcGroup.collet6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet6]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet6]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet6]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet6]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet6]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet6

rwtNpcGroup[tNpcGroup.collet7] = rwtNpcGroup[tNpcGroup.collet7] or {}
rwtNpcGroup[tNpcGroup.collet7]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.collet7]["Awards"] = {}
rwtNpcGroup[tNpcGroup.collet7]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.collet7]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.collet7]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.collet7]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet7




rwtNpcGroup[tNpcGroup.monster1] = rwtNpcGroup[tNpcGroup.monster1] or {}
rwtNpcGroup[tNpcGroup.monster1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.monster1]["NotDel"] = 1
rwtNpcGroup[tNpcGroup.monster1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"][1]["AutoBattle"] = {}
-- rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = 3148019
rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.battle
rwtNpcGroup[tNpcGroup.monster1]["Awards"]["Events"][1]["OpenDialog"]["nId"] = tGenId.monster1

rwtNpcGroup[tNpcGroup.monster2] = rwtNpcGroup[tNpcGroup.monster2] or {}
rwtNpcGroup[tNpcGroup.monster2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.monster2]["NotDel"] = 1
rwtNpcGroup[tNpcGroup.monster2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.monster2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.monster2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.monster2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.monster2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.battle
rwtNpcGroup[tNpcGroup.monster2]["Awards"]["Events"][1]["OpenDialog"]["nId"] = tGenId.monster2

rwtDialog[tDialog.battle] = rwtDialog[tDialog.battle] or {}
rwtDialog[tDialog.battle]["DialogEndInit"] = {}
rwtDialog[tDialog.battle]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.battle]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.battle]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.battle]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true


function rwCopyMapAoZiJiaZu_Monster1_die()
    rwDelGenEvent(tGenId.Colmonster1)
    rwAddGenEvent(3148014)
end
function rwCopyMapAoZiJiaZu_Monster2_die()
    rwDelGenEvent(tGenId.Colmonster2)
    rwAddGenEvent(3148017)
end

rwtMonsterGroup_Func[200823] = rwtMonsterGroup_Func[200823] or {}
table.insert(rwtMonsterGroup_Func[200823],rwCopyMapAoZiJiaZu_Monster1_die)
rwtMonsterGroup_Func[200824] = rwtMonsterGroup_Func[200824] or {}
table.insert(rwtMonsterGroup_Func[200824],rwCopyMapAoZiJiaZu_Monster2_die)

-- tValve[1122] = tValve[1122] or {}
-- tValve[1122]["Type"] = CONST_VALVE_TYPE.DOOR
-- tValve[1122]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
--     rwOpenNpcChatDialog(tDialog.door)
-- end

--==检查每个房间采集清，则播放另一对白=====================================

rwtDialog[tDialog.Collet1] = rwtDialog[tDialog.Collet1] or {}
rwtDialog[tDialog.Collet1]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet1]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet2,tGenId.collet3}
rwtDialog[tDialog.Collet1]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet1]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet1_3

rwtDialog[tDialog.Collet2] = rwtDialog[tDialog.Collet2] or {}
rwtDialog[tDialog.Collet2]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet2]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet1,tGenId.collet3}
rwtDialog[tDialog.Collet2]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet2]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet1_3

rwtDialog[tDialog.Collet3] = rwtDialog[tDialog.Collet3] or {}
rwtDialog[tDialog.Collet3]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet3]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet1,tGenId.collet2}
rwtDialog[tDialog.Collet3]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet3]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet1_3
-----------------------
rwtDialog[tDialog.Collet4] = rwtDialog[tDialog.Collet4] or {}
rwtDialog[tDialog.Collet4]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet4]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet4]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet5,3148020}
rwtDialog[tDialog.Collet4]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet4]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet4_5

rwtDialog[tDialog.Collet5] = rwtDialog[tDialog.Collet5] or {}
rwtDialog[tDialog.Collet5]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet5]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet5]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet5]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet4,3148020}
rwtDialog[tDialog.Collet5]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet5]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet4_5
---------------------
rwtDialog[tDialog.Collet6] = rwtDialog[tDialog.Collet6] or {}
rwtDialog[tDialog.Collet6]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet6]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet6]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet6]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet7,3148021}
rwtDialog[tDialog.Collet6]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet6]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet6_7

rwtDialog[tDialog.Collet7] = rwtDialog[tDialog.Collet7] or {}
rwtDialog[tDialog.Collet7]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet7]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet7]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet7]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = {tGenId.collet6,3148021}
rwtDialog[tDialog.Collet7]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet7]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Collet6_7

--==判断第7句==========================
rwtDialog[tDialog.Collet1_3] = rwtDialog[tDialog.Collet1_3] or {}
-- rwtDialog[tDialog.Collet1_3]["DialogEnd"] = function ()
--     rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data7,rwUserGetId())
-- end
rwtDialog[tDialog.Collet1_3]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = tSevenColGenID
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.pass
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["ChkUserTempData"] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data7
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["DynCreate"] = {3148007}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempData
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtDialog[tDialog.Collet1_3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1

rwtDialog[tDialog.Collet4_5] = rwtDialog[tDialog.Collet4_5] or {}
rwtDialog[tDialog.Collet4_5]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet4_5]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet4_5]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet4_5]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = tSevenColGenID
rwtDialog[tDialog.Collet4_5]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet4_5]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.pass

rwtDialog[tDialog.Collet6_7] = rwtDialog[tDialog.Collet6_7] or {}
rwtDialog[tDialog.Collet6_7]["DialogEndInit"] = {}
rwtDialog[tDialog.Collet6_7]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Collet6_7]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Collet6_7]["DialogEndInit"]["Events"][1]["ChkGenEventNoExist"] = tSevenColGenID
rwtDialog[tDialog.Collet6_7]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[tDialog.Collet6_7]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.pass
