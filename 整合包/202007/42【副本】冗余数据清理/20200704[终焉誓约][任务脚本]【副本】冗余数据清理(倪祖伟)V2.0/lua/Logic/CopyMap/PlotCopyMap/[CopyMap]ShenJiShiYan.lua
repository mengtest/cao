--region 		[CopyMap]ShenJiShiYan.lua
--Purpose:		神迹实验室副本
--Creator: 		倪祖伟
--Created:		2017-08-21
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-7-04 $
--RCS-ID:		$Revision: 3 $
--endregion

--endregion
--===========================副本基础配置====================================--
local tSkyShiYanCreateGen = {
    3071001,3071002,3071003,3071004,3071005,    --怪物
    3071006,3071007,3071008,3071009,            --NPC
    }

local nMonsterGroup_1 = 200326
-- tMonsterGroup[2] = 200327
-- tMonsterGroup[3] = 200328
local nMonsterGroup_4 = 200329
-- tMonsterGroup[5] = 200330   --BOSS

local nBox_1 = 40147
local nBox_2 = 40148
local nBox_Monster = 40193

local nCopyMapMissId = 3071  
--奖励id                         
-- local nAwardId_1 =       
-- local nAwardId_2 =   

rwtTarget[60127] = {}
rwtTarget[60127]["Title"] = tLuaText[LANGUAGE_CONFIG][21230]
rwtTarget[60127]["KillMonsterGroup"] = 200329
rwtTarget[60127]["ReqCount"] = 1

rwtTarget[60128] = {}
rwtTarget[60128]["Title"] = tLuaText[LANGUAGE_CONFIG][21231]
rwtTarget[60128]["ReqDialogId"] = 5481
rwtTarget[60128]["ReqCount"] = 1

rwtTarget[60129] = {}
rwtTarget[60129]["Title"] = tLuaText[LANGUAGE_CONFIG][21232]
rwtTarget[60129]["KillMonsterGroup"] = 200330
rwtTarget[60129]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 3
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60127}
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60128}
rwtCopyMapMission[nCopyMapMissId]["Target3"] = {60129}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}


rwtCopyMapMission[nCopyMapMissId]["EnterNpcMap"] = 2004
rwtCopyMapMission[nCopyMapMissId]["ChangeNpcTask"] = 10492
rwtCopyMapMission[nCopyMapMissId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT
rwtCopyMapMission[nCopyMapMissId]["EnterNpcGen"] = 20040028
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5439
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tSkyShiYanCreateGen
rwtCopyMapMission[nCopyMapMissId]["MapInitFunc"]=function(nMissionId,nMapId)
    rwSpecialStatus_AddEffect(7,0,2055,"-0.6,5.57,8.61")
end

--随机刷出宝箱
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3071010
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "24.68,5.49,17.8"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -90
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3071011
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "20.9,3.47,-14.878"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = -90
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
-- rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3071013
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "6.06,6.517,1.23"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3071014
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = 3071010
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = 3071011

--===========================副本怪物组、NPC组、物品配置====================================--
function CopyMap_SkyShiYan_FirstMonsterDie()
    rwOpenNpcChatDialog(5479)
end
function CopyMap_SkyShiYan_JingYingMonsterDie()
    rwOpenNpcChatDialog(5481)
end
rwtDialog[5479] = rwtDialog[5479] or {}
rwtDialog[5479]["DialogEnd"] = function(nId)
    rwSpecialStatus_RemoveEffect(7,0,2055)
end
rwtDialog[5479]["DialogEndInit"] = {}
rwtDialog[5479]["DialogEndInit"]["Events"] = {}
rwtDialog[5479]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5479]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[5479]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3071006
rwtDialog[5479]["DialogEndInit"]["Events"][1]["DynDelete"][2] = 3071007
rwtDialog[5479]["DialogEndInit"]["Events"][1]["DynDelete"][3] = 3071008
rwtDialog[5479]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[5479]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[5479]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000285
rwtDialog[5479]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


rwtMonsterGroup_Func[nMonsterGroup_1] = rwtMonsterGroup_Func[nMonsterGroup_1] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_1],CopyMap_SkyShiYan_FirstMonsterDie)

rwtMonsterGroup_Func[nMonsterGroup_4] = rwtMonsterGroup_Func[nMonsterGroup_4] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_4],CopyMap_SkyShiYan_JingYingMonsterDie)

rwtNpcGroup[nBox_1] = rwtNpcGroup[nBox_1] or {}
rwtNpcGroup[nBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_1]["Awards"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_1
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000283 

rwtNpcGroup[nBox_2] = rwtNpcGroup[nBox_2] or {}
rwtNpcGroup[nBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_2]["Awards"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_2
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000284 


rwtNpcGroup[nBox_Monster] = rwtNpcGroup[nBox_Monster] or {}
rwtNpcGroup[nBox_Monster]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Monster]["NotDel"] = 1
rwtNpcGroup[nBox_Monster]["Awards"] = {}
rwtNpcGroup[nBox_Monster]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Monster]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Monster]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[nBox_Monster]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = 3071015

function CopySkyShiYanShi_BoxMonsterDie()
    --删除怪物宝箱
    rwDelGenEvent(3071014)
    rwOpenNpcChatDialog(6311)
end

rwtMonsterGroup_Func[200423] = rwtMonsterGroup_Func[200423] or {}
table.insert(rwtMonsterGroup_Func[200423],CopySkyShiYanShi_BoxMonsterDie)

--[[
    进入副本对白(5439)
    上方怪1(3071001 200326 1000834 1)
        战后对白(5479)触发动画(16601)
            对白(5440)  -->前往笼子
            对白(5441)  --砍笼子
            对白(5442)  --
            对白(5443)
    
    三宝箱随机刷
    (40147 3071010)
    (40148 3071011)
    (40193 3071014)
        为怪物(3071015 200423 1000736 1)宝箱
            战后对白(6311)
    怪物2(3071002 200327 9000276 2)
    怪物3(3071003 200328 9000276 3)

    怪物4(3071004 200329 9000277 4)
        战后触发动画(对白(5481) 接16602)
            对白(5444)  -->移镜头
            对白(5445)
            对白(5446)

    npc(20446 3071009)作为人质在BOSS旁边
    怪物Boss(3071005 200329 9000277 4)
        战后对白(5447)

]]
