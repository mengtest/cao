
--藏宝副本 远古墓穴
--LHW



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

local tCopyMap_YuanGu = {}

--副本ID
tCopyMap_YuanGu["nCopyMapId"] = 3070

--用户数据( 存储第一次对话情况 )
tCopyMap_YuanGu["nUserRecordId"] = 1112

--位置点

--出生坐标点
tCopyMap_YuanGu["sPos_1"] = "34.95,-0.83,-0.94"
tCopyMap_YuanGu["sPos_2"] = "35.47,-1.33,10.38"
tCopyMap_YuanGu["sPos_3"] = "41.76,-2.33,23.31"
tCopyMap_YuanGu["sPos_4"] = "29.73,-3.83,30.35"
tCopyMap_YuanGu["sPos_5"] = "18.47,-3.83,31.51"
tCopyMap_YuanGu["sPos_6"] = "5.84,-2.33,22.67"
tCopyMap_YuanGu["sPos_7"] = "11.91,-2.12,40.19"
tCopyMap_YuanGu["sPos_8"] = "9.24,-3.80,56.13"
tCopyMap_YuanGu["sPos_9"] = "22.12,-3.82,56.24"
tCopyMap_YuanGu["sPos_10"] = "10.52,-3.76,74.93"
tCopyMap_YuanGu["sPos_1_RotationY"] = 120
tCopyMap_YuanGu["sPos_2_RotationY"] = 352.35
tCopyMap_YuanGu["sPos_3_RotationY"] = 110.12
tCopyMap_YuanGu["sPos_4_RotationY"] = 214.42
tCopyMap_YuanGu["sPos_5_RotationY"] = 187.60
tCopyMap_YuanGu["sPos_6_RotationY"] = 264.27
tCopyMap_YuanGu["sPos_7_RotationY"] = 47.68
tCopyMap_YuanGu["sPos_8_RotationY"] = 331.8
tCopyMap_YuanGu["sPos_9_RotationY"] = 110.5
tCopyMap_YuanGu["sPos_10_RotationY"] = 89.5

--传送坐标和方向
tCopyMap_YuanGu["sPos_11"] = "10.66,-3.83,58.98"
tCopyMap_YuanGu["sPos_12"] = "31.75,-0.83,-1.08"
tCopyMap_YuanGu["sPos_13"] = "12.73,-2.14,44.37"
tCopyMap_YuanGu["sPos_14"] = "23.99,-3.82,64.77"
tCopyMap_YuanGu["sPos_15"] = "42.84,-2.31,18.37"
tCopyMap_YuanGu["sPos_16"] = "23.71,-3.83,69.20"
tCopyMap_YuanGu["sPos_11_RotationY"] = 66.39
tCopyMap_YuanGu["sPos_12_RotationY"] = 49.09
tCopyMap_YuanGu["sPos_13_RotationY"] = 229.09
tCopyMap_YuanGu["sPos_14_RotationY"] = 229.09
tCopyMap_YuanGu["sPos_15_RotationY"] = 229.09
tCopyMap_YuanGu["sPos_16_RotationY"] = 229.09



--陷阱坐标


--相关任务


--目标任务
tCopyMap_YuanGu["nMainTaskId_1"] = 60119 --寻找秘密通道
tCopyMap_YuanGu["nMainTaskId_2"] = 60120 --离开墓室

--目标任务文字

--副本位置NPC组


--场景加载
local tLoadGenId = {}
local tLoadGenId_Random_1 = {}

--怪物


--怪物组

--奖励ID (服务端)
local Award_ID_FuBen_CaiJi = 1000272
local Award_ID_FuBen_Box = 1000273


--宝箱
tCopyMap_YuanGu["TreasureBox"] = 40140
tCopyMap_YuanGu["TreasureBox_GenId"] = 3070001
table.insert(tLoadGenId,tCopyMap_YuanGu["TreasureBox_GenId"])
 

--陷阱
-- tCopyMap_YuanGu["nTrap1"] = 30468
-- tCopyMap_YuanGu["nTrap1_GenId"] =  3070002
-- table.insert(tLoadGenId,tCopyMap_YuanGu["nTrap1_GenId"])


