--region *.lua
--Date
--怪盗哥布林巢穴
--NiZW   

--endregion
--===========================副本基础配置====================================--
local tGuaiDaiCreateGen = {
    3150001,3150002,3150003,3150004,3150005,    --怪物
    3150006,3150007,3150025
    }

local nCopyMapMissId = 3150

local tGenidMonsterBox = {}
tGenidMonsterBox[1] = 3150008
tGenidMonsterBox[2] = 3150009
tGenidMonsterBox[3] = 3150010
tGenidMonsterBox[4] = 3150011
tGenidMonsterBox[5] = 3150012
tGenidMonsterBox[6] = 3150013
local tGenidBox = {}
tGenidBox[1] = 3150014      --怪
tGenidBox[2] = 3150015
tGenidBox[3] = 3150016
tGenidBox[4] = 3150017
tGenidBox[5] = 3150018
tGenidBox[6] = 3150019      --怪
tGenidBox[7] = 3150020      --真
tGenidBox[8] = 3150021      --假
tGenidBox[9] = 3150022
tGenidBox[10]= 3150023
tGenidBox[11]= 3150024      --假

local nNPCGroupBox={}

nNPCGroupBox["mon1"]=40329
nNPCGroupBox["mon2"]=40330
nNPCGroupBox["mon3"]=40331
nNPCGroupBox["mon4"]=40340
nNPCGroupBox["mon5"]=40341
nNPCGroupBox["mon6"]=40342
nNPCGroupBox["real"]=40343
nNPCGroupBox["fo_1"]=40344
nNPCGroupBox["fo_2"]=40345
nNPCGroupBox["fo_3"]=40346
nNPCGroupBox["fo_4"]=40347

local tDialog = {}
tDialog["real"] = 6976
tDialog["fool"] = {6971,6972,6973,6974}
-- tDialog["mons"] = 6975
tDialog["Ente"] = 6970


-- --===================================
rwtTarget[60330] = {}
rwtTarget[60330]["Title"] = tLuaText[LANGUAGE_CONFIG][21887]
rwtTarget[60330]["ReqCollectId"] = nNPCGroupBox["real"]
rwtTarget[60330]["ReqCount"] = 1


rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.SIDE
rwtCopyMapMission[nCopyMapMissId]["CopyMapTitle"] = "哥布林巢穴(怪盗)"
rwtCopyMapMission[nCopyMapMissId]["EnterSideMap"] = 3031
rwtCopyMapMission[nCopyMapMissId]["EnterSideDialog"] = 7021
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60330}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["Ente"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tGuaiDaiCreateGen
--宝箱随机
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenidBox[1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-48.908,0.03,29.013"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 180.08
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenidBox[2]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-59.174,0.03,25.334"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 148.31
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenidBox[3]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-70.974,0.41,10.286"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = -41.81
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGenidBox[4]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "-85.184,0.03,11.261"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 77.017
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["GenId"] = tGenidBox[5]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["Pos"] = "-49.602,0.03,40.601"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][5]["RotationY"] = -131.1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["GenId"] = tGenidBox[6]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["Pos"] = "-65.883,0.03,47.021"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][6]["RotationY"] = 146.31
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 5
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tGenidBox[7]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tGenidBox[8]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tGenidBox[9]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][4]["GenId"] = tGenidBox[10]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][5] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][5]["GenId"] = tGenidBox[11]
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1]["TempDataId"] = 1113
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapMissId]["PassSetTempGroup"][1]["SetValue"] = 101


--宝箱

