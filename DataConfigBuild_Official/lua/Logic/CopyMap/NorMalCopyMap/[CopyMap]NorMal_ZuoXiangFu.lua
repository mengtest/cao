--region *.lua
--Date 2019-7-15
--此文件由[BabeLua]插件自动生成

--By： Dona

--endregion
------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3139

--副本传送NPC的GENID
local nNpcGroup_GenId_CopyMap = 20010254

--切换剧情、普通本任务
local nChangeNpcTaskID = 10067

--副本目标
local nTarget1 = 60307

--入口NPC
local nNpcGroup_RuKou = 50062  --入口NPC

--怪物
local nMonsterGroupId_1 = 200688   -- 白银盾战
local nMonsterGroupId_2 = 200689   -- 黄金首领

--副本目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21811] 
rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroupId_2
rwtTarget[nTarget1]["ReqCount"] = 1

--进入副本NPC -----------------------------------------------？？？
rwtNpcGroup[nNpcGroup_RuKou] = {}   --副本入口NPC组
rwtNpcGroup[nNpcGroup_RuKou]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_RuKou]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--    CopyMap_NorMal_YinMuKuangDong_InitMap()
--end

