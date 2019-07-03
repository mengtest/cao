--[英雄传说][测试脚本]副本系统测试 *.lua
--Date
--副本系统测试



--endregion



--1-2人无篝火
local nCopyMapMissId_1 = 9003
--2-3有篝火
local nCopyMapMissId_2 = 9004
--单人本
local nCopyMapMissId_3 = 9005

--副本入口
rwtNpcGroup[50009] = {}
rwtNpcGroup[50009]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50009]["CopyMapList"] = {nCopyMapMissId_1}

rwtNpcGroup[50010] = {}
rwtNpcGroup[50010]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50010]["CopyMapList"] = {nCopyMapMissId_2}

rwtNpcGroup[50011] = {}
rwtNpcGroup[50011]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50011]["CopyMapList"] = {nCopyMapMissId_3}


rwtCopyMapMission[nCopyMapMissId_1] = rwtCopyMapMission[nCopyMapMissId_1] or {}
rwtCopyMapMission[nCopyMapMissId_1]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["MapInitFunc"] = function(nCopyMapMissId)
    CopyMap_TestCopy1_Enter(nCopyMapMissId)
end

rwtCopyMapMission[nCopyMapMissId_2] = rwtCopyMapMission[nCopyMapMissId_2] or {}
rwtCopyMapMission[nCopyMapMissId_2]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_2]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId_2]["MapInitFunc"] = function(nCopyMapMissId)
    CopyMap_TestCopy2_Enter(nCopyMapMissId)
end

rwtCopyMapMission[nCopyMapMissId_3] = rwtCopyMapMission[nCopyMapMissId_3] or {}
rwtCopyMapMission[nCopyMapMissId_3]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_3]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId_3]["MapInitFunc"] = function(nCopyMapMissId)
    CopyMap_TestCopy3_Enter(nCopyMapMissId)
end

function CopyMap_TestCopy1_Enter(nCopyMapMissId)
end

function CopyMap_TestCopy2_Enter(nCopyMapMissId)
end

function CopyMap_TestCopy3_Enter(nCopyMapMissId)
end

function CopyMap_TestCopy1_Boss_Dead()
    rwSetPassCopyMap()
end
rwtMonsterGroup_Func[400007] = rwtMonsterGroup_Func[400007] or {}
table.insert(rwtMonsterGroup_Func[400007],CopyMap_TestCopy1_Boss_Dead)


function CopyMap_TestCopy2_Boss_Dead()
    rwSetPassCopyMap()
    rwAddBonFire(120,3,50)
end
rwtMonsterGroup_Func[400008] = rwtMonsterGroup_Func[400008] or {}
table.insert(rwtMonsterGroup_Func[400008],CopyMap_TestCopy2_Boss_Dead)

function CopyMap_TestCopy3_Boss_Dead()
    rwSetPassCopyMap()
end
rwtMonsterGroup_Func[400009] = rwtMonsterGroup_Func[400009] or {}
table.insert(rwtMonsterGroup_Func[400009],CopyMap_TestCopy3_Boss_Dead)