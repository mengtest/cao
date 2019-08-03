--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--树心城副本（普通）


--endregion

--=====================副本相关======================
--genid分配
--NPC组：3048001-3048100
--怪物组：3048101-3048200
--机关：3048201-3048300

--副本内玩家数据
local tCopyMap_NorMalShuXinChengUserData = {}
local nUserId = nil


--副本ID
--第一层
local nCopyMapId = 3048

--进入副本NPC
local nNpcGroup_CopyMap = 50030
local nNpcGroup_GenId_CopyMap = 3048001

--切换剧情、普通本任务
local nChangeNpcTaskID = 10405

--==============================数据定义=============================

-------------------对白、剧情id---------------------
local tDialog = {}
--击败boss后对白(战后事件)
tDialog.Dialog1 = 6891
--------------------------monster_group------------------------------
local nMonsterGroup_1 = 200279       --蛛王使徒
local nMonsterGroup_1_GenId = 3048101

local nMonsterGroup_2 = 200280       --精灵族剑士
local tMonsterGroup_2_GenId = {3048102}

local nMonsterGroup_3 = 200281         --精灵族射手
local tMonsterGroup_3_GenId = {3048104}

local nMonsterGroup_4 = 200282       --魔魂石像
local nMonsterGroup_4_GenId = 3048106

local nMonsterGroup_5 = 200283       --荆棘花妖
local tMonsterGroup_5_GenId = {3048107}

local nMonsterGroup_6 = 200284       --双枪毒蝎
local nMonsterGroup_6_GenId = {3048109}

local nMonsterGroup_7 = 200730       --双枪毒蝎
local nMonsterGroup_7_GenId = {3048110}

local nMonsterGroup_Boss = 200285       --暗幕蛛王
local nMonsterGroup_Boss_GenId = 3048113


-------------------------monster------------------------------
local nMonster_1 = 1000272        --荆棘花妖
local nMonster_2 = 1000273        --精灵族剑士
local nMonster_3 = 1000274        --精灵族射手
local nMonster_4 = 1000275        --蛛王使徒
local nMonster_5 = 1000276        --恶魔修帝.
local nMonster_6 = 1000277        --魔魂石像
local nMonster_Boss = 1000278     --暗幕蛛王

-------------------------------副本目标---------------
--战胜暗幕蛛王	
local nCopyTarget_1 = 60047

--==============================逻辑=================================
--------------------------副本相关----------------------
--进入副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMapId}


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nCopyTarget_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}



----------------------副本目标-------------------------
--战胜暗幕蛛王
rwtTarget[nCopyTarget_1] = {}
rwtTarget[nCopyTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20040]
rwtTarget[nCopyTarget_1]["KillMonsterGroup"] = nMonsterGroup_Boss
rwtTarget[nCopyTarget_1]["ReqCount"] = 1

