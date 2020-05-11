--region [ExploreCopyMap]ShaHaiYiJi_second
--Purpose:		沙海遗迹片区探索副本
--Creator: 		倪祖伟
--Created:		2020-04-11
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-04-11 $
--RCS-ID:		$Revision: 1 $
--endregion
--===============================
--刷怪机制
--宝箱怪物1-怪物情况（50%：1只；50%：2只）
--宝箱怪物2与采集怪物（2、3、4）-怪物情况（70%：2只； 30%：3只）
--采集怪物1-怪物情况（50%：1只；50%：2只）
--宝箱：随机分布 10 = 7（逻辑） + 3（空） 
--采集：随机分布 31 = 21（逻辑） + 10（空）

--rwtCopyMapDynInitInfo
--"index" ：当前开启宝箱（采集）的进度
--"EventInfo":在"index"的进度下 遇怪 or false(直接领奖)
--=============================


local nCopyMap = 3160
local nTaskid = 60356
local nTaskid2 = 60408
local nTempdata = 1302
--掩码
--data1：机关门、光墙；=1表示已经触碰过
--data2：机关传送；=1表示已传送
--data3：记录收集宝箱进度
--data7：传送状态，0表示可传送，1暂停传送

local nEffetc_ChuanSong = 2066
local sPos_ChuShen = "-135.36,-21.25,-33.1"

local nEffetc_huo = 2017
local nEffetc_shui= 2018
local nEffetc_an  = 2019

local nsize = 50
local random_Box = 50
local random_Collect = 50
local random_ColAndBox = 30
local nNumber_Event = 4    --宝箱事件数量
local nNumber_Event2 = 12   --采集物事件数量
local nNumber_Task = 25

local tValveGenIdInfo = {}

tValveGenIdInfo[3160214] = {}
tValveGenIdInfo[3160215] = {}
tValveGenIdInfo[3160216] = {}
tValveGenIdInfo[3160217] = {}
tValveGenIdInfo[3160218] = {}
tValveGenIdInfo[3160219] = {}
tValveGenIdInfo[3160220] = {}
tValveGenIdInfo[3160221] = {}
tValveGenIdInfo[3160222] = {}
tValveGenIdInfo[3160223] = {}
tValveGenIdInfo[3160224] = {}
tValveGenIdInfo[3160225] = {}
tValveGenIdInfo[3160226] = {}
tValveGenIdInfo[3160227] = {}
tValveGenIdInfo[3160228] = {}
tValveGenIdInfo[3160229] = {}
tValveGenIdInfo[3160230] = {}
tValveGenIdInfo[3160231] = {}

tValveGenIdInfo[3160215]["Pos"] = "-150.80,-21.13,4.7001"--"-236.10,-21.16,48.221"
tValveGenIdInfo[3160214]["Pos"] = "-235.06,-21.17,8.0701"--"-179.00,-21.16,4.4501"
tValveGenIdInfo[3160217]["Pos"] = "-218.97,-21.16,-28.87"--"-295.20,-21.16,52.321"
tValveGenIdInfo[3160216]["Pos"] = "-295.11,-21.16,52.204"--"-199.90,-21.16,-33.21"
tValveGenIdInfo[3160219]["Pos"] = "-272.28,-21.10,-29.63"--"-311.03,-21.16,11.421"
tValveGenIdInfo[3160218]["Pos"] = "-294.60,-21.16,3.9048"--"-158.80,-21.16,-28.61"
tValveGenIdInfo[3160221]["Pos"] = "-158.74,-21.14,-28.58"--"-306.80,-21.16,61.799"
tValveGenIdInfo[3160220]["Pos"] = "-303.60,-21.20,17.263"--"-242.10,-12.66,90.671"
tValveGenIdInfo[3160223]["Pos"] = "-303.38,-21.16,61.928"--"-307.70,-21.16,78.464"
tValveGenIdInfo[3160222]["Pos"] = "-242.01,-12.66,90.621"--"-168.40,-21.18,-31.73"
tValveGenIdInfo[3160225]["Pos"] = "-303.44,-21.16,82.921"--"-266.40,-21.16,-35.77"
tValveGenIdInfo[3160224]["Pos"] = "-198.81,-21.16,-29.38"--"-240.70,-21.16,-59.91"
tValveGenIdInfo[3160227]["Pos"] = "-234.51,-21.16,-58.40"--"-312.00,-21.16,38.021"
tValveGenIdInfo[3160226]["Pos"] = "-259.77,-21.16,-29.04"--"-239.60,-21.16,-0.511"
tValveGenIdInfo[3160229]["Pos"] = "-234.59,-21.20,-13.50"--"-225.60,-21.16,-20.05"
tValveGenIdInfo[3160228]["Pos"] = "-303.14,-21.16,28.988"--"-230.10,-12.66,90.671"
tValveGenIdInfo[3160231]["Pos"] = "-224.95,-21.16,-29.19"--"-225.60,-21.16,-20.05"
tValveGenIdInfo[3160230]["Pos"] = "-230.08,-12.66,90.671"--"-230.10,-12.66,90.671"

