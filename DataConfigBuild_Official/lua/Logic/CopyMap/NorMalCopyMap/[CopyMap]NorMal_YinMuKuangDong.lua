--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--银母矿洞

--endregion

------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3041

--副本传送NPC的GENID
local nNpcGroup_GenId_CopyMap = 20030586

--切换剧情、普通本任务
local nChangeNpcTaskID = 10340

local nNpcGroup_RuKou = 50025  --入口NPC
--副本目标
local nTarget1 = 60030

--怪物
local nMonsterGroupId_1 = 200247   -- 采矿工兵1
local nMonsterGroupId_2 = 200248   -- 矮巨人指挥1
local nMonsterGroupId_3 = 200249   -- 尼格斯


--进入副本NPC
rwtNpcGroup[nNpcGroup_RuKou] = {}   --副本入口NPC组
rwtNpcGroup[nNpcGroup_RuKou]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_RuKou]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--    CopyMap_NorMal_YinMuKuangDong_InitMap()
--end

--副本目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21812] 
rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroupId_3
rwtTarget[nTarget1]["ReqCount"] = 1



