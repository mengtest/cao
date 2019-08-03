
--region 数据
local nCopyMapMissId = 3040
local nChangeMapNpc = 50024

local nChangeNpcTask =10246

local nTarget = 60035
--传送副本NPC
rwtNpcGroup[nChangeMapNpc] = rwtNpcGroup[nChangeMapNpc] or {}
rwtNpcGroup[nChangeMapNpc]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nChangeMapNpc]["CopyMapList"] = {nCopyMapMissId}
--rwtNpcGroup[nChangeMapNpc]["UnlockDialog"] = 5227
--rwtNpcGroup[nChangeMapNpc]["Dialog"] = 5228

-------------------数据-----------------------------------------------------
--怪物组
local nMonster_1 =200242  
local nMonster_2 =200243  
local nMonster_3 =200244  
local nMonster_4 =200245  
local nMonster_Boss = 200246  --BOSS
--宝箱
--local nBox_Shahaichongchao_Normal =40089
--local nBoxAwardId = 1000105

--rwtNpcGroup[nBox_Shahaichongchao_Normal] = rwtNpcGroup[nBox_Shahaichongchao_Normal] or {}
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"] = {}
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"] = {}
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"][1] = {}
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Shahaichongchao_Normal
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nBox_Shahaichongchao_Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nBoxAwardId   
--Gen
local nGenId_ChangeMapNpc =3040001      --入口NPC

local nGenId_Monster_1 = 3040002        
local nGenId_Monster_2 = 3040003        
local nGenId_Monster_3 = 3040004        
local nGenId_Monster_4 = 3040005        
local nGenId_Monster_BOSS = 3040006      

local nGenId_Trap_CopyMap_1 = 3040007    --流沙陷阱1
local nGenId_Trap_CopyMap_2 = 3040008    --流沙陷阱2
local nGenId_Trap_CopyMap_3 = 3040009    --流沙陷阱3
local nGenId_Trap_CopyMap_4 = 3040010    --流沙陷阱4


--endregion

--region 逻辑
-------------------逻辑-----------------------------------------------------


--简单难度副本
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
--rwtCopyMapMission[nCopyMapMissId]["Target1"] = nTarget
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapMissId]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapMissId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapMissId]["EnterNpcGen"] = 3040001 --副本传送NPC的GENID
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5225
--rwtCopyMapMission[nCopyMapMissId]["MapInitFunc"] = function(nCopyMapMissId)
--    rwOpenNpcChatDialog(5225,CONST_NPCCHAT_TYPE.COPYMAP)
--end

--副本目标
rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][20035]
rwtTarget[nTarget]["KillMonsterGroup"] = nMonster_Boss
rwtTarget[nTarget]["ReqCount"] = 1

function CopyMap_ShaHaiChongChao_BOSS_Dead()
--    rwOpenNpcChatDialog(5226,CONST_NPCCHAT_TYPE.COPYMAP)
    rwOpenNpcChatDialog(6891,CONST_NPCCHAT_TYPE.COPYMAP)

--    rwLinkPassCopyMap(3040)
end
--BOSS死亡触发
rwtMonsterGroup_Func[nMonster_Boss] = rwtMonsterGroup_Func[nMonster_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonster_Boss],CopyMap_ShaHaiChongChao_BOSS_Dead)

--endregion


