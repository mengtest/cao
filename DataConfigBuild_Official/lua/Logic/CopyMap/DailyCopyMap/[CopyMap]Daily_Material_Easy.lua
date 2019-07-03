--region *.lua
--Date
--每日材料副本_简单
--nizw
--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3067
local nTempData = 1120

--npc

--3468  力士加鲁
--斯塔克毒蝎  3558
--受伤的冒险者  3559


--怪物 200321  1000372
--200347 1000502
local tBox = {
    40126,      -- 通关宝箱
    40127,      -- 隐藏宝箱1
    40128,      -- 隐藏宝箱2
    40152,      -- 隐藏宝箱3
    40153,      -- 隐藏宝箱4
    40154,      -- 宝箱怪宝箱
}

local tCollect = {
    60172,
    60173,
    60174,
    60175
}

local nGenId_Box_pass = 3067003
local tGenId_NPC={
    3067006,
    3067007,
    3067008,
    3067009,
}

local tGenId_CheTongGuan={
    3067004,
    3067005,
    3067006,
    3067007,
    3067008,
    3067009,
    3067010,
    3067011,
    3067012,
    3067013,
    3067014,
    3067015,
    3067016,
    3067017,
    3067018,
}

local tGenId_HideBox={
    3067004,
    3067005,
    3067010,
    3067011,
}
local nGenId_RandomBox = 3067012
local nGenId_RandomNpc = 3067014
local nGenId_RandomCollect = 3067015

local nNpcGroup_MoXianZhe = 20462

local nAwardId_KillMonster = 1000305
local nAwardId_TalkByNpc = 1000306
local nAwardId_TalkByNpc_Double = 1000307
local nAwardId_Collect = 1000308
local nAwardId_Collect_Double = 1000309

local tDialogs = {}
tDialogs["Enter"] = {
    5636, 5637, 5638, 5639, 5640 
}
tDialogs["BattelBef"] = {
	5372,6191,6192,6193,6194
}
tDialogs["BattelAft"] = {
	5373,6195,6196,6197,6198,5654
}
tDialogs["Fail"] = {
    5641,5642,5643,5644,5645
}
tDialogs["Pass"] = {
    5646,5647,5648,5649,5650,5651,5652
}

tDialogs["OpenMonsterBox"] = 5653
--, 5654, 5655, 5656, 5657
tDialogs["KillMonsterBox"] = {
    5658, 5659, 5660, 5661, 5662
}

tDialogs["TalkHaveMuchan"] = {
    5663,5664,5665
}
tDialogs["TalkNoMuchan"] = {
    5666,5667,5668
}
tDialogs["CollectHaveWenliBef"] = {
    5669,5670,5671
}
tDialogs["CollectHaveWenli"] = {
    6199,6200,6201
}
tDialogs["CollectNoWenli"] = {
    5672,5673,5674
}



-- ----------------------

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
-- rwtCopyMapMission[nCopyMapId]["Target1"] = {60109}
rwtCopyMapMission[nCopyMapId]["Target1"] = {60110}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs["Enter"]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tGenId_NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["DynCreate"] = {nGenId_Box_pass}

rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempData
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempData
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "49.617,0.08,41.872"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -147.98
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "43.63,0.08,30.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 83.13
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "33.03,0.09,40.20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 130.471
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "51.37,0.23,33.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 237.433
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nGenId_RandomBox

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = "49.617,0.08,41.872"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -147.98
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["Pos"] = "43.63,0.08,30.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 83.13
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["Pos"] = "33.03,0.09,40.20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 130.471
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["Pos"] = "51.37,0.23,33.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 237.433
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nGenId_RandomNpc

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGenId_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][1]["Pos"] = "49.617,0.08,41.872"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][1]["RotationY"] = -147.98
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGenId_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][2]["Pos"] = "43.63,0.08,30.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][2]["RotationY"] = 83.13
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGenId_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][3]["Pos"] = "33.03,0.09,40.20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][3]["RotationY"] = 130.471
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGenId_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][4]["Pos"] = "51.37,0.23,33.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tGenId"][4]["RotationY"] = 237.433
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = nGenId_RandomCollect

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["Pos"] = "49.617,0.08,41.872"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -147.98
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["Pos"] = "43.63,0.08,30.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 83.13
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["Pos"] = "33.03,0.09,40.20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 130.471
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenId_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["Pos"] = "51.37,0.23,33.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 237.433
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nGenId_RandomBox

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["Pos"] = "49.617,0.08,41.872"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["RotationY"] = -147.98
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["Pos"] = "43.63,0.08,30.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 83.13
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGenId_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["Pos"] = "33.03,0.09,40.20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 130.471
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["GenId"] = tGenId_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["Pos"] = "51.37,0.23,33.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 237.433
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = nGenId_RandomNpc

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGenId_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1]["Pos"] = "49.617,0.08,41.872"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1]["RotationY"] = -147.98
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGenId_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2]["Pos"] = "43.63,0.08,30.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2]["RotationY"] = 83.13
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGenId_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3]["Pos"] = "33.03,0.09,40.20"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3]["RotationY"] = 130.471
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGenId_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4]["Pos"] = "51.37,0.23,33.07"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4]["RotationY"] = 237.433
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = nGenId_RandomCollect

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"]= {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["FixGen"]= {3067002,3067017}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"]= {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["FixGen"]= {3067016,3067018}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Record"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"]= {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["FixGen"]= {3067002,3067017}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["FixGen"]= {3067016,3067018}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["SetValue"] = 2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["TempDataID"] = nTempData
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["SetValue"] = 3

--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--   DailyCopyMap_Material_Easy_InitMap()
--end

rwtNpcGroup[40229] = rwtNpcGroup[40229] or {} 
rwtNpcGroup[40229]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40229]["Awards"] = {}
rwtNpcGroup[40229]["Awards"]["Events"] = {}
rwtNpcGroup[40229]["Awards"]["Events"][1] = {}
rwtNpcGroup[40229]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40229]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40229]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40229
rwtNpcGroup[40229]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40229]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000434

rwtNpcGroup[40230] = rwtNpcGroup[40230] or {} 
rwtNpcGroup[40230]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40230]["Awards"] = {}
rwtNpcGroup[40230]["Awards"]["Events"] = {}
rwtNpcGroup[40230]["Awards"]["Events"][1] = {}
rwtNpcGroup[40230]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40230]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40230]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40230
rwtNpcGroup[40230]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40230]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000435



-- rwtTarget[60109] = {}
-- rwtTarget[60109]["Title"] = tLuaText[LANGUAGE_CONFIG][20011]
-- rwtTarget[60109]["KillMonsterGroup"] = 200321
-- rwtTarget[60109]["ReqCount"] = 1

rwtTarget[60110] = {}
rwtTarget[60110]["Title"] = tLuaText[LANGUAGE_CONFIG][20012]
rwtTarget[60110]["ReqTreasureBox"] = 40126
rwtTarget[60110]["ReqCount"] = 1

--通关宝箱
rwtNpcGroup[tBox[1]] = rwtNpcGroup[tBox[1]] or {}  --通关宝箱
rwtNpcGroup[tBox[1]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[1]]["NotDel"] = 1
rwtNpcGroup[tBox[1]]["Awards"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tGenId_CheTongGuan
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogs["Fail"]
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs["Pass"]
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Box_pass
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[1]
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186  
rwtNpcGroup[tBox[1]]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialogs["Pass"]
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nGenId_Box_pass
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[1]
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[1]]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000186   

