--日常金钱副本 深渊难度 

--副本ID
local nCopyMapId = 3093  

--副本生成
local tLoadGenId_BoxCheck = {}
local tLoadGenId_Fixed = {}

--日常副本表
local tCopyMap_Daily = {}

--用户记录掩码
tCopyMap_Daily.nUserRecordId = 1171

--副本目标Id
--废弃副本目标Id 60170
tCopyMap_Daily.nTaskId_1 = 60171

--副本目标文字Id
tCopyMap_Daily.nTaskId_Title = 21572
--废弃Id 21573


--副本进入对白
tCopyMap_Daily.tSceneDialog_1 = {6333,6494,6495,6496,6497}

--怪物战前对白(废弃)
--6334,6498,6499,6500,6501

--怪物战后对白(废弃)
--6335,6502,6503,6504,6505

--和NPC小孩对话对白
tCopyMap_Daily.tNpcDialog_1 = {6336,6506,6507,6508,6509}

--生化瓶采集后对白
tCopyMap_Daily.tColDialog_1 = {6337,6510,6511,6512,6513}

--有温丽 玛露茜对话
tCopyMap_Daily.tNpcDialog_2 = {6338,6514,6515}

--无温丽 玛露茜对话
tCopyMap_Daily.tNpcDialog_3 = {6339,6516,6517}

--还未领取所有奖励宝箱对白
tCopyMap_Daily.tSceneDialog_2 = {6340,6518,6519,6520,6521}

--已领取所有奖励宝箱对白
tCopyMap_Daily.tSceneDialog_3 = {6341,6522,6523,6524,6525,6526,6527}

--法师战前对白
tCopyMap_Daily.tNpcDialog_4 = {6342,6528,6529,6530,6531}




--奖励Id

--通关宝箱
local Award_ID_MaxBox = 1000392

--普通宝箱
local Award_ID_Box_N = 1000393

--稀有宝箱
local Award_ID_Box_A1 = 1000438
local Award_ID_Box_A2 = 1000439

--小孩
local Award_ID_BoyTalk = 1000394

--机械男孩
local Award_ID_BattleJxBoy = 1000395

--法师
local Award_ID_BattleFaShi = 1000396

--玛露茜
local Award_ID_MaLuQianTalk_N = 1000397
local Award_ID_MaLuQianTalk_201 = 1000398

----------------

--副本目标相关Group

tCopyMap_Daily.nBoxGroupId_Max = 40201
tCopyMap_Daily.nBoxGenId_Max = 3093002
table.insert(tLoadGenId_Fixed,tCopyMap_Daily.nBoxGenId_Max)

----------------

--怪物

tCopyMap_Daily.nMonGroupId_XiBo = 200433
tCopyMap_Daily.nMonGenId_XiBo = 3093001
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nMonGenId_XiBo)

--机械男孩
tCopyMap_Daily.nMonGroupId_JXBoy = 200434
tCopyMap_Daily.nMonGenId_JXBoy = 3093003
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nMonGenId_JXBoy)

--法师
--怪物冒泡Id废弃 100235
tCopyMap_Daily.nMonGroupId_FaShi = 200435
tCopyMap_Daily.nMonGenId_FaShi = 3093004
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nMonGenId_FaShi)

--蜘蛛女王
tCopyMap_Daily.nMonGroupId_ZZNvWang = 200483
tCopyMap_Daily.nMonGenId_ZZNvWang = 3093017
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nMonGenId_ZZNvWang)

--宝箱

--普通宝箱
tCopyMap_Daily.nBoxGroupId_N = 40202
tCopyMap_Daily.nBoxGenId_N1 = 3093005
tCopyMap_Daily.nBoxGenId_N2 = 3093006
tCopyMap_Daily.nBoxGenId_N3 = 3093007

tCopyMap_Daily.nBoxGroupId_A1 = 40235
tCopyMap_Daily.nBoxGroupId_A2 = 40236
tCopyMap_Daily.nBoxGenId_A1 = 3093018
tCopyMap_Daily.nBoxGenId_A2 = 3093019
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nBoxGenId_A1)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nBoxGenId_A2)

table.insert(tLoadGenId_Fixed,tCopyMap_Daily.nBoxGenId_N1)
table.insert(tLoadGenId_Fixed,tCopyMap_Daily.nBoxGenId_N2)
table.insert(tLoadGenId_Fixed,tCopyMap_Daily.nBoxGenId_N3)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nBoxGenId_N1)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nBoxGenId_N2)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nBoxGenId_N3)

--NPC

