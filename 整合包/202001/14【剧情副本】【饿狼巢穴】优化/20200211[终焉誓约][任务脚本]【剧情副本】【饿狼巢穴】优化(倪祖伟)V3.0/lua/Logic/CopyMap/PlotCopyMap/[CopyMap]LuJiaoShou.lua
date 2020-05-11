--region 		[CopyMap]LuJiaoShou.lua
--Purpose:		饿狼巢穴副本
--Creator: 		余锦鑫
--Created:		2017-08-21
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-02-11 $
--RCS-ID:		$Revision: 5 $
--endregion

--endregion


--===========================副本基础配置====================================--
local tLuJiaoShowEnterCreateGen = {3011008,3011003,3011021,3011010,3011025,3011026,3011001,3011007,3011022}

local nCopyMapMissId_1 = 3011    
local nCopyMapMissId_2 = 3012    
local nCopyMapMissId_3 = 3013    
--奖励id                         
local nAwardId_1 = 1000039       
local nAwardId_2 = 1000040       
--隐藏副本
local nCopyMapMissId_4 = 3014
--副本入口
rwtNpcGroup[12001002] = {}
rwtNpcGroup[12001002]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[12001002]["UnlockDialog"] = 5210
rwtNpcGroup[12001002]["Dialog"] = 5204
rwtNpcGroup[12001002]["CopyMapList"] = {nCopyMapMissId_1}

-- 任务目标配置
rwtTarget[60036] = {}
rwtTarget[60036]["Title"] = tLuaText[LANGUAGE_CONFIG][20059]
rwtTarget[60036]["ReqDialogId"] = 5041
rwtTarget[60036]["ReqCount"] = 1

-- rwtTarget[60037] = {}
-- rwtTarget[60037]["Title"] = tLuaText[LANGUAGE_CONFIG][20060]
-- rwtTarget[60037]["KillMonsterGroup"] = 200154
-- rwtTarget[60037]["ReqCount"] = 1

rwtTarget[60038] = {}
rwtTarget[60038]["Title"] = tLuaText[LANGUAGE_CONFIG][20061]
rwtTarget[60038]["KillMonsterGroup"] = 200156
rwtTarget[60038]["ReqCount"] = 1

--简单难度副本
rwtCopyMapMission[nCopyMapMissId_1] = rwtCopyMapMission[nCopyMapMissId_1] or {}
--rwtCopyMapMission[nCopyMapMissId_1]["EnterNpc"] = 12001002
rwtCopyMapMission[nCopyMapMissId_1]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["HiddenCopyMapID"] = nCopyMapMissId_4
rwtCopyMapMission[nCopyMapMissId_1]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapMissId_1]["Target1"] = {60036}
-- rwtCopyMapMission[nCopyMapMissId_1]["Target2"] = {60037}
rwtCopyMapMission[nCopyMapMissId_1]["Target2"] = {60038}
rwtCopyMapMission[nCopyMapMissId_1]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId_1]["EnterNpcMap"] = 2001 
rwtCopyMapMission[nCopyMapMissId_1]["ChangeNpcTask"] = 10112
rwtCopyMapMission[nCopyMapMissId_1]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT
rwtCopyMapMission[nCopyMapMissId_1]["EnterNpcGen"] = 12001002
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5043
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["DynCreate"] = tLuJiaoShowEnterCreateGen


--精英难度副本
rwtCopyMapMission[nCopyMapMissId_2] = rwtCopyMapMission[nCopyMapMissId_2] or {}
rwtCopyMapMission[nCopyMapMissId_2]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_2]["HiddenCopyMapID"] = nCopyMapMissId_4
rwtCopyMapMission[nCopyMapMissId_2]["HiddenCopyMapProb"] = 30
rwtCopyMapMission[nCopyMapMissId_2]["Difficulty"] = 2

--噩梦难度副本
rwtCopyMapMission[nCopyMapMissId_3] = rwtCopyMapMission[nCopyMapMissId_3] or {}
rwtCopyMapMission[nCopyMapMissId_3]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_3]["ReqItem"] = 8100001
rwtCopyMapMission[nCopyMapMissId_3]["ReqItemCount"] = 1
rwtCopyMapMission[nCopyMapMissId_3]["HiddenCopyMapID"] = nCopyMapMissId_4
rwtCopyMapMission[nCopyMapMissId_3]["HiddenCopyMapProb"] = 50
rwtCopyMapMission[nCopyMapMissId_3]["Difficulty"] = 3

--隐藏随机副本
rwtCopyMapMission[nCopyMapMissId_4] = rwtCopyMapMission[nCopyMapMissId_4] or {}


--===========================副本怪物组、NPC组、物品配置====================================--
local tMonsterTalk = {}
    tMonsterTalk[200151] = "赤瞳战狼被击杀，怒气扩散，碎魂狼王狂暴形态被激发。"
    tMonsterTalk[200152] = "狐侍卫被击杀，怒气扩散，碎魂狼王狂暴形态被激发。"
    tMonsterTalk[200153] = "狐侍卫被击杀，怒气扩散，碎魂狼王狂暴形态被激发。"
    tMonsterTalk[200154] = "赤瞳战狼被击杀，怒气扩散，碎魂狼王狂暴形态被激发。"

