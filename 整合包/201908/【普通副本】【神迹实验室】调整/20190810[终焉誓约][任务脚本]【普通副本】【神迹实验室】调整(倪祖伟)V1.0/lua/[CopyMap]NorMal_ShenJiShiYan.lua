--region *.lua
--Date
--普通副本-神迹实验室
--Nizw


--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3146

local tGenId = {}
tGenId.Monster_XianQuOne       = 3146001     -- 超体智能1号
tGenId.Monster_NvPu1           = 3146002     -- 伊甸傀从
tGenId.Monster_NvPu2           = 3146003     -- 伊甸傀从
tGenId.Monster_NvPu3           = 3146004     -- 伊甸傀从
tGenId.Monster_Boss            = 3146005     -- 疯狂博士
tGenId.Box1                    = 3146006     -- 宝箱1
tGenId.Box2                    = 3146007     -- 宝箱2
tGenId.Box3                    = 3146008     -- 宝箱3

local tMonsterGroup = {}
tMonsterGroup.Monster_XianQuOne       = 200731     -- 超体智能1号
tMonsterGroup.Monster_NvPu1           = 200732     -- 伊甸傀从
tMonsterGroup.Monster_NvPu2           = 200733     -- 伊甸傀从
tMonsterGroup.Monster_NvPu3           = 200734     -- 伊甸傀从
tMonsterGroup.Monster_Boss            = 200735     -- 疯狂博士

local nNPCGroup_Box1 = 40326    -- 宝箱1
local nNPCGroup_Box2 = 40327    -- 宝箱2
local nNPCGroup_Box3 = 40328    -- 宝箱3

local nAward_Box1 = 1000786     -- 宝箱1
local nAward_Box2 = 1000787     -- 宝箱2
local nAward_Box3 = 1000788     -- 宝箱3

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

--副本入口NPC组 --TODO
rwtNpcGroup[50068] = {}
rwtNpcGroup[50068]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50068]["CopyMapList"] = {nCopyMapId}


--任务目标配置
rwtTarget[60314] = {}
rwtTarget[60314]["Title"] = tLuaText[LANGUAGE_CONFIG][21822]
rwtTarget[60314]["KillMonsterGroup"] = tMonsterGroup.Monster_Boss
rwtTarget[60314]["ReqCount"] = 1

-- 副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60314}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2004
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10492
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 20040110
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tGenId