--怪
rwtNpcGroup[nNPCGroupBox["mon1"]] = rwtNpcGroup[nNPCGroupBox["mon1"]] or {}
rwtNpcGroup[nNPCGroupBox["mon1"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["mon1"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["mon1"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["mon1"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["mon1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["mon1"]]["Awards"]["Events"][1]["DynCreate"] = {tGenidMonsterBox[1]}

rwtNpcGroup[nNPCGroupBox["mon2"]] = rwtNpcGroup[nNPCGroupBox["mon2"]] or {}
rwtNpcGroup[nNPCGroupBox["mon2"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["mon2"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["mon2"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["mon2"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["mon2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["mon2"]]["Awards"]["Events"][1]["DynCreate"] = {tGenidMonsterBox[2]}

rwtNpcGroup[nNPCGroupBox["mon3"]] = rwtNpcGroup[nNPCGroupBox["mon3"]] or {}
rwtNpcGroup[nNPCGroupBox["mon3"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["mon3"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["mon3"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["mon3"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["mon3"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["mon3"]]["Awards"]["Events"][1]["DynCreate"] = {tGenidMonsterBox[3]}

rwtNpcGroup[nNPCGroupBox["mon4"]] = rwtNpcGroup[nNPCGroupBox["mon4"]] or {}
rwtNpcGroup[nNPCGroupBox["mon4"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["mon4"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["mon4"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["mon4"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["mon4"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["mon4"]]["Awards"]["Events"][1]["DynCreate"] = {tGenidMonsterBox[4]}

rwtNpcGroup[nNPCGroupBox["mon5"]] = rwtNpcGroup[nNPCGroupBox["mon5"]] or {}
rwtNpcGroup[nNPCGroupBox["mon5"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["mon5"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["mon5"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["mon5"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["mon5"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["mon5"]]["Awards"]["Events"][1]["DynCreate"] = {tGenidMonsterBox[5]}

rwtNpcGroup[nNPCGroupBox["mon6"]] = rwtNpcGroup[nNPCGroupBox["mon6"]] or {}
rwtNpcGroup[nNPCGroupBox["mon6"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["mon6"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["mon6"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["mon6"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["mon6"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["mon6"]]["Awards"]["Events"][1]["DynCreate"] = {tGenidMonsterBox[6]}

--真
rwtNpcGroup[nNPCGroupBox["real"]] = rwtNpcGroup[nNPCGroupBox["real"]] or {}
rwtNpcGroup[nNPCGroupBox["real"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["real"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNPCGroupBox["real"]
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][1]["GetServerAward"]["isAwardByGoldMonster"] = true
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][2] = {}
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[nNPCGroupBox["real"]]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = tDialog["real"]

--假
rwtNpcGroup[nNPCGroupBox["fo_1"]] = rwtNpcGroup[nNPCGroupBox["fo_1"]] or {}
rwtNpcGroup[nNPCGroupBox["fo_1"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["fo_1"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["fo_1"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["fo_1"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["fo_1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["fo_1"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNPCGroupBox["fo_1"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["fool"][1]

rwtNpcGroup[nNPCGroupBox["fo_2"]] = rwtNpcGroup[nNPCGroupBox["fo_2"]] or {}
rwtNpcGroup[nNPCGroupBox["fo_2"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["fo_2"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["fo_2"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["fo_2"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["fo_2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["fo_2"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNPCGroupBox["fo_2"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["fool"][2]

rwtNpcGroup[nNPCGroupBox["fo_3"]] = rwtNpcGroup[nNPCGroupBox["fo_3"]] or {}
rwtNpcGroup[nNPCGroupBox["fo_3"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["fo_3"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["fo_3"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["fo_3"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["fo_3"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["fo_3"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNPCGroupBox["fo_3"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["fool"][3]

rwtNpcGroup[nNPCGroupBox["fo_4"]] = rwtNpcGroup[nNPCGroupBox["fo_4"]] or {}
rwtNpcGroup[nNPCGroupBox["fo_4"]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nNPCGroupBox["fo_4"]]["CollectTime"] = 1.5
rwtNpcGroup[nNPCGroupBox["fo_4"]]["Awards"] = {}
rwtNpcGroup[nNPCGroupBox["fo_4"]]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroupBox["fo_4"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroupBox["fo_4"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNPCGroupBox["fo_4"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog["fool"][4]