--采集物(尸体)
tCopyMap_YuanGu["nCollect1"] = 60233
tCopyMap_YuanGu["nCollect1_GenId1"] = 3070003
tCopyMap_YuanGu["nCollect1_GenId2"] = 3070004
tCopyMap_YuanGu["nCollect1_GenId3"] = 3070005
tCopyMap_YuanGu["nCollect1_GenId4"] = 3070006
tCopyMap_YuanGu["nCollect1_GenId5"] = 3070007
tCopyMap_YuanGu["nCollect1_GenId6"] = 3070008
tCopyMap_YuanGu["nCollect1_GenId7"] = 3070009
tCopyMap_YuanGu["nCollect1_GenId8"] = 3070010
tCopyMap_YuanGu["nCollect1_GenId9"] = 3070011
tCopyMap_YuanGu["nCollect1_GenId10"] = 3070012

--Count:20 Random:10
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId1"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId2"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId3"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId4"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId5"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId6"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId7"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId8"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId9"])
table.insert(tLoadGenId_Random_1,tCopyMap_YuanGu["nCollect1_GenId10"])


--采集物(传送阵)
tCopyMap_YuanGu["nCollect2"] = 60234
tCopyMap_YuanGu["nCollect3"] = 60235
tCopyMap_YuanGu["nCollect4"] = 60236
tCopyMap_YuanGu["nCollect5"] = 60237
tCopyMap_YuanGu["nCollect6"] = 60238
tCopyMap_YuanGu["nCollect7"] = 60239
tCopyMap_YuanGu["nCollect2_GenId1"] = 3070013
tCopyMap_YuanGu["nCollect3_GenId1"] = 3070014
tCopyMap_YuanGu["nCollect4_GenId1"] = 3070015
tCopyMap_YuanGu["nCollect5_GenId1"] = 3070016
tCopyMap_YuanGu["nCollect6_GenId1"] = 3070017
tCopyMap_YuanGu["nCollect7_GenId1"] = 3070018

