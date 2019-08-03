--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--黄金立方普通本
--data:2019-07-18
--by:mzy

--endregion



--=====================副本相关======================
--genid分配
--NPC组：3145001-3145100
--怪物组：3145101-3145200
--机关：3145201-3145300


--副本ID
--第一层
local nCopyMapId = 3145

--进入副本NPC
local nNpcGroup_CopyMap = 50067
local nNpcGroup_CopyMap_GenId = 3145001

--切换剧情、普通本任务
local nChangeNpcTaskID = 10643

-------------------对白、剧情id---------------------
local tDialog = {}
--击败boss后对白(战后事件)(普通本通用对白)
tDialog.Dialog1 = 6891

-----------------------怪物组MonsterGroup----------------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

--黑龙舰兵
tMonsterGroup.MonsterGroup1 = 200717
tMonsterGroupGenId.MonsterGroup1 = 3145101
--黑龙战士
tMonsterGroup.MonsterGroup2 = 200718
tMonsterGroupGenId.MonsterGroup2 = 3145102
--摩尼耶
tMonsterGroup.MonsterGroup3 = 200719
tMonsterGroupGenId.MonsterGroup3 = 3145103
--黑龙舰兵
tMonsterGroup.MonsterGroup4 = 200720
tMonsterGroupGenId.MonsterGroup4 = 3145104
--尼格斯
tMonsterGroup.MonsterGroup5 = 200721
tMonsterGroupGenId.MonsterGroup5 = 3145105


----------------------怪物monster--------------
local tMonster = {}

--黑龙舰兵
tMonster.Monster1 = 1001195
--黑龙战士
tMonster.Monster2 = 1001196
--摩尼耶
tMonster.Monster3 = 1001197
--尼格斯
tMonster.Monster4 = 1001198

-------------------------------副本目标---------------
local tTarget = {}

--战胜黑龙舰长		
tTarget.Target1 = 60313

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

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_CopyMap_GenId --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget.Target1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


--------------------副本目标-------------------
--击败尼格斯
rwtTarget[tTarget.Target1] = {}
rwtTarget[tTarget.Target1]["Title"] = tLuaText[LANGUAGE_CONFIG][21820]
rwtTarget[tTarget.Target1]["KillMonsterGroup"] = tMonsterGroup.MonsterGroup5
rwtTarget[tTarget.Target1]["ReqCount"] = 1
