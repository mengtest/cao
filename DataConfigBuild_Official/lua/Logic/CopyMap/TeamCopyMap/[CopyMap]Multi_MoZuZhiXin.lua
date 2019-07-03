--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--魔族之心多人副本
--YJX


--endregion

--===========================数据配置====================================--
local nCopyMapId = 3061
---篝火
local nGenId_BonFire = 3061040

local tMulti_MoZuZhiXin_Data = {} --副本数据记录

rwtTarget[60062] = {}
rwtTarget[60062]["Title"] = tLuaText[LANGUAGE_CONFIG][20081]
rwtTarget[60062]["KillMonsterGroup"] = 200164
rwtTarget[60062]["ReqCount"] = 1

rwtTarget[60063] = {}
rwtTarget[60063]["Title"] = tLuaText[LANGUAGE_CONFIG][20082]
rwtTarget[60063]["KillMonsterGroup"] = 200168
rwtTarget[60063]["ReqCount"] = 1

rwtTarget[60064] = {}
rwtTarget[60064]["Title"] = tLuaText[LANGUAGE_CONFIG][20083]
rwtTarget[60064]["KillMonsterGroup"] = 200172
rwtTarget[60064]["ReqCount"] = 1

rwtTarget[60065] = {}
rwtTarget[60065]["Title"] = tLuaText[LANGUAGE_CONFIG][20084]
rwtTarget[60065]["KillMonsterGroup"] = 200173
rwtTarget[60065]["ReqCount"] = 1

--副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["Type"] = CONST_COPYMAP_TYPE.MULTI
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.TeamCopyMap
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60062,60063,60064}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60065}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60069}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5093
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapMissId)
--    CopyMap_Multi_MoZuZhiXin_Enter(nCopyMapMissId)
--end
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["DynCreate"] = {nGen_Trap_Room}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "FaZhenNum"
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "BossIsKill"
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetId"] = 3061027
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["EffectId"] = 2017
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetId"] = 3061027
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["EffectId"] = 2011
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetId"] = 3061026
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["EffectId"] = 2018
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetId"] = 3061026
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["EffectId"] = 2012
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5]["TargetId"] = 3061028
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5]["EffectId"] = 2019
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6]["TargetId"] = 3061028
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6]["EffectId"] = 2013

rwtCopyMapMission[nCopyMapId]["Fire"] = {}  ---篝火配置
rwtCopyMapMission[nCopyMapId]["Fire"]["GenId"] = nGenId_BonFire
rwtCopyMapMission[nCopyMapId]["Fire"]["LifeTime"] = 60   ---存在时间
rwtCopyMapMission[nCopyMapId]["Fire"]["InterVal"] = 3    ---生效间隔
rwtCopyMapMission[nCopyMapId]["Fire"]["ExpBall"] = 5000  ---英雄经验球
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][1] = "-234.36,-21.17,-35.17"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][2] = "-237.33,-21.17,-31.83"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][3] = "-230.33,-21.17,-32.51"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][1] = 330		
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][2] = 16.60
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][3] = 250.00	
	


--rwtCopyMapMission[nCopyMapId]["CreateFunc"] = function(nCopyMapMissId,nMapId)
--    CopyMap_Multi_MoZuZhiXin_Create(nCopyMapMissId,nMapId)
--end

rwtCopyMapMission[nCopyMapId]["MultiDestroyFunc"] = function(nCopyMapMissId,nMapId)
    CopyMap_Multi_MoZuZhiXin_Destroy(nCopyMapMissId,nMapId)
end

local nGenId_Last_Boss = 3061013  --贪婪
local nGenId_Npc_TanLan = 3061033 --贪婪NPC
local nMonsterGroup_Last_Boss = 200173  --贪婪

--剧情
local nCGId_CreateBoss = 15506
local nCGId_Door = 15508
local nCGId_DoorOpen = 15509
local nCGId_BossDeath = 15513

--宝箱
local nTreasureBox_1 = 40045  --需要钥匙的宝箱
local nTreasureBox_2 = 40046  --不需要钥匙的宝箱

--钥匙
local nItem_Key = 7000162

--陷阱
local nGen_Trap_Room = 3061032

--机关
local nGen_Valve_Room = 3061029
local nGenId_Valve_Door = 3061041           --蝎子怪前机关门