table.insert(tLoadGenId,tCopyMap_YuanGu["nCollect2_GenId1"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nCollect3_GenId1"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nCollect4_GenId1"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nCollect5_GenId1"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nCollect6_GenId1"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nCollect7_GenId1"])


--机关(空气墙X3)
tCopyMap_YuanGu["nValve1"] = 1055
tCopyMap_YuanGu["nValue_GenId1"] = 3070019
tCopyMap_YuanGu["nValue_GenId2"] = 3070020
tCopyMap_YuanGu["nValue_GenId3"] = 3070021
table.insert(tLoadGenId,tCopyMap_YuanGu["nValue_GenId1"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nValue_GenId2"])
table.insert(tLoadGenId,tCopyMap_YuanGu["nValue_GenId3"])



--场景对话

tCopyMap_YuanGu["nSceneDialogId_1"] = 5433 -- 进入副本触发对白
tCopyMap_YuanGu["nSceneDialogId_2"] = 5434 -- 第一次采集尸体触发对白
tCopyMap_YuanGu["nSceneDialogId_3"] = 5435 -- 第一次靠近墙壁触发对白
tCopyMap_YuanGu["nSceneDialogId_4"] = 5436 -- 第一次采集棺材触发对白
tCopyMap_YuanGu["nSceneDialogId_5"] = 5437 -- 还有奖励未领取时对白
tCopyMap_YuanGu["nSceneDialogId_6"] = 5438 -- 奖励全部领取时对白
tCopyMap_YuanGu["nSceneDialogId_7"] = 5460 -- 进入副本触发对白2
tCopyMap_YuanGu["nSceneDialogId_8"] = 5461 -- 第一次采集尸体触发对白2
tCopyMap_YuanGu["nSceneDialogId_9"] = 5462 -- 第一次采集尸体触发对白3
tCopyMap_YuanGu["nSceneDialogId_10"] = 5463 -- 第一次靠近墙壁触发对白2
tCopyMap_YuanGu["nSceneDialogId_11"] = 5464 -- 第一次采集棺材触发对白2
tCopyMap_YuanGu["nSceneDialogId_12"] = 5465 -- 还有奖励未领取时对白2
tCopyMap_YuanGu["nSceneDialogId_13"] = 5466 -- 奖励全部领取时对白2
tCopyMap_YuanGu["nSceneDialogId_14"] = 5467 -- 奖励全部领取时对白3

--随机对话补充
--进入副本触发对白
tCopyMap_YuanGu["nSceneDialogId_1_1"] = 5677
tCopyMap_YuanGu["nSceneDialogId_1_2"] = 5678
tCopyMap_YuanGu["nSceneDialogId_1_3"] = 5679

--第一次采集尸体触发对白
tCopyMap_YuanGu["nSceneDialogId_2_1"] = 5680
tCopyMap_YuanGu["nSceneDialogId_2_2"] = 5681

--第一次靠近墙壁触发对白
tCopyMap_YuanGu["nSceneDialogId_3_1"] = 5682
tCopyMap_YuanGu["nSceneDialogId_3_2"] = 5683
tCopyMap_YuanGu["nSceneDialogId_3_3"] = 5684

--第一次采集棺材触发对白
tCopyMap_YuanGu["nSceneDialogId_4_1"] = 5685
tCopyMap_YuanGu["nSceneDialogId_4_2"] = 5686
tCopyMap_YuanGu["nSceneDialogId_4_3"] = 5687

--还有奖励未领取时对白
tCopyMap_YuanGu["nSceneDialogId_5_1"] = 5688
tCopyMap_YuanGu["nSceneDialogId_5_2"] = 5689
tCopyMap_YuanGu["nSceneDialogId_5_3"] = 5690

--奖励全部领取时对白
tCopyMap_YuanGu["nSceneDialogId_6_1"] = 5691
tCopyMap_YuanGu["nSceneDialogId_6_2"] = 5692
--区别
tCopyMap_YuanGu["nSceneDialogId_6_3"] = 5743

--场景动画


--物品ID


--额外奖励组(对话)
local tOtherAward_1 = {}
tOtherAward_1["Events"] = {}
tOtherAward_1["Events"][1] = {}
tOtherAward_1["Events"][1]["OpenDialog"] = {}
tOtherAward_1["Events"][1]["OpenDialog"]["tDialog"] = {}
tOtherAward_1["Events"][1]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_3"]
tOtherAward_1["Events"][1]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_10"]
tOtherAward_1["Events"][1]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_3_1"]
tOtherAward_1["Events"][1]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_3_2"]
tOtherAward_1["Events"][1]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_3_3"]

local tOtherAward_2 = {}
tOtherAward_2["Events"] = {}
tOtherAward_2["Events"][1] = {}
tOtherAward_2["Events"][1]["OpenDialog"] = {}
tOtherAward_2["Events"][1]["OpenDialog"]["tDialog"] = {}
tOtherAward_2["Events"][1]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_2"]
tOtherAward_2["Events"][1]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_8"]
tOtherAward_2["Events"][1]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_9"]
tOtherAward_2["Events"][1]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_2_1"]
tOtherAward_2["Events"][1]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_2_2"]



----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--剧情
function CopyMap_YuanGuMuXue_FirstDialog()
	rwBaseAward:create(tOtherAward_2):Process()
end
rwtCGFinish[15405] = rwtCGFinish[15405] or {}
table.insert(rwtCGFinish[15405],CopyMap_YuanGuMuXue_FirstDialog)

--机关
tValve[tCopyMap_YuanGu["nValve1"]] = tValve[tCopyMap_YuanGu["nValve1"]] or {}
tValve[tCopyMap_YuanGu["nValve1"]]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tCopyMap_YuanGu["nValve1"]]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    if rwTempDataGetValue(tCopyMap_YuanGu["nUserRecordId"],CONST_TEMP_DATA.Data3) == 0 then
		rwBaseAward:create(tOtherAward_1):Process()
		rwUserTempDataSet(tCopyMap_YuanGu["nUserRecordId"],1,CONST_TEMP_DATA.Data3)
	end
end


--对白逻辑

--进副本后剧情
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]] or {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tCopyMap_YuanGu["nUserRecordId"]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15405
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tCopyMap_YuanGu["nUserRecordId"]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1

rwtDialog[tCopyMap_YuanGu["nSceneDialogId_7"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1_1"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1_2"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1_3"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_1"]]


--发现尸体后对白
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]] or {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15406
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

rwtDialog[tCopyMap_YuanGu["nSceneDialogId_8"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_9"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2_1"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2_2"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_2"]]

--采集棺材触发对白
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]] or {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15407
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["UserTeleport"] = {}
--rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_11"]
--rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]["DialogEndInit"]["Events"][1]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_11_RotationY"]

rwtDialog[tCopyMap_YuanGu["nSceneDialogId_11"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4_1"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4_2"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4_3"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_4"]]



--宝箱开启逻辑
--(1)
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]] or {}
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]]["OptionFunc1"] = function ()
	return false
end

rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]]["OptionFunc2"] = function ()
	LinkTreasureBoxOpenSucc(tCopyMap_YuanGu["TreasureBox"],tCopyMap_YuanGu["TreasureBox_GenId"],1)
end

--(2)
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_12"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5_1"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5_2"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]]
rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5_3"]] = rwtDialog[tCopyMap_YuanGu["nSceneDialogId_5"]]



--采集逻辑
--尸体
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["CollectTime"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_YuanGu["nCollect1"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_YuanGu["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_FuBen_CaiJi




--传送阵
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["CollectTime"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = tCopyMap_YuanGu["nUserRecordId"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_4"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_11"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_4_1"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_4_2"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_4_3"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tCopyMap_YuanGu["nUserRecordId"]
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["PlaySceneAnimation"]["Id"] = 15407
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["UserTeleport"] = {}
--rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_11"]
--rwtNpcGroup[tCopyMap_YuanGu["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_11_RotationY"]


rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["CollectTime"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15408
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["UserTeleport"] = {}
--rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_12"]
--rwtNpcGroup[tCopyMap_YuanGu["nCollect3"]]["Awards"]["Events"][1]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_12_RotationY"]


rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["CollectTime"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15409
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["UserTeleport"] = {}
--rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_13"]
--rwtNpcGroup[tCopyMap_YuanGu["nCollect4"]]["Awards"]["Events"][1]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_13_RotationY"]

rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["CollectTime"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15410
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["UserTeleport"] = {}
--rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_14"]
--rwtNpcGroup[tCopyMap_YuanGu["nCollect5"]]["Awards"]["Events"][1]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_14_RotationY"]

rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["CollectTime"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15411
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["UserTeleport"] = {}
--rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_15"]
--rwtNpcGroup[tCopyMap_YuanGu["nCollect6"]]["Awards"]["Events"][1]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_15_RotationY"]

rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]] = rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]] or {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["CollectTime"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15412
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["UserTeleport"] = {}
--rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["UserTeleport"]["Pos"] = tCopyMap_YuanGu["sPos_16"]
--rwtNpcGroup[tCopyMap_YuanGu["nCollect7"]]["Awards"]["Events"][1]["UserTeleport"]["RotationY"] = tCopyMap_YuanGu["sPos_16_RotationY"]


--宝箱

rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]] = rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]] or {} 
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tLoadGenId_Random_1
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_5"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_12"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_5_1"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_5_2"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_5_3"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_6"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_13"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_14"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_6_1"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_6_2"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["DynDelete"][1] = tCopyMap_YuanGu["TreasureBox_GenId"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_YuanGu["TreasureBox"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_FuBen_Box 
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_6"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_13"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_14"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_6_1"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_6_3"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["DynDelete"][1] = tCopyMap_YuanGu["TreasureBox_GenId"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_YuanGu["TreasureBox"]
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_YuanGu["TreasureBox"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_FuBen_Box  


--陷阱

-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]] = rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]] or {}
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["DelTrap"] = 1
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["Awards"] = {}
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["Awards"]["Events"] = {}
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[tCopyMap_YuanGu["nTrap1"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tCopyMap_YuanGu["nSceneDialogId_3"]

--进入副本




--副本目标
rwtTarget[tCopyMap_YuanGu["nMainTaskId_1"]] = {}
rwtTarget[tCopyMap_YuanGu["nMainTaskId_1"]]["Title"] = tLuaText[LANGUAGE_CONFIG][21274]
rwtTarget[tCopyMap_YuanGu["nMainTaskId_1"]]["ReqCollectId"] = tCopyMap_YuanGu["nCollect2"]
rwtTarget[tCopyMap_YuanGu["nMainTaskId_1"]]["ReqCount"] = 1

rwtTarget[tCopyMap_YuanGu["nMainTaskId_2"]] = {}
rwtTarget[tCopyMap_YuanGu["nMainTaskId_2"]]["Title"] = tLuaText[LANGUAGE_CONFIG][21275]
rwtTarget[tCopyMap_YuanGu["nMainTaskId_2"]]["ReqTreasureBox"] = tCopyMap_YuanGu["TreasureBox"]
rwtTarget[tCopyMap_YuanGu["nMainTaskId_2"]]["ReqCount"] = 1


--副本信息
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]] = rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]] or {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["ReqLev"] = 1
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["Difficulty"] = 1
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["TargetStepNum"] = 2 
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["Target1"] = {tCopyMap_YuanGu["nMainTaskId_1"]}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["Target2"] = {tCopyMap_YuanGu["nMainTaskId_2"]}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["Target99"] = {60072}

rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][1] = tCopyMap_YuanGu["nSceneDialogId_1"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][2] = tCopyMap_YuanGu["nSceneDialogId_7"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][3] = tCopyMap_YuanGu["nSceneDialogId_1_1"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][4] = tCopyMap_YuanGu["nSceneDialogId_1_2"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][5] = tCopyMap_YuanGu["nSceneDialogId_1_3"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tCopyMap_YuanGu["nUserRecordId"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = tCopyMap_YuanGu["nUserRecordId"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["TempDataID"] = tCopyMap_YuanGu["nUserRecordId"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 3070013
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 3070014
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 3070015
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 3070016
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = 3070017
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetId"] = 3070018
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["Events"][1]["AddEffect"][6]["EffectId"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId1"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["Pos"] = tCopyMap_YuanGu["sPos_1"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MinRate"] = 1000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MaxRate"] = 6000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId2"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["FailPos"] = tCopyMap_YuanGu["sPos_2"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["FailRotationY"] = tCopyMap_YuanGu["sPos_2_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["MinRate"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["MaxRate"] = 7000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId3"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["FailPos"] = tCopyMap_YuanGu["sPos_3"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["FailRotationY"] = tCopyMap_YuanGu["sPos_3_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["MinRate"] = 3000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["MaxRate"] = 8000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId4"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["FailPos"] = tCopyMap_YuanGu["sPos_4"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["FailRotationY"] = tCopyMap_YuanGu["sPos_4_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5]["MinRate"] = 4000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5]["MaxRate"] = 9000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId5"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5]["FailPos"] = tCopyMap_YuanGu["sPos_5"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5]["FailRotationY"] = tCopyMap_YuanGu["sPos_5_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][5]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6]["MinRate"] = 5000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6]["MaxRate"] = 10000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId6"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6]["FailPos"] = tCopyMap_YuanGu["sPos_6"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6]["FailRotationY"] = tCopyMap_YuanGu["sPos_6_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][6]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7]["MinRate"] = 5000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7]["MaxRate"] = 10000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId7"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7]["FailPos"] = tCopyMap_YuanGu["sPos_7"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7]["FailRotationY"] = tCopyMap_YuanGu["sPos_7_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][7]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8]["MinRate"] = 4000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8]["MaxRate"] = 9000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId8"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8]["FailPos"] = tCopyMap_YuanGu["sPos_8"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8]["FailRotationY"] = tCopyMap_YuanGu["sPos_8_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][8]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9]["MinRate"] = 3000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9]["MaxRate"] = 8000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId9"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9]["FailPos"] = tCopyMap_YuanGu["sPos_9"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9]["FailRotationY"] = tCopyMap_YuanGu["sPos_9_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][9]["CreateFail"] = true
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10] = {}
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10]["MinRate"] = 2000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10]["MaxRate"] = 7000
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10]["GenId"] = tCopyMap_YuanGu["nCollect1_GenId10"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10]["FailPos"] = tCopyMap_YuanGu["sPos_10"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10]["FailRotationY"] = tCopyMap_YuanGu["sPos_10_RotationY"]
rwtCopyMapMission[tCopyMap_YuanGu["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][10]["CreateFail"] = true



