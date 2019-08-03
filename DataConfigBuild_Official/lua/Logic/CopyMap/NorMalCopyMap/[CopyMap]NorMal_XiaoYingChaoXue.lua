
--枭鹰邦域单人普通副本



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

--副本ID
local nCopyMapId = 3142


--位置点

--相关任务
local nOpenTaskId = 10467

--目标任务
local nYbTaskId_1 = 60310

--副本位置NPC组
local nCopyMapEnterGroupId = 50065
local nCopyMapEnterGenId = 20050342

--场景加载
local tLoadGenId = {}

--怪物
local nMonsterId_XieZi = 1001182
local nMonsterId_HeCheng = 1001183
local nMonsterId_HaiMo = 1001184
local nMonsterId_XiaoYing = 1001185

--怪物组
--(1)
local nMonsterGroupId_HeCheng_1 = 200702
local nMonsterGroupId_HeCheng_1_GenId1 = 3142001
table.insert(tLoadGenId,nMonsterGroupId_HeCheng_1_GenId1)

--(3)
local nMonsterGroupId_XieZi_1 = 200701
local nMonsterGroupId_XieZi_1_GenId1 = 3142002
local nMonsterGroupId_XieZi_1_GenId2 = 3142003
local nMonsterGroupId_XieZi_1_GenId3 = 3142004
table.insert(tLoadGenId,nMonsterGroupId_XieZi_1_GenId1)
table.insert(tLoadGenId,nMonsterGroupId_XieZi_1_GenId2)
table.insert(tLoadGenId,nMonsterGroupId_XieZi_1_GenId3)

--(3)
local nMonsterGroupId_HaiMo_1 = 200703
local nMonsterGroupId_HaiMo_1_GenId1 = 3142005
table.insert(tLoadGenId,nMonsterGroupId_HaiMo_1_GenId1)


local nMonsterGroupId_XiaoYing_1 = 200704
local nMonsterGroupId_XiaoYing_1_GenId = 3142006
table.insert(tLoadGenId,nMonsterGroupId_XiaoYing_1_GenId)

--机关
local nValve_GenId = 3142007
table.insert(tLoadGenId,nValve_GenId)


----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--副本目标
rwtTarget[nYbTaskId_1] = {}
rwtTarget[nYbTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21818]
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


