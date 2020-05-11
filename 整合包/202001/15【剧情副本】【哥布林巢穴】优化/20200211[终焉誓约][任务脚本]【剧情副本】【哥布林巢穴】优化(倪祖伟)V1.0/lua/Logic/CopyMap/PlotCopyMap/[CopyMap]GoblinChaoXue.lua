--region [CopyMap]GoblinChaoXue
--Purpose:		剧情哥布林巢穴
--Creator: 		张圆
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-02-11 $
--RCS-ID:		$Revision: 8 $
--endregion



local nCopyMapMissId_1 = 3031


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


-------------------NPC群组ID-----------------
local nNpcGroup_1 = 30013  --触发该隐吊打哈扎特剧情陷阱


local tLoadNpc = {
    3031002,    --触发Boss剧情陷阱
    3031020,    --红箱 --改为随机
    3031021,    --红箱
    -- 3031023,    --蓝箱
    3031024,    --蓝箱
    3031025,    --蓝箱
    3031026,    --黄箱
    3031027,    --黄箱
    -- 3031028,    --黄箱
    3031029,    --黄箱
    3031030,    --黄箱
    -- 3031031     --黄箱-另外的怪物箱暂时屏蔽
}
------------------------------------------


--================哥布林 17箱===---
rwtNpcGroup[40026] = rwtNpcGroup[40026] or {}                           -- 红
rwtNpcGroup[40026]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40026]["Awards"] = {}
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


rwtNpcGroup[40030] = rwtNpcGroup[40030] or {}  
rwtNpcGroup[40030]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40030]["Awards"] = {}
rwtNpcGroup[40030]["Awards"]["Events"] = {}
rwtNpcGroup[40030]["Awards"]["Events"][1] = {}
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40030
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40030]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000060 
rwtNpcGroup[40030]["Awards"]["Events"][1]["DynCreate"] = {}		--创建怪物
rwtNpcGroup[40030]["Awards"]["Events"][1]["DynCreate"][1] = 3031012


rwtNpcGroup[40031] = rwtNpcGroup[40031] or {}  
rwtNpcGroup[40031]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40031]["Awards"] = {}
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
rwtNpcGroup[40033]["Awards"]["Events"] = {}
rwtNpcGroup[40033]["Awards"]["Events"][1] = {}
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40033
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40033]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000062

-- rwtNpcGroup[40034] = rwtNpcGroup[40034] or {}  
-- rwtNpcGroup[40034]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
-- rwtNpcGroup[40034]["Awards"] = {}
-- rwtNpcGroup[40034]["Awards"]["Events"] = {}
-- rwtNpcGroup[40034]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[40034]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[40034]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6776

-- rwtDialog[6776] = rwtDialog[6776] or {}
-- rwtDialog[6776]["DialogEndInit"] = {}
-- rwtDialog[6776]["DialogEndInit"]["Events"] = {}
-- rwtDialog[6776]["DialogEndInit"]["Events"][1] = {}
-- rwtDialog[6776]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
-- rwtDialog[6776]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3031011

-- function CopyGoblin_BoxMonsterDie()
--     --删除宝箱40027,播放战后对白
--     -- rwDelGenEvent(3031028)
--     rwOpenNpcChatDialog(6777)
-- end

-- rwtMonsterGroup_Func[200091] = rwtMonsterGroup_Func[200091] or {}
-- table.insert(rwtMonsterGroup_Func[200091],CopyGoblin_BoxMonsterDie)


rwtNpcGroup[40035] = rwtNpcGroup[40035] or {}  
rwtNpcGroup[40035]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40035]["Awards"] = {}
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
rwtNpcGroup[40036]["Awards"]["Events"] = {}
rwtNpcGroup[40036]["Awards"]["Events"][1] = {}
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40036
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40036]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000065


-----------------------------------------

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

