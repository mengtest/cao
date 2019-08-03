
--风沙堡单人普通副本



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

--副本ID
local nCopyMapId = 3039


--位置点

--相关任务
local nHeiChuiOpenTaskId = 10253

--目标任务
local nHeiChuiYbTaskId_1 = 60027

--副本位置NPC组
local nCopyMapEnterGroupId = 50023
local nCopyMapEnterGenId = 20030269

--场景加载
local tLoadGenId = {}

--怪物
local nMonsterId_ChuiZi = 1000232
local nMonsterId_ShouWei = 1000233
local nMonsterId_MoXiYa = 1001173

--怪物组
--(1)
local nMonsterGroupId_ChuiZi_1 = 200237
local nMonsterGroupId_ChuiZi_1_GenId = 3039001
local nMonsterGroupId_ChuiZi_2 = 200238
local nMonsterGroupId_ChuiZi_2_GenId = 3039002
table.insert(tLoadGenId,nMonsterGroupId_ChuiZi_1_GenId)
table.insert(tLoadGenId,nMonsterGroupId_ChuiZi_2_GenId)

--(2)
local nMonsterGroupId_ShouWei_1 = 200239
local nMonsterGroupId_ShouWei_2 = 200240
local nMonsterGroupId_ShouWei_1_GenId = 3039003
local nMonsterGroupId_ShouWei_2_GenId = 3039004
table.insert(tLoadGenId,nMonsterGroupId_ShouWei_1_GenId)
table.insert(tLoadGenId,nMonsterGroupId_ShouWei_2_GenId)


local nMonsterGroupId_MoXiYa_1 = 200241
local nMonsterGroupId_MoXiYa_1_GenId = 3039005
table.insert(tLoadGenId,nMonsterGroupId_MoXiYa_1_GenId)

--废弃GenId
--(20030264 - 20030268)

--宝箱

--奖励ID (服务端)

--陷阱

--场景对话
--废弃对白Id(5221 5222 5224)

--场景动画


----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--副本目标
rwtTarget[nHeiChuiYbTaskId_1] = {}
rwtTarget[nHeiChuiYbTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20029]
rwtTarget[nHeiChuiYbTaskId_1]["KillMonsterGroup"] = nMonsterGroupId_MoXiYa_1
rwtTarget[nHeiChuiYbTaskId_1]["ReqCount"] = 1



--进入副本
rwtNpcGroup[nCopyMapEnterGroupId] = {}
rwtNpcGroup[nCopyMapEnterGroupId]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapEnterGroupId]["CopyMapList"] = {nCopyMapId}


--副本信息(简单难度)
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nHeiChuiOpenTaskId
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nCopyMapEnterGenId
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nHeiChuiYbTaskId_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId


