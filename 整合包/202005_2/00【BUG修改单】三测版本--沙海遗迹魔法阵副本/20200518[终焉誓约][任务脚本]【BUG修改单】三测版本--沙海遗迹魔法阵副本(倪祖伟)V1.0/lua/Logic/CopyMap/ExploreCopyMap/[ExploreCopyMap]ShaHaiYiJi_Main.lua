--region [ExploreCopyMap]ShaHaiYiJi_Main.lua
--Purpose:		沙海遗迹副本（主）
--Creator: 		李宏伟
--Created:		2020-03-24
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-05-19 $
--RCS-ID:		$Revision: 2    $
--endregion


local nSHYJ_CopyMapId = 3161
local nSHYJ_CopyMap_2Floor = 3162
local nSHYJ_UserData = 1297
--CONST_TEMP_DATA.Data1 陷阱第一次触发对白
--CONST_TEMP_DATA.Data2 总杀蝎子计数（从Data3初始化）
--CONST_TEMP_DATA.Data3 总杀蝎子计数（副本完成更新）
--CONST_TEMP_DATA.Data4 总采集计数

local nSHYJ_TaskId_1P = 60355
local nSHYJ_TaskId_2P = 60407

local tSHYJ_LoadGenId_Award = {}
local tSHYJ_LoadGenId_Other = {}
local tSHYJ_LoadGenId_Empty = {}


local tSHYJ_DialogId = {}
tSHYJ_DialogId.EnterCopyMap = 7131
--7132

tSHYJ_DialogId.EndCopyMap = 61138
tSHYJ_DialogId.BattleXieZi = 7134
tSHYJ_DialogId.BattleXieGuai = 7135
--7136
tSHYJ_DialogId.BattleTaiTan = 7137
--7160
tSHYJ_DialogId.ChangeScene = 7161

tSHYJ_DialogId.EndChangeScene = 7133

--7208
tSHYJ_DialogId.WinTaiTan = 7209
--7210

local tSHYJ_NpcGroupId = {}
tSHYJ_NpcGroupId.nTrap_ChangeScene = 30749
tSHYJ_NpcGroupId.nTrap_Leave = 30750

tSHYJ_NpcGroupId.nBox_Normal = 40371
tSHYJ_NpcGroupId.nBox_XiYou = 40372
tSHYJ_NpcGroupId.nBox_GaoJi = 40373
tSHYJ_NpcGroupId.nBox_EndCopyMap = 40374

--假宝箱
tSHYJ_NpcGroupId.nBox_Empty = 40375

tSHYJ_NpcGroupId.nCol_ChongLuan = 60505

--假采集
tSHYJ_NpcGroupId.nCol_Empty = 60506

--泰坦采集
tSHYJ_NpcGroupId.nCol_TaiTan = 60513


local tSHYJ_MonGroupId = {}

--(1001699 1001700)
tSHYJ_MonGroupId.nMon_XieZi = 200858
tSHYJ_MonGroupId.nMon_XieGuai = 200859
--(1001755 - 1001757)
--200910
tSHYJ_MonGroupId.nMon_TaiTan = 200911
--200912

local tSHYJ_GenId = {}
--第一层
tSHYJ_GenId.nBox_EndCopyMap = 3161001
table.insert(tSHYJ_LoadGenId_Other,tSHYJ_GenId.nBox_EndCopyMap)

tSHYJ_GenId.nMon_XieZi = 3161002
tSHYJ_GenId.nMon_XieGuai = 3161003
--3161004
tSHYJ_GenId.nMon_TaiTan = 3161005
--3161006

--普通宝箱X5
table.insert(tSHYJ_LoadGenId_Award,3161007)
table.insert(tSHYJ_LoadGenId_Award,3161008)
table.insert(tSHYJ_LoadGenId_Award,3161009)
table.insert(tSHYJ_LoadGenId_Award,3161010)
table.insert(tSHYJ_LoadGenId_Award,3161011)

table.insert(tSHYJ_LoadGenId_Empty,3161046)

--稀有宝箱X1
table.insert(tSHYJ_LoadGenId_Other,3161012)

