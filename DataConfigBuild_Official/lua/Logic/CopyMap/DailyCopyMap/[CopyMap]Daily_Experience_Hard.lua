
--日常副本 经验 困难



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

local tCopyMap_Daily = {}


--副本ID
tCopyMap_Daily["nCopyMapId"] = 3059

--用户数据
tCopyMap_Daily["nUserRecordId"] = 1116

--位置点

--相关任务

--目标任务
--废弃副本任务目标Id 60098
tCopyMap_Daily["nMainTaskId_1"] = 60099 --寻找宝藏


--副本位置NPC组

--场景加载(宝箱判断逻辑)
local tLoadGenId = {}
--场景加载(副本开始)
local tLoadGenId_other = {}

--怪物

--废弃怪物战前事件Id  100090,100091

tCopyMap_Daily["nMonsterGroup_NvWu"] = 200314
tCopyMap_Daily["nMonsterGroup_MeiMo"] = 200345
tCopyMap_Daily["nMonsterGroup_NvWuPC"] = 200346
tCopyMap_Daily["nMonsterGroup_FS"] = 200471

tCopyMap_Daily["nMonster_NvWu_GenId"] = 3059010
tCopyMap_Daily["nMonster_MeiMo_GenId"] = 3059012
tCopyMap_Daily["nMonster_NvWuPC_GenId"] = 3059013
tCopyMap_Daily["nMonster_FS_GenId"] = 3059019
table.insert(tLoadGenId,tCopyMap_Daily["nMonster_NvWu_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nMonster_MeiMo_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nMonster_NvWuPC_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nMonster_FS_GenId"])



--NPC
tCopyMap_Daily["nNpcGroup_MeiMo"] = 20460
tCopyMap_Daily["nNpcGroup_XiaoNvWu"] = 20461
tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"] = 3059001
tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"] = 3059002
tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"] = 3059003
tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"] = 3059014
tCopyMap_Daily["nNpcGroup_MeiMo_GenId"] = 3059015
tCopyMap_Daily["nNpcGroup_XiaoNvWu_GenId"] = 3059016

local tNpcGroup_NvWuPC = {20374,20378,20379,20459}

--NPC坐标
tCopyMap_Daily["nNpc_NvWuPC1_Pos"] = "-17.53,6.95,11.45"
tCopyMap_Daily["nNpc_NvWuPC2_Pos"] = "-5.16,6.95,19.11"
tCopyMap_Daily["nNpc_NvWuPC3_Pos"] = "-23.42,10.48,0.34"
tCopyMap_Daily["nNpc_NvWuPC4_Pos"] = "-24.87,10.48,8.14"

tCopyMap_Daily["nNpc_NvWuPC1_Pos_RotaY"] = 80
tCopyMap_Daily["nNpc_NvWuPC2_Pos_RotaY"] = 135
tCopyMap_Daily["nNpc_NvWuPC3_Pos_RotaY"] = 320
tCopyMap_Daily["nNpc_NvWuPC4_Pos_RotaY"] = 230

