--region 备忘
--Date
--3022 副本ID
--7000111  物品沙海虫卵
--7000121  沙海虫巢大地印记 沙虫的祈愿


--1000143 -1000146  怪物ID 4个
--50013 副本传送NPC 1个
--200131-200137 怪物组ID  7个  
--40043 宝箱ID  1
--60073 -60077 采集点ID 5个
--30189 - 30190 剧情陷阱ID 2个
--5002-5005 流沙陷阱ID 4个


--3022001-3022024 GENID 23 
--20030006  副本传送NPC gen
--5103 - 5106 对白

--3105 猎魔人ID
--endregion

--region 数据
local nCopyMapMissId = 3022
local nChangeMapNpc = 50013

local nChangeNpcTask =10246
local nTarget = 60034
--传送副本NPC
rwtNpcGroup[nChangeMapNpc] = rwtNpcGroup[nChangeMapNpc] or {}
rwtNpcGroup[nChangeMapNpc]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nChangeMapNpc]["CopyMapList"] = {nCopyMapMissId}
rwtNpcGroup[nChangeMapNpc]["UnlockDialog"] = 5227
rwtNpcGroup[nChangeMapNpc]["Dialog"] = 5228

-------------------数据-----------------------------------------------------
--奖励ID 
local nAwardBox = 1000081
local nAwardCollect = 1000082

local nUserTemp = 1027  --玩家掩码


--怪物组
local nMonster_1 = 200131  --黑甲虫
local nMonster_2 = 200132  --红甲虫
local nMonster_3 = 200133  --蝎子
local nMonster_4 = 200134  --蝎子
local nMonster_5 = 200135  --黑甲虫
local nMonster_6 = 200136  --红甲虫
local nMonster_Boss = 200137  --BOSS

local nBattleMonster_3 = 1000143
local nBattleMonster_4 = 1000144
local nBattleMonster_5 = 1000145
local nBattleMonster_6 = 1000146

--物品
local nItemChongluan = 7000111
local nItemDadiyinji = 7000121
--BUFF
local nStatus = 500501  --怪物BUFF
local nItemStatus = 500602
--宝箱
local nCopyMap_Box = 40043

--采集点
local nCollect_1 = 60073
local nCollect_2 = 60074
local nCollect_3 = 60075
local nCollect_4 = 60076
local nCollect_5 = 60077

--普通陷阱
local nTrap_1 = 30189
local nTrap_2 = 30190

--流沙陷阱
local nCopyMap_Trap_1 =5002
local nCopyMap_Trap_2 =5003
local nCopyMap_Trap_3 =5004
local nCopyMap_Trap_4 =5005


--Gen
local nGenId_ChangeMapNpc =20030006      --入口NPC

local nGenId_Monster_1 = 3022001         --黑甲虫
local nGenId_Monster_2 = 3022002         --红甲虫
local nGenId_Monster_3 = 3022003         --蝎子
local nGenId_Monster_4 = 3022004         --蝎子
local nGenId_Monster_5 = 3022005         --黑甲虫
local nGenId_Monster_6 = 3022006         --红甲虫
local nGenId_Monster_BOSS = 3022007      --沙原魔蝎斯科恩

local nGenId_NPC_BOX = 3022008           --宝箱GEN

local nGenId_Collect_1 = 3022009         --虫卵1
local nGenId_Collect_1 = 3022010         --虫卵2
local nGenId_Collect_1 = 3022011         --虫卵3
local nGenId_Collect_1 = 3022012         --虫卵4
local nGenId_Collect_1 = 3022013         --虫卵5

local nGenId_Trap_1 = 3022014            --剧情陷阱1
local nGenId_Trap_2 = 3022015            --剧情陷阱2

local nGenId_Trap_CopyMap_1 = 3022016    --流沙陷阱1
local nGenId_Trap_CopyMap_2 = 3022017    --流沙陷阱2
local nGenId_Trap_CopyMap_3 = 3022018    --流沙陷阱3
local nGenId_Trap_CopyMap_4 = 3022019    --流沙陷阱4