--采集X15
table.insert(tSHYJ_LoadGenId_Award,3161013)
table.insert(tSHYJ_LoadGenId_Award,3161014)
table.insert(tSHYJ_LoadGenId_Award,3161015)
table.insert(tSHYJ_LoadGenId_Award,3161016)
table.insert(tSHYJ_LoadGenId_Award,3161017)
table.insert(tSHYJ_LoadGenId_Award,3161018)
table.insert(tSHYJ_LoadGenId_Award,3161019)
table.insert(tSHYJ_LoadGenId_Award,3161020)
table.insert(tSHYJ_LoadGenId_Award,3161021)
table.insert(tSHYJ_LoadGenId_Award,3161022)
table.insert(tSHYJ_LoadGenId_Award,3161023)
table.insert(tSHYJ_LoadGenId_Award,3161024)
table.insert(tSHYJ_LoadGenId_Award,3161025)
table.insert(tSHYJ_LoadGenId_Award,3161026)
table.insert(tSHYJ_LoadGenId_Award,3161027)


table.insert(tSHYJ_LoadGenId_Empty,3161047)
table.insert(tSHYJ_LoadGenId_Empty,3161048)

--(3161028 - 3161036  3161051)

--流沙陷阱X7

--特殊流沙陷阱X3


--第二层

tSHYJ_GenId.nMon_XieZi_Floor2 = 3162001
tSHYJ_GenId.nMon_XieGuai_Floor2 = 3162002
--3162003
tSHYJ_GenId.nMon_TaiTan_Floor2 = 3162004
--3162005

--普通宝箱X5
table.insert(tSHYJ_LoadGenId_Award,3162006)
table.insert(tSHYJ_LoadGenId_Award,3162007)
table.insert(tSHYJ_LoadGenId_Award,3162008)
table.insert(tSHYJ_LoadGenId_Award,3162009)
table.insert(tSHYJ_LoadGenId_Award,3162010)

table.insert(tSHYJ_LoadGenId_Empty,3162043)

--高级宝箱X1
table.insert(tSHYJ_LoadGenId_Other,3162011)

--采集X15
table.insert(tSHYJ_LoadGenId_Award,3162012)
table.insert(tSHYJ_LoadGenId_Award,3162013)
table.insert(tSHYJ_LoadGenId_Award,3162014)
table.insert(tSHYJ_LoadGenId_Award,3162015)
table.insert(tSHYJ_LoadGenId_Award,3162016)
table.insert(tSHYJ_LoadGenId_Award,3162017)
table.insert(tSHYJ_LoadGenId_Award,3162018)
table.insert(tSHYJ_LoadGenId_Award,3162019)
table.insert(tSHYJ_LoadGenId_Award,3162020)
table.insert(tSHYJ_LoadGenId_Award,3162021)
table.insert(tSHYJ_LoadGenId_Award,3162022)
table.insert(tSHYJ_LoadGenId_Award,3162023)
table.insert(tSHYJ_LoadGenId_Award,3162024)
table.insert(tSHYJ_LoadGenId_Award,3162025)
table.insert(tSHYJ_LoadGenId_Award,3162026)

table.insert(tSHYJ_LoadGenId_Empty,3162044)
table.insert(tSHYJ_LoadGenId_Empty,3162045)

--(3162027 - 3162034)

--流沙陷阱X6

--特殊流沙陷阱X2

--坐标

--1 49.78,0.08,21.87
--2 9.85,0.08,62.50
--3 47.91,0.09,65.36
--4 36.28,0.11,41.35
--8 64.66,0.15,55.10

--5 -22.01,0.10,22.30
--6 -3.88,0.10,4.08
--7 -53.56,0.10,48.80
 

local tSHYJ_TrapTeleport_Pos = {}
tSHYJ_TrapTeleport_Pos[3161028] = {"36.28,0.11,41.35",0} --4
tSHYJ_TrapTeleport_Pos[3161029] = {"47.91,0.09,65.36",0} --3
tSHYJ_TrapTeleport_Pos[3161030] = {"9.85,0.08,62.50",0} --2
tSHYJ_TrapTeleport_Pos[3161031] = {"47.91,0.09,65.36",0} --3
tSHYJ_TrapTeleport_Pos[3161032] = {"36.28,0.11,41.35",0} --4
tSHYJ_TrapTeleport_Pos[3161033] = {"9.85,0.08,62.50",0} --2

tSHYJ_TrapTeleport_Pos[3161034] = {"49.78,0.08,21.87",0} --1
tSHYJ_TrapTeleport_Pos[3161035] = {"49.78,0.08,21.87",0} --1
tSHYJ_TrapTeleport_Pos[3161036] = {"49.78,0.08,21.87",0} --1

tSHYJ_TrapTeleport_Pos[3162027] = {"-22.01,0.10,22.30",0} --5
tSHYJ_TrapTeleport_Pos[3162029] = {"-53.56,0.10,48.80",0} --7
tSHYJ_TrapTeleport_Pos[3162030] = {"-3.88,0.10,4.08",0} --6
tSHYJ_TrapTeleport_Pos[3162031] = {"-22.01,0.10,22.30",0} --5
tSHYJ_TrapTeleport_Pos[3162032] = {"-3.88,0.10,4.08",0} --6

tSHYJ_TrapTeleport_Pos[3162033] = {"-3.88,0.10,4.08",0} --6
tSHYJ_TrapTeleport_Pos[3162034] = {"-3.88,0.10,4.08",0} --6


local tSHYJ_TrapChangeScene_Pos = {}
tSHYJ_TrapChangeScene_Pos[3161051] = {3162,"-22.01,0.10,22.30"} --5
tSHYJ_TrapChangeScene_Pos[3162028] = {3161,"64.66,0.15,55.10"} --8

local nSHYJ_AwardId_NormalBox = 1001055
local nSHYJ_AwardId_XiYouBox = 1001056
local nSHYJ_AwardId_GaoJiBox = 1001057
local nSHYJ_AwardId_MaxBox = 1001058
local nSHYJ_AwardId_ColChongLuan = 1001059

local nSHYJ_AwardId_XieGuai = 1001060
local nSHYJ_AwardId_TaiTan = 1001061

local nSHYJ_TaiTan_Col_Pos = {}
nSHYJ_TaiTan_Col_Pos[1] = {3161052,"45.078,0.08,63.93",280}
nSHYJ_TaiTan_Col_Pos[2] = {3162047,"-41.31,0.10,44.97",90}
nSHYJ_TaiTan_Col_Pos[3] = {3162047,"-38.48,0.10,29.78",300}


--任务
local nSHYJ_Task1_Count = 25

rwtTarget[nSHYJ_TaskId_1P] = {}
rwtTarget[nSHYJ_TaskId_1P]["Title"] = tLuaText[LANGUAGE_CONFIG][22002]
rwtTarget[nSHYJ_TaskId_1P]["ReqTreasureBox"] = {40371,40372,40373,40374,40375}
rwtTarget[nSHYJ_TaskId_1P]["ReqCollectId"] = {60505,60506,60513}
rwtTarget[nSHYJ_TaskId_1P]["ReqCount"] = nSHYJ_Task1_Count

rwtTarget[nSHYJ_TaskId_2P] = {}
rwtTarget[nSHYJ_TaskId_2P]["Title"] = tLuaText[LANGUAGE_CONFIG][22002]
rwtTarget[nSHYJ_TaskId_2P]["ReqDialogId"] = tSHYJ_DialogId.EndCopyMap
rwtTarget[nSHYJ_TaskId_2P]["ReqCount"] = 1