local sPos = {}
sPos[1]  = "-150.80,-21.13,4.7001"
sPos[2]  = "-235.06,-21.17,8.0701"
sPos[3]  = "-218.97,-21.16,-28.87"
sPos[4]  = "-295.11,-21.16,52.204"
sPos[5]  = "-272.28,-21.10,-29.63"
sPos[6]  = "-294.60,-21.16,3.9048"
sPos[7]  = "-158.74,-21.14,-28.58"
sPos[8]  = "-303.60,-21.20,17.263"
sPos[9]  = "-303.38,-21.16,61.928"
sPos[10] = "-242.01,-12.66,90.621"
sPos[11] = "-303.44,-21.16,82.921"
sPos[12] = "-198.81,-21.16,-29.38"
sPos[13] = "-234.51,-21.16,-58.40"
sPos[14] = "-259.77,-21.16,-29.04"
sPos[15] = "-234.59,-21.20,-13.50"
sPos[16] = "-303.14,-21.16,28.988"
sPos[17] = "-224.95,-21.16,-29.19"
sPos[18] = "-230.08,-12.66,90.671"

sPos["Box1"] = "-128.55,-21.25,-25.14"
sPos["Box2"] = "-143.96,-21.25,6.9733"
sPos["Box3"] = "-205.75,-21.16,-23.03"
sPos["Box4"] = "-234.22,-21.16,-20.86"
sPos["Box5"] = "-241.14,-21.16,-59.66"
sPos["Box6"] = "-228.01,-21.16,1.1850"
sPos["Box7"] = "-235.38,-12.66,97.399"
sPos["Box8"] = "-266.27,-21.16,-35.48"
sPos["Box9"] = "-312.50,-21.16,3.8408"
sPos["Box10"]= "-295.45,-21.16,41.919"
sPos["Collect01"]= "-200.83,-21.16,-22.16"
sPos["Collect02"]= "-199.33,-21.16,-36.83"
sPos["Collect03"]= "-227.93,-21.16,-58.16"
sPos["Collect04"]= "-242.58,-21.17,1.7701"
sPos["Collect05"]= "-229.11,-21.16,9.1428"
sPos["Collect06"]= "-312.94,-21.16,13.501"
sPos["Collect07"]= "-309.83,-21.16,56.333"
sPos["Collect08"]= "-306.33,-21.16,83.833"
sPos["Collect09"]= "-128.74,-21.25,-28.95"
sPos["Collect10"]= "-145.92,-21.25,-33.02"
sPos["Collect11"]= "-145.34,-21.25,-20.71"
sPos["Collect12"]= "-138.43,-21.25,-6.085"
sPos["Collect13"]= "-144.51,-21.06,-2.893"
sPos["Collect14"]= "-206.54,-21.16,-34.00"
sPos["Collect15"]= "-226.47,-21.16,-34.26"
sPos["Collect16"]= "-240.70,-21.16,-33.91"
sPos["Collect17"]= "-238.66,-21.16,-40.01"
sPos["Collect18"]= "-237.76,-21.16,-48.81"
sPos["Collect19"]= "-228.18,-21.16,-62.81"
sPos["Collect20"]= "-241.83,-21.16,9.6666"
sPos["Collect21"]= "-234.38,-12.66,78.673"
sPos["Collect22"]= "-261.99,-21.16,-34.00"
sPos["Collect23"]= "-264.55,-21.16,-24.41"
sPos["Collect24"]= "-273.39,-21.16,-24.85"
sPos["Collect25"]= "-269.28,-21.16,-34.00"
sPos["Collect26"]= "-301.66,-21.16,-2.741"
sPos["Collect27"]= "-292.66,-21.16,-0.616"
sPos["Collect28"]= "-293.42,-21.16,12.686"
sPos["Collect29"]= "-312.47,-21.16,41.784"
sPos["Collect30"]= "-305.84,-21.16,45.275"
sPos["Collect31"]= "-296.09,-21.16,65.148"


