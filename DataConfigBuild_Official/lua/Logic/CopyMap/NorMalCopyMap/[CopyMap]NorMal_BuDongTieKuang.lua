
--枭鹰矿洞单人普通副本



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

--副本ID
local nCopyMapId = 3140


--位置点

--相关任务
local nOpenTaskId = 10456

--目标任务
local nYbTaskId_1 = 60308

--副本位置NPC组
local nCopyMapEnterGroupId = 50063
local nCopyMapEnterGenId = 20050341

--场景加载
local tLoadGenId = {}

--怪物
local nMonsterId_HeCheng = 1001174
local nMonsterId_HaiMo = 1001175
local nMonsterId_XiaoYing = 1001176

--怪物组
--(1)
local nMonsterGroupId_HeCheng_1 = 200690
local nMonsterGroupId_HeCheng_1_GenId1 = 3140001
local nMonsterGroupId_HeCheng_1_GenId2 = 3140002
table.insert(tLoadGenId,nMonsterGroupId_HeCheng_1_GenId1)
table.insert(tLoadGenId,nMonsterGroupId_HeCheng_1_GenId2)

--(2)
local nMonsterGroupId_HaiMo_1 = 200691
local nMonsterGroupId_HaiMo_1_GenId1 = 3140003
local nMonsterGroupId_HaiMo_1_GenId2 = 3140004
table.insert(tLoadGenId,nMonsterGroupId_HaiMo_1_GenId1)
table.insert(tLoadGenId,nMonsterGroupId_HaiMo_1_GenId2)


local nMonsterGroupId_XiaoYing_1 = 200692
local nMonsterGroupId_XiaoYing_1_GenId = 3140005
table.insert(tLoadGenId,nMonsterGroupId_XiaoYing_1_GenId)



----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--副本目标
rwtTarget[nYbTaskId_1] = {}
rwtTarget[nYbTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21816]
rwtTarget[nYbTaskId_1]["KillMonsterGroup"] = nMonsterGroupId_XiaoYing_1
rwtTarget[nYbTaskId_1]["ReqCount"] = 1



--进入副本
rwtNpcGroup[nCopyMapEnterGroupId] = {}
rwtNpcGroup[nCopyMapEnterGroupId]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapEnterGroupId]["CopyMapList"] = {nCopyMapId}


--副本信息(简单难度)
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nOpenTaskId
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nCopyMapEnterGenId
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nYbTaskId_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId


