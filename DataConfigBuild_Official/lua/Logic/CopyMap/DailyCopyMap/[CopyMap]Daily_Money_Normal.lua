--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--金钱副本

--endregion

------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3056

--副本掩码
local nCopyTemp = 1119
--怪物 1000323
local nMonsterGroupId_1 = 200138   -- 金钱哥布林
local nMonsterGenId_1 = 3056010 

local nMonsterGroupId_2 = 200342   -- 随机怪物
local nMonsterGenId_21 = 3056002   -- 红色哥布林怪
--local nMonsterGenId_22 = 3056003   --这两只因为换成npc触发了用不到
--local nMonsterGenId_23 = 3056004 
--宝箱怪物
local nMonsterGroupId_3 = 200343   
local nMonsterGenId_3 = 3056019

local tGen_ID = {}

tGen_ID.Monster_wzlangren =  3056024
tGen_ID.Monster_wzxiongren =  3056025
 
--npc 3342/20345
local nNpcId_1 = 3342  --哥布林探宝队长
local nNpcGroupId_1 = 20345
local nNpcGenId_1 = 3056020  --胆小的哥布林
local nNpcGroupId_2 = 20371
local nNpcGenId_2 = 3056021  --胆小的哥布林
local nNpcGroupId_3 = 20372
local nNpcGenId_3 = 3056022  --胆小的哥布林
local nNpcGroupId_4 = 20373
local nNpcGenId_4 = 3056023  --胆小的哥布林

local tNpcGroup_Gen = {}
tNpcGroup_Gen[20345] = 3056020
tNpcGroup_Gen[20371] = 3056021
tNpcGroup_Gen[20372] = 3056022
tNpcGroup_Gen[20373] = 3056023

local tNpcGroup_Gen2 = {3056007,3056008,3056009}


local nNpcId_5 = 3471  --哥布林探宝队长
local nNpcGroupId_5 = 20468
local nNpcGenId_5 = 123  

--随机事件1.怪物改成npc形式
local nNpcId_HS = 3472  --红色哥布林
local nNpcGroupId_HS = 20661
local nNpcGenId_HS = 3056026  
rwtNpc[nNpcId_HS] = rwtNpc[nNpcId_HS] or {}
rwtNpc[nNpcId_HS]["DialogId"] = {5833}
rwtNpcGroup[nNpcGroupId_HS] = rwtNpcGroup[nNpcGroupId_HS] or {}
rwtNpcGroup[nNpcGroupId_HS]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroupId_HS]["NpcId"]= nNpcId_HS

--对白后进入战斗
rwtDialog[5833] = rwtDialog[5833] or {}
rwtDialog[5833]["DialogEndInit"] = {}
rwtDialog[5833]["DialogEndInit"]["Events"] = {}
rwtDialog[5833]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5833]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5833]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGenId_21

--5798 - 5852
--惊喜宝箱对应的npcid
local tNpcForTreasure = {}

--进入副本随机对话
local tDialog = {}
tDialog.nDialog_1 = 5798
tDialog.nDialog_2 = 5799
tDialog.nDialog_3 = 5800
tDialog.nDialog_4 = 5801
tDialog.nDialog_5 = 5802