local tRot = {}
tRot["Box1"] = 180
tRot["Box2"] = 180
tRot["Box3"] = 180
tRot["Box4"] = 180
tRot["Box5"] = 90
tRot["Box6"] = 90
tRot["Box7"] = 180
tRot["Box8"] = 0
tRot["Box9"] = 90
tRot["Box10"]= -90
tRot["Collect01"]= 0
tRot["Collect02"]= 0
tRot["Collect03"]= 0
tRot["Collect04"]= 0
tRot["Collect05"]= 0
tRot["Collect06"]= 0
tRot["Collect07"]= 0
tRot["Collect08"]= 0
tRot["Collect09"]= 139.01
tRot["Collect10"]= -186.7
tRot["Collect11"]= 49.086
tRot["Collect12"]= 139.08
tRot["Collect13"]= -20.41
tRot["Collect14"]= 49.085
tRot["Collect15"]= -130.9
tRot["Collect16"]= 49.086
tRot["Collect17"]= 100.11
tRot["Collect18"]= 139.08
tRot["Collect19"]= -70.76
tRot["Collect20"]= -40.91
tRot["Collect21"]= 4.0861
tRot["Collect22"]= 49.086
tRot["Collect23"]= 300.01
tRot["Collect24"]= -132.4
tRot["Collect25"]= 139.08
tRot["Collect26"]= -130.9
tRot["Collect27"]= 49.085
tRot["Collect28"]= 139.08
tRot["Collect29"]= 139.08
tRot["Collect30"]= 99.816
tRot["Collect31"]= 7.5371

local tDialogId = {}
tDialogId.EnterMap          = 7138
tDialogId.Qiang             = 7139
tDialogId.ChuanSong         = 7140
tDialogId.BoxMonster_1      = 7141
tDialogId.BoxMonster_2      = 7142
tDialogId.CollectMonster_1  = 7143
tDialogId.CollectMonster_2  = 7145
tDialogId.CollectMonster_3  = 7146
tDialogId.CollectMonster_4  = 7144
tDialogId.PassBox           = 7147
tDialogId.RuKou             = 7211
tDialogId.Collect2_battleAfter        = 7213
tDialogId.Collect3_battleAfter        = 7214
tDialogId.Collect4_battleAfter        = 7215

local tValveid = {}
tValveid.Meng     = 1147
tValveid.Qiang    = 1148
tValveid.RedFly   = 1149
tValveid.BlueFly  = 1150
tValveid.PurpleFly= 1151

local tBox = {}
tBox.Normal  = 40368
tBox.Special = 40369
tBox.Specia2 = 40377
tBox.PassBox = 40370
tBox.Empty   = 40376

local nCollect = 60504
local nCollect_Empty = 60507
local nCollect_2 = 60511
local nCollect_Empty_2 = 60512
local nTrap_RuKou = 30751

local tGenId = {}
tGenId.BoxMust1 = 3160001
tGenId.BoxMust2 = 3160002
tGenId.BoxMust3 = 3160003
tGenId.BoxMust4 = 3160004
tGenId.BoxMust5 = 3160005
tGenId.BoxMust6 = 3160006
tGenId.BoxMust7 = 3160007
tGenId.BoxMust8 = 3160008
tGenId.BoxMust9 = 3160009
tGenId.BoxMust10= 3160010
tGenId.BoxEmpy1 = 3160011
tGenId.BoxEmpy2 = 3160012
-- tGenId.BoxEmpy3 = 3160013
tGenId.CollectMust01= 3160101
tGenId.CollectMust02= 3160102
tGenId.CollectMust03= 3160103
tGenId.CollectMust04= 3160104
tGenId.CollectMust05= 3160105
tGenId.CollectMust06= 3160106
tGenId.CollectMust07= 3160107
tGenId.CollectMust08= 3160108
tGenId.CollectMust09= 3160109
tGenId.CollectMust10= 3160110
tGenId.CollectMust11= 3160111
tGenId.CollectMust12= 3160112
tGenId.CollectMust13= 3160113
tGenId.CollectMust14= 3160114
tGenId.CollectMust15= 3160115
tGenId.CollectMust16= 3160116
tGenId.CollectMust17= 3160117
tGenId.CollectMust18= 3160118
tGenId.CollectMust19= 3160119
tGenId.CollectMust20= 3160120
tGenId.CollectMust21= 3160121
tGenId.CollectMust22= 3160122
tGenId.CollectMust23= 3160123
tGenId.CollectMust24= 3160124
tGenId.CollectMust25= 3160125
tGenId.CollectMust26= 3160126
tGenId.CollectMust27= 3160127
tGenId.CollectMust28= 3160128
tGenId.CollectMust29= 3160129
tGenId.CollectMust30= 3160130
tGenId.CollectMust31= 3160131
tGenId.CollectEmpy01= 3160132
tGenId.CollectEmpy02= 3160133
tGenId.CollectEmpy03= 3160134
tGenId.CollectEmpy04= 3160135
-- tGenId.CollectEmpy05= 3160136
-- tGenId.CollectEmpy06= 3160137
-- tGenId.CollectEmpy07= 3160138
-- tGenId.CollectEmpy08= 3160139
-- tGenId.CollectEmpy09= 3160140
-- tGenId.CollectEmpy10= 3160141



tGenId.Monster_Box_1 = 3160301
tGenId.Monster_Box_2 = 3160302
tGenId.Monster_Col_1 = 3160303
tGenId.Monster_Col_2 = 3160304
tGenId.Monster_Col_3 = 3160305
tGenId.Monster_Col_4 = 3160306


local tGenIdMonsterTogether = {
    tGenId.Monster_Box_2,
    tGenId.Monster_Col_2,
    tGenId.Monster_Col_3,
    tGenId.Monster_Col_4
}
local tMonsterDialog = {}
tMonsterDialog[tGenId.Monster_Box_1] = tDialogId.BoxMonster_1
tMonsterDialog[tGenId.Monster_Box_2] = tDialogId.BoxMonster_2
tMonsterDialog[tGenId.Monster_Col_1] = tDialogId.CollectMonster_1
tMonsterDialog[tGenId.Monster_Col_2] = tDialogId.CollectMonster_2
tMonsterDialog[tGenId.Monster_Col_3] = tDialogId.CollectMonster_3
tMonsterDialog[tGenId.Monster_Col_4] = tDialogId.CollectMonster_4

-- local nMonster_Box1 = 200852
-- local nMonster_Box2 = 200853

local tAward = {}
tAward.Normal  = 1001050
tAward.Special = 1001051
tAward.Specia2 = 1001054
tAward.PassBox = 1001052
tAward.Collect = 1001053
--===function===========
function CopyMap_ShaHaiYiJi_Fly(nGenId)
    rwPrintErrorLog("Fly========start "..nGenId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data7,rwUserGetId())
    if index == 1 then
        return
    end
    rwPrintErrorLog(type(tValveGenIdInfo[nGenId]))
    if rwChkTable(tValveGenIdInfo[nGenId]) then
        rwTeleport(1,rwUserGetId(),tValveGenIdInfo[nGenId]["Pos"])
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data7,rwUserGetId())
        rwPrintErrorLog("Pos"..tValveGenIdInfo[nGenId]["Pos"])
        rwPrintErrorLog("tempdata")
    end
    rwPrintErrorLog("====fly end")