--第一只小怪前陷阱
rwtNpcGroup[30076] = {}
rwtNpcGroup[30076]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[30076]["DelTrap"] = 1
rwtNpcGroup[30076]["Awards"] = {}  
rwtNpcGroup[30076]["Awards"]["Events"] = {}   
rwtNpcGroup[30076]["Awards"]["Events"][1] = {}
rwtNpcGroup[30076]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[30076]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5041

rwtDialog[5041] = rwtDialog[5041] or {}
rwtDialog[5041]["DialogEndInit"] = {}
rwtDialog[5041]["DialogEndInit"]["Events"] = {}
rwtDialog[5041]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5041]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[5041]["DialogEndInit"]["Events"][1]["DynDelete"][1] = 3011001 --门口白狼
rwtDialog[5041]["DialogEndInit"]["Events"][1]["DynDelete"][2] = 3011007 --门口陷阱
rwtDialog[5041]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[5041]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5153

rwtDialog[5153] = rwtDialog[5153] or {}
rwtDialog[5153]["DialogEnd"] = function(nId)
    rwAddUserRecordData_System_Unlock(16)
end

--箱子前的陷井
rwtNpcGroup[30210] = {}
rwtNpcGroup[30210]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30210]["DelTrap"] = 1
rwtNpcGroup[30210]["Awards"] = {}  
rwtNpcGroup[30210]["Awards"]["Events"] = {}    
rwtNpcGroup[30210]["Awards"]["Events"][1] = {} 
rwtNpcGroup[30210]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[30210]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 301103
rwtNpcGroup[30210]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[30210]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--看门狼巡逻陷阱
rwtNpcGroup[30572] = {}
rwtNpcGroup[30572]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30572]["DelTrap"] = 1
rwtNpcGroup[30572]["Awards"] = {}  
rwtNpcGroup[30572]["Awards"]["Events"] = {}   
rwtNpcGroup[30572]["Awards"]["Events"][1] = {} 
rwtNpcGroup[30572]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[30572]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 301104
rwtNpcGroup[30572]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[30572]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

--看宝箱的狼动画
rwtNpcGroup[30573] = {}
rwtNpcGroup[30573]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30573]["DelTrap"] = 1
rwtNpcGroup[30573]["Awards"] = {}  
rwtNpcGroup[30573]["Awards"]["Events"] = {}   
rwtNpcGroup[30573]["Awards"]["Events"][1] = {} 
rwtNpcGroup[30573]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[30573]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 301105
rwtNpcGroup[30573]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[30573]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--BOSS前陷阱
rwtNpcGroup[30077] = {}
rwtNpcGroup[30077]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30077]["DelTrap"] = 1
rwtNpcGroup[30077]["Awards"] = {}  
rwtNpcGroup[30077]["Awards"]["Events"] = {}   
rwtNpcGroup[30077]["Awards"]["Events"][1] = {} 
rwtNpcGroup[30077]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[30077]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 15303
rwtNpcGroup[30077]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[30077]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

-- --进入副本时动态创建
-- local tLuJiaoShowEnterCreate = {}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1] = {}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1][1] = {GenId = 3011007,EventId = 30076}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1][2] = {GenId = 3011008,EventId = 30077}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1][3] = {GenId = 3011003,EventId = 30000001}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1][4] = {GenId = 3011001,EventId = 200151}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1][5] = {GenId = 3011021,EventId = 40025}
--     tLuJiaoShowEnterCreate[nCopyMapMissId_1][6] = {GenId = 3011010,EventId = 200152}



-- --潘多拉宝盒概率事件
-- local tPandoraBox = {
--     --概率,事件,事件参数
--     {33,"AwardItem",7000600},
--     {66,"AwardItem",7000610},
--     {100,"EnterBattle"},
-- }




--隐身斗篷
rwtItem[7000600] = rwtItem[7000600] or {}
rwtItem[7000600]["Awards"] = {}
rwtItem[7000600]["Awards"]["Events"] = {}
rwtItem[7000600]["Awards"]["Events"][1] = {}
rwtItem[7000600]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[7000600]["Awards"]["Events"][1]["AddState"]["SpecialState"] = CONST_USER_SPECIAL_STATE.HIDE
rwtItem[7000600]["Awards"]["Events"][1]["AddState"]["SpecialStateParam"] = 10

--狂暴药水
rwtItem[7000610] = rwtItem[7000610] or {}
rwtItem[7000610]["Awards"] = {}
rwtItem[7000610]["Awards"]["Events"] = {}
rwtItem[7000610]["Awards"]["Events"][1] = {}
rwtItem[7000610]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[7000610]["Awards"]["Events"][1]["AddState"]["StateID"] = 700001
rwtItem[7000610]["Awards"]["Events"][1]["AddState"]["Times"] = 99

