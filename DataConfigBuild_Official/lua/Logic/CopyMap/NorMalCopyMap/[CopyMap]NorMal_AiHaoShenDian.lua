--region [CopyMap]NorMal_AiHaoShenDian.lua
--Date
--此文件由[BabeLua]插件自动生成
--[普通]哀嚎神殿单人普通副本
--by:mzy

--endregion

--***************************数据******************************
--genid分配
--NPC组：3036001-3036100
--怪物组：3036101-3036200
--机关：3036201-3036300
--副本ID
--哀嚎神殿
local nCopyMapId = 3036

--进入副本NPC
local nNpcGroup_CopyMap = 50019
local nNpcGroup_CopyMap_GenId = 3036006

--切换剧情、普通本任务
local nChangeNpcTaskID = 10182

-------------------对白、剧情id---------------------
local tDialog = {}
--击败boss后对白(战后事件)
tDialog.Dialog1 = 6891
-----------------------怪物组MonsterGroup----------------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}
--亡魂死士
tMonsterGroup.MonsterGroup1 = 200213
tMonsterGroupGenId.MonsterGroup1 = 3036101
--绝望之魂
tMonsterGroup.MonsterGroup2 = 200214
tMonsterGroupGenId.MonsterGroup2 = 3036102
--亡魂死士
tMonsterGroup.MonsterGroup3 = 200215
tMonsterGroupGenId.MonsterGroup3 = 3036103
--亡魂死士
tMonsterGroup.MonsterGroup4 = 200216
tMonsterGroupGenId.MonsterGroup4 = 3036104
--黑骑战魂
tMonsterGroup.MonsterGroup5 = 200217
tMonsterGroupGenId.MonsterGroup5 = 3036105
--亡魂死士
tMonsterGroup.MonsterGroup6 = 200218
tMonsterGroupGenId.MonsterGroup6 = 3036106
--暗渊法师
tMonsterGroup.MonsterGroup7 = 200219
tMonsterGroupGenId.MonsterGroup7 = 3036107
--贪婪·幻象
tMonsterGroup.MonsterGroup8 = 200220
tMonsterGroupGenId.MonsterGroup8 = 3036108

----------------------怪物monster--------------
local tMonster = {}

--亡魂死士
tMonster.Monster1 = 1000182
--绝望之魂
tMonster.Monster2 = 1000183
--黑骑战魂
tMonster.Monster3 = 1000184
--暗渊法师
tMonster.Monster4 = 1000185
--贪婪·幻象
tMonster.Monster5 = 1000186

------------------------NPC组----------------------

-------------------------------副本目标---------------
local tTarget = {}
--战胜贪婪·幻象	
tTarget.Target1 = 60068

--***************************逻辑******************************
------------------------副本-----------------------
--副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["EnterNpc"] = nNpcGroup_CopyMap
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_CopyMap_GenId --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget.Target1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}



--------------------副本目标-------------------
----------------------副本目标-------------------------
--战胜贪婪·幻象
rwtTarget[tTarget.Target1] = {}
rwtTarget[tTarget.Target1]["Title"] = tLuaText[LANGUAGE_CONFIG][20022]
rwtTarget[tTarget.Target1]["KillMonsterGroup"] = tMonsterGroup.MonsterGroup8
rwtTarget[tTarget.Target1]["ReqCount"] = 1

