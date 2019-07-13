--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--BY: Dona
--新版金钱副本6号

--endregion

------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3125

--怪物
local tMonsterGroup = {}	
tMonsterGroup[1] = 200622
tMonsterGroup[2] = 200623
tMonsterGroup[3] = 200624
tMonsterGroup[4] = 200625
tMonsterGroup[5] = 200626
tMonsterGroup[6] = 200627
tMonsterGroup[7] = 200628
tMonsterGroup[8] = 200629

--怪物gen
local tMonsterGroup_Gen = {}	
tMonsterGroup_Gen[1] = 3125001
tMonsterGroup_Gen[2] = 3125002
tMonsterGroup_Gen[3] = 3125003
tMonsterGroup_Gen[4] = 3125004
tMonsterGroup_Gen[5] = 3125005
tMonsterGroup_Gen[6] = 3125006
tMonsterGroup_Gen[7] = 3125007
tMonsterGroup_Gen[8] = 3125008

--宝箱
local tTreasureBox = {}	
tTreasureBox[1] = 40268  --通关
tTreasureBox[2] = 40269
tTreasureBox[3] = 40270
tTreasureBox[4] = 40271
tTreasureBox[5] = 40272
tTreasureBox[6] = 40273

--宝箱gen
local tTreasureBox_Gen = {}	
tTreasureBox_Gen[1] = 3125014	--通关
tTreasureBox_Gen[2] = 3125010
tTreasureBox_Gen[3] = 3125011
tTreasureBox_Gen[4] = 3125012
tTreasureBox_Gen[5] = 3125013
tTreasureBox_Gen[6] = 3125009


local nAwardId_1 = 1000518   --普通 
local nAwardId_2 = 1000519  --通关


rwtNpcGroup[tTreasureBox[1]] = rwtNpcGroup[tTreasureBox[1]] or {}  --通关宝箱
rwtNpcGroup[tTreasureBox[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tTreasureBox[1]]["CollectTime"] = 3
rwtNpcGroup[tTreasureBox[1]]["Awards"] = {}
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreasureBox[1]
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_1  
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tTreasureBox[1]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6788


rwtNpcGroup[tTreasureBox[2]] = rwtNpcGroup[tTreasureBox[2]] or {}  --普通宝箱1
rwtNpcGroup[tTreasureBox[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tTreasureBox[2]]["CollectTime"] = 2
rwtNpcGroup[tTreasureBox[2]]["Awards"] = {}
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreasureBox[2]
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTreasureBox[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_2 

rwtNpcGroup[tTreasureBox[3]] = rwtNpcGroup[tTreasureBox[2]]
rwtNpcGroup[tTreasureBox[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreasureBox[3]
rwtNpcGroup[tTreasureBox[4]] = rwtNpcGroup[tTreasureBox[2]]
rwtNpcGroup[tTreasureBox[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreasureBox[4]
rwtNpcGroup[tTreasureBox[5]] = rwtNpcGroup[tTreasureBox[2]]
rwtNpcGroup[tTreasureBox[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreasureBox[5]
rwtNpcGroup[tTreasureBox[6]] = rwtNpcGroup[tTreasureBox[2]]
rwtNpcGroup[tTreasureBox[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreasureBox[6]



--副本目标
local nTargetId = 60294

rwtTarget[nTargetId] = {}
rwtTarget[nTargetId]["Title"] = tLuaText[LANGUAGE_CONFIG][21793]
rwtTarget[nTargetId]["ReqCollectId"] = tTreasureBox[1]
rwtTarget[nTargetId]["ReqCount"] = 1


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTargetId}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 6787