end
function CopyMap_ShaHaiYiJi_GetMonRandom()
    local nDynMapId = rwUserGetDynMapId()
    local info = rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"]
    --rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"]
    --【"index"】储存触发了几个事件(宝箱、采集)
    --【"EventInfo"】储存，在第几个事件，会遇到哪只怪
    --nNumber_Event宝箱的事件数；nNumber_Event2采集物的事件数
    rwPrintErrorLog("========random start "..nDynMapId)
    --====================================随机结果
    local nRate_1 = math.random(1,100) --宝箱怪物1（1~2）随机结果
    local nRate_2 = math.random(1,100) --采集怪物1(1~2)随机结果
    local nRate_3 = math.random(1,100) --共同怪物(2~3)suiji结果
    local nRate = 1

    local nNumBox = 1
    local nNumCollect = 1
    local nNumColAndBox = 2

    if nRate_1<random_Box then --50%概率多一只宝箱怪1
        nNumBox = 2
    end
    if nRate_2<random_Collect then --50%概率
        nNumCollect = 2
    end
    if nRate_3<random_ColAndBox then
        nNumColAndBox = 3
    end
    rwPrintErrorLog("随机结果 "..nNumBox.." "..nNumCollect.." "..nNumColAndBox)
    --============初始化EventInfo
    local tBoxIndex = {}
    for i = 1, nNumber_Event do
        tBoxIndex[i]=i
    end
    local tCollectIndex = {}
    for i = 1, nNumber_Event2 do
        tCollectIndex[i]=i
    end
    --记录宝箱怪事件信息
    for i = 1, nNumBox do
        nRate = math.random(1,#tBoxIndex)
        info["Box"][tBoxIndex[nRate]]=tGenId.Monster_Box_1
        rwPrintErrorLog("info: "..tBoxIndex[nRate].." "..tGenId.Monster_Box_1)
        table.remove(tBoxIndex,nRate)
    end
    --采集怪
    for i = 1, nNumCollect do
        nRate = math.random(1,#tCollectIndex)
        info["Collect"][tCollectIndex[nRate]]=tGenId.Monster_Col_1
        rwPrintErrorLog("infocol: "..tCollectIndex[nRate].." "..tGenId.Monster_Col_1)
        table.remove(tCollectIndex,nRate)
    end
    --===========随机上场的共同怪
    local tTogetherMonster = {}
    local tMonster = SysCopyTable(tGenIdMonsterTogether)
    for i = 1, nNumColAndBox do
        nRate = math.random(1,#tMonster)
        table.insert(tTogetherMonster,tMonster[nRate])
        table.remove(tMonster,nRate)
    end
    --将结果记录进EventInfo
    for i = 1, #tTogetherMonster do
        if tTogetherMonster[i] == tGenId.Monster_Box_2 then
            nRate = math.random(1,#tBoxIndex)
            info["Box"][tBoxIndex[nRate]]=tGenId.Monster_Box_2
            rwPrintErrorLog("info: "..tBoxIndex[nRate].." "..tGenId.Monster_Box_2)
            table.remove(tBoxIndex,nRate)
        else
            nRate = math.random(1,#tCollectIndex)
            info["Collect"][tCollectIndex[nRate]]=tTogetherMonster[i]
            rwPrintErrorLog("infocol: "..tCollectIndex[nRate].." "..tTogetherMonster[i])
            table.remove(tCollectIndex,nRate)
        end
    end
    rwPrintErrorLog("========random end")
end

function CopyMap_ShaHaiYiJi_NorBox(index)
    local nDynMapId = rwUserGetDynMapId()
    local info = rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]
    --============================
    --index = 1;普通宝箱的逻辑；index=2:采集物
    rwPrintErrorLog("========luoji start "..nDynMapId.." "..index)
    local nJinDu = 0
    local Genid = 0
    if index ==1 then
        nJinDu = info["index"]["Box"]
        if info["EventInfo"]["Box"][nJinDu] then
            Genid = info["EventInfo"]["Box"][nJinDu]
            --rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"]["Box"] = nJinDu+1
        end
        info["index"]["Box"] = nJinDu+1
    elseif index ==2 then
        nJinDu = info["index"]["Collect"]
        if info["EventInfo"]["Collect"][nJinDu] then
            Genid = info["EventInfo"]["Collect"][nJinDu]
            -- rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"]["Collect"] = nJinDu+1
        end
        info["index"]["Collect"] = nJinDu+1
    end
    rwPrintErrorLog("进度 "..nJinDu)
    rwPrintErrorLog("genid "..Genid)
    rwPrintErrorLog("现在1 "..rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"]["Box"])
    rwPrintErrorLog("现在2 "..rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"]["Collect"])
    if Genid==0 then
        rwPrintErrorLog("========luoji endtrue")
        return true
    else
        rwOpenNpcChatDialog(tMonsterDialog[Genid])
        rwPrintErrorLog("========luoji endfalse")
        return false
    end
    rwPrintErrorLog("========luoji end")
end
--========================================================
tValve[tValveid.Meng] ={}
tValve[tValveid.Meng]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tValveid.Meng]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data1,rwUserGetId())
    if index == 0 then
        rwOpenNpcChatDialog(tDialogId.Qiang)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data1,rwUserGetId())
    end
end
tValve[tValveid.Qiang] = tValve[tValveid.Meng]


tValve[tValveid.BlueFly] = {}
tValve[tValveid.BlueFly]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tValveid.BlueFly]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data2,rwUserGetId())
    if index == 0 then
        rwOpenNpcChatDialog(tDialogId.ChuanSong,CONST_NPCCHAT_TYPE.NPC,nGenId)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data2,rwUserGetId())
    else
        CopyMap_ShaHaiYiJi_Fly(nGenId)
    end
end
tValve[tValveid.BlueFly]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId)
    rwUserTempDataSet(nTempdata,0,CONST_TEMP_DATA.Data7,rwUserGetId())
end

tValve[tValveid.RedFly] =tValve[tValveid.BlueFly]
tValve[tValveid.PurpleFly] =tValve[tValveid.BlueFly]

--===========================对白
rwtDialog[tDialogId.ChuanSong] = {}
rwtDialog[tDialogId.ChuanSong]["DialogEnd"] = function (nId)
	CopyMap_ShaHaiYiJi_Fly(nId)
end

rwtDialog[tDialogId.RuKou] = {}
rwtDialog[tDialogId.RuKou]["DialogEnd"] = function (nId)
	rwLinkPassCopyMap(nCopyMap)
end

rwtDialog[tDialogId.BoxMonster_1] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Box_1
rwtDialog[tDialogId.BoxMonster_2] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Box_2

rwtDialog[tDialogId.CollectMonster_1] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_1
rwtDialog[tDialogId.CollectMonster_2] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_2
rwtDialog[tDialogId.CollectMonster_3] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_3
rwtDialog[tDialogId.CollectMonster_4] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_4

