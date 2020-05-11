--region [CopyMap]GoblinChaoXue
--Purpose:		剧情哥布林巢穴
--Creator: 		张圆
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-11-04 $
--RCS-ID:		$Revision: 6 $
--endregion



--Dialogue进入副本对话ID 5004 该隐战斗之前对话ID 5005 该隐战斗结束后对话ID 5006 ; 向哈扎特拿回 魔力石：5056； 打 冷静哥布林：5060
--Monster  怪物A 组ID 200081 怪物B 组ID 200084  怪物C 组ID  200087 哥布林统领ID 200090 哥布林洞穴-该隐ID 200091

--NPC宝箱  哥布林巢穴宝箱ID 40003-40005
--NPC  哥布林巢穴NPC：垂死的哥布林 ID 50002
--陷阱NPCID 30013-30014
--哥布林巢穴副本ID 3031
--哥布林巢穴NPCID  20022-20024
--哥布林巢穴物品 7000021 无用物品删除 2019.10.22
--该隐monster_group_id = 200083
local nBoxMonster = 0
local nHasDown = -1
local nCopyMapMissId_1 = 3031
local nGaiyin = 3041  --该隐

local CopyGoblin_FF_monsterId = {}
    CopyGoblin_FF_monsterId[1] = 3031008
    CopyGoblin_FF_monsterId[2] = 3031009

local CopyGoblin_monster_groupId = {}
    CopyGoblin_monster_groupId[1] = 200084
    CopyGoblin_monster_groupId[2] = 200087
    CopyGoblin_monster_groupId[3] = 200090
    CopyGoblin_monster_groupId[4] = 200082
    CopyGoblin_monster_groupId[5] = 200088

--local isMonsterCalm = {}

local nChangeNpcTask = 10163
--传送副本NPC
rwtNpcGroup[50002] = {}
rwtNpcGroup[50002]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50002]["UnlockDialog"] = 5212
rwtNpcGroup[50002]["Dialog"] = 5206
rwtNpcGroup[50002]["CopyMapList"] = {nCopyMapMissId_1}

--任务目标配置
rwtTarget[60044] = {}
rwtTarget[60044]["Title"] = tLuaText[LANGUAGE_CONFIG][20050]
rwtTarget[60044]["ReqTrap"] = 30013
rwtTarget[60044]["ReqCount"] = 1

rwtTarget[60045] = {}
rwtTarget[60045]["Title"] = tLuaText[LANGUAGE_CONFIG][20051]
rwtTarget[60045]["ReqDialogId"] = 5281
-- rwtTarget[60045]["ReqMonsterGroupBattleFailCount"] = 1




--rwtCopyMapMission[nCopyMapMissId_1]["MapInitFunc"] = function(nCopyMapMissId)
--    CopyMap_GoblinChaoxue_InitMap()
--end

-------------------NPC群组ID-----------------
local nNpcGroup_1 = 30013  --触发该隐吊打哈扎特剧情陷阱

-- --陷阱GenID
-- local nTrap_GenId_1 = 3031002
-- table.insert(tLoadNpc,3031002)
-- for i=3031020,3031036 do
--     if i == 3031022 then
--         --隐身衣不再刷出
--     else
--         table.insert(tLoadNpc,i)
--     end
-- end

local tLoadNpc = {
    3031002,    --触发Boss剧情陷阱
    3031020,    --红箱 --改为随机
    3031021,    --红箱
    -- 3031023,    --蓝箱
    3031024,    --蓝箱
    3031025,    --蓝箱
    3031026,    --黄箱
    3031027,    --黄箱
    3031028,    --黄箱
    3031029,    --黄箱
    3031030,    --黄箱
    -- 3031031     --黄箱-另外的怪物箱暂时屏蔽
}
------------------------------------------

--物品ID
local nItemID_1 = 7000600 -- 隐身
-- local nItemID_2 = 7000021  --无用物品删除 2019.10.22
local nItemID_3 = 7000650 -- 宁静药剂

--物品BUFF
local nItemStatus = 700001