local nValveDoor = 1087

tValve[nValveDoor] = tValve[nValveDoor] or {}
tValve[nValveDoor]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

--玩家掩码
local nUserData_TrapOn = 1017  --陷阱触发（仅一次）
local nUserData_Door = 1018  --（仅一次）
local nUserData_DoorOpen = 1019  --（仅一次）

--法阵和法阵材料
local nFaZhen_HuoYan = 20177   --赤焰封印
local nFaZhen_HanBing = 20176  --寒冰封印
local nFaZhen_HeiAn = 20178  --黑暗封印

local nMaterial_HuoYan = 7000132  --道具材料
local nMaterial_HanBing = 7000142
local nMaterial_GuangMing = 7000152

--光效
local  nEffect_TanLan_XiShou = 2009
local  nEffect_TanLan_XiShou_End = 2010

--过场动画ID
local nStoryId_Hanbing = 15511
local nStoryId_Huoyan = 15510
local nStoryId_HeiAn = 15512

local nBossStoryId_Hanbing = 15515
local nBossStoryId_Huoyan = 15514
local nBossStoryId_HeiAn = 15516

--小BOSS信息
local tMulti_MoZuZhiXin_BossConfig = {}
    tMulti_MoZuZhiXin_BossConfig[200164] = {GenId = 3061004, FaZhenId = nFaZhen_HanBing, StoryId = nStoryId_Hanbing, BossStoryId = nBossStoryId_Hanbing}  --鹿角兽队长
    tMulti_MoZuZhiXin_BossConfig[200168] = {GenId = 3061008, FaZhenId = nFaZhen_HeiAn, StoryId = nStoryId_HeiAn, BossStoryId = nBossStoryId_HeiAn}  --狮心魔骑巴兹
    tMulti_MoZuZhiXin_BossConfig[200172] = {GenId = 3061012, FaZhenId = nFaZhen_HuoYan, StoryId = nStoryId_Huoyan, BossStoryId = nBossStoryId_Huoyan}  --蝎怪

--法阵NPC组
local tNpcGroup_FaZhen = {}
    tNpcGroup_FaZhen[nFaZhen_HuoYan] = {}
    --tNpcGroup_FaZhen[nFaZhen_HuoYan]["NeedItem"] = nMaterial_HanBing
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["GenId"] = 3061027
    --tNpcGroup_FaZhen[nFaZhen_HuoYan]["Sucs"] = 5131
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Fail"] = 5134
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Effect"] = {}
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Effect"]["EffetNpcOpen"] = {EffetId = 2017}  --NPC自身光效1
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Effect"]["EffetNpcClose"] = {EffetId = 2020,Pos = "-229.08,-21.17,-33.32"}  --NPC自身光效2
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Effect"]["EffetNpcRemove"] = {EffetId = 2023}  --NPC自身光效熄灭时候光效
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Effect"]["EffetFlyAdd"] = {EffetId = 2011}  --飞出能量的光效
    tNpcGroup_FaZhen[nFaZhen_HuoYan]["Effect"]["EffetFlyRemove"] = {EffetId = 2014}  --飞出能量消失的光效

    tNpcGroup_FaZhen[nFaZhen_HanBing] = {}
    --tNpcGroup_FaZhen[nFaZhen_HanBing]["NeedItem"] = nMaterial_HuoYan
    tNpcGroup_FaZhen[nFaZhen_HanBing]["GenId"] = 3061026
    --tNpcGroup_FaZhen[nFaZhen_HanBing]["Sucs"] = 5133
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Fail"] = 5132
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Effect"] = {}
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Effect"]["EffetNpcOpen"] = {EffetId = 2018}  --NPC自身光效1
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Effect"]["EffetNpcClose"] = {EffetId = 2021,Pos = "-238.87,-21.17,-33.09"}  --NPC自身光效2
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Effect"]["EffetNpcRemove"] = {EffetId = 2024}  --NPC自身光效熄灭时候光效
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Effect"]["EffetFlyAdd"] = {EffetId = 2012}  --飞出能量的光效
    tNpcGroup_FaZhen[nFaZhen_HanBing]["Effect"]["EffetFlyRemove"] = {EffetId = 2015}  --飞出能量消失的光效

    tNpcGroup_FaZhen[nFaZhen_HeiAn] = {}
    --tNpcGroup_FaZhen[nFaZhen_HeiAn]["NeedItem"] = nMaterial_GuangMing
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["GenId"] = 3061028
    --tNpcGroup_FaZhen[nFaZhen_HeiAn]["Sucs"] = 5135
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Fail"] = 5136
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Effect"] = {}
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Effect"]["EffetNpcOpen"] = {EffetId = 2019}  --NPC自身光效1
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Effect"]["EffetNpcClose"] = {EffetId = 2022,Pos = "-233.26,-21.17,-23.64"}  --NPC自身光效2
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Effect"]["EffetNpcRemove"] = {EffetId = 2025}  --NPC自身光效熄灭时候光效
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Effect"]["EffetFlyAdd"] = {EffetId = 2013}  --飞出能量的光效
    tNpcGroup_FaZhen[nFaZhen_HeiAn]["Effect"]["EffetFlyRemove"] = {EffetId = 2016}  --飞出能量消失的光效

