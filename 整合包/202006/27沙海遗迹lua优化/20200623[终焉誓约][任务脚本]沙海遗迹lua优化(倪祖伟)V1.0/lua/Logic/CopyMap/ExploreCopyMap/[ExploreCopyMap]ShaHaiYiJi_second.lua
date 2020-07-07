--region [ExploreCopyMap]ShaHaiYiJi_second
--Purpose:		沙海遗迹片区探索副本
--Creator: 		倪祖伟
--Created:		2020-04-11
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-05-19 $
--RCS-ID:		$Revision: 2 $
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

--宝箱=6=4（事件）+2（空）=怪1+怪2+奖励+空
--50%：怪1 x1;50%:怪1 x2
--30% x (4取3) = 怪2+1 与采集物怪2~怪4（合4只怪）30%概率取3只
--70% x (4取2) = 怪2+1 与采集物怪2~怪4（合4只怪）70%概率取2只
--6-2-(1~2)-(0~1)=奖励宝箱
--总-空-怪1-怪2=奖励=(1~3)
----------------------------------------
--采集=10+6=12+4 = 怪采集x10+桶采集x6=12事件+4空
--桶采集只有奖励与空
--怪采集，怪1~怪4固定模型；空+奖励=（怪1~怪3）随机模型
--50%：怪1 x1;50%:怪1 x2
--30% x (4取3) = 怪2+1 与采集物怪2~怪4（合4只怪）30%概率取3只
--70% x (4取2) = 怪2+1 与采集物怪2~怪4（合4只怪）70%概率取2只
--桶采集：(0~4)空+6-（0~4）奖励 = 
--怪采集：(4-（0~4）)空x(空1~空3) +(1~2)怪1 + (怪物2~怪4) + (10-（）)奖励x(怪1~怪3)=总




local nCopyMap = 3160
local nTaskid = 60356
local nTaskid2 = 60408
local nTempdata = 1302
--掩码
--data1：机关门、光墙；=1表示已经触碰过
--data2：机关传送；=1表示已传送
--data3：记录收集宝箱进度
--data7：传送状态，0表示可传送，1暂停传送
local nEffetc_huo = 2017
local nEffetc_shui= 2018
local nEffetc_an  = 2019

local nsize = 50
local random_Box = 50
local random_Collect = 50
local random_ColAndBox = 30
local nNumber_Task = 25

local FirstGenMX = 3160501

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

tValveGenIdInfo[3160215]["Pos"] = "-176.23,-21.16,6.6914"--"-236.10,-21.16,48.221"
tValveGenIdInfo[3160214]["Pos"] = "-235.11,-21.16,5.9801"--"-179.00,-21.16,4.4501"
tValveGenIdInfo[3160217]["Pos"] = "-215.45,-21.16,-28.97"--"-295.20,-21.16,52.321"
tValveGenIdInfo[3160216]["Pos"] = "-295.16,-21.16,52.150"--"-199.90,-21.16,-33.21"
tValveGenIdInfo[3160219]["Pos"] = "-270.66,-21.12,-29.69"--"-311.03,-21.16,11.421"
tValveGenIdInfo[3160218]["Pos"] = "-303.26,-21.17,0.1901"--"-158.80,-21.16,-28.61"
tValveGenIdInfo[3160221]["Pos"] = "-176.51,-21.16,0.6733"--"-306.80,-21.16,61.799"
tValveGenIdInfo[3160220]["Pos"] = "-303.52,-21.19,16.841"--"-242.10,-12.66,90.671"
tValveGenIdInfo[3160223]["Pos"] = "-241.91,-12.66,90.496"--"-307.70,-21.16,78.464"
tValveGenIdInfo[3160222]["Pos"] = "-303.34,-21.16,61.850"--"-168.40,-21.18,-31.73"
tValveGenIdInfo[3160225]["Pos"] = "-303.37,-21.16,82.758"--"-266.40,-21.16,-35.77"
tValveGenIdInfo[3160224]["Pos"] = "-198.56,-21.16,-29.45"--"-240.70,-21.16,-59.91"
tValveGenIdInfo[3160227]["Pos"] = "-234.51,-21.16,-58.41"--"-312.00,-21.16,38.021"
tValveGenIdInfo[3160226]["Pos"] = "-253.53,-21.16,-29.24"--"-239.60,-21.16,-0.511"
tValveGenIdInfo[3160229]["Pos"] = "-234.29,-21.20,-9.698"--"-225.60,-21.16,-20.05"
tValveGenIdInfo[3160228]["Pos"] = "-303.14,-21.16,28.988"--"-230.10,-12.66,90.671"
tValveGenIdInfo[3160231]["Pos"] = "-230.01,-12.66,90.531"--"-225.60,-21.16,-20.05"
tValveGenIdInfo[3160230]["Pos"] = "-227.48,-21.16,-29.19"--"-230.10,-12.66,90.671"