--隐身斗篷
rwtItem[nItemID_1] = rwtItem[nItemID_1] or {}
rwtItem[nItemID_1]["Awards"] = {}
rwtItem[nItemID_1]["Awards"]["Events"] = {}
rwtItem[nItemID_1]["Awards"]["Events"][1] = {}
rwtItem[nItemID_1]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[nItemID_1]["Awards"]["Events"][1]["AddState"]["SpecialState"] = CONST_USER_SPECIAL_STATE.HIDE
rwtItem[nItemID_1]["Awards"]["Events"][1]["AddState"]["SpecialStateParam"] = 10

--宁静药剂
function CopyMap_Goblin_monster_speed_return(nMonsterGroupType, nMonsterGroupId, nGenId)
    local nUserid = rwUserGetId()
    --冷静状态下，才能执行
    if rwtCopyMapUserInitInfo[nCopyMapMissId_1][nUserid]["isMonsterCalm"] then
        for i = 1, #CopyGoblin_FF_monsterId do
            if CopyGoblin_FF_monsterId[i] ~= nGenId then
                rwChangeMonsterRounds(CopyGoblin_FF_monsterId[i], 0, 120) 
                rwOpenNpcChatDialog(5060)
            end
        end
        rwtCopyMapUserInitInfo[nCopyMapMissId_1][nUserid]["isMonsterCalm"] = false --怪物回到疯狂
    end   
end

for i = 1, #CopyGoblin_monster_groupId do
    rwtMonsterGroup_Func[CopyGoblin_monster_groupId[i]] = rwtMonsterGroup_Func[CopyGoblin_monster_groupId[i]] or {}
    table.insert(rwtMonsterGroup_Func[CopyGoblin_monster_groupId[i]],CopyMap_Goblin_monster_speed_return)
end

rwtItem[nItemID_3] = rwtItem[nItemID_3] or {}
rwtItem[nItemID_3]["Function"] = function(nItemType)
    if rwItemDel(nItemID_3) then
        -- rwPrintLog("使用宁静药剂，使疯狂哥布林减速")
        for i = 1, #CopyGoblin_FF_monsterId do
            rwChangeMonsterRounds(CopyGoblin_FF_monsterId[i], 0, 10) -- 速度0.5
        end
    end
    rwOpenNpcChatDialog(5099)
    -- 怪物变为冷静状态
    local nUserid = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapMissId_1][nUserid]["isMonsterCalm"] = true
    return true
end

-- --杀戮药剂
-- rwtItem[nItemID_2] = rwtItem[nItemID_2] or {}
-- rwtItem[nItemID_2]["Function"] = function(nItemType)
--     if rwItemDel(nItemID_2) then
--         rwPrintLog("删除杀戮药剂，获取到了杀戮药剂效果")
--         rwStatusAdd(nItemStatus)
--     end
--     return true
-- end


-- local tBox_red = {
--     3031020,
--     3031021,
--     3031022,
-- }

-- local tBox_blue = {
--     3031023,
--     3031024,
--     3031025,
-- }

-- local tBox_yellow = {
--     3031026,
--     3031027,
--     3031028,
--     3031029,
--     3031030,
-- }


--================哥布林 17箱===---
rwtNpcGroup[40026] = rwtNpcGroup[40026] or {}                           -- 红
rwtNpcGroup[40026]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40026]["Awards"] = {}
--rwtNpcGroup[40026]["Awards"]["AwardId"] = 1000057   -- 魔粉
--rwtNpcGroup[40026]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40026]["Awards"]["Events"] = {}
rwtNpcGroup[40026]["Awards"]["Events"][1] = {}
rwtNpcGroup[40026]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40026]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40026]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40026
rwtNpcGroup[40026]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40026]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000057  

rwtNpcGroup[40027] = rwtNpcGroup[40027] or {}  
rwtNpcGroup[40027]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40027]["Awards"] = {}
rwtNpcGroup[40027]["Awards"]["Events"] = {}
rwtNpcGroup[40027]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[40027]["Awards"]["Events"][1]["DynCreate"] = {3031032}
-- rwtNpcGroup[40027]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
-- rwtNpcGroup[40027]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15309
-- rwtNpcGroup[40027]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
-- rwtNpcGroup[40027]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtNpcGroup[40027]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[40027]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6774

rwtDialog[6774] = rwtDialog[6774] or {}
rwtDialog[6774]["DialogEndInit"] = {}
rwtDialog[6774]["DialogEndInit"]["Events"] = {}
rwtDialog[6774]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6774]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[6774]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtDialog[6774]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = 40027
rwtDialog[6774]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[6774]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000517

-- rwtNpcGroup[40028] = rwtNpcGroup[40028] or {}  
-- rwtNpcGroup[40028]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
-- rwtNpcGroup[40028]["Awards"] = {}
-- --rwtNpcGroup[40028]["Awards"]["AwardId"] = 1000058   --隐身衣
-- --rwtNpcGroup[40028]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
-- rwtNpcGroup[40028]["Awards"]["Events"] = {}
-- rwtNpcGroup[40028]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[40028]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtNpcGroup[40028]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
-- rwtNpcGroup[40028]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40028
-- rwtNpcGroup[40028]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
-- rwtNpcGroup[40028]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000058 


rwtNpcGroup[40029] = rwtNpcGroup[40029] or {}                           -- 蓝
rwtNpcGroup[40029]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40029]["Awards"] = {}
--rwtNpcGroup[40029]["Awards"]["AwardId"] = 1000059           -- 蓝1000
--rwtNpcGroup[40029]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40029]["Awards"]["Events"] = {}
rwtNpcGroup[40029]["Awards"]["Events"][1] = {}
rwtNpcGroup[40029]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40029]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40029]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40029
rwtNpcGroup[40029]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40029]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000059 

rwtNpcGroup[40030] = rwtNpcGroup[40030] or {}  
rwtNpcGroup[40030]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40030]["Awards"] = {}
--rwtNpcGroup[40030]["Awards"]["AwardId"] = 1000060   
--rwtNpcGroup[40030]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40030]["Awards"]["Events"] = {}
rwtNpcGroup[40030]["Awards"]["Events"][1] = {}
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40030
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000060 
rwtNpcGroup[40030]["Awards"]["Events"][1]["DynCreate"] = {}		--创建怪物
rwtNpcGroup[40030]["Awards"]["Events"][1]["DynCreate"][1] = 3031012
--rwtNpcGroup[40030]["Function"] = function(nGroupType)
--    rwAddGenEvent(3031012) --生成武装哥布林
--end

rwtNpcGroup[40031] = rwtNpcGroup[40031] or {}  
rwtNpcGroup[40031]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40031]["Awards"] = {}
--rwtNpcGroup[40031]["Awards"]["AwardId"] = 1000061           --蓝3000
--rwtNpcGroup[40031]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40031]["Awards"]["Events"] = {}
rwtNpcGroup[40031]["Awards"]["Events"][1] = {}
rwtNpcGroup[40031]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40031]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40031]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40031
rwtNpcGroup[40031]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40031]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000061


rwtNpcGroup[40032] = rwtNpcGroup[40032] or {}                           -- 黄
rwtNpcGroup[40032]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox            --黄白银
rwtNpcGroup[40032]["Awards"] = {}
--rwtNpcGroup[40032]["Awards"]["AwardId"] = 1000066
--rwtNpcGroup[40032]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40032]["Awards"]["Events"] = {}
rwtNpcGroup[40032]["Awards"]["Events"][1] = {}
rwtNpcGroup[40032]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40032]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40032]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40032
rwtNpcGroup[40032]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40032]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000066

rwtNpcGroup[40033] = rwtNpcGroup[40033] or {}  
rwtNpcGroup[40033]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40033]["Awards"] = {}
--rwtNpcGroup[40033]["Awards"]["AwardId"] = 1000062       --钻石10
--rwtNpcGroup[40033]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40033]["Awards"]["Events"] = {}
rwtNpcGroup[40033]["Awards"]["Events"][1] = {}
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40033
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000062

rwtNpcGroup[40034] = rwtNpcGroup[40034] or {}  
rwtNpcGroup[40034]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
-- rwtNpcGroup[40034]["NotDel"] = 1
rwtNpcGroup[40034]["Awards"] = {}
rwtNpcGroup[40034]["Awards"]["Events"] = {}
rwtNpcGroup[40034]["Awards"]["Events"][1] = {}
rwtNpcGroup[40034]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[40034]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6776

rwtDialog[6776] = rwtDialog[6776] or {}
rwtDialog[6776]["DialogEndInit"] = {}
rwtDialog[6776]["DialogEndInit"]["Events"] = {}
rwtDialog[6776]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6776]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[6776]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3031011

function CopyGoblin_BoxMonsterDie()
    --删除宝箱40027,播放战后对白
    -- rwDelGenEvent(3031028)
    rwOpenNpcChatDialog(6777)
end

rwtMonsterGroup_Func[200091] = rwtMonsterGroup_Func[200091] or {}
table.insert(rwtMonsterGroup_Func[200091],CopyGoblin_BoxMonsterDie)


rwtNpcGroup[40035] = rwtNpcGroup[40035] or {}  
rwtNpcGroup[40035]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40035]["Awards"] = {}
--rwtNpcGroup[40035]["Awards"]["AwardId"] = 1000064          --钻石10
--rwtNpcGroup[40035]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40035]["Awards"]["Events"] = {}
rwtNpcGroup[40035]["Awards"]["Events"][1] = {}
rwtNpcGroup[40035]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40035]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40035]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40035
rwtNpcGroup[40035]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40035]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000064

rwtNpcGroup[40036] = rwtNpcGroup[40036] or {}  
rwtNpcGroup[40036]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40036]["Awards"] = {}
--rwtNpcGroup[40036]["Awards"]["AwardId"] = 1000065           --黄2000
--rwtNpcGroup[40036]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40036]["Awards"]["Events"] = {}
rwtNpcGroup[40036]["Awards"]["Events"][1] = {}
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40036
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000065

-- rwtNpcGroup[40037] = rwtNpcGroup[40037] or {}  
-- rwtNpcGroup[40037]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
-- rwtNpcGroup[40037]["Awards"] = {}
-- rwtNpcGroup[40037]["Awards"]["Events"] = {}
-- rwtNpcGroup[40037]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[40037]["Awards"]["Events"][1]["DynCreate"] = {}		--创建怪物
-- rwtNpcGroup[40037]["Awards"]["Events"][1]["DynCreate"][1] = 3031014

-----------------------------------------

-- --随机刷新一个位置的宝箱
-- local tRandomCreateBox = {
--     --概率,事件,事件参数
--     {33,"CreateBox",3031004},
--     {66,"CreateBox",3031005},
--     -- {100,"CreateBox",3031006},
-- }



rwtNpcGroup[nNpcGroup_1] = rwtNpcGroup[nNpcGroup_1] or {}
rwtNpcGroup[nNpcGroup_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nNpcGroup_1]["DelTrap"] = 1
rwtNpcGroup[nNpcGroup_1]["Awards"] = {}  
rwtNpcGroup[nNpcGroup_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nNpcGroup_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nNpcGroup_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nNpcGroup_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 15301
rwtNpcGroup[nNpcGroup_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nNpcGroup_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

function CopyGoblin_CGFinish()
    -- rwAutoBattle(3031015)
    rwOpenNpcChatDialog(5281)
end
rwtDialog[5281] = rwtDialog[5281] or {}
rwtDialog[5281]["DialogEndInit"] = {}
rwtDialog[5281]["DialogEndInit"]["Events"] = {}
rwtDialog[5281]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5281]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[5281]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtDialog[5281]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = 5281
rwtDialog[5281]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[5281]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000832


rwtCGFinish[15301] = rwtCGFinish[15301] or {}
table.insert(rwtCGFinish[15301], CopyGoblin_CGFinish)

--简单难度副本
rwtCopyMapMission[nCopyMapMissId_1] = rwtCopyMapMission[nCopyMapMissId_1] or {}
rwtCopyMapMission[nCopyMapMissId_1]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapMissId_1]["Target1"] = {60044}
rwtCopyMapMission[nCopyMapMissId_1]["Target2"] = {60045}
rwtCopyMapMission[nCopyMapMissId_1]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId_1]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapMissId_1]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapMissId_1]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapMissId_1]["EnterNpcGen"] = 3031001 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapTitle"] = tLuaText[LANGUAGE_CONFIG][40040]
rwtCopyMapMission[nCopyMapMissId_1]["EnterPlotDialog"] = 7020
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadNpc
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15304
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = false
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "isMonsterCalm"

-- --随机生成红箱子（魔粉或宝箱怪）
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-18.4,0.08,-5.11"
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 46.48
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-48.35,0.07,29.36"
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 177.09
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 2
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3031020
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = 3031021

--rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Type"]
--rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]


--endregion
