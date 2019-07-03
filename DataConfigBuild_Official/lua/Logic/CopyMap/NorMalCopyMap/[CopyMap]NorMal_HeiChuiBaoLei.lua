
--黑锤堡垒单人普通副本



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

--副本ID
local nCopyMapId_Yb = 3039

--用户数据
local nUserRecordId = 1020 --(原剧情本的用户记录 已使用：Data2)

--位置点

--相关任务
local nHeiChuiOpenTaskId_Yb = 10253

--目标任务
local nHeiChuiYbTaskId_1 = 60027

--副本位置NPC组
local nCopyMapEnterGroupId_Yb = 50023
local nCopyMapEnterGenId_Yb = 20030269

--场景加载
local tLoadGenId_Yb = {}

--怪物
local nMonsterId_ChuiZi_Yb = 1000232
local nMonsterId_ShouWei_Yb = 1000233

--怪物组
--(1)
local nMonsterGroupId_ChuiZi_Yb1 = 200237
local nMonsterGroupId_ChuiZi_Yb1_GenId = 20030264
table.insert(tLoadGenId_Yb,nMonsterGroupId_ChuiZi_Yb1_GenId)

--(4)
local nMonsterGroupId_ShouWei_Yb1 = 200238
local nMonsterGroupId_ShouWei_Yb2 = 200239
local nMonsterGroupId_ShouWei_Yb3 = 200240
local nMonsterGroupId_ShouWei_Yb4 = 200241
local nMonsterGroupId_ShouWei_Yb1_GenId = 20030265
local nMonsterGroupId_ShouWei_Yb2_GenId = 20030266
local nMonsterGroupId_ShouWei_Yb3_GenId = 20030267
local nMonsterGroupId_ShouWei_Yb4_GenId = 20030268
table.insert(tLoadGenId_Yb,nMonsterGroupId_ShouWei_Yb1_GenId)
table.insert(tLoadGenId_Yb,nMonsterGroupId_ShouWei_Yb2_GenId)
table.insert(tLoadGenId_Yb,nMonsterGroupId_ShouWei_Yb3_GenId)
table.insert(tLoadGenId_Yb,nMonsterGroupId_ShouWei_Yb4_GenId)

--宝箱

--奖励ID (服务端)

--陷阱

--场景对话
local nSceneDialogId_1_Yb = 5221 -- 进入副本触发对白
local nSceneDialogId_2_Yb = 5222 -- 战斗胜利触发对白
local nSceneDialogId_3_Yb = 5224 -- 已经完成主线未接到佣兵任务时对白

--场景动画

--物品ID

----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--副本目标
rwtTarget[nHeiChuiYbTaskId_1] = {}
rwtTarget[nHeiChuiYbTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20029]
rwtTarget[nHeiChuiYbTaskId_1]["KillMonsterGroup"] = nMonsterGroupId_ChuiZi_Yb1
rwtTarget[nHeiChuiYbTaskId_1]["ReqCount"] = 1


--BOSS逻辑
function CopyMap_Normal_HeiChuiBaoLeiBossDead()
	rwOpenNpcChatDialog(nSceneDialogId_2_Yb,CONST_NPCCHAT_TYPE.COPYMAP)
	--rwLinkPassCopyMap(nCopyMapId_Yb)
end


rwtMonsterGroup_Func[nMonsterGroupId_ChuiZi_Yb1] = rwtMonsterGroup_Func[nMonsterGroupId_ChuiZi_Yb1] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_ChuiZi_Yb1],CopyMap_Normal_HeiChuiBaoLeiBossDead)


--进入副本
rwtNpcGroup[nCopyMapEnterGroupId_Yb] = {}
rwtNpcGroup[nCopyMapEnterGroupId_Yb]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapEnterGroupId_Yb]["CopyMapList"] = {nCopyMapId_Yb}
rwtNpcGroup[nCopyMapEnterGroupId_Yb]["UnlockDialog"] = nSceneDialogId_3_Yb
rwtNpcGroup[nCopyMapEnterGroupId_Yb]["Dialog"] = nSceneDialogId_3_Yb


--副本信息(简单难度)
rwtCopyMapMission[nCopyMapId_Yb] = rwtCopyMapMission[nCopyMapId_Yb] or {}
rwtCopyMapMission[nCopyMapId_Yb]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId_Yb]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId_Yb]["EnterNpcMap"] = 2003
rwtCopyMapMission[nCopyMapId_Yb]["ChangeNpcTask"] = nHeiChuiOpenTaskId_Yb
rwtCopyMapMission[nCopyMapId_Yb]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId_Yb]["EnterNpcGen"] = nCopyMapEnterGenId_Yb
rwtCopyMapMission[nCopyMapId_Yb]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId_Yb]["Target1"] = {nHeiChuiYbTaskId_1}
rwtCopyMapMission[nCopyMapId_Yb]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId_Yb]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId_Yb]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId_Yb]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId_Yb]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId_Yb]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nSceneDialogId_1_Yb
rwtCopyMapMission[nCopyMapId_Yb]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId_Yb
--rwtCopyMapMission[nCopyMapId_Yb]["MapInitFunc"] = function()
--	rwOpenNpcChatDialog(nSceneDialogId_1_Yb,CONST_NPCCHAT_TYPE.COPYMAP)
--	for i,v in pairs(tLoadGenId_Yb) do
--		if not rwHasGenEvent(v) then
--			rwAddGenEvent(v)
--		end
--	end
--end

--rwtTaskUnlockCopyMapInfo[nCopyMapId_Yb] = rwtTaskUnlockCopyMapInfo[nCopyMapId_Yb] or {}
--rwtTaskUnlockCopyMapInfo[nCopyMapId_Yb]["TaskId"] = nHeiChuiOpenTaskId_Yb

