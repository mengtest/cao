--region *.lua
--Date
--普通副本-哥布林巢穴
--NZW


--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3030

local nChangeNpcTask = 10163

local nGenid_Monster_WuZ        = 3030002     -- 武装哥布林
local nGenid_Monster_FF1        = 3030003     -- 发疯哥布林1
local nGenid_Monster_FF2        = 3030004     -- 发疯哥布林2
local nGenid_Monster_BOX1       = 3030005     -- 猩红魔箱1
local nGenid_Monster_BOX2       = 3030006     -- 猩红魔箱2
local nGenid_Monster_BOX3       = 3030007     -- 猩红魔箱3
local nGenid_Monster_SRM        = 3030008     -- 食人魔佣兵
local nGenid_Monster_HZKBoss    = 3030009     -- BOSS哈扎克
local nGenid_BOX_OpenBox1       = 3030010     -- 可开宝箱1
local nGenid_BOX_OpenBox2       = 3030011     -- 可开宝箱2
local nGenid_BOX_OpenBox3       = 3030012     -- 可开宝箱3

local tInitMap_genid = {
    nGenid_Monster_WuZ,
    nGenid_Monster_FF1,
    nGenid_Monster_FF2,
    nGenid_Monster_SRM,
    nGenid_Monster_HZKBoss,
    nGenid_BOX_OpenBox1,
    nGenid_BOX_OpenBox2,
    nGenid_BOX_OpenBox3
}

local nMonster_WuZ              = 200225     -- 武装哥布林
local nMonster_FF1              = 200226     -- 发疯哥布林1
local nMonster_FF2              = 200227     -- 发疯哥布林2
local nMonster_BOX              = 200228     -- 猩红魔箱1
local nMonster_SRM              = 200229     -- 食人魔佣兵
local nMonster_HZKBoss          = 200230     -- BOSS哈扎克

local nOpenBox1        = 40053       -- 可开宝箱1
local nOpenBox2        = 40054       -- 可开宝箱2
local nOpenBox3        = 40055       -- 可开宝箱3

-- 宝箱所在的地方对应随机刷出宝箱怪
local tBoxToMonster = {}
tBoxToMonster[nOpenBox1] = nGenid_Monster_BOX1
tBoxToMonster[nOpenBox2] = nGenid_Monster_BOX2
tBoxToMonster[nOpenBox3] = nGenid_Monster_BOX3
--====================================================================
-- Function()
-- 加载怪物、箱子
--function CopyMapNorMal_GeBuLin_InitMap()
--    for _, i in ipairs(tInitMap_genid) do
--        if not rwHasGenEvent(i) then
--            rwAddGenEvent(i)
--        end
--    end
--end
---- 进入副本
--function CopyMapNorMal_GeBuLin_EnterMap()
--    local nUserId = rwUserGetId()
--    rwPrintLog(nUserId..":进入普通本哥布林巢穴")
--    CopyMapNorMal_GeBuLin_InitMap()
--    rwOpenNpcChatDialog(5186)
--end

-- 随机开箱子
--function CopyMapNorMal_GeBuLin_OpenBox(nGroupType)
--    if not rwHasGenEvent(tBoxToMonster[nGroupType]) then
--        rwAddGenEvent(tBoxToMonster[nGroupType])
--        rwPrintLog(nUserId .. "：生成宝箱怪genid："..tBoxToMonster[nGroupType])
--    end
--end

-- 副本通关
-- function CopyMapNorMal_GeBuLin_BossDaeth()
--     rwLinkPassCopyMap(nCopyMapId)
-- end

rwtMonsterGroup_Func[nMonster_HZKBoss] = rwtMonsterGroup_Func[nMonster_HZKBoss] or {} 
table.insert(rwtMonsterGroup_Func[nMonster_HZKBoss],CopyMapNorMal_GeBuLin_BossDaeth)

--====================================================================
-- 可开宝箱1
rwtNpcGroup[nOpenBox1] = rwtNpcGroup[nOpenBox1] or {}
rwtNpcGroup[nOpenBox1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nOpenBox1]["Awards"] = {}
rwtNpcGroup[nOpenBox1]["Awards"]["Events"] = {}
rwtNpcGroup[nOpenBox1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nOpenBox1]["Awards"]["Events"][1]["DynCreate"] = {}		--创建怪物
rwtNpcGroup[nOpenBox1]["Awards"]["Events"][1]["DynCreate"][1] = tBoxToMonster[nOpenBox1]

--rwtNpcGroup[nOpenBox1]["Function"] = function(nGroupType)
--    rwPrintLog("哥布林普通副本:打开宝箱3："..nGroupType)
--    CopyMapNorMal_GeBuLin_OpenBox(nGroupType)
--end

-- 可开宝箱1
rwtNpcGroup[nOpenBox2] = rwtNpcGroup[nOpenBox2] or {}
rwtNpcGroup[nOpenBox2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nOpenBox2]["Awards"] = {}
rwtNpcGroup[nOpenBox2]["Awards"]["Events"] = {}
rwtNpcGroup[nOpenBox2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nOpenBox2]["Awards"]["Events"][1]["DynCreate"] = {}		--创建怪物
rwtNpcGroup[nOpenBox2]["Awards"]["Events"][1]["DynCreate"][1] = tBoxToMonster[nOpenBox2]
--rwtNpcGroup[nOpenBox2]["Function"] = function(nGroupType)
--    rwPrintLog("哥布林普通副本:打开宝箱3："..nGroupType)
--    CopyMapNorMal_GeBuLin_OpenBox(nGroupType)
--end

-- 可开宝箱1
rwtNpcGroup[nOpenBox3] = rwtNpcGroup[nOpenBox3] or {}
rwtNpcGroup[nOpenBox3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nOpenBox3]["Awards"] = {}
rwtNpcGroup[nOpenBox3]["Awards"]["Events"] = {}
rwtNpcGroup[nOpenBox3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nOpenBox3]["Awards"]["Events"][1]["DynCreate"] = {}		--创建怪物
rwtNpcGroup[nOpenBox3]["Awards"]["Events"][1]["DynCreate"][1] = tBoxToMonster[nOpenBox3]
--rwtNpcGroup[nOpenBox3]["Function"] = function(nGroupType)
--    rwPrintLog("哥布林普通副本:打开宝箱3："..nGroupType)
--    CopyMapNorMal_GeBuLin_OpenBox(nGroupType)
--end

--副本入口NPC组 --TODO
rwtNpcGroup[50021] = rwtNpcGroup[50021] or {}
rwtNpcGroup[50021]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50021]["CopyMapList"] = {nCopyMapId}
rwtNpcGroup[50021]["UnlockDialog"] = 5212
rwtNpcGroup[50021]["Dialog"] = 5206

--任务目标配置
rwtTarget[60046] = {}
rwtTarget[60046]["Title"] = tLuaText[LANGUAGE_CONFIG][20028]
rwtTarget[60046]["KillMonsterGroup"] = 200230
rwtTarget[60046]["ReqCount"] = 1

-- 副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
--rwtCopyMapMission[nCopyMapId]["EnterNpc"] = 50021
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = 60046
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60046}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapId)
--    CopyMapNorMal_GeBuLin_EnterMap()
--end
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 2001792 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5186
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tInitMap_genid