--副本信息
rwtCopyMapMission[nSHYJ_CopyMapId] = rwtCopyMapMission[nSHYJ_CopyMapId] or {}
rwtCopyMapMission[nSHYJ_CopyMapId]["TargetStepNum"] = 2
rwtCopyMapMission[nSHYJ_CopyMapId]["Target1"] = {nSHYJ_TaskId_1P}
rwtCopyMapMission[nSHYJ_CopyMapId]["Target2"] = {nSHYJ_TaskId_2P}
rwtCopyMapMission[nSHYJ_CopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tSHYJ_LoadGenId_Other
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tSHYJ_DialogId.EnterCopyMap
rwtCopyMapMission[nSHYJ_CopyMapId]["MapInitFunc"] = function()
    --掩码初始化
    if not rwTempDataIsExist(nSHYJ_UserData) then
        rwTempDataAdd(nSHYJ_UserData)
    else
        rwTempDataSet(nSHYJ_UserData,0,CONST_TEMP_DATA.Data1)
        local nCount = rwTempDataGetValue(nSHYJ_UserData,CONST_TEMP_DATA.Data3)
        rwTempDataSet(nSHYJ_UserData,nCount,CONST_TEMP_DATA.Data2)
        rwTempDataSet(nSHYJ_UserData,0,CONST_TEMP_DATA.Data4)
    end

    --怪物初始化
    local nDynMapId = rwUserGetDynMapId()
    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId] = {}
    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["tMonGenId"] = {}
    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["ColCount"] = 15

    local nRate = math.random(1,10)
    local nVal = 1
    local nMon1_Max = 0

    if nRate <= 5 then
        nMon1_Max = 2
    else
        nMon1_Max = 3
    end

    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["MonCount"] = nMon1_Max

    local tEvent = SysCopyTable(tSHYJ_LoadGenId_Award)

    while(nVal <= nMon1_Max)
    do
        local number
        local nGenId
        repeat
            number = math.random(1,#tEvent)
            nGenId = tEvent[number]
            table.remove(tEvent,number)
        until(rwHasGenEvent(nGenId))

        rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["tMonGenId"][nGenId] = 0
        --rwPrintErrorLog("沙海遗迹 怪物0 -"..nGenId)
        
        nVal = nVal + 1
    end

    local number
    local nGenId
    repeat
        number = math.random(1,#tEvent)
        nGenId = tEvent[number]
        table.remove(tEvent,number)
    until(rwHasGenEvent(nGenId))

    if rwChkTable(nSHYJ_TaiTan_Col_Pos) then
        rwDelGenEvent(nGenId)
        local nMon_num = math.random(1,#nSHYJ_TaiTan_Col_Pos)
        rwAddGenEvent(nSHYJ_TaiTan_Col_Pos[nMon_num][1],nSHYJ_TaiTan_Col_Pos[nMon_num][2],0,nSHYJ_TaiTan_Col_Pos[nMon_num][3])
    end

end
rwtCopyMapMission[nSHYJ_CopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["PassSetTemp"]["TempDataId"] = nSHYJ_UserData
rwtCopyMapMission[nSHYJ_CopyMapId]["PassSetTemp"]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[nSHYJ_CopyMapId]["PassSetTemp"]["SetValueFunc"] = function()
    return rwTempDataGetValue(nSHYJ_UserData,CONST_TEMP_DATA.Data2)
end

--副本初始化 随机事件
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
--第一层 宝箱
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
--Pos
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "38,0.08,57.04"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "75.52,0.09,51.81"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "48.93,0.08,26.54"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "47.03,0.17,43.49"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["Pos"] = "63.11,0.08,74.37"
--RotationY
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 120
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 330
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 60
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 210
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["RotationY"] = 180
--GenId
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3161007
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3161008
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3161009
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3161010
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["GenId"] = 3161011

rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3161046
--第二层 宝箱
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5] = {}
--Pos
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["Pos"] = "-9.53,0.10,19.29"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["Pos"] = "-25.22,0.10,30.57"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["Pos"] = "-17.71,0.10,8.26"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["Pos"] = "-27.72,0.10,16.85"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["Pos"] = "-29.905,0.10,37.238"
--RotationY
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 140
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 260
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 100
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["RotationY"] = 160
--GenId
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["GenId"] = 3162006
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["GenId"] = 3162007
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["GenId"] = 3162008
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["GenId"] = 3162009
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["GenId"] = 3162010

rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3162043
--第一层 采集
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomNum"] = 6
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][9] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][10] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][11] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][12] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][13] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][14] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][15] = {}
--Pos
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["Pos"] = "55.037,0.33,28.287"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["Pos"] = "50.32,0.16,34.26"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["Pos"] = "50.38,0.3,37.25"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["Pos"] = "41.45,0.16,33.46"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5]["Pos"] = "37.27,0.26,35.28"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6]["Pos"] = "35.39,0.16,37.74"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7]["Pos"] = "9.34,0.21,55.43"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8]["Pos"] = "12.87,0.36,65.77"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][9]["Pos"] = "47.08,0.21,69.51"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][10]["Pos"] = "55.89,0.24,73.19"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][11]["Pos"] = "61.5,0.16,59.16"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][12]["Pos"] = "67.15,0.16,51.48"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][13]["Pos"] = "77.56,0.16,54.88"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][14]["Pos"] = "76.93,0.14,60.26"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][15]["Pos"] = "74.32,0.17,67.06"
--RotationY
--GenId
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["GenId"] = 3161013
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["GenId"] = 3161014
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["GenId"] = 3161015
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["GenId"] = 3161016
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5]["GenId"] = 3161017
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6]["GenId"] = 3161018
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7]["GenId"] = 3161019
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8]["GenId"] = 3161020
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][9]["GenId"] = 3161021
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][10]["GenId"] = 3161022
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][11]["GenId"] = 3161023
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][12]["GenId"] = 3161024
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][13]["GenId"] = 3161025
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][14]["GenId"] = 3161026
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][15]["GenId"] = 3161027

rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RemainRandomNum"] = 2
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = 3161047
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][2]["GenId"] = 3161048
--第二层 采集
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["RandomNum"] = 6
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][5] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][6] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][7] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][8] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][9] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][10] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][11] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][12] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][13] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][14] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][15] = {}
--Pos
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][1]["Pos"] = "-13.19,0.10,3.01"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][2]["Pos"] = "-5.07,0.10,10.81"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][3]["Pos"] = "-16.65,0.10,5.13"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][4]["Pos"] = "-5.02,0.10,19.36"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][5]["Pos"] = "-23.13,0.10,19.25"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][6]["Pos"] = "-37.89,0.10,21.78"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][7]["Pos"] = "-33.79,0.10,20.9"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][8]["Pos"] = "-28.64,0.10,27.77"
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][9]["Pos"] = "-23.57,0.10,28.14"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][10]["Pos"] = "-24.43,0.10,35.54"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][11]["Pos"] = "-47.47,0.10,40.48"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][12]["Pos"] = "-41.68,0.10,50.8"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][13]["Pos"] = "-45.67,0.10,60.46"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][14]["Pos"] = "-52.19,0.10,59.51"
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][15]["Pos"] = "-56.8,0.10,51.72"
--RotationY
--GenId
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][1]["GenId"] = 3162012
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][2]["GenId"] = 3162013
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][3]["GenId"] = 3162014
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][4]["GenId"] = 3162015
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][5]["GenId"] = 3162016
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][6]["GenId"] = 3162017
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][7]["GenId"] = 3162018
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][8]["GenId"] = 3162019
 rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][9]["GenId"] = 3162020
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][10]["GenId"] = 3162021
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][11]["GenId"] = 3162022
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][12]["GenId"] = 3162023
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][13]["GenId"] = 3162024
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][14]["GenId"] = 3162025
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][15]["GenId"] = 3162026

rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["RemainRandomNum"] = 2
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][1] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][1]["GenId"] = 3162044
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][2] = {}
rwtCopyMapMission[nSHYJ_CopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][2]["GenId"] = 3162045

--刷怪逻辑
function CopyMap_ShaHaiYiJiMain_Build(nGenId)
    local nDynMapId = rwUserGetDynMapId()
    local nId
    local nMonCount = rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["MonCount"]
    local nColCount = rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["ColCount"]
    --确保最后一个不是杀怪
    if nMonCount ~= 0 and nColCount - 1 == nMonCount then
        for i,v in pairs(rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["tMonGenId"]) do
            if v ~= nil then
                nId = v
                rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["tMonGenId"][i] = nil
                break
            end
        end
    else
        nId = rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["tMonGenId"][nGenId]
    end

    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["ColCount"] = nColCount-1
    if not nId then
        return true
    end
    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["MonCount"] = nMonCount-1
    rwtCopyMapDynInitInfo[nSHYJ_CopyMapId][nDynMapId]["tMonGenId"][nGenId] = nil

    if nId == 0 then
        local nCount = rwTempDataGetValue(nSHYJ_UserData,CONST_TEMP_DATA.Data2)
        if nCount + 1 == 20 then
            rwOpenNpcChatDialog(tSHYJ_DialogId.BattleXieGuai)
        else
            rwOpenNpcChatDialog(tSHYJ_DialogId.BattleXieZi)
        end
    end

    return false
end

--对白后战斗逻辑
function CopyMap_ShaHaiYiJiMain_AfterDialogBattle(nFloor1GenId,nFloor2GenId)
    local nCopyMapId = rwUserGetCurMapId()
    if nCopyMapId == nSHYJ_CopyMapId then
        if not rwHasGenEvent(nFloor1GenId) then
            rwAddGenEvent(nFloor1GenId)
        end
        rwAutoBattle(nFloor1GenId)
    elseif nCopyMapId == nSHYJ_CopyMap_2Floor then
        if not rwHasGenEvent(nFloor2GenId) then
            rwAddGenEvent(nFloor2GenId)
        end
        rwAutoBattle(nFloor2GenId)
    end