local tMonsterGenIdList ={nGenId_Monster_3,nGenId_Monster_4,nGenId_Monster_5,nGenId_Monster_6,nGenId_Monster_BOSS}
--local tBattleMonsterList = {nBattleMonster_3,nBattleMonster_4,nBattleMonster_5,nBattleMonster_3,nBattleMonster_6}
local tBattleMonsterList = {nBattleMonster_5,nBattleMonster_5,nBattleMonster_5,nBattleMonster_5,nBattleMonster_6}
--endregion

--region 逻辑
-------------------逻辑-----------------------------------------------------
--物品
--沙虫的祈愿
rwtItem[nItemDadiyinji] = rwtItem[nItemDadiyinji] or {}
rwtItem[nItemDadiyinji]["Awards"] = {}
rwtItem[nItemDadiyinji]["Awards"]["Events"] = {}
rwtItem[nItemDadiyinji]["Awards"]["Events"][1] = {}
rwtItem[nItemDadiyinji]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[nItemDadiyinji]["Awards"]["Events"][1]["AddState"]["StateID"] = nItemStatus

--宝箱
rwtNpcGroup[nCopyMap_Box] = rwtNpcGroup[nCopyMap_Box] or {}
rwtNpcGroup[nCopyMap_Box]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nCopyMap_Box]["Awards"] = {}
--rwtNpcGroup[nCopyMap_Box]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nCopyMap_Box]["Awards"]["AwardId"] = nAwardBox
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"] = {}
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCopyMap_Box
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCopyMap_Box]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardBox 

--rwtNpcGroup[nCopyMap_Box]["Function"] = function(nGroupType)
--    local tAwardInfo = {}
--    tAwardInfo["Awards"] = {}
--    tAwardInfo["Awards"][1] = {CONST_ITEMREWARD_TYPE.ITEM,nItemDadiyinji, 1}
----    tAwardInfo["Awards"][2] = {CONST_ITEMREWARD_TYPE.ITEM,nItemDadiyinji, 1}
--    rwAwardTemplate:create(tAwardInfo,CONST_UI_AWARD.CopyMap_Item):Process()
--end

function CopyMap_Shahaichongchao_GetCollectAwards(nNpcGroupId)
    local tAwardInfo = {}
    tAwardInfo["Awards"] = {}
	tAwardInfo["Awards"]["Events"] = {}
	tAwardInfo["Awards"]["Events"][1] = {}
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardCollect
	tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
	rwBaseAward:create(tAwardInfo["Awards"]):Process() 
    --local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TREASURE_BOX,nNpcGroupId,tAwardInfo["Awards"]):Process() 
    rwOpenNpcChatDialog(5218,CONST_NPCCHAT_TYPE.COPYMAP)
    -- if awardCode ~= CONST_CODE.OK then
        -- rwPrintErrorLog("nNpcGroupId:"..nNpcGroupId.."award error")
    -- end
--    local tAwardInfo = {}
--    tAwardInfo["Awards"] = {}
--    tAwardInfo["Awards"][1] = {CONST_ITEMREWARD_TYPE.ITEM,CONST_SPECIALITEM_ID.MONEY, 1000}
--    rwAwardTemplate:create(tAwardInfo,CONST_UI_AWARD.CopyMap_Item):Process()
end
--采集物
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000082
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_2]["Awards"] = {}                 --奖励
--rwtNpcGroup[nCollect_2]["Awards"]["AwardId"] = 1000082
--rwtNpcGroup[nCollect_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000082
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_3]["Awards"] = {}                 --奖励
--rwtNpcGroup[nCollect_3]["Awards"]["AwardId"] = 1000082
--rwtNpcGroup[nCollect_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_3]["Awards"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000082
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_4]["Awards"] = {}                 --奖励
--rwtNpcGroup[nCollect_4]["Awards"]["AwardId"] = 1000082
--rwtNpcGroup[nCollect_4]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_4]["Awards"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000082
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_5]["Awards"] = {}                 --奖励
--rwtNpcGroup[nCollect_5]["Awards"]["AwardId"] = 1000082
--rwtNpcGroup[nCollect_5]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000082
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--rwtNpcGroup[nCollect_5]["Func"] = function(nGenEventId)
--    CopyMap_Shahaichongchao_GetCollectAwards(nCollect_5)
--end