local sPos = {}
sPos[1]  = "-176.23,-21.16,6.6914"
sPos[2]  = "-235.11,-21.16,5.9801"
sPos[3]  = "-215.45,-21.16,-28.97"
sPos[4]  = "-295.16,-21.16,52.150"
sPos[5]  = "-270.66,-21.12,-29.69"
sPos[6]  = "-303.26,-21.17,0.1901"
sPos[7]  = "-176.51,-21.16,0.6733"
sPos[8]  = "-303.52,-21.19,16.841"
sPos[9]  = "-241.91,-12.66,90.496"
sPos[10] = "-303.34,-21.16,61.850"
sPos[11] = "-303.37,-21.16,82.758"
sPos[12] = "-198.56,-21.16,-29.45"
sPos[13] = "-234.51,-21.16,-58.41"
sPos[14] = "-253.53,-21.16,-29.24"
sPos[15] = "-234.29,-21.20,-9.698"
sPos[16] = "-303.14,-21.16,28.988"
sPos[17] = "-230.01,-12.66,90.531"
sPos[18] = "-227.48,-21.16,-29.19"

sPos["Box"] = {}
sPos["Box"][1] = "-162.68,-21.16,1.1120"
sPos["Box"][2] = "-205.85,-21.16,-22.99"
sPos["Box"][3] = "-235.74,-12.66,96.784"
sPos["Box"][4] = "-268.42,-21.16,-35.18"
sPos["Box"][5] = "-312.25,-21.16,3.5168"
sPos["Box"][6] = "-295.51,-21.16,41.809"


sPos["CollTong"]= {}
sPos["CollTong"][1]= "-200.93,-21.16,-21.19"
sPos["CollTong"][2]= "-227.59,-21.16,-57.22"
sPos["CollTong"][3]= "-238.41,-21.16,-65.24"
sPos["CollTong"][4]= "-229.49,-21.16,9.7101"
sPos["CollTong"][5]= "-312.92,-21.16,13.161"
sPos["CollTong"][6]= "-309.79,-21.16,57.021"

sPos["CollGuai"]= {}
sPos["CollGuai"][1]= "-159.04,-21.17,10.491"
sPos["CollGuai"][2]= "-203.00,-21.16,-33.16"
sPos["CollGuai"][3]= "-239.32,-21.16,-0.035"
sPos["CollGuai"][4]= "-235.37,-12.66,81.831"
sPos["CollGuai"][5]= "-262.15,-21.16,-33.84"
sPos["CollGuai"][6]= "-265.20,-21.16,-24.12"
sPos["CollGuai"][7]= "-294.57,-21.17,3.7501"
sPos["CollGuai"][8]= "-293.63,-21.16,17.905"
sPos["CollGuai"][9]= "-312.15,-21.16,41.508"
sPos["CollGuai"][10]="-294.60,-21.16,64.201"

local tRot = {}
tRot["Box"] = {}
tRot["Box"][1] = -90
tRot["Box"][2] = 180
tRot["Box"][3] = 180
tRot["Box"][4] = 180
tRot["Box"][5] = 90
tRot["Box"][6] = 90

tRot["CollGuai"]= {}
tRot["CollGuai"][1]= 139.01
tRot["CollGuai"][2]= -186.7
tRot["CollGuai"][3]= 49.086
tRot["CollGuai"][4]= 139.08
tRot["CollGuai"][5]= -20.41
tRot["CollGuai"][6]= 49.085
tRot["CollGuai"][7]= -130.9
tRot["CollGuai"][8]= -99.77
tRot["CollGuai"][9]= 100.11
tRot["CollGuai"][10]=139.08

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
tDialogId.PassBox           = 61138--7147
tDialogId.RuKou             = 61137--7211
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
tBox.Normal  = 40368  --奖励
tBox.Special = 40369
tBox.Specia2 = 40377
tBox.PassBox = 40370
tBox.Empty   = 40376
tBox.Monster1= 40379
tBox.Monster2= 40380