end

--流沙传送逻辑
function CopyMap_ShaHaiYiJiMain_PointFly(nGenId)
    if tSHYJ_TrapChangeScene_Pos[nGenId] then
        rwChangeScene(tSHYJ_TrapChangeScene_Pos[nGenId][1],tSHYJ_TrapChangeScene_Pos[nGenId][2])
    elseif tSHYJ_TrapTeleport_Pos[nGenId] then
        rwUserTeleport(tSHYJ_TrapTeleport_Pos[nGenId][1],tSHYJ_TrapTeleport_Pos[nGenId][2])
    end
end

--获取奖励逻辑
local tSHYJ_DialogAwards = {}
tSHYJ_DialogAwards["Events"] = {}
tSHYJ_DialogAwards["Events"][1] = {}
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"] = {}
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1] = {}
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1]["TempDataID"] = nSHYJ_UserData
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
tSHYJ_DialogAwards["Events"][2] = {}
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"] = {}
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1] = {}
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1]["Record"] = nSHYJ_UserData
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1]["Value"] = nSHYJ_Task1_Count
tSHYJ_DialogAwards["Events"][2]["OpenDialog"] = {}
tSHYJ_DialogAwards["Events"][2]["OpenDialog"]["DialogId"] = tSHYJ_DialogId.EndCopyMap

--对白
rwtDialog[tSHYJ_DialogId.BattleXieZi] = {}
rwtDialog[tSHYJ_DialogId.BattleXieZi]["DialogEnd"] = function()
    CopyMap_ShaHaiYiJiMain_AfterDialogBattle(tSHYJ_GenId.nMon_XieZi,tSHYJ_GenId.nMon_XieZi_Floor2)
end

rwtDialog[tSHYJ_DialogId.BattleXieGuai] = {}
rwtDialog[tSHYJ_DialogId.BattleXieGuai]["DialogEnd"] = function()
    CopyMap_ShaHaiYiJiMain_AfterDialogBattle(tSHYJ_GenId.nMon_XieGuai,tSHYJ_GenId.nMon_XieGuai_Floor2)
end

rwtDialog[tSHYJ_DialogId.BattleTaiTan] = {}
rwtDialog[tSHYJ_DialogId.BattleTaiTan]["DialogEnd"] = function()
    CopyMap_ShaHaiYiJiMain_AfterDialogBattle(tSHYJ_GenId.nMon_TaiTan,tSHYJ_GenId.nMon_TaiTan_Floor2)
end

rwtDialog[tSHYJ_DialogId.WinTaiTan] = {}
rwtDialog[tSHYJ_DialogId.WinTaiTan]["DialogEnd"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

rwtDialog[tSHYJ_DialogId.ChangeScene] = {}
rwtDialog[tSHYJ_DialogId.ChangeScene]["DialogEnd"] = function(nGenEventId)
    CopyMap_ShaHaiYiJiMain_PointFly(nGenEventId)
    rwOpenNpcChatDialog(tSHYJ_DialogId.EndChangeScene)
end

--场景切换

--1层-2层
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_ChangeScene] = rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_ChangeScene] or {}
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_ChangeScene]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_ChangeScene]["TrapFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    if rwTempDataGetValue(nSHYJ_UserData,CONST_TEMP_DATA.Data1) == 0 then
        rwTempDataSet(nSHYJ_UserData,1,CONST_TEMP_DATA.Data1)
        rwOpenNpcChatDialog(tSHYJ_DialogId.ChangeScene,0,nGenEventId)
    else
        CopyMap_ShaHaiYiJiMain_PointFly(nGenEventId)
    end
end


rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave] = rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave] or {}
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nTrap_Leave]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 61137

--怪物战后
rwtMonsterGroup[tSHYJ_MonGroupId.nMon_XieZi] = rwtMonsterGroup[tSHYJ_MonGroupId.nMon_XieZi] or {}
rwtMonsterGroup[tSHYJ_MonGroupId.nMon_XieZi]["BattleWin"] = function()
    local nCount = rwTempDataGetValue(nSHYJ_UserData,CONST_TEMP_DATA.Data2)
    rwTempDataSet(nSHYJ_UserData,nCount+1,CONST_TEMP_DATA.Data2)
