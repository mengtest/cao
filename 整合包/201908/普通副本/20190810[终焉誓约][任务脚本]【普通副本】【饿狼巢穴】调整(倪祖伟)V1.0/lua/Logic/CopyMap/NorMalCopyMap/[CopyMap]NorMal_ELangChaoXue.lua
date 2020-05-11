--region *.lua
--Date
--普通副本-饿狼巢穴
--Nizw


--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3038

local nGenid_Monster_ELang1         = 3038001     -- 偷袭饿狼1
local nGenid_Monster_HKS1           = 3038002     -- 胡克斯1
local nGenid_Monster_HKS2           = 3038003     -- 胡克斯2
local nGenid_Monster_BaiLang        = 3038004     -- 泪目白狼
local nGenid_Monster_ELang2         = 3038005     -- 偷袭饿狼2
local nGenid_Monster_LangBoss       = 3038006     -- 饿狼BOSS
local nGenid_Box1                   = 3038007     -- 狼王收集箱1
local nGenid_Box2                   = 3038008     -- 狼王收集箱2

local nNPCGroup_Box1       = 40057      -- 狼王收集箱1
local nNPCGroup_Box2       = 40058      -- 狼王收集箱2
local nAward_Box1 = 1000727     -- 狼王收集箱1
local nAward_Box2 = 1000728     -- 狼王收集箱2

local tInitMap_genid = {
    nGenid_Monster_ELang1,
    nGenid_Monster_HKS1,
    nGenid_Monster_HKS2,
    nGenid_Monster_BaiLang,
    nGenid_Monster_ELang2,
    nGenid_Monster_LangBoss,
    nGenid_Box1,
    nGenid_Box2,
}

local nMonster_ELang1         = 200231     -- 偷袭饿狼1
local nMonster_HKS1           = 200232     -- 胡克斯1
local nMonster_HKS2           = 200233     -- 胡克斯2
local nMonster_BaiLang        = 200234     -- 泪目白狼
local nMonster_ELang2         = 200235     -- 偷袭饿狼2
local nMonster_LangBoss       = 200236     -- 饿狼BOSS



--副本入口NPC组 --TODO
rwtNpcGroup[50020] = {}
rwtNpcGroup[50020]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50020]["CopyMapList"] = {nCopyMapId}
-- rwtNpcGroup[50020]["UnlockDialog"] = 5210
-- rwtNpcGroup[50020]["Dialog"] = 5204

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


--任务目标配置
rwtTarget[60039] = {}
rwtTarget[60039]["Title"] = tLuaText[LANGUAGE_CONFIG][20027]
rwtTarget[60039]["KillMonsterGroup"] = 200236
rwtTarget[60039]["ReqCount"] = 1

-- 副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60039}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10112
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 2001791
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5191
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tInitMap_genid