--NPC组
table.insert(tLoadGenId,tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nNpcGroup_MeiMo_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nNpcGroup_XiaoNvWu_GenId"])


tCopyMap_Daily["nNpcRes_NvWu"] = 3347

--宝箱
tCopyMap_Daily["nTreasureBox1"] = 40110
tCopyMap_Daily["nTreasureBox2"] = 40111
tCopyMap_Daily["nTreasureBox3"] = 40217
tCopyMap_Daily["nTreasureBox4"] = 40218
tCopyMap_Daily["nTreasureBox1_GenId"] = 3059004
tCopyMap_Daily["nTreasureBox2_GenId"] = 3059005
tCopyMap_Daily["nTreasureBox3_GenId"] = 3059020
tCopyMap_Daily["nTreasureBox4_GenId"] = 3059021
table.insert(tLoadGenId_other,tCopyMap_Daily["nTreasureBox1_GenId"])
table.insert(tLoadGenId_other,tCopyMap_Daily["nTreasureBox2_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nTreasureBox2_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nTreasureBox3_GenId"])
table.insert(tLoadGenId,tCopyMap_Daily["nTreasureBox4_GenId"])


--采集
tCopyMap_Daily["nCollect1"] = 60152
tCopyMap_Daily["nCollect2"] = 60250
tCopyMap_Daily["nCollect1_GenId1"] = 3059006
tCopyMap_Daily["nCollect1_GenId2"] = 3059007
tCopyMap_Daily["nCollect1_GenId3"] = 3059008
tCopyMap_Daily["nCollect1_GenId4"] = 3059009
tCopyMap_Daily["nCollect1_GenId5"] = 3059017
tCopyMap_Daily["nCollect2_GenId1"] = 3059018
table.insert(tLoadGenId,tCopyMap_Daily["nCollect1_GenId1"])
table.insert(tLoadGenId,tCopyMap_Daily["nCollect1_GenId2"])
table.insert(tLoadGenId,tCopyMap_Daily["nCollect1_GenId3"])
table.insert(tLoadGenId,tCopyMap_Daily["nCollect1_GenId4"])
table.insert(tLoadGenId,tCopyMap_Daily["nCollect1_GenId5"])
table.insert(tLoadGenId,tCopyMap_Daily["nCollect2_GenId1"])

--采集物坐标
tCopyMap_Daily["nCollect1_GenId1_Pos"] = "-27.28,11.48,-3.58"
tCopyMap_Daily["nCollect1_GenId2_Pos"] = "-28.5,11.33,6.24"
tCopyMap_Daily["nCollect1_GenId3_Pos"] = "-22.76,10.88,4.15"
tCopyMap_Daily["nCollect1_GenId4_Pos"] = "-16.91,7.07,16.66"
tCopyMap_Daily["nCollect1_GenId5_Pos"] = "-5.27,6.95,9.67"


--机关
--local nValve1 = 1046
tCopyMap_Daily["nValve1_GenId1"] = 3059011
table.insert(tLoadGenId_other,tCopyMap_Daily["nValve1_GenId1"])


--奖励ID (服务端)
--采集奖励
local Award_ID_Collect = 1000143

--NPC对话奖励
local Award_ID_Dialog1 = 1000144 --女巫对话
local Award_ID_Dialog2 = 1000145 --无西蒙小女巫对话
local Award_ID_Dialog3 = 1000146 --有西蒙小女巫对话
local Award_ID_Dialog4 = 1000302 --无温丽魅魔对话

local Award_ID_Battle1 = 1000303 --有温丽魅魔战胜
local Award_ID_Battle2 = 1000304 --女巫仆从战胜


--宝箱奖励
local Award_ID_TreasureBox1 = 1000147 --通关宝箱
local Award_ID_TreasureBox2 = 1000148 --隐藏宝箱
local Award_ID_TreasureBox3 = 1000426 --稀有宝箱
local Award_ID_TreasureBox4 = 1000427 --稀有宝箱


--场景对话
--废弃对白Id(5345,5346,5604,5605,5609,5610,5614,5615,5619,5620)
--(5624,5625,5627,5628,5629,5630)

--进入副本对话
local tChooseDialog_Enter = {5344,5589,5590,5591,5592}

--宝箱奖励确认触发对白（有选项）
local tChooseDialog_OpenBox_1 = {5347,5593,5594,5595,5596}

--开启宝箱后触发对白
local tChooseDialog_OpenBox_2 = {5348,5597,5598,5599,5600,5854,5855}


--采集触发对白
tCopyMap_Daily["nSceneDialogId_1Col"] = 5626


--女巫触发对白
local tChooseDialog_1 = {5349,5419,5420,5587,5588}

--有温丽魅魔对话
local tChooseDialog_2 = {5601,5602,5603}

--无温丽魅魔对话
local tChooseDialog_3 = {5606,5607,5608}

--魅魔战斗失败对话
local tChooseDialog_4 = {5611,5612,5613}

--有西蒙小女巫对话
local tChooseDialog_5 = {5616,5617,5618}

--无西蒙小女巫对话
local tChooseDialog_6 = {5621,5622,5623}

--女巫仆从战斗后对话
local tChooseDialog_7 = {5631,5632,5633,5634,5635}


--场景动画

--物品ID

----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--通关宝箱
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]] = rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]] or {}  
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tLoadGenId
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tChooseDialog_OpenBox_1
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tChooseDialog_OpenBox_2
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["DynDelete"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["DynDelete"][1] = tCopyMap_Daily["nTreasureBox1_GenId"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily["nTreasureBox1"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_TreasureBox1
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"] = {}  --强制打开通关宝箱奖励
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = tChooseDialog_OpenBox_2
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["DynDelete"][1] = tCopyMap_Daily["nTreasureBox1_GenId"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily["nTreasureBox1"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily["nTreasureBox1"]]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_TreasureBox1

--选项对话
for _,OpenBox_1_Dialog in ipairs(tChooseDialog_OpenBox_1) do
	rwtDialog[OpenBox_1_Dialog] = rwtDialog[OpenBox_1_Dialog] or {}
	rwtDialog[OpenBox_1_Dialog]["OptionFunc2"] = function()
		LinkTreasureBoxOpenSucc(tCopyMap_Daily["nTreasureBox1"],tCopyMap_Daily["nTreasureBox1_GenId"],1)
	end
end


--隐藏宝箱
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]] = rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]] or {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Type"] =	CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily["nTreasureBox2"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily["nTreasureBox2"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_TreasureBox2

--稀有宝箱
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]] = rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]] or {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Type"] =	CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily["nTreasureBox3"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily["nTreasureBox3"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_TreasureBox3

--稀有宝箱
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]] = rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]] or {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Type"] =	CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily["nTreasureBox4"]
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily["nTreasureBox4"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_TreasureBox4

--NPC对话逻辑

--普通女巫
for _,Npc_MvWu in ipairs(tNpcGroup_NvWuPC) do
	rwtNpcGroup[Npc_MvWu] = rwtNpcGroup[Npc_MvWu] or {}
	rwtNpcGroup[Npc_MvWu]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
	rwtNpcGroup[Npc_MvWu]["Awards"] = {}
	rwtNpcGroup[Npc_MvWu]["Awards"]["Events"] = {}
	rwtNpcGroup[Npc_MvWu]["Awards"]["Events"][1] = {}
	rwtNpcGroup[Npc_MvWu]["Awards"]["Events"][1]["OpenDialog"] = {}
	rwtNpcGroup[Npc_MvWu]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tChooseDialog_1
end


--魅魔
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]] = rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]] or {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {201}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tChooseDialog_2
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_MeiMo"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tChooseDialog_3


--小女巫
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]] = rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]] or {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {101}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tChooseDialog_5
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily["nNpcGroup_XiaoNvWu"]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tChooseDialog_6



for _,Dialog_1_Id in ipairs(tChooseDialog_1) do
	rwtDialog[Dialog_1_Id] = rwtDialog[Dialog_1_Id] or {}
	rwtDialog[Dialog_1_Id]["DialogEndInit"] = {}
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"] = {}
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Dialog1
	rwtDialog[Dialog_1_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end


for _,Dialog_3_Id in ipairs(tChooseDialog_3) do
	rwtDialog[Dialog_3_Id] = rwtDialog[Dialog_3_Id] or {}
	rwtDialog[Dialog_3_Id]["DialogEndInit"] = {}
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"] = {}
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Dialog4
	rwtDialog[Dialog_3_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

for _,Dialog_6_Id in ipairs(tChooseDialog_6) do
	rwtDialog[Dialog_6_Id] = rwtDialog[Dialog_6_Id] or {}
	rwtDialog[Dialog_6_Id]["DialogEndInit"] = {}
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"] = {}
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Dialog2
	rwtDialog[Dialog_6_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

for _,Dialog_5_Id in ipairs(tChooseDialog_5) do
	rwtDialog[Dialog_5_Id] = rwtDialog[Dialog_5_Id] or {}
	rwtDialog[Dialog_5_Id]["DialogEndInit"] = {}
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"] = {}
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Dialog3
	rwtDialog[Dialog_5_Id]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end







--魅魔对话后战斗
for _,Dialog_2_Id in ipairs(tChooseDialog_2) do
rwtDialog[Dialog_2_Id] = rwtDialog[Dialog_2_Id] or {}
rwtDialog[Dialog_2_Id]["DialogEndInit"] = {}
rwtDialog[Dialog_2_Id]["DialogEndInit"]["Events"] = {}
rwtDialog[Dialog_2_Id]["DialogEndInit"]["Events"][1] = {}
rwtDialog[Dialog_2_Id]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[Dialog_2_Id]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tCopyMap_Daily["nMonster_MeiMo_GenId"]
end




--魅魔战斗后对白
rwtMonsterGroup[tCopyMap_Daily["nMonsterGroup_MeiMo"]] = rwtMonsterGroup[tCopyMap_Daily["nMonsterGroup_MeiMo"]] or {}
rwtMonsterGroup[tCopyMap_Daily["nMonsterGroup_MeiMo"]]["BattleWin"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	local nIndex = math.random(1,#tChooseDialog_4)
	rwOpenNpcChatDialog(tChooseDialog_4[nIndex])
	if rwHasGenEvent(tCopyMap_Daily["nNpcGroup_MeiMo_GenId"]) then
		rwDelGenEvent(tCopyMap_Daily["nNpcGroup_MeiMo_GenId"])
    end
end


--采集逻辑
rwtNpcGroup[tCopyMap_Daily["nCollect1"]] = rwtNpcGroup[tCopyMap_Daily["nCollect1"]] or {}
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["CollectTime"] = 1
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Collect
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily["nCollect1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


rwtNpcGroup[tCopyMap_Daily["nCollect2"]] = rwtNpcGroup[tCopyMap_Daily["nCollect2"]] or {}
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["CollectTime"] = 1
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tCopyMap_Daily["nSceneDialogId_1Col"]



--采集对话后战斗
rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]] = rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]] or {}
rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]]["DialogEndInit"] = {}
rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]]["DialogEndInit"]["Events"] = {}
rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tCopyMap_Daily["nSceneDialogId_1Col"]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tCopyMap_Daily["nMonster_NvWuPC_GenId"]



--女巫仆从战斗后对白
rwtMonsterGroup[tCopyMap_Daily["nMonsterGroup_NvWuPC"]] = rwtMonsterGroup[tCopyMap_Daily["nMonsterGroup_NvWuPC"]] or {}
rwtMonsterGroup[tCopyMap_Daily["nMonsterGroup_NvWuPC"]]["BattleWin"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	local nIndex = math.random(1,#tChooseDialog_7)
	rwOpenNpcChatDialog(tChooseDialog_7[nIndex])
	if rwHasGenEvent(tCopyMap_Daily["nCollect2_GenId1"]) then
		rwDelGenEvent(tCopyMap_Daily["nCollect2_GenId1"])
    end
end



--动态加载


--副本目标
-- 废弃副本标题文字Id 20006


rwtTarget[tCopyMap_Daily["nMainTaskId_1"]] = {}
rwtTarget[tCopyMap_Daily["nMainTaskId_1"]]["Title"] = tLuaText[LANGUAGE_CONFIG][20007]
rwtTarget[tCopyMap_Daily["nMainTaskId_1"]]["ReqTreasureBox"] = tCopyMap_Daily["nTreasureBox1"]
rwtTarget[tCopyMap_Daily["nMainTaskId_1"]]["ReqCount"] = 1

--副本信息(困难难度)
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]] = rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]] or {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Exp
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10043]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["ReqLev"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["Difficulty"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["TargetStepNum"] = 1 
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["Target1"] = {tCopyMap_Daily["nMainTaskId_1"]}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["Target99"] = {60072}
--副本通关掩码更新
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][1]["TempDataId"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][2]["TempDataId"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["PassSetTempGroup"][2]["SetValue"] = 0
--副本初始化 固定事件
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tChooseDialog_Enter
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId_other
--副本初始化 随机事件
--(3事件随机1)
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_MeiMo_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 4
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily["nCollect1_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["GenId"] = tCopyMap_Daily["nCollect1_GenId2"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["GenId"] = tCopyMap_Daily["nCollect1_GenId3"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["GenId"] = tCopyMap_Daily["nCollect1_GenId4"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][5]["GenId"] = tCopyMap_Daily["nCollect1_GenId5"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_XiaoNvWu_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomNum"] = 4
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily["nCollect1_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["GenId"] = tCopyMap_Daily["nCollect1_GenId2"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["GenId"] = tCopyMap_Daily["nCollect1_GenId3"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["GenId"] = tCopyMap_Daily["nCollect1_GenId4"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][5]["GenId"] = tCopyMap_Daily["nCollect1_GenId5"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomNum"] = 4
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nCollect1_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["Pos"] = tCopyMap_Daily["nCollect1_GenId1_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nCollect1_GenId2"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2]["Pos"] = tCopyMap_Daily["nCollect1_GenId2_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily["nCollect1_GenId3"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3]["Pos"] = tCopyMap_Daily["nCollect1_GenId3_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][4]["GenId"] = tCopyMap_Daily["nCollect1_GenId4"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][4]["Pos"] = tCopyMap_Daily["nCollect1_GenId4_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][5]["GenId"] = tCopyMap_Daily["nCollect1_GenId5"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][5]["Pos"] = tCopyMap_Daily["nCollect1_GenId5_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tCopyMap_Daily["nCollect2_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][3]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][4]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["TempDataID"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MaxRate"] = 3000
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_MeiMo_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["TempDataID"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MinRate"] = 3001
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MaxRate"] = 6000
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC1_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC2_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC3_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["Pos"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["RotationY"] = tCopyMap_Daily["nNpc_NvWuPC4_Pos_RotaY"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RemainRandomNum"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_XiaoNvWu_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["TempDataID"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RandomNum"] = 4
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MinRate"] = 6001
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1]["GenId"] = tCopyMap_Daily["nCollect1_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][1]["Pos"] = tCopyMap_Daily["nCollect1_GenId1_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2]["GenId"] = tCopyMap_Daily["nCollect1_GenId2"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][2]["Pos"] = tCopyMap_Daily["nCollect1_GenId2_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3]["GenId"] = tCopyMap_Daily["nCollect1_GenId3"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][3]["Pos"] = tCopyMap_Daily["nCollect1_GenId3_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4]["GenId"] = tCopyMap_Daily["nCollect1_GenId4"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][4]["Pos"] = tCopyMap_Daily["nCollect1_GenId4_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][5]["GenId"] = tCopyMap_Daily["nCollect1_GenId5"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tGenId"][5]["Pos"] = tCopyMap_Daily["nCollect1_GenId5_Pos"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = tCopyMap_Daily["nCollect2_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["RandomNum"] = 4
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["MinRate"] = 0
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["MaxRate"] = 6000
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][1]["GenId"] = tCopyMap_Daily["nCollect1_GenId1"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][2]["GenId"] = tCopyMap_Daily["nCollect1_GenId2"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][3]["GenId"] = tCopyMap_Daily["nCollect1_GenId3"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][4]["GenId"] = tCopyMap_Daily["nCollect1_GenId4"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][5]["GenId"] = tCopyMap_Daily["nCollect1_GenId5"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["RandomNum"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["MinRate"] = 6001
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["MaxRate"] = 10000
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][1]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC1_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][2]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC2_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][3]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][4] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][4]["GenId"] = tCopyMap_Daily["nNpcGroup_NvWuPC4_GenId"]
--(2事件随机1)
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nMonster_NvWu_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nTreasureBox3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nMonster_FS_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nTreasureBox4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["TempDataID"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily["nMonster_NvWu_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily["nTreasureBox3_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["TempDataID"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily["nMonster_FS_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["tGenId"][2]["GenId"] = tCopyMap_Daily["nTreasureBox4_GenId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3] = {}
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["TempDataID"] = tCopyMap_Daily["nUserRecordId"]
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[tCopyMap_Daily["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["MaxRate"] = 10000