end

rwtMonsterGroup[tSHYJ_MonGroupId.nMon_XieGuai] = rwtMonsterGroup[tSHYJ_MonGroupId.nMon_XieGuai] or {}
rwtMonsterGroup[tSHYJ_MonGroupId.nMon_XieGuai]["BattleWin"] = function()
    rwTempDataSet(nSHYJ_UserData,0,CONST_TEMP_DATA.Data2)
end

function CopyMap_ShaHaiYiJiMain_BattleAftTaiTan()
    for _,tInfo in pairs(nSHYJ_TaiTan_Col_Pos) do
        if rwHasGenEvent(tInfo[1]) then
            rwDelGenEvent(tInfo[1])
        end
    end
end

rwtMonsterGroup[tSHYJ_MonGroupId.nMon_TaiTan] = rwtMonsterGroup[tSHYJ_MonGroupId.nMon_TaiTan] or {}
rwtMonsterGroup[tSHYJ_MonGroupId.nMon_TaiTan]["BattleWin"] = function()
    CopyMap_ShaHaiYiJiMain_BattleAftTaiTan()
    rwOpenNpcChatDialog(tSHYJ_DialogId.WinTaiTan)
end
rwtMonsterGroup[tSHYJ_MonGroupId.nMon_TaiTan]["BattleLose"] = function()
    CopyMap_ShaHaiYiJiMain_BattleAftTaiTan()
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end
rwtMonsterGroup[tSHYJ_MonGroupId.nMon_TaiTan]["BattleEscape"] = function()
    CopyMap_ShaHaiYiJiMain_BattleAftTaiTan()
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end


--普通采集
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_ChongLuan] = rwtNpcGroup[tSHYJ_NpcGroupId.nCol_ChongLuan] or {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_ChongLuan]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_ChongLuan]["CollectTime"] = 1
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_ChongLuan]["Func"] = function(nGenEventId)
    if CopyMap_ShaHaiYiJiMain_Build(nGenEventId) then
        local tAwards = {}
        tAwards["Events"] = {}
        tAwards["Events"][1] = {}
        tAwards["Events"][1]["GetServerAward"] = {}
        tAwards["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
        tAwards["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwards["Events"][1]["GetServerAward"]["AwardId"] = nSHYJ_AwardId_ColChongLuan
        rwBaseAward:create(tAwards):Process()
    end
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

--空采集
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty] = rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty] or {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["CollectTime"] = 1
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10270]
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_Empty]["Func"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

--泰坦采集
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan] = rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan] or {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["CollectTime"] = 1
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["NotDel"] = 1
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nCol_TaiTan]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tSHYJ_DialogId.BattleTaiTan


--普通宝箱
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Normal] = rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Normal] or {} 
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Normal]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Normal]["Function"] = function(nNpcGroupType,nGenEventId)
    if CopyMap_ShaHaiYiJiMain_Build(nGenEventId) then
        local tAwards = {}
        tAwards["Events"] = {}
        tAwards["Events"][1] = {}
        tAwards["Events"][1]["GetServerAward"] = {}
        tAwards["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
        tAwards["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroupType
        tAwards["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwards["Events"][1]["GetServerAward"]["AwardId"] = nSHYJ_AwardId_NormalBox
        rwBaseAward:create(tAwards):Process()
    end
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end


--空宝箱
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty] = rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty] or {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10270]
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_Empty]["Function"] = function(nNpcGroupType,nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end


--稀有宝箱
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou] = rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou] or {} 
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSHYJ_NpcGroupId.nBox_XiYou
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nSHYJ_AwardId_XiYouBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_XiYou]["Function"] = function(nNpcGroupType,nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

--高级宝箱
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi] = rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi] or {} 
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSHYJ_NpcGroupId.nBox_GaoJi
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nSHYJ_AwardId_GaoJiBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_GaoJi]["Function"] = function(nNpcGroupType,nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

--通关宝箱
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap] = rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap] or {} 
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"][1] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSHYJ_NpcGroupId.nBox_EndCopyMap
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nSHYJ_AwardId_MaxBox
rwtNpcGroup[tSHYJ_NpcGroupId.nBox_EndCopyMap]["Function"] = function(nNpcGroupType,nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end