--打开宝箱
rwtNpcGroup[40025] = rwtNpcGroup[40025] or {}
rwtNpcGroup[40025]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40025]["Awards"] = {}
rwtNpcGroup[40025]["Awards"]["Events"] = {}
rwtNpcGroup[40025]["Awards"]["Events"][1] = {}
rwtNpcGroup[40025]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40025]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40025]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40025
rwtNpcGroup[40025]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40025]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_1  
rwtNpcGroup[40025]["Awards"]["Events"][2]={}
rwtNpcGroup[40025]["Awards"]["Events"][2]["OpenDialog"]={}
rwtNpcGroup[40025]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = 5165
-- rwtNpcGroup[40025]["Awards"]["Events"][2]["OpenGuide"]={}
-- rwtNpcGroup[40025]["Awards"]["Events"][2]["OpenGuide"]["Id"]=107
-- rwtNpcGroup[40025]["Awards"]["Events"][2]["OpenGuide"]["Type"]=1

rwtNpcGroup[30000001] = rwtNpcGroup[30000001] or {}  
rwtNpcGroup[30000001]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[30000001]["Awards"] = {}
rwtNpcGroup[30000001]["Awards"]["Events"] = {}
rwtNpcGroup[30000001]["Awards"]["Events"][1] = {}
rwtNpcGroup[30000001]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[30000001]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[30000001]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 30000001
rwtNpcGroup[30000001]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[30000001]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_2 


--===========================副本逻辑部分====================================--
-- function CopyMap_LuJiaoShou_JY_Death()
--     -- 3011009 精英怪的genID
--     --rwPrintLog("白眼狼死亡")
--     rwAddGenEvent(3011022)
-- end
-- rwtMonsterGroup_Func[200154] = rwtMonsterGroup_Func[200154] or {} --精英怪白眼狼
-- table.insert(rwtMonsterGroup_Func[200154],CopyMap_LuJiaoShou_JY_Death)


--function CopyMap_LuJiaoShou_Enter(nCopyMapMissId)
--    rwOpenNpcChatDialog(5043)
--    --动态创建触发对白的陷阱
--    if tLuJiaoShowEnterCreate[nCopyMapMissId] then
--        for i,v in pairs(tLuJiaoShowEnterCreate[nCopyMapMissId]) do
--            local nGenID = v["GenId"] or 0
--            if nGenID ~= 0 and not rwHasGenEvent(nGenID) then
--                rwAddGenEvent(nGenID)
--            end
--        end
--    end
--end

-- --潘多拉宝盒
-- function CopyMap_LuJiaoShou_PandoraBox_Random()
--     local nRandom = math.random(1,100)
--     for i,v in ipairs(tPandoraBox) do
--         if nRandom <= v[1] then
--             return i
--         end
--     end
-- end


-- --副本小怪死亡触发
-- function CopyMap_LuJiaoShou_Monster_Dead(nMonsterGroupType)
--     local nMapId = rwUserGetCurMapId()
--     if rwtCopyMapMission[nMapId] then
--         if rwtCopyMapMission[nMapId]["BossInfo"] then
--             local nBossId = rwtCopyMapMission[nMapId]["BossInfo"]["BossId"]
--             local nGenId = rwtCopyMapMission[nMapId]["BossInfo"]["BossGenId"]
--             if rwHasGenEvent(nGenId) then
--                 rwMonsterAddStatus(nGenId, nBossId, nBOSS_STATUS_TYPE)
--             end
--             rwSendSystemMessage(tMonsterTalk[nMonsterGroupType])
--         end
--     end
-- end

-- rwtMonsterGroup_Func[200151] = rwtMonsterGroup_Func[200151] or {}
-- table.insert(rwtMonsterGroup_Func[200151],CopyMap_LuJiaoShou_Monster_Dead)
-- rwtMonsterGroup_Func[200152] = rwtMonsterGroup_Func[200152] or {}
-- table.insert(rwtMonsterGroup_Func[200152],CopyMap_LuJiaoShou_Monster_Dead)
-- rwtMonsterGroup_Func[200153] = rwtMonsterGroup_Func[200153] or {}
-- table.insert(rwtMonsterGroup_Func[200153],CopyMap_LuJiaoShou_Monster_Dead)
-- rwtMonsterGroup_Func[200154] = rwtMonsterGroup_Func[200154] or {}
-- table.insert(rwtMonsterGroup_Func[200154],CopyMap_LuJiaoShou_Monster_Dead)


--======================================概率测试======================================--
-- function Test_CopyMap_LuJiaoShou_PandoraBox_Random()
--     local t = {}
--     local nNum = 1000
--     for i=1,nNum do
--         local nIndex = CopyMap_LuJiaoShou_PandoraBox_Random() or 0
--         t[nIndex] = t[nIndex] or 0
--         t[nIndex] = t[nIndex] + 1
--         i = i + 1        
--     end
--     rwPrintLog("获得隐身斗篷的概率为" .. t[1]/nNum * 100 .."%")
--     rwPrintLog("获得狂暴药水的概率为" .. t[2]/nNum * 100 .."%")
--     rwPrintLog("刷出小BOSS的概率为" .. t[3]/nNum * 100 .."%")
-- end