--小孩
tCopyMap_Daily.nNpcGroupId_Boy = 20602
tCopyMap_Daily.nNpcGenId_Boy1 = 3093008
tCopyMap_Daily.nNpcGenId_Boy2 = 3093009
tCopyMap_Daily.nNpcGenId_Boy3 = 3093010
tCopyMap_Daily.nNpcGenId_Boy4 = 3093011

table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nNpcGenId_Boy1)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nNpcGenId_Boy2)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nNpcGenId_Boy3)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nNpcGenId_Boy4)

--玛露茜
tCopyMap_Daily.nNpcGroupId_MaLuQian = 20603
tCopyMap_Daily.nNpcGenId_MaLuQian = 3093012
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nNpcGenId_MaLuQian)

--黑暗法师
tCopyMap_Daily.nNpcGroupId_FaShi = 20660
tCopyMap_Daily.nNpcGenId_FaShi = 3093020
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nNpcGenId_FaShi)

--采集物

--生化瓶
tCopyMap_Daily.nColGroupId_Bottle = 60347
tCopyMap_Daily.nColGenId_Bottle1 = 3093013
tCopyMap_Daily.nColGenId_Bottle2 = 3093014
tCopyMap_Daily.nColGenId_Bottle3 = 3093015

local tCol_Bottle = {3093013,3093014,3093015}

table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nColGenId_Bottle1)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nColGenId_Bottle2)
table.insert(tLoadGenId_BoxCheck,tCopyMap_Daily.nColGenId_Bottle3)

--空气墙
tCopyMap_Daily.nValve = 1083
tCopyMap_Daily.nValve_GenId = 3093016
table.insert(tLoadGenId_Fixed,tCopyMap_Daily.nValve_GenId)

----------------


--(机械男孩)战后
rwtMonsterGroup[tCopyMap_Daily.nMonGroupId_JXBoy] = {}
rwtMonsterGroup[tCopyMap_Daily.nMonGroupId_JXBoy]["BattleWin"] = function()
	for k,Col_Bottle_GenId in ipairs(tCol_Bottle) do
		if rwHasGenEvent(Col_Bottle_GenId) then
			rwDelGenEvent(Col_Bottle_GenId)
		end
	end
end

--(法师)战后
rwtMonsterGroup[tCopyMap_Daily.nMonGroupId_FaShi] = {}
rwtMonsterGroup[tCopyMap_Daily.nMonGroupId_FaShi]["BattleWin"] = function()
	if rwHasGenEvent(tCopyMap_Daily.nNpcGenId_FaShi) then
		rwDelGenEvent(tCopyMap_Daily.nNpcGenId_FaShi)
	end
end

--通关宝箱
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max] = rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max] or {}  
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["NotDel"] = 1
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tLoadGenId_BoxCheck
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tSceneDialog_2
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tSceneDialog_3
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["DynDelete"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["DynDelete"][1] = tCopyMap_Daily.nBoxGenId_Max
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily.nBoxGroupId_Max
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_MaxBox
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"] = {}  --强制打开通关宝箱奖励
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tSceneDialog_3
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["DynDelete"][1] = tCopyMap_Daily.nBoxGenId_Max
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily.nBoxGroupId_Max
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_Max]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_MaxBox

for k,Scene_DialogId_2 in ipairs(tCopyMap_Daily.tSceneDialog_2) do
	rwtDialog[Scene_DialogId_2] = rwtDialog[Scene_DialogId_2] or {}
	rwtDialog[Scene_DialogId_2]["OptionFunc2"] = function()
		LinkTreasureBoxOpenSucc(tCopyMap_Daily.nBoxGroupId_Max,tCopyMap_Daily.nBoxGenId_Max,1)
	end
end


--普通宝箱
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N] = rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N] or {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Type"] =	CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily.nBoxGroupId_N
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_N]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Box_N

--稀有宝箱
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1] = rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1] or {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily.nBoxGroupId_A1
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Box_A1

--稀有宝箱
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2] = rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2] or {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_Daily.nBoxGroupId_A2
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_Daily.nBoxGroupId_A2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Box_A2


--NPC对话逻辑

--小孩
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy] = rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy] or {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_Boy]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tNpcDialog_1

for k,Npc_DialogId_1 in ipairs(tCopyMap_Daily.tNpcDialog_1) do
	rwtDialog[Npc_DialogId_1] = rwtDialog[Npc_DialogId_1] or {}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"] = {}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"] = {}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_BoyTalk
	rwtDialog[Npc_DialogId_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--法师
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi] = rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi] or {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_FaShi]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tNpcDialog_4