local tCollect = {}
tCollect.TongEmpy    = 60512
tCollect.TongAward   = 60511
tCollect.GuaiMonster1= 60516
tCollect.GuaiMonster2= 60517
tCollect.GuaiMonster3= 60518
tCollect.GuaiMonster4= 60519
tCollect.GuaiEmpy1   = 60507
tCollect.GuaiEmpy2   = 60514
tCollect.GuaiEmpy3   = 60515
tCollect.GuaiAward1  = 60504
tCollect.GuaiAward2  = 60520
tCollect.GuaiAward3  = 60521

local tMoXing = {}
tMoXing.GuaiMonster1 = 21384
tMoXing.GuaiMonster2 = 21385
tMoXing.GuaiMonster3 = 21386
tMoXing.GuaiMonster4 = 21387
tMoXing.GuaiEmpy1    = 21388
tMoXing.GuaiEmpy2    = 21389
tMoXing.GuaiEmpy3    = 21390

local CollectMoxing = {}
CollectMoxing[tCollect.GuaiMonster1] = tMoXing.GuaiMonster1
CollectMoxing[tCollect.GuaiMonster2] = tMoXing.GuaiMonster2
CollectMoxing[tCollect.GuaiMonster3] = tMoXing.GuaiMonster3
CollectMoxing[tCollect.GuaiMonster4] = tMoXing.GuaiMonster4
CollectMoxing[tCollect.GuaiEmpy1]    = tMoXing.GuaiEmpy1
CollectMoxing[tCollect.GuaiEmpy2]    = tMoXing.GuaiEmpy2
CollectMoxing[tCollect.GuaiEmpy3]    = tMoXing.GuaiEmpy3
CollectMoxing[tCollect.GuaiAward1]   = tMoXing.GuaiEmpy1
CollectMoxing[tCollect.GuaiAward2]   = tMoXing.GuaiEmpy2
CollectMoxing[tCollect.GuaiAward3]   = tMoXing.GuaiEmpy3


sPos["CollGuai_MX"]= {} --模型坐标
sPos["CollGuai_MX"][tMoXing.GuaiMonster1]= {}
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][1]= "-160.19,-21.17,11.070"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][2]= "-203.41,-21.16,-31.83"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][3]= "-239.97,-21.16,-1.280"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][4]= "-236.60,-12.66,82.510"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][5]= "-261.14,-21.16,-34.87"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][6]= "-265.70,-21.16,-25.24"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][7]= "-293.83,-21.17,5.0600"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][8]= "-292.27,-21.16,18.850"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][9]= "-313.61,-21.16,40.970"
sPos["CollGuai_MX"][tMoXing.GuaiMonster1][10]="-296.00,-21.16,64.970"

sPos["CollGuai_MX"][tMoXing.GuaiMonster2]= {}
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][1]= "-160.07,-21.17,11.720"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][2]= "-203.31,-21.16,-31.57"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][3]= "-240.06,-21.16,-1.081"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][4]= "-236.41,-12.66,82.930"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][5]= "-261.60,-21.16,-35.34"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][6]= "-266.08,-21.16,-25.11"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][7]= "-293.19,-21.17,4.5600"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][8]= "-292.05,-21.16,18.070"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][9]= "-313.50,-21.16,41.840"
sPos["CollGuai_MX"][tMoXing.GuaiMonster2][10]="-295.48,-21.16,65.390"

sPos["CollGuai_MX"][tMoXing.GuaiMonster3]= {}
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][1]= "-159.86,-21.17,11.480"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][2]= "-202.73,-21.16,-31.51"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][3]= "-240.76,-21.16,-0.860"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][4]= "-235.66,-12.66,82.680"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][5]= "-262.44,-21.16,-35.19"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][6]= "-266.68,-21.16,-24.91"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][7]= "-292.97,-21.17,4.3000"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][8]= "-292.22,-21.16,16.999"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][9]= "-313.51,-21.16,41.730"
sPos["CollGuai_MX"][tMoXing.GuaiMonster3][10]="-295.22,-21.16,65.630"

sPos["CollGuai_MX"][tMoXing.GuaiMonster4]= {}
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][1]= "-159.51,-21.17,10.980"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][2]= "-203.09,-21.16,-32.39"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][3]= "-239.81,-21.16,-0.750"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][4]= "-235.76,-12.66,82.360"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][5]= "-261.75,-21.16,-34.56"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][6]= "-265.52,-21.16,-24.91"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][7]= "-293.99,-21.17,4.5100"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][8]= "-292.60,-21.16,18.100"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][9]= "-313.02,-21.16,41.510"
sPos["CollGuai_MX"][tMoXing.GuaiMonster4][10]="-295.13,-21.16,64.460"

