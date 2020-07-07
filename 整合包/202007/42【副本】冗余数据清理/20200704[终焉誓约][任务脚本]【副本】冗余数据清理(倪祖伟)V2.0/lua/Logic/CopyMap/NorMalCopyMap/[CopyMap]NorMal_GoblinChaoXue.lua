--region [CopyMap]NorMal_GoblinChaoXue
--Purpose:		普通哥布林巢穴
--Creator: 		倪祖伟
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-07-4 $
--RCS-ID:		$Revision: 3 $
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


local tInitMap_genid = {
    nGenid_Monster_FF1,
    nGenid_Monster_FF2,
    nGenid_Monster_BOX1,
    nGenid_Monster_SRM,
    -- nGenid_Monster_HZKBoss,
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

--任务目标配置
rwtTarget[60046] = {}
rwtTarget[60046]["Title"] = tLuaText[LANGUAGE_CONFIG][20028]
rwtTarget[60046]["KillMonsterGroup"] = 200229
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

--[[
    怪物
    3030005 200228 1000193 1
    3030003 200226 1000193 2
    3030004 200227 1000193 3(旋转)
    3030008 200229 1000195 4
]]