--普通陷阱
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap 
rwtNpcGroup[nTrap_2]["DelTrap"] = 1
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 15601
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

--简单难度副本
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapMissId]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapMissId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapMissId]["EnterNpcGen"] = 20030006 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5103
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_Trap_2}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] =nUserTemp
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] =0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1

--rwtCopyMapMission[nCopyMapMissId]["MapInitFunc"] = function(nCopyMapMissId)
--    rwUserTempDataSet(nUserTemp,0,CONST_TEMP_DATA.Data1)
--    rwOpenNpcChatDialog(5103,CONST_NPCCHAT_TYPE.COPYMAP)
--    local nStatusTimes = rwTempDataGetValue(nUserTemp,CONST_TEMP_DATA.Data1)
--    rwPrintLog("nStatusTimes0="..nStatusTimes)
--    if not rwHasGenEvent (nGenId_Trap_2) then
--        rwAddGenEvent(nGenId_Trap_2)
--    end
--end
--副本目标
rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][20068]
rwtTarget[nTarget]["KillMonsterGroup"] = nMonster_Boss
rwtTarget[nTarget]["ReqCount"] = 1


function CopyMap_ShaHaiChongChao_BOSS_Dead()
    rwOpenNpcChatDialog(5105,CONST_NPCCHAT_TYPE.COPYMAP)
--    rwLinkPassCopyMap(3022)
end
--BOSS死亡触发
rwtMonsterGroup_Func[nMonster_Boss] = rwtMonsterGroup_Func[nMonster_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonster_Boss],CopyMap_ShaHaiChongChao_BOSS_Dead)

 
--怪物死亡给其他加BUFF 


function CopyMap_ShaHaiChongChao_Monster_Dead()
    local nStatusTimes = rwTempDataGetValue(nUserTemp,CONST_TEMP_DATA.Data1)
    if nStatusTimes < 3 then
        for i,v in pairs(tMonsterGenIdList) do
            if rwHasGenEvent(v) then
                rwMonsterAddStatus(v,tBattleMonsterList[i],nStatus)
            end
        end
        nStatusTimes = nStatusTimes + 1
        rwUserTempDataSet(nUserTemp,nStatusTimes,CONST_TEMP_DATA.Data1)
    end
end
--小怪死亡触发
rwtMonsterGroup_Func[nMonster_3] = rwtMonsterGroup_Func[nMonster_3] or {}
table.insert(rwtMonsterGroup_Func[nMonster_3],CopyMap_ShaHaiChongChao_Monster_Dead)
rwtMonsterGroup_Func[nMonster_4] = rwtMonsterGroup_Func[nMonster_4] or {}
table.insert(rwtMonsterGroup_Func[nMonster_4],CopyMap_ShaHaiChongChao_Monster_Dead)
rwtMonsterGroup_Func[nMonster_5] = rwtMonsterGroup_Func[nMonster_5] or {}
table.insert(rwtMonsterGroup_Func[nMonster_5],CopyMap_ShaHaiChongChao_Monster_Dead)
rwtMonsterGroup_Func[nMonster_6] = rwtMonsterGroup_Func[nMonster_6] or {}
table.insert(rwtMonsterGroup_Func[nMonster_6],CopyMap_ShaHaiChongChao_Monster_Dead)

--endregion