sPos["CollGuai_MX"][tMoXing.GuaiEmpy1]= {}
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][1]= "-159.20,-21.17,11.020"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][2]= "-202.89,-21.16,-32.58"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][3]= "-240.11,-21.16,-0.510"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][4]= "-235.64,-12.66,82.660"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][5]= "-261.65,-21.16,-34.53"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][6]= "-265.90,-21.16,-24.47"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][7]= "-293.98,-21.17,4.1400"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][8]= "-292.89,-21.16,18.028"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][9]= "-312.75,-21.16,41.680"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy1][10]="-295.10,-21.16,64.880"

sPos["CollGuai_MX"][tMoXing.GuaiEmpy2]= {}
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][1]= "-159.86,-21.17,11.480"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][2]= "-202.73,-21.16,-31.51"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][3]= "-240.76,-21.16,-0.860"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][4]= "-235.66,-12.66,82.680"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][5]= "-262.44,-21.16,-35.19"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][6]= "-266.68,-21.16,-24.91"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][7]= "-292.97,-21.17,4.3000"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][8]= "-292.22,-21.16,16.999"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][9]= "-313.51,-21.16,41.730"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy2][10]="-295.22,-21.16,65.630"

sPos["CollGuai_MX"][tMoXing.GuaiEmpy3]= {}
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][1]= "-160.13,-21.16,9.2880"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][2]= "-204.37,-21.16,-33.52"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][3]= "-238.09,-21.16,-1.280"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][4]= "-236.65,-12.66,80.431"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][5]= "-260.92,-21.16,-33.22"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][6]= "-263.90,-21.16,-25.56"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][7]= "-296.08,-21.17,4.7530"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][8]= "-294.15,-21.16,19.310"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][9]= "-312.27,-21.16,39.880"
sPos["CollGuai_MX"][tMoXing.GuaiEmpy3][10]="-295.70,-21.16,62.952"

tRot["CollGuai_MX"]= {} --模型角度
tRot["CollGuai_MX"][tMoXing.GuaiMonster1]= {}
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][8]= -99.77
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiMonster1][10]=139.08

tRot["CollGuai_MX"][tMoXing.GuaiMonster2]= {}
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][8]= -99.77
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiMonster2][10]=139.08

tRot["CollGuai_MX"][tMoXing.GuaiMonster3]= {}
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][8]= -61.02
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiMonster3][10]=139.08

tRot["CollGuai_MX"][tMoXing.GuaiMonster4]= {}
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][8]= -99.77
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiMonster4][10]=139.08

tRot["CollGuai_MX"][tMoXing.GuaiEmpy1]= {}
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][8]= -99.77
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiEmpy1][10]=139.08

tRot["CollGuai_MX"][tMoXing.GuaiEmpy2]= {}
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][8]= -61.02
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiEmpy2][10]=139.08

tRot["CollGuai_MX"][tMoXing.GuaiEmpy3]= {}
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][1]= 139.01
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][2]= -186.7
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][3]= 49.086
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][4]= 139.08
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][5]= -20.41
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][6]= 49.085
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][7]= -130.9
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][8]= -99.77
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][9]= 100.11
tRot["CollGuai_MX"][tMoXing.GuaiEmpy3][10]=139.08

local nTrap_RuKou = 30751
local tGenId = {}
tGenId.Monster_Box_1 = 3160301
tGenId.Monster_Box_2 = 3160302
tGenId.Monster_Col_1 = 3160303
tGenId.Monster_Col_2 = 3160304
tGenId.Monster_Col_3 = 3160305
tGenId.Monster_Col_4 = 3160306

tGenId.BoxMonster1_1 = 3160001
tGenId.BoxMonster1_2 = 3160002
tGenId.BoxMonster2_1 = 3160003
tGenId.BoxEmpy_1     = 3160004
tGenId.BoxEmpy_2     = 3160005
tGenId.BoxAward= {
    3160006,
    3160007,
    3160008
}
tGenId.ColGuai_Monster1_1 = 3160115
tGenId.ColGuai_Monster1_2 = 3160116
tGenId.ColGuai_Monster2_1 = 3160117
tGenId.ColGuai_Monster3_1 = 3160118
tGenId.ColGuai_Monster4_1 = 3160119
tGenId.ColGuai_Empy = {
    3160111,
    3160112,
    3160113,
    3160114
}
tGenId.ColGuai_Award = {
    3160120,
    3160121,
    3160122,
    3160123,
    3160124,
    3160125,
    3160126,
    3160127
}

tGenId.ColTong_Empy = {
    3160101,
    3160102,
    3160103,
    3160104
}
tGenId.ColTong_Award = {
    3160105,
    3160106,
    3160107,
    3160108,
    3160109,
    3160110
}
tGenId.BoxCol_Together = {
    tGenId.BoxMonster2_1,
    tGenId.ColGuai_Monster2_1,
    tGenId.ColGuai_Monster3_1,
    tGenId.ColGuai_Monster4_1
}


local tCollectMonster2 = {}
tCollectMonster2[tGenId.ColGuai_Monster2_1] = tCollect.GuaiMonster2
tCollectMonster2[tGenId.ColGuai_Monster3_1] = tCollect.GuaiMonster3
tCollectMonster2[tGenId.ColGuai_Monster4_1] = tCollect.GuaiMonster4

local tMonsterGroup = {}
tMonsterGroup[1] = 200852
tMonsterGroup[2] = 200853
tMonsterGroup[3] = 200854
tMonsterGroup[4] = 200855
tMonsterGroup[5] = 200856
tMonsterGroup[6] = 200857

local tAward = {}
tAward.Normal  = 1001050
tAward.Special = 1001051
tAward.Specia2 = 1001054
tAward.PassBox = 1001052
tAward.Collect = 1001053
--===function===========
function CopyMap_ShaHaiYiJi2_Fly(nGenId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data7,rwUserGetId())
    if index == 1 then
        return
    end
    if rwChkTable(tValveGenIdInfo[nGenId]) then
        rwTeleport(1,rwUserGetId(),tValveGenIdInfo[nGenId]["Pos"])
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data7,rwUserGetId())
    end
end


--进入副本初始化随机分布
local ToGetherSuiJi = {}
ToGetherSuiJi["BoxMonster2"] = {}
ToGetherSuiJi["ColMonster2"] = {}

function CopyMap_ShaHaiYiJi2_ToGetherSuiJi()
    local nRate_3 = math.random(1,100) --共同怪物(2~3)suiji结果
    local BoxCol = 2
    if nRate_3 < random_ColAndBox then
        BoxCol = 3
    end
    local tTogether = SysCopyTable(tGenId.BoxCol_Together)
    for i =1,BoxCol do
        local rate = math.random(1,#tTogether)
        if tTogether[rate] == tGenId.BoxMonster2_1 then
            table.insert(ToGetherSuiJi["BoxMonster2"],tGenId.BoxMonster2_1)
        else
            table.insert(ToGetherSuiJi["ColMonster2"],tTogether[rate])
        end
        table.remove(tTogether,rate)
    end
end
local tGenIdBox = {}
local tGenIdCol_monster = {}
local tGenIdCol_tong = {}

function CopyMap_ShaHaiYiJi2_BoxSuiJi()
    tGenIdBox["Empy"] = {tGenId.BoxEmpy_1,tGenId.BoxEmpy_2}
    tGenIdBox["Monster1"] = {tGenId.BoxMonster1_1}
    tGenIdBox["Monster2"] = ToGetherSuiJi["BoxMonster2"]
    tGenIdBox["Award"] = {}
    local nRate_1 = math.random(1,100) --宝箱怪物1（1~2）随机结果
    if nRate_1 < random_Box then --50%概率多一只宝箱怪1
        table.insert(tGenIdBox["Monster1"],tGenId.BoxMonster1_2)
    end
    local nBoxAward = 6-2- #tGenIdBox["Monster1"]-#tGenIdBox["Monster2"]
    if nBoxAward>=1 then
        for i = 1,nBoxAward do
            table.insert(tGenIdBox["Award"],tGenId.BoxAward[i])
        end
    end

    local tPosBox = SysCopyTable(sPos.Box)
    local tRotBox = SysCopyTable(tRot.Box)
    for i, v in pairs(tGenIdBox) do
        for j,k in pairs(v) do
            local rate = math.random(1,#tPosBox)
            rwAddGenEvent(k,tPosBox[rate],0,tRotBox[rate])
            table.remove(tPosBox,rate)
            table.remove(tRotBox,rate)
        end
    end
end

function CopyMap_ShaHaiYiJi2_ColSuiJi()
    local nDynMapId = rwUserGetDynMapId()
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId] = {}
    rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"] = {}

    tGenIdCol_monster["Empy"] = {}
    tGenIdCol_monster["Monster1"] = {tGenId.ColGuai_Monster1_1}
    tGenIdCol_monster["Monster2"] = ToGetherSuiJi["ColMonster2"]
    tGenIdCol_monster["Award"] = {}

    tGenIdCol_tong["Empy"] = {}
    tGenIdCol_tong["Award"] = {}

    local nRate_2 = math.random(1,100) --采集怪物1(1~2)随机结果
    local nRateColEmpty_tong = math.random(0,4) --桶采集空
    if nRateColEmpty_tong ~=0 then
        for i = 1,nRateColEmpty_tong do
            table.insert(tGenIdCol_tong["Empy"],tGenId.ColTong_Empy[i])
        end
    end
    --总6，不是空就是奖励
    local mColAward_tong = 6- nRateColEmpty_tong
    for i = 1,mColAward_tong do
        table.insert(tGenIdCol_tong["Award"],tGenId.ColTong_Award[i])
    end
    --怪采集-怪1
    if nRate_2 < random_Collect then --50%概率多一只宝箱怪1
        table.insert(tGenIdCol_monster["Monster1"],tGenId.ColGuai_Monster1_2)
    end
    local ColEmpty_Guai = 4-nRateColEmpty_tong --总4空，-桶空=怪空
    if ColEmpty_Guai ~=0 then
        for i = 1,ColEmpty_Guai do
            table.insert(tGenIdCol_monster["Empy"],tGenId.ColGuai_Empy[i])
        end
    end

    local nColAward_Guai = 10 - #tGenIdCol_monster["Empy"] - #tGenIdCol_monster["Monster1"] - #tGenIdCol_monster["Monster2"]
    if nColAward_Guai>=1 then
        for i = 1,nColAward_Guai do
            table.insert(tGenIdCol_monster["Award"],tGenId.ColGuai_Award[i])
        end
    end

    --ColTong
    local tPosColtong = SysCopyTable(sPos.CollTong)
    for i, v in pairs(tGenIdCol_tong) do
        for j,k in pairs(v) do
            local rate = math.random(1,#tPosColtong)
            rwAddGenEvent(k,tPosColtong[rate])
            table.remove(tPosColtong,rate)
        end
    end
    CopyMap_ShaHaiYiJi2_ColSuiJiCreate(nDynMapId)
end

function CopyMap_ShaHaiYiJi2_ColSuiJiCreate(nDynMapId)
    local tIndex = {}
    for i = 1,10 do
        tIndex[i] = i
    end

    local nGenMX = FirstGenMX
    local tPosColguai = SysCopyTable(sPos.CollGuai)

    for i,v in pairs(tGenIdCol_monster) do
        rwPrintWarnLog("==i:"..i)
        for _,k in pairs(v) do
            local rate = math.random(1,#tPosColguai)
            if i == "Empy" then
                local rateNpc = math.random(1,3)
                rwAddGenEvent(k,tPosColguai[rate], tCollect["GuaiEmpy"..rateNpc])
                local nMX = CollectMoxing[tCollect["GuaiEmpy"..rateNpc]]
                rwAddGenEvent(nGenMX,sPos.CollGuai_MX[nMX][tIndex[rate]],nMX,tRot.CollGuai_MX[nMX][tIndex[rate]])
            elseif i == "Award" then
                local rateNpc = math.random(1,3)
                rwAddGenEvent(k,tPosColguai[rate], tCollect["GuaiAward"..rateNpc])
                local nMX = CollectMoxing[tCollect["GuaiAward"..rateNpc]]
                rwAddGenEvent(nGenMX,sPos.CollGuai_MX[nMX][tIndex[rate]],nMX,tRot.CollGuai_MX[nMX][tIndex[rate]])
            elseif i == "Monster1" then
                rwAddGenEvent(k,tPosColguai[rate])
                local nMX = CollectMoxing[tCollect.GuaiMonster1]
                rwAddGenEvent(nGenMX,sPos.CollGuai_MX[nMX][tIndex[rate]],nMX,tRot.CollGuai_MX[nMX][tIndex[rate]])
            elseif i == "Monster2" then
                rwAddGenEvent(k,tPosColguai[rate])
                local nNpcGroupid = tCollectMonster2[k]
                local nMX = CollectMoxing[nNpcGroupid]
                rwAddGenEvent(nGenMX,sPos.CollGuai_MX[nMX][tIndex[rate]],nMX,tRot.CollGuai_MX[nMX][tIndex[rate]])
            end
            table.remove(tPosColguai,rate)
            table.remove(tIndex,rate)
            rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][k]=nGenMX
            nGenMX = nGenMX+1
        end
    end
end

function CopyMap_ShaHaiYiJi2_MonsterDie()
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data3,rwUserGetId())
    if index == nNumber_Task then
        rwOpenNpcChatDialog(tDialogId.PassBox)
    end
end

rwtMonsterGroup[tMonsterGroup[1]] = {}
rwtMonsterGroup[tMonsterGroup[1]]["BattleWin"] = function()
    CopyMap_ShaHaiYiJi2_MonsterDie()
end
rwtMonsterGroup[tMonsterGroup[1]]["BattleLose"] = function()
    CopyMap_ShaHaiYiJi2_MonsterDie()
end
rwtMonsterGroup[tMonsterGroup[1]]["BattleEscape"] = function()
    CopyMap_ShaHaiYiJi2_MonsterDie()
end

rwtMonsterGroup[tMonsterGroup[2]] = rwtMonsterGroup[tMonsterGroup[1]]
rwtMonsterGroup[tMonsterGroup[3]] = rwtMonsterGroup[tMonsterGroup[1]]
rwtMonsterGroup[tMonsterGroup[4]] = rwtMonsterGroup[tMonsterGroup[1]]
rwtMonsterGroup[tMonsterGroup[5]] = rwtMonsterGroup[tMonsterGroup[1]]
rwtMonsterGroup[tMonsterGroup[6]] = rwtMonsterGroup[tMonsterGroup[1]]
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
        CopyMap_ShaHaiYiJi2_Fly(nGenId)
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
	CopyMap_ShaHaiYiJi2_Fly(nId)
end

-- rwtDialog[tDialogId.RuKou] = {}
-- rwtDialog[tDialogId.RuKou]["DialogEnd"] = function (nId)
-- 	rwLinkPassCopyMap(nCopyMap)
-- end

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

rwtNpcGroup[tBox.Normal] = {}
rwtNpcGroup[tBox.Normal]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal]["Awards"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Normal
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Normal
rwtNpcGroup[tBox.Normal]["Function"] = function(nNpcGroupType,nGenEventId)
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

rwtNpcGroup[tBox.Monster1] = {}
rwtNpcGroup[tBox.Monster1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Monster1]["Awards"] = {}
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.BoxMonster_1
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tBox.Monster1]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3

rwtNpcGroup[tBox.Monster2] = {}
rwtNpcGroup[tBox.Monster2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Monster2]["Awards"] = {}
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.BoxMonster_2
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tBox.Monster2]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3

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

rwtNpcGroup[tCollect.TongAward] = {}
rwtNpcGroup[tCollect.TongAward]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.TongAward]["CollectTime"] = 1
rwtNpcGroup[tCollect.TongAward]["Awards"] = {}
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.TongAward
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.TongAward]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[tCollect.TongAward]["Func"] = function (nGenEventId,nRandom)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

rwtNpcGroup[tCollect.TongEmpy] = {}
rwtNpcGroup[tCollect.TongEmpy]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.TongEmpy]["CollectTime"] = 1
rwtNpcGroup[tCollect.TongEmpy]["Awards"] = {}
rwtNpcGroup[tCollect.TongEmpy]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.TongEmpy]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.TongEmpy]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[tCollect.TongEmpy]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.TongEmpy]["Awards"]["Events"][1]["UserMsg"]["Content"] = "里面什么也没有。"
rwtNpcGroup[tCollect.TongEmpy]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[tCollect.TongEmpy]["Func"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
end

rwtNpcGroup[tCollect.GuaiAward1] = {}
rwtNpcGroup[tCollect.GuaiAward1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiAward1]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiAward1]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.GuaiAward1
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.GuaiAward1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[tCollect.GuaiAward1]["Func"] = function (nGenEventId,nRandom)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
    local nDynMapId = rwUserGetDynMapId()
    rwPrintErrorLog(nGenEventId.." "..rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiAward2] = {}
rwtNpcGroup[tCollect.GuaiAward2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiAward2]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiAward2]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.GuaiAward2
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.GuaiAward2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[tCollect.GuaiAward2]["Func"] = function (nGenEventId,nRandom)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiAward3] = {}
rwtNpcGroup[tCollect.GuaiAward3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiAward3]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiAward3]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.GuaiAward3
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.GuaiAward3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[tCollect.GuaiAward3]["Func"] = function (nGenEventId,nRandom)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiEmpy1] = {}
rwtNpcGroup[tCollect.GuaiEmpy1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiEmpy1]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"]["Events"][1]["UserMsg"] = {}
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"]["Events"][1]["UserMsg"]["Content"] = "里面什么也没有。"
rwtNpcGroup[tCollect.GuaiEmpy1]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[tCollect.GuaiEmpy1]["Func"] = function(nGenEventId)
    rwBaseAward:create(tSHYJ_DialogAwards):Process()
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiEmpy2] = rwtNpcGroup[tCollect.GuaiEmpy1]
rwtNpcGroup[tCollect.GuaiEmpy3] = rwtNpcGroup[tCollect.GuaiEmpy2]