for k,Npc_DialogId_4 in ipairs(tCopyMap_Daily.tNpcDialog_4) do
	rwtDialog[Npc_DialogId_4] = rwtDialog[Npc_DialogId_4] or {}
	rwtDialog[Npc_DialogId_4]["DialogEndInit"] = {}
	rwtDialog[Npc_DialogId_4]["DialogEndInit"]["Events"] = {}
	rwtDialog[Npc_DialogId_4]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Npc_DialogId_4]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
	rwtDialog[Npc_DialogId_4]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tCopyMap_Daily.nMonGenId_FaShi
end



--采集生化瓶
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle] = rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle] or {}
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["CollectTime"] = 3
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["NotDel"] = 1
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily.nColGroupId_Bottle]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tColDialog_1

for k,Col_DialogId_1 in ipairs(tCopyMap_Daily.tColDialog_1) do
	rwtDialog[Col_DialogId_1] = rwtDialog[Col_DialogId_1] or {}
	rwtDialog[Col_DialogId_1]["DialogEndInit"] = {}
	rwtDialog[Col_DialogId_1]["DialogEndInit"]["Events"] = {}
	rwtDialog[Col_DialogId_1]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Col_DialogId_1]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
	rwtDialog[Col_DialogId_1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tCopyMap_Daily.nMonGenId_JXBoy
end

--玛露茜
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian] = rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian] or {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {201}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tNpcDialog_2
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_Daily.nNpcGroupId_MaLuQian]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tNpcDialog_3


for k,Npc_DialogId_2 in ipairs(tCopyMap_Daily.tNpcDialog_2) do
	rwtDialog[Npc_DialogId_2] = rwtDialog[Npc_DialogId_2] or {}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"] = {}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"] = {}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_MaLuQianTalk_201
	rwtDialog[Npc_DialogId_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

for k,Npc_DialogId_3 in ipairs(tCopyMap_Daily.tNpcDialog_3) do
	rwtDialog[Npc_DialogId_3] = rwtDialog[Npc_DialogId_3] or {}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"] = {}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"] = {}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1] = {}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_MaLuQianTalk_N
	rwtDialog[Npc_DialogId_3]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end



----------------

--动态加载

--副本目标

rwtTarget[tCopyMap_Daily.nTaskId_1] = {}
rwtTarget[tCopyMap_Daily.nTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][tCopyMap_Daily.nTaskId_Title]
rwtTarget[tCopyMap_Daily.nTaskId_1]["ReqTreasureBox"] = tCopyMap_Daily.nBoxGroupId_Max
rwtTarget[tCopyMap_Daily.nTaskId_1]["ReqCount"] = 1



--副本信息(深渊难度)
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {tCopyMap_Daily.nTaskId_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--副本通关掩码更新
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
--副本初始化 固定事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tCopyMap_Daily.tSceneDialog_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId_Fixed
--副本初始化 随机事件
--(3事件随机1)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nNpcGenId_Boy1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily.nNpcGenId_Boy2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily.nNpcGenId_Boy3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = tCopyMap_Daily.nNpcGenId_Boy4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nColGenId_Bottle1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily.nColGenId_Bottle2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily.nColGenId_Bottle3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nNpcGenId_FaShi
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nNpcGenId_MaLuQian
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["TempDataID"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nColGenId_Bottle1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily.nColGenId_Bottle2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["tGenId"][3]["GenId"] = tCopyMap_Daily.nColGenId_Bottle3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["TempDataID"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily.nNpcGenId_FaShi
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["TempDataID"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][3]["tGenId"][1]["GenId"] = tCopyMap_Daily.nNpcGenId_MaLuQian
--(2事件随机1)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nMonGenId_XiBo
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily.nBoxGenId_A1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nMonGenId_ZZNvWang
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily.nBoxGenId_A2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["ChkUserTempData"][1]["Record"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["TempDataID"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["tGenId"][1]["GenId"] = tCopyMap_Daily.nMonGenId_XiBo
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][1]["tGenId"][2]["GenId"] = tCopyMap_Daily.nBoxGenId_A1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["TempDataID"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["tGenId"][1]["GenId"] = tCopyMap_Daily.nMonGenId_ZZNvWang
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][2]["tGenId"][2]["GenId"] = tCopyMap_Daily.nBoxGenId_A2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3]["TempDataID"] = tCopyMap_Daily.nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][8]["RandomCreare"][3]["MaxRate"] = 10000