-- rwtDialog[tDialogId.PassBox] = {}
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"] = {}
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"] = {}
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassBox
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
-- rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.PassBox
--===========================宝箱
local tSHYJ_DialogAwards = {}
tSHYJ_DialogAwards["Events"] = {}
tSHYJ_DialogAwards["Events"][1] = {}
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"] = {}
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1] = {}
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
tSHYJ_DialogAwards["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
tSHYJ_DialogAwards["Events"][2] = {}
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"] = {}
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1] = {}
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1]["Record"] = nTempdata
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
tSHYJ_DialogAwards["Events"][2]["ChkUserTempData"][1]["Value"] = nNumber_Task
tSHYJ_DialogAwards["Events"][2]["OpenDialog"] = {}
tSHYJ_DialogAwards["Events"][2]["OpenDialog"]["DialogId"] = tDialogId.PassBox

local tAwardInfo = {}
tAwardInfo["Events"] = {}
tAwardInfo["Events"][1] = {}
tAwardInfo["Events"][1]["GetServerAward"] = {}
tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
tAwardInfo["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal
tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = tAward.Normal

rwtNpcGroup[tBox.Normal] = {}
rwtNpcGroup[tBox.Normal]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal]["Function"] = function(nNpcGroupType,nGenEventId)
    if CopyMap_ShaHaiYiJi_NorBox(1) then
        rwBaseAward:create(tAwardInfo):Process()
    end
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end
rwtNpcGroup[tBox.Empty] = {}
rwtNpcGroup[tBox.Empty]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Empty]["Awards"] = {}
rwtNpcGroup[tBox.Empty]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Empty]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Empty]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[tBox.Empty]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tBox.Empty]["Awards"]["Events"][1]["UserMsg"]["Content"] = "里面什么也没有。"
rwtNpcGroup[tBox.Empty]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[tBox.Empty]["Function"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

rwtNpcGroup[tBox.Special] = {}
rwtNpcGroup[tBox.Special]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Special]["Awards"] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Special
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Special
rwtNpcGroup[tBox.Special]["Function"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end
rwtNpcGroup[tBox.Specia2] = {}
rwtNpcGroup[tBox.Specia2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Specia2]["Awards"] = {}
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Specia2
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Specia2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Specia2
rwtNpcGroup[tBox.Specia2]["Function"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

rwtNpcGroup[tBox.PassBox] = {}
rwtNpcGroup[tBox.PassBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
-- rwtNpcGroup[tBox.PassBox]["NotDel"] = 1
rwtNpcGroup[tBox.PassBox]["Awards"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.PassBox
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassBox
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.PassBox
rwtNpcGroup[tBox.PassBox]["Function"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end
local tAwardInfo2 = {}
tAwardInfo2["Events"] = {}
tAwardInfo2["Events"][1] = {}
tAwardInfo2["Events"][1]["GetServerAward"] = {}
tAwardInfo2["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
tAwardInfo2["Events"][1]["GetServerAward"]["ActionId"] = nCollect
tAwardInfo2["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
tAwardInfo2["Events"][1]["GetServerAward"]["AwardId"] = tAward.Collect

rwtNpcGroup[nCollect] = {}
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect]["CollectTime"] = 1
rwtNpcGroup[nCollect]["Func"] = function (nGenEventId,nRandom)
    if CopyMap_ShaHaiYiJi_NorBox(2) then
        rwBaseAward:create(tAwardInfo):Process()
    end
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end


rwtNpcGroup[nCollect_Empty] = {}
rwtNpcGroup[nCollect_Empty]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Empty]["CollectTime"] = 1
rwtNpcGroup[nCollect_Empty]["Awards"] = {}
rwtNpcGroup[nCollect_Empty]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_Empty]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_Empty]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[nCollect_Empty]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[nCollect_Empty]["Awards"]["Events"][1]["UserMsg"]["Content"] = "里面什么也没有。"
rwtNpcGroup[nCollect_Empty]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[nCollect_Empty]["Func"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect]
rwtNpcGroup[nCollect_Empty_2] = rwtNpcGroup[nCollect_Empty]

rwtNpcGroup[nTrap_RuKou] = {}
rwtNpcGroup[nTrap_RuKou]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_RuKou]["Awards"] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.RuKou
--===========================目标
rwtTarget[nTaskid] = {}
rwtTarget[nTaskid]["Title"] = tLuaText[LANGUAGE_CONFIG][22001]
rwtTarget[nTaskid]["ReqDialogId"] = tDialogId.PassBox
rwtTarget[nTaskid]["ReqCount"] = 1

rwtTarget[nTaskid2] = {}
rwtTarget[nTaskid2]["Title"] = tLuaText[LANGUAGE_CONFIG][22001]
-- rwtTarget[nTaskid2]["ReqDialogId"] = tDialogId.PassBox
rwtTarget[nTaskid2]["ReqTreasureBox"] = {tBox.Normal,tBox.Special,tBox.Empty,tBox.Specia2,tBox.PassBox}
rwtTarget[nTaskid2]["ReqCollectId"] = {nCollect,nCollect_Empty,nCollect_2,nCollect_Empty_2}
rwtTarget[nTaskid2]["ReqCount"] = nNumber_Task

rwtCopyMapMission[nCopyMap] = {}
rwtCopyMapMission[nCopyMap]["ReqLev"] = 1
rwtCopyMapMission[nCopyMap]["Difficulty"] = 1
rwtCopyMapMission[nCopyMap]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMap]["Target1"] = {nTaskid2}
rwtCopyMapMission[nCopyMap]["Target2"] = {nTaskid}
-- rwtCopyMapMission[nCopyMap]["Target1_NeedFinishNum"] = 1
rwtCopyMapMission[nCopyMap]["Target99"] = {60072}
rwtCopyMapMission[nCopyMap]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.EnterMap
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["ResetValue"] = true

rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Pos"] = sPos[1]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Pos"] = sPos[2]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Pos"] = sPos[3]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Pos"] = sPos[4]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Pos"] = sPos[5]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Pos"] = sPos[6]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["Pos"] = sPos[7]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["Pos"] = sPos[8]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["Pos"] = sPos[9]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["Pos"] = sPos[10]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["Pos"] = sPos[11]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["Pos"] = sPos[12]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["Pos"] = sPos[13]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["Pos"] = sPos[14]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["Pos"] = sPos[15]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["Pos"] = sPos[16]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["Pos"] = sPos[17]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["Scale"] = nsize
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][18] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][18]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][18]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][18]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][18]["Pos"] = sPos[18]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][18]["Scale"] = nsize

-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["TargetType"] = 7
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["TargetId"] = 0
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["EffectId"] = nEffetc_ChuanSong
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["Pos"] = sPos_ChuShen
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][17]["Scale"] = nsize

rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 4
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.BoxMust1
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = sPos.Box1
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tRot.Box1
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId.BoxMust2
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = sPos.Box2
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tRot.Box2
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId.BoxMust3
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = sPos.Box3
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tRot.Box3
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId.BoxMust4
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = sPos.Box4
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tRot.Box4
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["GenId"] = tGenId.BoxMust5
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["Pos"] = sPos.Box5
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["RotationY"] = tRot.Box5
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["GenId"] = tGenId.BoxMust6
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["Pos"] = sPos.Box6
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["RotationY"] = tRot.Box6
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["GenId"] = tGenId.BoxMust7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["Pos"] = sPos.Box7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][7]["RotationY"] = tRot.Box7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["GenId"] = tGenId.BoxMust8
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["Pos"] = sPos.Box8
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][8]["RotationY"] = tRot.Box8
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9]["GenId"] = tGenId.BoxMust9
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9]["Pos"] = sPos.Box9
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][9]["RotationY"] = tRot.Box9
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10]["GenId"] = tGenId.BoxMust10
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10]["Pos"] = sPos.Box10
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][10]["RotationY"] = tRot.Box10
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 2
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tGenId.BoxEmpy1
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tGenId.BoxEmpy2
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tGenId.BoxEmpy3
--采集物
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 9
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId.CollectMust09
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["Pos"] = sPos.Collect09
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["RotationY"] = tRot.Collect09
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId.CollectMust10
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["Pos"] = sPos.Collect10
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["RotationY"] = tRot.Collect10
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGenId.CollectMust11
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["Pos"] = sPos.Collect11
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["RotationY"] = tRot.Collect11
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["GenId"] = tGenId.CollectMust12
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["Pos"] = sPos.Collect12
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["RotationY"] = tRot.Collect12
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["GenId"] = tGenId.CollectMust13
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["Pos"] = sPos.Collect13
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["RotationY"] = tRot.Collect13
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][6] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][6]["GenId"] = tGenId.CollectMust14
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][6]["Pos"] = sPos.Collect14
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][6]["RotationY"] = tRot.Collect14
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][7] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][7]["GenId"] = tGenId.CollectMust15
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][7]["Pos"] = sPos.Collect15
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][7]["RotationY"] = tRot.Collect15
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][8] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][8]["GenId"] = tGenId.CollectMust16
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][8]["Pos"] = sPos.Collect16
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][8]["RotationY"] = tRot.Collect16
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][9] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][9]["GenId"] = tGenId.CollectMust17
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][9]["Pos"] = sPos.Collect17
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][9]["RotationY"] = tRot.Collect17
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][10] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][10]["GenId"] = tGenId.CollectMust18
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][10]["Pos"] = sPos.Collect18
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][10]["RotationY"] = tRot.Collect18
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][11] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][11]["GenId"] = tGenId.CollectMust19
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][11]["Pos"] = sPos.Collect19
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][11]["RotationY"] = tRot.Collect19
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][12] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][12]["GenId"] = tGenId.CollectMust20
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][12]["Pos"] = sPos.Collect20
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][12]["RotationY"] = tRot.Collect20
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][13] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][13]["GenId"] = tGenId.CollectMust21
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][13]["Pos"] = sPos.Collect21
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][13]["RotationY"] = tRot.Collect21
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][14] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][14]["GenId"] = tGenId.CollectMust22
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][14]["Pos"] = sPos.Collect22
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][14]["RotationY"] = tRot.Collect22
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][15] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][15]["GenId"] = tGenId.CollectMust23
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][15]["Pos"] = sPos.Collect23
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][15]["RotationY"] = tRot.Collect23
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][16] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][16]["GenId"] = tGenId.CollectMust24
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][16]["Pos"] = sPos.Collect24
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][16]["RotationY"] = tRot.Collect24
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][17] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][17]["GenId"] = tGenId.CollectMust25
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][17]["Pos"] = sPos.Collect25
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][17]["RotationY"] = tRot.Collect25
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][18] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][18]["GenId"] = tGenId.CollectMust26
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][18]["Pos"] = sPos.Collect26
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][18]["RotationY"] = tRot.Collect26
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][19] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][19]["GenId"] = tGenId.CollectMust27
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][19]["Pos"] = sPos.Collect27
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][19]["RotationY"] = tRot.Collect27
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][20] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][20]["GenId"] = tGenId.CollectMust28
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][20]["Pos"] = sPos.Collect28
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][20]["RotationY"] = tRot.Collect28
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][21] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][21]["GenId"] = tGenId.CollectMust29
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][21]["Pos"] = sPos.Collect29
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][21]["RotationY"] = tRot.Collect29
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][22] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][22]["GenId"] = tGenId.CollectMust30
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][22]["Pos"] = sPos.Collect30
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][22]["RotationY"] = tRot.Collect30
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][23] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][23]["GenId"] = tGenId.CollectMust31
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][23]["Pos"] = sPos.Collect31
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][23]["RotationY"] = tRot.Collect31
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tGenId.CollectEmpy01
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2]["GenId"] = tGenId.CollectEmpy02
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][3]["GenId"] = tGenId.CollectEmpy04
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][4] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][4]["GenId"] = tGenId.CollectEmpy04
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][5] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][5]["GenId"] = tGenId.CollectEmpy05
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][6] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][6]["GenId"] = tGenId.CollectEmpy06
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][7] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][7]["GenId"] = tGenId.CollectEmpy07
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][8] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][8]["GenId"] = tGenId.CollectEmpy08
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][9] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][9]["GenId"] = tGenId.CollectEmpy09
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][10] = {}
-- rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][10]["GenId"] = tGenId.CollectEmpy10

rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGenId.CollectMust01
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["Pos"] = sPos.Collect01
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["RotationY"] = tRot.Collect01
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGenId.CollectMust02
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["Pos"] = sPos.Collect02
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["RotationY"] = tRot.Collect02
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGenId.CollectMust03
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["Pos"] = sPos.Collect03
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["RotationY"] = tRot.Collect03
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGenId.CollectMust04
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["Pos"] = sPos.Collect04
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["RotationY"] = tRot.Collect04
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5]["GenId"] = tGenId.CollectMust05
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5]["Pos"] = sPos.Collect05
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][5]["RotationY"] = tRot.Collect05
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6]["GenId"] = tGenId.CollectMust06
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6]["Pos"] = sPos.Collect06
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][6]["RotationY"] = tRot.Collect06
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7]["GenId"] = tGenId.CollectMust07
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7]["Pos"] = sPos.Collect07
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][7]["RotationY"] = tRot.Collect07
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8]["GenId"] = tGenId.CollectMust08
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8]["Pos"] = sPos.Collect08
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][8]["RotationY"] = tRot.Collect08
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = tGenId.CollectEmpy03

rwtCopyMapMission[nCopyMap]["MapInitFunc"] = function (MissionId,MapId)
    rwPrintErrorLog("===============init statr")
    local nDynMapId = rwUserGetDynMapId()
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId] = {}
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"] = {}
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"]["Box"] = 1
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["index"]["Collect"] = 1
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"] = {}
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"]["Box"] = {}
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"]["Collect"] = {}
    --默认情况下eventInfo 记录的为false 表示在此进度不会遇怪
    for i = 1, nNumber_Event do
        rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"]["Box"][i] = false
    end
    for i = 1, nNumber_Event2 do
        rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["EventInfo"]["Collect"][i] = false
    end
    CopyMap_ShaHaiYiJi_GetMonRandom()
    rwPrintErrorLog("===============init end")
end
