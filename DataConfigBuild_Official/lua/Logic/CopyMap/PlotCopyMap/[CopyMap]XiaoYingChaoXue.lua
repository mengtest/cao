--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--枭鹰巢穴副本
--HYT


--endregion
--===========================副本配置====================================--
--对话 5406-5412  副本npc 3380 3381

local nCopyMapId = 3054   --副本ID

rwtNpcGroup[50044] = rwtNpcGroup[50044] or{}   --副本入口NPC组
rwtNpcGroup[50044]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50044]["UnlockDialog"] = 11794
--rwtNpcGroup[50044]["Dialog"] = 11795
rwtNpcGroup[50044]["CopyMapList"] = {nCopyMapId}

--剧情
local nStoryId_1 = 16102  --发现剧情
local nStoryId_2 = 16103  --逃跑剧情



--陷阱
local nGroupId_Trap_1 = 30387
local nGenId_Trap_1 = 3054009

--NPC
local nNpcGroup_Xiaoying = 20585
local nNpc_Xiaoying =3380
local nGen_NpcGroup_Xiaoying = 3054012

local nGen_Box = 3054014

rwtNpc[nNpc_Xiaoying] = rwtNpc[nNpc_Xiaoying] or {}
rwtNpc[nNpc_Xiaoying]["DialogId"] = 5411
rwtNpcGroup[nNpcGroup_Xiaoying] = rwtNpcGroup[nNpcGroup_Xiaoying] or {}
rwtNpcGroup[nNpcGroup_Xiaoying]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Xiaoying]["NpcId"]= nNpc_Xiaoying

--rwtDialog[5411] = rwtDialog[5411] or {}
--rwtDialog[5411]["DialogEnd"] = function()
--	rwPrintErrorLog("战斗结束")
--end
--rwtDialog[5411]["DialogEndInit"] = {}
--rwtDialog[5411]["DialogEndInit"]["Events"] = {}
--rwtDialog[5411]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[5411]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
--rwtDialog[5411]["DialogEndInit"]["Events"][1]["OpenDialog"]["tDialog"] =  5412

--机关空气墙
local nValve_1 = 1039

--怪物
local nGroupId_XiaoYing = 200309
local nGenId_XiaoYing = 3054005

local nMonsterGroup_Box = 200422
local nGenId_Monster_Box = 3054013



--任务目标配置
rwtTarget[60084] = {}
rwtTarget[60084]["Title"] = tLuaText[LANGUAGE_CONFIG][20074]
rwtTarget[60084]["ReqTrap"] = nGroupId_Trap_1
rwtTarget[60084]["ReqCount"] = 1
--新增任务目标 
rwtTarget[60155] = {}
rwtTarget[60155]["Title"] = tLuaText[LANGUAGE_CONFIG][20075]
rwtTarget[60155]["KillMonsterGroup"] = 200309
rwtTarget[60155]["ReqCount"] = 1

rwtTarget[60085] = {}
rwtTarget[60085]["Title"] = tLuaText[LANGUAGE_CONFIG][20075]
rwtTarget[60085]["ReqDialogId"] = {5411}
rwtTarget[60085]["ReqCount"] = 1
 
--副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10467  
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 20050045 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 3
rwtCopyMapMission[nCopyMapId]["Target1"] = {60084}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60155}
rwtCopyMapMission[nCopyMapId]["Target3"] = {60085}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5406
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapMissId)
--    CopyMap_XiaoYing_Enter(nCopyMapMissId)
--end


--===========================副本逻辑====================================--

rwtNpcGroup[30387] = {}
rwtNpcGroup[30387]["Type"] = CONST_NPCGROUP_TYPE.Trap  
rwtNpcGroup[30387]["DelTrap"] = 1
rwtNpcGroup[30387]["Awards"] = {}  
rwtNpcGroup[30387]["Awards"]["Events"] = {}   
rwtNpcGroup[30387]["Awards"]["Events"][1] = {} 
rwtNpcGroup[30387]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[30387]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nStoryId_1
rwtNpcGroup[30387]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[30387]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--剧情1结束
function CopyMap_XiaoYinBaoLei_StoryEnd_1()
    if not rwHasGenEvent(3054005) then --怪物枭鹰在不在
       rwAddGenEvent(3054005) --
    end
    if not rwHasGenEvent(3054010) then --福莱特npc在不在
       rwAddGenEvent(3054010) 
    end

	rwAutoBattle(3054005)
    if rwHasGenEvent(3054009) then --删除陷阱
       rwDelGenEvent(3054009) 
    end
end

rwtCGFinish[nStoryId_1] = rwtCGFinish[nStoryId_1] or {}
table.insert(rwtCGFinish[nStoryId_1],CopyMap_XiaoYinBaoLei_StoryEnd_1)

--击败枭鹰后触发cg
rwtMonsterGroup[nGroupId_XiaoYing] = rwtMonsterGroup[nGroupId_XiaoYing] or {}
rwtMonsterGroup[nGroupId_XiaoYing]["BattleWin"] = function()
   rwStoryTrigger(nStoryId_2)
   if rwHasGenEvent(3054010) then --福莱特npc在不在
       rwDelGenEvent(3054010) 
   end
   if not rwHasGenEvent(3054006) then --boss枭鹰在不在
       rwAddGenEvent(3054006) 
   end
   if not rwHasGenEvent(3054012) then --创建枭鹰BOSS NPC
       rwAddGenEvent(3054012) 
   end 
end

--宝箱 40099 /40100

rwtNpcGroup[40099] = rwtNpcGroup[40099] or {}
rwtNpcGroup[40099]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40099]["Awards"] = {}
--rwtNpcGroup[40099]["Awards"]["AwardId"] = 1000134
--rwtNpcGroup[40099]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40099]["Awards"]["Events"] = {}
rwtNpcGroup[40099]["Awards"]["Events"][1] = {}
rwtNpcGroup[40099]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40099]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40099]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40099
rwtNpcGroup[40099]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40099]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000134 

rwtNpcGroup[40100] = rwtNpcGroup[40100] or {}
rwtNpcGroup[40100]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40100]["Awards"] = {}
--rwtNpcGroup[40100]["Awards"]["AwardId"] = 1000134
--rwtNpcGroup[40100]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40100]["Awards"]["Events"] = {}
rwtNpcGroup[40100]["Awards"]["Events"][1] = {}
rwtNpcGroup[40100]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40100]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40100]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40100
rwtNpcGroup[40100]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40100]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000371 


rwtNpcGroup[40191] = rwtNpcGroup[40191] or {}
rwtNpcGroup[40191]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40191]["NotDel"] = 1
rwtNpcGroup[40191]["Awards"] = {}  
rwtNpcGroup[40191]["Awards"]["Events"] = {}   
rwtNpcGroup[40191]["Awards"]["Events"][1] = {}
rwtNpcGroup[40191]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[40191]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_Monster_Box

rwtMonsterGroup[nMonsterGroup_Box] = rwtMonsterGroup[nMonsterGroup_Box] or {}
rwtMonsterGroup[nMonsterGroup_Box]["BattleWin"] = function()
	if rwHasGenEvent(nGen_Box) then
		rwDelGenEvent(nGen_Box)
	end
end