--===========================副本逻辑====================================--
function CopyMap_Multi_MoZuZhiXin_Enter(nCopyMapMissId)
    rwOpenNpcChatDialog(5093)
end

--function CopyMap_Multi_MoZuZhiXin_Init(nMapId)
--    tMulti_MoZuZhiXin_Data[nMapId] = {}
--    tMulti_MoZuZhiXin_Data[nMapId]["FaZhenNum"] = 0   --法阵
--    tMulti_MoZuZhiXin_Data[nMapId]["BossIsKill"] = false --BOSS是否已经被击杀
--end

--function CopyMap_Multi_MoZuZhiXin_Create(nCopyMapId,nMapId)
--    if not tMulti_MoZuZhiXin_Data[nMapId] then
--        CopyMap_Multi_MoZuZhiXin_Init(nMapId)
--    end
--    if not rwHasGenEvent(nGen_Trap_Room) then
--        rwAddGenEvent(nGen_Trap_Room)
--    end

--    rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId_Npc_TanLan, nEffect_TanLan_XiShou)    

--    for i,v in pairs(tNpcGroup_FaZhen) do
--        local nGenId = v["GenId"]
--        local nEffetId = v["Effect"]["EffetNpcOpen"]["EffetId"]
--        local nFlyEffetId = v["Effect"]["EffetFlyAdd"]["EffetId"]
--        rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId, nEffetId)
--        rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId, nFlyEffetId)
--    end    
--end

function CopyMap_Multi_MoZuZhiXin_Destroy(nCopyMapId,nDynMapId)
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] = {}
end


--勇士之心
rwtItem[7000081] = rwtItem[7000081] or {}
rwtItem[7000081]["Awards"] = {}
rwtItem[7000081]["Awards"]["Events"] = {}
rwtItem[7000081]["Awards"]["Events"][1] = {}
rwtItem[7000081]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[7000081]["Awards"]["Events"][1]["AddState"]["StateID"] = 500701

--勇士的愤怒
rwtItem[7000091] = rwtItem[7000091] or {}
rwtItem[7000091]["Awards"] = {}
rwtItem[7000091]["Awards"]["Events"] = {}
rwtItem[7000091]["Awards"]["Events"][1] = {}
rwtItem[7000091]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[7000091]["Awards"]["Events"][1]["AddState"]["StateID"] = 500502

--勇士护甲
rwtItem[7000101] = rwtItem[7000101] or {}
rwtItem[7000101]["Awards"] = {}
rwtItem[7000101]["Awards"]["Events"] = {}
rwtItem[7000101]["Awards"]["Events"][1] = {}
rwtItem[7000101]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[7000101]["Awards"]["Events"][1]["AddState"]["StateID"] = 500602

function CopyMap_Multi_MoZuZhiXin_BossDeath()
    local nDynMapId = rwUserGetDynMapId()
    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] then
        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["BossIsKill"] = true
    end
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwStoryTrigger(nCGId_BossDeath,2,1,tUserList[i]) --Boss死亡
        end
    end
end

rwtMonsterGroup_Func[nMonsterGroup_Last_Boss] = rwtMonsterGroup_Func[nMonsterGroup_Last_Boss] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Last_Boss],CopyMap_Multi_MoZuZhiXin_BossDeath)