rwtNpcGroup[tCollect.GuaiMonster1] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiMonster1]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_1
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.GuaiMonster1]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.GuaiMonster1]["Func"] = function(nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiMonster2] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiMonster2]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_2
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.GuaiMonster2]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.GuaiMonster2]["Func"] = function(nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiMonster3] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiMonster3]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_3
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.GuaiMonster3]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.GuaiMonster3]["Func"] = function(nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[tCollect.GuaiMonster4] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.GuaiMonster4]["CollectTime"] = 1
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_4
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.GuaiMonster4]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.GuaiMonster4]["Func"] = function(nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    rwDelGenEvent(rwtCopyMapDynInitInfo[nCopyMap][nDynMapId]["CollectInfo"][nGenEventId])
end

rwtNpcGroup[nTrap_RuKou] = {}
rwtNpcGroup[nTrap_RuKou]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nTrap_RuKou]["Awards"] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_RuKou]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.RuKou
--===========================目标
rwtTarget[nTaskid2] = {}
rwtTarget[nTaskid2]["Title"] = tLuaText[LANGUAGE_CONFIG][22001]
-- rwtTarget[nTaskid2]["ReqDialogId"] = tDialogId.PassBox
rwtTarget[nTaskid2]["ReqTreasureBox"] = {tBox.Normal,tBox.Special,tBox.Specia2,tBox.PassBox,tBox.Empty,tBox.Monster1,tBox.Monster2}
rwtTarget[nTaskid2]["ReqCollectId"] = {tCollect.TongEmpy,tCollect.TongAward,
tCollect.GuaiMonster1,tCollect.GuaiMonster2,tCollect.GuaiMonster3,tCollect.GuaiMonster4,tCollect.GuaiEmpy1,tCollect.GuaiEmpy2,tCollect.GuaiEmpy3,
tCollect.GuaiAward1,tCollect.GuaiAward2,tCollect.GuaiAward3}
rwtTarget[nTaskid2]["ReqCount"] = nNumber_Task

rwtTarget[nTaskid] = {}
rwtTarget[nTaskid]["Title"] = tLuaText[LANGUAGE_CONFIG][22001]
rwtTarget[nTaskid]["ReqDialogId"] = tDialogId.PassBox
rwtTarget[nTaskid]["ReqCount"] = 1

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
rwtCopyMapMission[nCopyMap]["MapInitFunc"] = function (MissionId,MapId)
    CopyMap_ShaHaiYiJi2_ToGetherSuiJi()
    CopyMap_ShaHaiYiJi2_BoxSuiJi()
    CopyMap_ShaHaiYiJi2_ColSuiJi()
end

function CopyMap_ShaHaiYiJi2_Test(index)
    for _,v in pairs(tGenIdBox.Empy) do
        rwPrintWarnLog("Empy".._..":"..v)
    end
    for _,v in pairs(tGenIdBox.Award) do
        rwPrintWarnLog("Award".._..":"..v)
    end
    for _,v in pairs(tGenIdBox.Monster1) do
        rwPrintWarnLog("Monster1".._..":"..v)
    end
    for _,v in pairs(tGenIdBox.Monster2) do
        rwPrintWarnLog("Monster2".._..":"..v)
    end


    for _,v in pairs(tGenIdCol_monster.Empy) do
        rwPrintWarnLog("Empy".._..":"..v)
    end
    for _,v in pairs(tGenIdCol_monster.Award) do
        rwPrintWarnLog("Award".._..":"..v)
    end
    for _,v in pairs(tGenIdCol_monster.Monster1) do
        rwPrintWarnLog("Monster1".._..":"..v)
    end
    for _,v in pairs(tGenIdCol_monster.Monster2) do
        rwPrintWarnLog("Monster2".._..":"..v)
    end


    for _,v in pairs(tGenIdCol_tong.Empy) do
        rwPrintWarnLog("Empy".._..":"..v)
    end
    for _,v in pairs(tGenIdCol_tong.Award) do
        rwPrintWarnLog("Award".._..":"..v)
    end

    rwPrintWarnLog("======================")
    for _,v in pairs(tGenIdCol_monster) do
        rwPrintWarnLog(_)
    end
end