--宝箱开启逻辑
rwtDialog[tDialogs["Fail"][1]] = rwtDialog[tDialogs["Fail"][1]] or {}
rwtDialog[tDialogs["Fail"][1]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox[1],nGenId_Box_pass,1)
end
rwtDialog[tDialogs["Fail"][2]] = rwtDialog[tDialogs["Fail"][2]] or {}
rwtDialog[tDialogs["Fail"][2]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox[1],nGenId_Box_pass,1)
end
rwtDialog[tDialogs["Fail"][3]] = rwtDialog[tDialogs["Fail"][3]] or {}
rwtDialog[tDialogs["Fail"][3]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox[1],nGenId_Box_pass,1)
end
rwtDialog[tDialogs["Fail"][4]] = rwtDialog[tDialogs["Fail"][4]] or {}
rwtDialog[tDialogs["Fail"][4]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox[1],nGenId_Box_pass,1)
end
rwtDialog[tDialogs["Fail"][5]] = rwtDialog[tDialogs["Fail"][5]] or {}
rwtDialog[tDialogs["Fail"][5]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox[1],nGenId_Box_pass,1)
end


--隐藏宝箱
rwtNpcGroup[tBox[2]] = rwtNpcGroup[tBox[2]] or {} 
rwtNpcGroup[tBox[2]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[2]]["Awards"] = {}
--rwtNpcGroup[tBox[2]]["Awards"]["AwardId"] = 1000187   
--rwtNpcGroup[tBox[2]]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[2]
rwtNpcGroup[tBox[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000187

rwtNpcGroup[tBox[3]] = rwtNpcGroup[tBox[3]] or {} 
rwtNpcGroup[tBox[3]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[3]]["Awards"] = {}
--rwtNpcGroup[tBox[3]]["Awards"]["AwardId"] = 1000187
--rwtNpcGroup[tBox[3]]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[3]
rwtNpcGroup[tBox[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000187

rwtNpcGroup[tBox[4]] = rwtNpcGroup[tBox[4]] or {} 
rwtNpcGroup[tBox[4]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[4]]["Awards"] = {}
rwtNpcGroup[tBox[4]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[4]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[4]
rwtNpcGroup[tBox[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000187

rwtNpcGroup[tBox[5]] = rwtNpcGroup[tBox[5]] or {} 
rwtNpcGroup[tBox[5]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[5]]["Awards"] = {}
rwtNpcGroup[tBox[5]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[5]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[5]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[5]
rwtNpcGroup[tBox[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000187

--怪物宝箱
rwtNpcGroup[tBox[6]] = rwtNpcGroup[tBox[6]] or {} 
rwtNpcGroup[tBox[6]]["NotDel"] = 1
rwtNpcGroup[tBox[6]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[6]]["Awards"] = {}
rwtNpcGroup[tBox[6]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[6]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[6]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tBox[6]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogs["OpenMonsterBox"]
-- rwtNpcGroup[tBox[6]]["Awards"]["Events"][1]["AutoBattle"] = {}
-- rwtNpcGroup[tBox[6]]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = 3067013 --宝箱怪物

--对白后，打怪
rwtDialog[tDialogs["OpenMonsterBox"]] = rwtDialog[tDialogs["OpenMonsterBox"]] or {}
rwtDialog[tDialogs["OpenMonsterBox"]]["DialogEndInit"] = {}
rwtDialog[tDialogs["OpenMonsterBox"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["OpenMonsterBox"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["OpenMonsterBox"]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs["OpenMonsterBox"]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3067013 --宝箱怪物

-- rwtDialog[tDialogs["OpenMonsterBox"][2]] = rwtDialog[tDialogs["OpenMonsterBox"][2]] or {}
-- rwtDialog[tDialogs["OpenMonsterBox"][2]]["DialogEndInit"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][2]]["DialogEndInit"]["Events"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][2]]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][2]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][2]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3067013 --宝箱怪物

-- rwtDialog[tDialogs["OpenMonsterBox"][3]] = rwtDialog[tDialogs["OpenMonsterBox"][3]] or {}
-- rwtDialog[tDialogs["OpenMonsterBox"][3]]["DialogEndInit"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][3]]["DialogEndInit"]["Events"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][3]]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][3]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][3]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3067013 --宝箱怪物

-- rwtDialog[tDialogs["OpenMonsterBox"][4]] = rwtDialog[tDialogs["OpenMonsterBox"][4]] or {}
-- rwtDialog[tDialogs["OpenMonsterBox"][4]]["DialogEndInit"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][4]]["DialogEndInit"]["Events"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][4]]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][4]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][4]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3067013 --宝箱怪物

-- rwtDialog[tDialogs["OpenMonsterBox"][5]] = rwtDialog[tDialogs["OpenMonsterBox"][5]] or {}
-- rwtDialog[tDialogs["OpenMonsterBox"][5]]["DialogEndInit"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][5]]["DialogEndInit"]["Events"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][5]]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][5]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
-- rwtDialog[tDialogs["OpenMonsterBox"][5]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3067013 --宝箱怪物

function DailyCopyMap_MaterialEasy_DelBox()
    rwDelGenEvent(3067012)
    local nIndex = rwGetRandInt(1,5)
    rwOpenNpcChatDialog(tDialogs["KillMonsterBox"][nIndex],CONST_NPCCHAT_TYPE.COPYMAP)
end
rwtMonsterGroup_Func[200347] = rwtMonsterGroup_Func[200347] or {}
table.insert(rwtMonsterGroup_Func[200347],DailyCopyMap_MaterialEasy_DelBox)

--杀怪后的奖励
rwtDialog[tDialogs["KillMonsterBox"][1]] = rwtDialog[tDialogs["KillMonsterBox"][1]] or {}
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"] = {}
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_KillMonster
rwtDialog[tDialogs["KillMonsterBox"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialogs["KillMonsterBox"][2]] = rwtDialog[tDialogs["KillMonsterBox"][2]] or {}
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"] = {}
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_KillMonster
rwtDialog[tDialogs["KillMonsterBox"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialogs["KillMonsterBox"][3]] = rwtDialog[tDialogs["KillMonsterBox"][3]] or {}
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"] = {}
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_KillMonster
rwtDialog[tDialogs["KillMonsterBox"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialogs["KillMonsterBox"][4]] = rwtDialog[tDialogs["KillMonsterBox"][4]] or {}
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"] = {}
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_KillMonster
rwtDialog[tDialogs["KillMonsterBox"][4]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialogs["KillMonsterBox"][5]] = rwtDialog[tDialogs["KillMonsterBox"][5]] or {}
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"] = {}
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_KillMonster
rwtDialog[tDialogs["KillMonsterBox"][5]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--采集
rwtNpcGroup[tCollect[1]] = rwtNpcGroup[tCollect[1]] or {}    
rwtNpcGroup[tCollect[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[1]]["CollectTime"] = 1
rwtNpcGroup[tCollect[1]]["Awards"] = {}  
rwtNpcGroup[tCollect[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000188
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[2]] = rwtNpcGroup[tCollect[2]] or {}    
rwtNpcGroup[tCollect[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[2]]["CollectTime"] = 1
rwtNpcGroup[tCollect[2]]["Awards"] = {}  
rwtNpcGroup[tCollect[2]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000188
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[3]] = rwtNpcGroup[tCollect[3]] or {}    
rwtNpcGroup[tCollect[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[3]]["CollectTime"] = 1
rwtNpcGroup[tCollect[3]]["Awards"] = {}  
rwtNpcGroup[tCollect[3]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000188
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[4]] = rwtNpcGroup[tCollect[4]] or {}    
rwtNpcGroup[tCollect[4]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[4]]["CollectTime"] = 1
rwtNpcGroup[tCollect[4]]["Awards"] = {}  
rwtNpcGroup[tCollect[4]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000188
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--随机NPC冒险者

rwtNpcGroup[nNpcGroup_MoXianZhe] = rwtNpcGroup[nNpcGroup_MoXianZhe] or {} 
rwtNpcGroup[nNpcGroup_MoXianZhe]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"] = {}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {104}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs["TalkHaveMuchan"]
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_MoXianZhe]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogs["TalkNoMuchan"]   
-- rwtNpcGroup[nNpcGroup_MoXianZhe]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- 	local nIndex = rwGetRandInt(1,3)
-- 	local nIsHero = false
-- 	local tHeroTable = rwHeroGetAllInFight()
-- 	for var=1,#tHeroTable do
-- 		if tHeroTable[var] == 104 then
-- 			nIsHero = true
-- 		end
-- 	end	
-- 	if nIsHero then
-- 		rwOpenNpcChatDialog(tDialogs["TalkHaveMuchan"][nIndex],CONST_NPCCHAT_TYPE.COPYMAP)
-- 	else
-- 		rwOpenNpcChatDialog(tDialogs["TalkNoMuchan"][nIndex],CONST_NPCCHAT_TYPE.COPYMAP)
-- 	end
-- end

-- rwtNpc[nNpcId] = rwtNpc[nNpcId] or {}
-- rwtNpc[nNpcId]["DialogId"] = {nDialogId_6}
-- 与NPC对白后奖励逻辑
rwtDialog[tDialogs["TalkHaveMuchan"][1]] = rwtDialog[tDialogs["TalkHaveMuchan"][1]] or {}
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TalkByNpc_Double
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][1]]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3067014

rwtDialog[tDialogs["TalkHaveMuchan"][2]] = rwtDialog[tDialogs["TalkHaveMuchan"][2]] or {}
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TalkByNpc_Double
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][2]]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3067014

rwtDialog[tDialogs["TalkHaveMuchan"][3]] = rwtDialog[tDialogs["TalkHaveMuchan"][3]] or {}
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TalkByNpc_Double
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialogs["TalkHaveMuchan"][3]]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3067014

rwtDialog[tDialogs["TalkNoMuchan"][1]] = rwtDialog[tDialogs["TalkNoMuchan"][1]] or {}
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TalkByNpc
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][1]]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3067014

rwtDialog[tDialogs["TalkNoMuchan"][2]] = rwtDialog[tDialogs["TalkNoMuchan"][2]] or {}
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TalkByNpc
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][2]]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3067014

rwtDialog[tDialogs["TalkNoMuchan"][3]] = rwtDialog[tDialogs["TalkNoMuchan"][3]] or {}
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TalkByNpc
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialogs["TalkNoMuchan"][3]]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3067014

--随机采集物尸体
rwtNpcGroup[60254] = rwtNpcGroup[60254] or {}
rwtNpcGroup[60254]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[60254]["BeforeCollect"] = {}
rwtNpcGroup[60254]["BeforeCollect"]["ChkUserAllFightHero"] = {201}
rwtNpcGroup[60254]["BeforeCollect"]["ChkFightHeroSuccDialogList"] = tDialogs["CollectHaveWenliBef"]
rwtNpcGroup[60254]["Awards"] = {}
rwtNpcGroup[60254]["Awards"]["Events"] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1]["ChkUserAllFightHero"][1] = 201
rwtNpcGroup[60254]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs["CollectHaveWenli"]
rwtNpcGroup[60254]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[60254]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Collect_Double
rwtNpcGroup[60254]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogs["CollectNoWenli"]
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]={}
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["AwardType"]=CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["AwardId"]=nAwardId_Collect
rwtNpcGroup[60254]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["ActionType"]=CONST_ACTION_TYPE.TIPS
-- rwtNpcGroup[60254]["Func"]= function(nGenEventId,nRandom)
-- 	local tHeroTable = rwHeroGetAllInFight()
-- 	for var=1,#tHeroTable do
-- 		if tHeroTable[var] == 201 then
-- 			rwOpenNpcChatDialog(tDialogs["CollectHaveWenli"][nRandom],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 			return
-- 		end
-- 	end
-- end

--战斗胜利
-- rwtMonsterGroup[200321] = rwtMonsterGroup[200321] or {}
-- rwtMonsterGroup[200321]["BattleWin"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
-- 	local nIndex = math.random(1,6)
-- 	rwOpenNpcChatDialog(tDialogs["BattelAft"][nIndex])
-- end