--黄金哥布林怪物站前 /战后
tDialog.nDialog_6 = 5803
tDialog.nDialog_7 = 5804
tDialog.nDialog_8 = 5805
tDialog.nDialog_9 = 5806
tDialog.nDialog_10 = 5807
tDialog.nDialog_11 = 5808
tDialog.nDialog_12 = 5809
tDialog.nDialog_13 = 5810
tDialog.nDialog_14 = 5811
tDialog.nDialog_15 = 5812
tDialog.nDialog_16 = 5813
tDialog.nDialog_17 = 5814
--通关宝箱对话（带选项）
tDialog.nDialog_18 = 5815
tDialog.nDialog_19 = 5816
tDialog.nDialog_20 = 5817
tDialog.nDialog_21 = 5818
tDialog.nDialog_22 = 5819
tDialog.nDialog_23 = 5820
--通关宝箱开启后
tDialog.nDialog_24 = 5821
tDialog.nDialog_25 = 5822
tDialog.nDialog_26 = 5823
tDialog.nDialog_27 = 5824
tDialog.nDialog_28 = 5825
tDialog.nDialog_29 = 5826
tDialog.nDialog_30 = 5827
--跟npc对话（获得硬币）
tDialog.nDialog_31 = 5828
tDialog.nDialog_32 = 5829
tDialog.nDialog_33 = 5830
tDialog.nDialog_34 = 5831
tDialog.nDialog_35 = 5832
--怪物战前对白（随机怪）
tDialog.nDialog_36 = 5833
tDialog.nDialog_37 = 5834
tDialog.nDialog_38 = 5835
tDialog.nDialog_39 = 5836
tDialog.nDialog_40 = 5837
--彩蛋宝箱开启对白
--tDialog.nDialog_41 = 5838
--tDialog.nDialog_42 = 5839
--tDialog.nDialog_43 = 5840
--tDialog.nDialog_44 = 5841
--tDialog.nDialog_45 = 5842
--怪物战后（宝箱怪）
tDialog.nDialog_46 = 5843
tDialog.nDialog_47 = 5844
tDialog.nDialog_48 = 5845
tDialog.nDialog_49 = 5846
tDialog.nDialog_50 = 5847
--跟哈扎克npc对白
tDialog.nDialog_51 = 5848
tDialog.nDialog_52 = 5849
tDialog.nDialog_53 = 5850
tDialog.nDialog_54 = 5851
tDialog.nDialog_55 = 5852
tDialog.nDialog_56 = 5853

local tRandomDialog1 = {tDialog.nDialog_31,tDialog.nDialog_32,tDialog.nDialog_33,tDialog.nDialog_34,tDialog.nDialog_35}--npc随机对话
local tRandomDialog2 = {tDialog.nDialog_54,tDialog.nDialog_55,tDialog.nDialog_56}
local tRandomDialog3 = {tDialog.nDialog_51,tDialog.nDialog_52,tDialog.nDialog_53}
--采集财宝
local nCollectGroupId_1 = 60146 --财宝

local tAwardGenId = {3056003,3056004,3056005,3056013,3056014,
3056015,3056006,3056007,3056008,3056009,3056010,3056012,3056016,3056017,3056018,3056024,3056025,3056026,3056027,3056028}

--宝箱
--隐匿宝箱
local nTreasureGroupId_1 = 40101 

--彩蛋宝箱   宝箱怪
local nTreasureGroupId_2 = 40102

local nCaiDanGenId_1 = 3056014  
local nCaiDanGenId_2 = 3056015  
local nCaiDanGenId_3 = 3056016  
local nCaiDanGenId_4 = 3056017
  
--通过宝箱
local nTreasureGroupId_3 = 40103
local tNpcGroup = {}
tNpcGroup.XiYou_Box_1 = 40231  --黯月宝箱
tNpcGroup.XiYou_Box_2 = 40232  --辉日宝箱


local nValve_1 = 1040
--奖励
local nAwarrd_1 = 1000134 --通关宝箱奖励
local nAwarrd_2 = 1000135 --隐匿宝箱奖励
local nAwarrd_3 = 1000136 --宝箱怪奖励
local nAwarrd_4 = 1000137 --采集财宝奖励
local nAwarrd_5 = 1000198 --npc对话奖励

local nAwarrd_6 = 1000320 --哈扎克对话奖励1  无该隐
local nAwarrd_7 = 1000321 --哈扎克对话奖励2  有该隐

local nAwarrd_8 = 1000362 --黄金哥布林奖励 

local nAwardId_XiYou_1 = 1000432  
local nAwardId_XiYou_2 = 1000433 

local tDailyNpcTreasure1={}
	tDailyNpcTreasure1["DialogTreasure"] = {}
	tDailyNpcTreasure1["DialogTreasure"]["Awards"] = {}
	tDailyNpcTreasure1["DialogTreasure"]["Awards"]["Events"] = {}
	tDailyNpcTreasure1["DialogTreasure"]["Awards"]["Events"][1] = {}
	tDailyNpcTreasure1["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"] = {}
	tDailyNpcTreasure1["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	tDailyNpcTreasure1["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_5
	tDailyNpcTreasure1["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

    local tDailyNpcTreasure2={}
	tDailyNpcTreasure2["DialogTreasure"] = {}
	tDailyNpcTreasure2["DialogTreasure"]["Awards"] = {}
	tDailyNpcTreasure2["DialogTreasure"]["Awards"]["Events"] = {}
	tDailyNpcTreasure2["DialogTreasure"]["Awards"]["Events"][1] = {}
	tDailyNpcTreasure2["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"] = {}
	tDailyNpcTreasure2["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	tDailyNpcTreasure2["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_6
	tDailyNpcTreasure2["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

    local tDailyNpcTreasure3={}
	tDailyNpcTreasure3["DialogTreasure"] = {}
	tDailyNpcTreasure3["DialogTreasure"]["Awards"] = {}
	tDailyNpcTreasure3["DialogTreasure"]["Awards"]["Events"] = {}
	tDailyNpcTreasure3["DialogTreasure"]["Awards"]["Events"][1] = {}
	tDailyNpcTreasure3["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"] = {}
	tDailyNpcTreasure3["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	tDailyNpcTreasure3["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_7
	tDailyNpcTreasure3["DialogTreasure"]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

    
--稀有宝箱
tGen_ID.nGen_XiYou_Box_1 = 3056026
tGen_ID.nGen_XiYou_Box_2 = 3056027

rwtNpcGroup[tNpcGroup.XiYou_Box_1] = rwtNpcGroup[tNpcGroup.XiYou_Box_1] or {}  --黯月宝箱
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tNpcGroup.XiYou_Box_1
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_XiYou_1  

rwtNpcGroup[tNpcGroup.XiYou_Box_2] = rwtNpcGroup[tNpcGroup.XiYou_Box_2] or {} --辉日宝箱
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tNpcGroup.XiYou_Box_2
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_XiYou_2  

--副本目标
--rwtTarget[60088] = {}
--rwtTarget[60088]["Title"] = tLuaText[LANGUAGE_CONFIG][21451]
--rwtTarget[60088]["KillMonsterGroup"] = nMonsterGroupId_1
--rwtTarget[60088]["ReqCount"] = 1

rwtTarget[60089] = {}
rwtTarget[60089]["Title"] = tLuaText[LANGUAGE_CONFIG][21452]
rwtTarget[60089]["ReqTreasureBox"] = nTreasureGroupId_3
rwtTarget[60089]["ReqCount"] = 1

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = {60088}
rwtCopyMapMission[nCopyMapId]["Target1"] = {60089}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog_1,tDialog.nDialog_2,tDialog.nDialog_3,tDialog.nDialog_4,tDialog.nDialog_5}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_nValve1}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
--随机宝箱 随机事件2                                         
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3056005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-65.37,0.03,34.8"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 74.64
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3056013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-78.45,0.03,28.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3056014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-71.12,0.03,43.22"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 156.512
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3056015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = "-58.34,0.04,45.49"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3056006
--随机怪物 随机事件1                                         
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = 3056028
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["Pos"] = "-70.91,0.31,44.18"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = 3056028
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["Pos"] = "-61.87,0.024,47.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = 3056028
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["Pos"] = "-50.39,0.02,37.76"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3056028

--随机npc 随机事件3                                          
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = 3056007
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = 3056008
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = 3056009

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["GenId"] = 3056005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["GenId"] = 3056013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["GenId"] = 3056014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4]["GenId"] = 3056015

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][1]["GenId"] = 3056005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][2]["GenId"] = 3056013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][3]["GenId"] = 3056014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][5]["tGenId"][4]["GenId"] = 3056015


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = 3056005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = "-65.37,0.03,34.8"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = 74.64
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = 3056013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = "-78.45,0.03,28.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = 3056014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = "-71.12,0.03,43.22"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = 156.512
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = 3056015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = "-58.34,0.04,45.49"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = 3056006

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = 3056028
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["Pos"] = "-70.91,0.31,44.18"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = 3056028
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["Pos"] = "-61.87,0.024,47.47"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = 3056028
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["Pos"] = "-50.39,0.02,37.76"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["RotationY"] = 270
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tOtherGenId"][1]["GenId"] = 3056028

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = 3056007
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = 3056008
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = 3056009

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["GenId"] = 3056005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["GenId"] = 3056013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["GenId"] = 3056014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4]["GenId"] = 3056015

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["GenId"] = 3056005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["GenId"] = 3056013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["GenId"] = 3056014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["GenId"] = 3056015

--第二个掩码
--[[
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzlangren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzxiongren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzlangren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzxiongren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_2

--]]


--另一种写法

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
--随机    怪物和西游宝箱                                  
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzlangren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzxiongren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
                                                            
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzlangren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tGen_ID.Monster_wzxiongren
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_2

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3



--宝箱选项对白
for i = tDialog.nDialog_18,tDialog.nDialog_23 do
    rwtDialog[i] = rwtDialog[i] or {}
    rwtDialog[i]["OptionFunc1"] = function ()
    	return false
    end
    
    rwtDialog[i]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
    	LinkTreasureBoxOpenSucc(nTreasureGroupId_3,3056011,1)
    end
end

--宝箱
rwtNpcGroup[nTreasureGroupId_3] = rwtNpcGroup[nTreasureGroupId_3] or {}  --通关宝箱
rwtNpcGroup[nTreasureGroupId_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureGroupId_3]["NotDel"] = 1
rwtNpcGroup[nTreasureGroupId_3]["Awards"] = {}
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["ChkGenEventNoExist"]= tAwardGenId
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  {tDialog.nDialog_18,tDialog.nDialog_19,tDialog.nDialog_20,tDialog.nDialog_21,tDialog.nDialog_22,tDialog.nDialog_23}
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白      
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  {tDialog.nDialog_24,tDialog.nDialog_25,tDialog.nDialog_26,tDialog.nDialog_27,tDialog.nDialog_28,tDialog.nDialog_29,tDialog.nDialog_30}     
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["DynDelete"] = {}                          
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["DynDelete"][1] = 3056011                  
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["GetServerAward"] = {}                     
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureGroupId_3
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureGroupId_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_1  
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  {tDialog.nDialog_24,tDialog.nDialog_25,tDialog.nDialog_26,tDialog.nDialog_27,tDialog.nDialog_28,tDialog.nDialog_29,tDialog.nDialog_30}
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["DynDelete"][1] = 3056011
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureGroupId_3
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureGroupId_3]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_1   

-----------------------------
for i = nNpcGroupId_1,nNpcGroupId_4 do
    rwtNpcGroup[i] = rwtNpcGroup[i] or {}  
    rwtNpcGroup[i]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
    rwtNpcGroup[i]["NpcId"]= nNpcId_1
end

rwtNpc[nNpcId_1] = rwtNpc[nNpcId_1] or {}
rwtNpc[nNpcId_1]["NpcProcess"] = function(nGroupTypeId,nNpcTypeId)
     local nRandom = math.random(1,#tRandomDialog1)  --tNpcGroup_Gen
     if rwHasGenEvent(tNpcGroup_Gen[nGroupTypeId]) then
		rwDelGenEvent(tNpcGroup_Gen[nGroupTypeId])
	 end
     rwOpenNpcChatDialog(tRandomDialog1[nRandom])
     local tInfo = tDailyNpcTreasure1["DialogTreasure"]["Awards"]
     rwBaseAward:create(tInfo):Process()
end

rwtNpcGroup[nNpcGroupId_5] = rwtNpcGroup[nNpcGroupId_5] or {}  
rwtNpcGroup[nNpcGroupId_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroupId_5]["NpcId"]= nNpcId_5

rwtNpc[nNpcId_5] = rwtNpc[nNpcId_5] or {}
rwtNpc[nNpcId_5]["NpcProcess"] = function(nGroupTypeId,nNpcTypeId)
     --检测是否有该隐
     if not rwDailyCopyNormal_CheckHero(107) then
        --奖励5000
        local nRandom2 = math.random(1,#tRandomDialog2)
        for _,v in pairs(tNpcGroup_Gen2) do
            if rwHasGenEvent(v) then
		        rwDelGenEvent(v)
	        end
        end
        rwOpenNpcChatDialog(tRandomDialog2[nRandom2])
        local tInfo = tDailyNpcTreasure2["DialogTreasure"]["Awards"]
        rwBaseAward:create(tInfo):Process()
     else
        --奖励10000
        local nRandom3 = math.random(1,#tRandomDialog3)
        for _,v in pairs(tNpcGroup_Gen2) do
            if rwHasGenEvent(v) then
		        rwDelGenEvent(v)
	        end
        end
        rwOpenNpcChatDialog(tRandomDialog3[nRandom3])
        local tInfo = tDailyNpcTreasure3["DialogTreasure"]["Awards"]
        rwBaseAward:create(tInfo):Process()
     end
end

--检测玩家队伍中是否有该隐
function rwDailyCopyNormal_CheckHero(nHero)
	local tHeroTable = rwHeroGetAllInFight()
	for i = 1,#tHeroTable do 
		if tHeroTable[i] == nHero then
			return true
		end
	end
	return false
end

--隐匿宝箱，3000罗兰币
rwtNpcGroup[nTreasureGroupId_1] = rwtNpcGroup[nTreasureGroupId_1] or {}
rwtNpcGroup[nTreasureGroupId_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureGroupId_1]["Awards"] = {}
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureGroupId_1
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_2 

--彩蛋宝箱-出现宝箱怪
rwtNpcGroup[nTreasureGroupId_2] = rwtNpcGroup[nTreasureGroupId_2] or {}
rwtNpcGroup[nTreasureGroupId_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureGroupId_2]["NotDel"] = 1
rwtNpcGroup[nTreasureGroupId_2]["Awards"] = {}
rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  {6180}
--rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
--rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureGroupId_2
--rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nTreasureGroupId_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_2 
--for i=tDialog.nDialog_41,tDialog.nDialog_45 do
    rwtDialog[6180] = rwtDialog[6180] or {}
    rwtDialog[6180]["DialogEndInit"] = {}
    rwtDialog[6180]["DialogEndInit"]["Events"] = {}
    rwtDialog[6180]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[6180]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
    rwtDialog[6180]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGenId_3
--end
--宝箱怪死亡
function CopyMap_Daily_Money_Normal_BoxMonster_Death()
    --删除宝箱怪宝箱
    if rwHasGenEvent(3056006) then
        rwDelGenEvent(3056006)
    end
end
rwtMonsterGroup_Func[nMonsterGroupId_3] = rwtMonsterGroup_Func[nMonsterGroupId_3] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_3],CopyMap_Daily_Money_Normal_BoxMonster_Death)

--红色哥布林死亡
function CopyMap_Daily_Money_Normal_HSGBLMonster_Death()
    --删除红色哥布林npc
    if rwHasGenEvent(3056028) then
        rwDelGenEvent(3056028)
    end
end
rwtMonsterGroup_Func[nMonsterGroupId_2] = rwtMonsterGroup_Func[nMonsterGroupId_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_2],CopyMap_Daily_Money_Normal_HSGBLMonster_Death)


--财宝，1000罗兰钻
rwtNpcGroup[nCollectGroupId_1] = rwtNpcGroup[nCollectGroupId_1] or {}
rwtNpcGroup[nCollectGroupId_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectGroupId_1]["CollectTime"] = 1
rwtNpcGroup[nCollectGroupId_1]["Awards"] = {}  
rwtNpcGroup[nCollectGroupId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollectGroupId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollectGroupId_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollectGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwarrd_4
rwtNpcGroup[nCollectGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollectGroupId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