--小怪死亡
function CopyMap_Multi_MoZuZhiXin_SmallBossDeath(nMonsterGroup)
    if not tMulti_MoZuZhiXin_BossConfig[nMonsterGroup] then
        return
    end

    local nCgId = tMulti_MoZuZhiXin_BossConfig[nMonsterGroup]["StoryId"]
    local nBossCgId = tMulti_MoZuZhiXin_BossConfig[nMonsterGroup]["BossStoryId"]
    
    local nDynMapId = rwUserGetDynMapId()    
    if nDynMapId and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] then
        --local tUserList = rwGetCurMapUserList()
        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["FaZhenNum"] = rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["FaZhenNum"] + 1
        if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["FaZhenNum"] >= 3 then
            rwSpecialStatus_RemoveEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId_Npc_TanLan, nEffect_TanLan_XiShou)
            rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId_Npc_TanLan, nEffect_TanLan_XiShou_End)
--            CopyMap_Multi_MoZuZhiXin_BroadCastMsg("准备迎战贪婪。")
--            rwStoryTrigger(nCGId_CreateBoss,2,0) --Boss出现
            --if tUserList then
                --for i=1,#tUserList do
                    --rwStoryTrigger(nBossCgId , 2, 1,tUserList[i])
                --end
            --end
            rwStoryTrigger(nBossCgId , 2, 1)
        else
            --if tUserList then
                --for i=1,#tUserList do
                    --rwStoryTrigger(nCgId , 2, 1,tUserList[i])
                --end
            --end
            rwStoryTrigger(nCgId , 2, 1)
        end
    end   

    local nIndex = tMulti_MoZuZhiXin_BossConfig[nMonsterGroup]["FaZhenId"]
    
    if not tNpcGroup_FaZhen[nIndex] then
        return
    end

    local nGenId = tNpcGroup_FaZhen[nIndex]["GenId"]
    rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId, nRemoveFlyEffetId)
    if not rwHasGenEvent(nGenId) or not rwDelGenEvent(nGenId) then
        return
    end

    local nRemoveFlyEffetId = tNpcGroup_FaZhen[nIndex]["Effect"]["EffetFlyRemove"]["EffetId"]
    local nCloseEffetId = tNpcGroup_FaZhen[nIndex]["Effect"]["EffetNpcClose"]["EffetId"]
    local sCloseEffetPos = tNpcGroup_FaZhen[nIndex]["Effect"]["EffetNpcClose"]["Pos"]
    
    rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.MAP_POS,3061, nCloseEffetId, sCloseEffetPos)
end
rwtMonsterGroup_Func[200164] = rwtMonsterGroup_Func[200164] or {} 
table.insert(rwtMonsterGroup_Func[200164],CopyMap_Multi_MoZuZhiXin_SmallBossDeath)

rwtMonsterGroup_Func[200168] = rwtMonsterGroup_Func[200168] or {} 
table.insert(rwtMonsterGroup_Func[200168],CopyMap_Multi_MoZuZhiXin_SmallBossDeath)

rwtMonsterGroup_Func[200172] = rwtMonsterGroup_Func[200172] or {} 
table.insert(rwtMonsterGroup_Func[200172],CopyMap_Multi_MoZuZhiXin_SmallBossDeath)

--蝎怪死后开门
--法师死亡事件处理
function CopyMap_Multi_MoZuZhiXin_XieWangDeath()

    rwUpdateValveData(nGenId_Valve_Door,1)   

end

table.insert(rwtMonsterGroup_Func[200172],CopyMap_Multi_MoZuZhiXin_XieWangDeath)

