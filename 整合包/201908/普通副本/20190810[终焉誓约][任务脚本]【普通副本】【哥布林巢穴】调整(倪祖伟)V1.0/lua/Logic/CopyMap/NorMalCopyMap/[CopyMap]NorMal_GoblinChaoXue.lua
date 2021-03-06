--region *.lua
--Date
--普通副本-哥布林巢穴
--Nizw


--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3030

local nChangeNpcTask = 10163

local nGenid_Monster_FF1        = 3030003     -- 发疯哥布林1
local nGenid_Monster_FF2        = 3030004     -- 发疯哥布林2
local nGenid_Monster_BOX1       = 3030005     -- 发疯哥布林门口
local nGenid_Monster_SRM        = 3030008     -- 食人魔佣兵
local nGenid_Monster_HZKBoss    = 3030009     -- BOSS哈扎克
local nGenid_Box1       = 3030001     -- 宝箱1
local nGenid_Box2       = 3030002     -- 宝箱2
local nGenid_Box3       = 3030006     -- 宝箱3

local nNPCGroup_Box1       = 40053     -- 宝箱1
local nNPCGroup_Box2       = 40054     -- 宝箱2
local nNPCGroup_Box3       = 40055     -- 宝箱3

local nAward_Box1       = 1000729      -- 宝箱1
local nAward_Box2       = 1000730      -- 宝箱2
local nAward_Box3       = 1000731      -- 宝箱3


local tInitMap_genid = {
    nGenid_Monster_FF1,
    nGenid_Monster_FF2,
    nGenid_Monster_BOX1,
    nGenid_Monster_SRM,
    nGenid_Monster_HZKBoss,
    nGenid_Box1,
    nGenid_Box2,
    nGenid_Box3,
}

local nMonster_FF1              = 200226     -- 发疯哥布林1
local nMonster_FF2              = 200227     -- 发疯哥布林2
local nMonster_BOX              = 200228     -- 猩红魔箱1
local nMonster_SRM              = 200229     -- 食人魔佣兵
local nMonster_HZKBoss          = 200230     -- BOSS哈扎克


--====================================================================

--副本入口NPC组
rwtNpcGroup[50021] = rwtNpcGroup[50021] or {}
rwtNpcGroup[50021]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50021]["CopyMapList"] = {nCopyMapId}
-- rwtNpcGroup[50021]["UnlockDialog"] = 5212
-- rwtNpcGroup[50021]["Dialog"] = 5206

rwtNpcGroup[nNPCGroup_Box1] = {}
rwtNpcGroup[nNPCGroup_Box1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNPCGroup_Box1]["Awards"] = {}
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNPCGroup_Box1
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNPCGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box1


rwtNpcGroup[nNPCGroup_Box2] = {}
rwtNpcGroup[nNPCGroup_Box2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNPCGroup_Box2]["Awards"] = {}
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNPCGroup_Box2
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNPCGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box2


rwtNpcGroup[nNPCGroup_Box3] = {}
rwtNpcGroup[nNPCGroup_Box3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNPCGroup_Box3]["Awards"] = {}
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"] = {}
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNPCGroup_Box3
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNPCGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box3


--任务目标配置
rwtTarget[60046] = {}
rwtTarget[60046]["Title"] = tLuaText[LANGUAGE_CONFIG][20028]
rwtTarget[60046]["KillMonsterGroup"] = 200230
rwtTarget[60046]["ReqCount"] = 1

-- 副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {60046}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 2001792 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5186
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tInitMap_genid
