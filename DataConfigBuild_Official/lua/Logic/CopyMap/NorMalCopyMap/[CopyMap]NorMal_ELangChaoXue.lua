--region *.lua
--Date
--普通副本-饿狼巢穴
--NZW


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

--local nGenid_BOX_ELang              = 3038007     -- 饿狼宝箱
--local nGenid_BOX_BaiLang            = 3038008     -- 白狼宝箱

local tInitMap_genid = {
    nGenid_Monster_ELang1,
    nGenid_Monster_HKS1,
    nGenid_Monster_HKS2,
    nGenid_Monster_BaiLang,
    nGenid_Monster_ELang2,
    nGenid_Monster_LangBoss,
--    nGenid_BOX_ELang
}

local nMonster_ELang1         = 200231     -- 偷袭饿狼1
local nMonster_HKS1           = 200232     -- 胡克斯1
local nMonster_HKS2           = 200233     -- 胡克斯2
local nMonster_BaiLang        = 200234     -- 泪目白狼
local nMonster_ELang2         = 200235     -- 偷袭饿狼2
local nMonster_LangBoss       = 200236     -- 饿狼BOSS

--local nBOX_ELang              = 40057      -- 饿狼宝箱
--local nBOX_BaiLang            = 40058      -- 白狼宝箱
--====================================================================
-- Function()
-- 加载怪物、箱子
--function CopyMapNorMal_ELang_InitMap()
--    for _, i in ipairs(tInitMap_genid) do
--        if not rwHasGenEvent(i) then
--            rwAddGenEvent(i)
--        end
--    end
--end

---- 进入副本
--function CopyMapNorMal_ELang_EnterMap()
--    CopyMapNorMal_ELang_InitMap()
--    rwOpenNpcChatDialog(5191)
--end

-- -- 副本通关
-- function CopyMapNorMal_ELang_BossDaeth()
--     rwLinkPassCopyMap(nCopyMapId)
-- end

rwtMonsterGroup_Func[nMonster_LangBoss] = rwtMonsterGroup_Func[nMonster_LangBoss] or {} 
table.insert(rwtMonsterGroup_Func[nMonster_LangBoss],CopyMapNorMal_ELang_BossDaeth)

-- 刷出白狼宝箱
--function CopyMapNorMal_CreateBox()
--    rwAddGenEvent(nGenid_BOX_BaiLang)
--end

--rwtMonsterGroup_Func[nMonster_BaiLang] = rwtMonsterGroup_Func[nMonster_BaiLang] or {} 
--table.insert(rwtMonsterGroup_Func[nMonster_BaiLang],CopyMapNorMal_CreateBox)
--====================================================================
-- BOX
-- 可开宝箱1
--rwtNpcGroup[nBOX_ELang] = rwtNpcGroup[nBOX_ELang] or {}
--rwtNpcGroup[nBOX_ELang]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBOX_ELang]["Awards"] = {}
--rwtNpcGroup[nBOX_ELang]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nBOX_ELang]["Awards"]["AwardId"] = 1000052

---- 可开宝箱1
--rwtNpcGroup[nBOX_BaiLang] = rwtNpcGroup[nBOX_BaiLang] or {}
--rwtNpcGroup[nBOX_BaiLang]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBOX_BaiLang]["Awards"] = {}
--rwtNpcGroup[nBOX_BaiLang]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nBOX_BaiLang]["Awards"]["AwardId"] = 1000051

--副本入口NPC组 --TODO
rwtNpcGroup[50020] = {}
rwtNpcGroup[50020]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50020]["CopyMapList"] = {nCopyMapId}
rwtNpcGroup[50020]["UnlockDialog"] = 5210
rwtNpcGroup[50020]["Dialog"] = 5204

--任务目标配置
rwtTarget[60039] = {}
rwtTarget[60039]["Title"] = tLuaText[LANGUAGE_CONFIG][20027]
rwtTarget[60039]["KillMonsterGroup"] = 200236
rwtTarget[60039]["ReqCount"] = 1

-- 副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = 60039
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60039}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--rwtCopyMapMission[nCopyMapId]["EnterNpc"] = 50020
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapId)
--    CopyMapNorMal_ELang_EnterMap()
--end
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10112
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 2001791
-- rwtCopyMapMission[nCopyMapId]["NotCreate"] = 1 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5191
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tInitMap_genid