rwtNpcGroup[nTreasureBox_1] = rwtNpcGroup[nTreasureBox_1] or {}  
rwtNpcGroup[nTreasureBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_1]["Awards"] = {}
--rwtNpcGroup[nTreasureBox_1]["Awards"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
--rwtNpcGroup[nTreasureBox_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nTreasureBox_1]["Awards"]["AwardId"] = 1000067
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBox_1
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000067
rwtNpcGroup[nTreasureBox_1]["Awards"]["CostItems"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["CostItems"][1]["id"] = nItem_Key
rwtNpcGroup[nTreasureBox_1]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nTreasureBox_1]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nTreasureBox_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = 5141

rwtNpcGroup[nTreasureBox_2] = rwtNpcGroup[nTreasureBox_2] or {}  
rwtNpcGroup[nTreasureBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBox_2]["Awards"] = {}
--rwtNpcGroup[nTreasureBox_2]["Awards"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
--rwtNpcGroup[nTreasureBox_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nTreasureBox_2]["Awards"]["AwardId"] = 1000068
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBox_2
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000068


rwtNpcGroup[nFaZhen_HuoYan] = {}
rwtNpcGroup[nFaZhen_HuoYan]["InterfaceFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    if not tNpcGroup_FaZhen[nNpcGroupType] then
        return
    end
--    if tNpcGroup_FaZhen[nNpcGroupType]["NeedItem"] then
--        local nNeedItem = tNpcGroup_FaZhen[nNpcGroupType]["NeedItem"]
--        local nGenId = tNpcGroup_FaZhen[nNpcGroupType]["GenId"]
--        local nDynMapId = rwUserGetDynMapId()
--        --封印道具判断
--        if rwUserGetItemCount(nNeedItem) >= 1 then
--            rwOpenNpcChatDialog(tNpcGroup_FaZhen[nNpcGroupType]["Sucs"])            
--        else
--            rwOpenNpcChatDialog(tNpcGroup_FaZhen[nNpcGroupType]["Fail"])
--        end
--    end
    rwOpenNpcChatDialog(tNpcGroup_FaZhen[nNpcGroupType]["Fail"])    
end

rwtNpcGroup[nFaZhen_HanBing] = {}
rwtNpcGroup[nFaZhen_HanBing]["InterfaceFunc"] = rwtNpcGroup[nFaZhen_HuoYan]["InterfaceFunc"]

rwtNpcGroup[nFaZhen_HeiAn] = {}
rwtNpcGroup[nFaZhen_HeiAn]["InterfaceFunc"] = rwtNpcGroup[nFaZhen_HuoYan]["InterfaceFunc"]

--封印阵前陷阱
rwtNpcGroup[30208] = rwtNpcGroup[30208] or {}
rwtNpcGroup[30208]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30208]["DialogId"] = 5130
rwtNpcGroup[30208]["TrapFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    --local nVal = rwTempDataGetValue(nUserData_TrapOn)
    --删除陷阱
    if rwHasGenEvent(nGenEventId) then
        rwDelGenEvent(nGenEventId)
    end
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            local nVal = rwTempDataGetValue(nUserData_TrapOn,CONST_TEMP_DATA.Data1,tUserList[i])
            if nVal < 1 then
                rwOpenNpcChatDialog(rwtNpcGroup[nNpcGroupType]["DialogId"],0,0,tUserList[i])
            end
            rwUserTempDataSet(nUserData_TrapOn,1,CONST_TEMP_DATA.Data1,tUserList[i])
        end
    end
end

--门前陷阱
rwtNpcGroup[30209] = rwtNpcGroup[30209] or {}
rwtNpcGroup[30209]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30209]["DialogId"] = 5137
rwtNpcGroup[30209]["TrapFunc"] = function(nTrapType,nTrapId)    
    local nVal = rwTempDataGetValue(nUserData_Door)
    if nVal >= 1 then
        rwOpenNpcChatDialog(rwtNpcGroup[nTrapType]["DialogId"])
        return    
    end
    rwUserTempDataSet(nUserData_Door,1)
    rwStoryTrigger(nCGId_Door,2,0)
end

--开启机关  采集
rwtNpcGroup[60082] = rwtNpcGroup[60082] or {}
rwtNpcGroup[60082]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[60082]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[60082]["OpenVavle"][1] = {}       --打开机关
--rwtNpcGroup[60082]["OpenVavle"][1]["nGenId"] = nGen_Valve_Room
--rwtNpcGroup[60082]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[60082]["StoryTrigger"] = {}     --触发场景动画
--rwtNpcGroup[60082]["StoryTrigger"]["StoryId"] = nCGId_DoorOpen
--rwtNpcGroup[60082]["StoryTrigger"]["Type"] = 2
--rwtNpcGroup[60082]["StoryTrigger"]["nChgScenePlay"]= 0
--rwtNpcGroup[60082]["DelGen"] = {nGen_Trap_Room}   --删除物品（陷阱）
--rwtNpcGroup[60082]["SendSystemMessage"] = "远处传来机关移动的声音，挡住路的魔法屏障消失了。"  
rwtNpcGroup[60082]["Awards"] = {}  
rwtNpcGroup[60082]["Awards"]["Events"] = {}   
rwtNpcGroup[60082]["Awards"]["Events"][1] = {}   
rwtNpcGroup[60082]["Awards"]["Events"][1]["OpenVavle"] = {}      
rwtNpcGroup[60082]["Awards"]["Events"][1]["OpenVavle"][1] = {} 
rwtNpcGroup[60082]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGen_Valve_Room
rwtNpcGroup[60082]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[60082]["Awards"]["Events"][2] = {} 
rwtNpcGroup[60082]["Awards"]["Events"][2]["PlaySceneAnimation"] = {}       
rwtNpcGroup[60082]["Awards"]["Events"][2]["PlaySceneAnimation"]["Id"]= nCGId_DoorOpen
rwtNpcGroup[60082]["Awards"]["Events"][2]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[60082]["Awards"]["Events"][2]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[60082]["Awards"]["Events"][3] = {} 
rwtNpcGroup[60082]["Awards"]["Events"][3]["DynDelete"] = {nGen_Trap_Room}
rwtNpcGroup[60082]["Awards"]["Events"][4] = {} 
rwtNpcGroup[60082]["Awards"]["Events"][4]["UserMsg"] = {}
rwtNpcGroup[60082]["Awards"]["Events"][4]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[60082]["Awards"]["Events"][4]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10026]
rwtNpcGroup[60082]["Awards"]["Events"][4]["UserMsg"]["ShowType"] = 1


--function CopyMap_Multi_MoZuZhiXin_BroadCastMsg(sStr)
--    local tUserList = rwGetCurMapUserList()
--    if tUserList then
--        for i=1,#tUserList do
--            rwSendSystemMessage(sStr,2,2,tUserList[i])
--        end
--    end
--end

--贪婪
rwtNpcGroup[20179] = {}
rwtNpcGroup[20179]["InterfaceFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] then
        if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["FaZhenNum"] >= 3 then
            rwOpenNpcChatDialog(5142)
        else
            rwOpenNpcChatDialog(5160)
        end
    end   
end

rwtDialog[5142] = rwtDialog[5142] or {}
rwtDialog[5142]["OptionFunc1"] = function()
    if not rwHasGenEvent(nGenId_Last_Boss) then
        rwAddGenEvent(nGenId_Last_Boss)
    end
    rwAutoBattle(nGenId_Last_Boss)
end


--小BOSS剧情结束后触发
--function CopyMap_Multi_MoZuZhiXin_SmallBossStoryEnd()
--    local nDynMapId = rwUserGetDynMapId()    
--    if nDynMapId and tMulti_MoZuZhiXin_Data[nDynMapId] then
--        tMulti_MoZuZhiXin_Data[nDynMapId]["FaZhenNum"] = tMulti_MoZuZhiXin_Data[nDynMapId]["FaZhenNum"] + 1
--        if tMulti_MoZuZhiXin_Data[nDynMapId]["FaZhenNum"] >= 3 then
--            rwSpecialStatus_RemoveEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId_Npc_TanLan, nEffect_TanLan_XiShou)
--            rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,nGenId_Npc_TanLan, nEffect_TanLan_XiShou_End)
--            CopyMap_Multi_MoZuZhiXin_BroadCastMsg("准备迎战贪婪。")
--            rwStoryTrigger(nCGId_CreateBoss,2,0) --Boss出现                           
--        end
--    end
--end
--rwtCGFinish[nStoryId_Hanbing] = rwtCGFinish[nStoryId_Hanbing] or {}
--table.insert(rwtCGFinish[nStoryId_Hanbing],CopyMap_Multi_MoZuZhiXin_SmallBossStoryEnd)
--rwtCGFinish[nStoryId_HeiAn] = rwtCGFinish[nStoryId_HeiAn] or {}
--table.insert(rwtCGFinish[nStoryId_HeiAn],CopyMap_Multi_MoZuZhiXin_SmallBossStoryEnd)
--rwtCGFinish[nStoryId_Huoyan] = rwtCGFinish[nStoryId_Huoyan] or {}
--table.insert(rwtCGFinish[nStoryId_Huoyan],CopyMap_Multi_MoZuZhiXin_SmallBossStoryEnd)