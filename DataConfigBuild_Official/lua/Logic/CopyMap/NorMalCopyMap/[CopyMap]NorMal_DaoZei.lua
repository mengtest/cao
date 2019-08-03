--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--盗贼领地副本



--endregion

----------------------------------------------------------数据定义----------------------------------------------------------
--副本ID
local nCopyMapId = 3029


--怪物 
local nMonster_1 = 1000166				--草原游侠	100081
local nMonsterGroup_1 = 300101
local nMonsterGroup_1_Gen = 3029001

local nMonster_2 = 1000167						--感染的冒险者	100082
local nMonsterGroup_2 = 300102
local nMonsterGroup_2_Gen = 3029002

local nMonster_3 = 1000168					--绝世舞姬 100083
local nMonsterGroup_3 = 300103
local nMonsterGroup_3_Gen = 3029003

local nMonster_4 = 1000169					--黑色荆棘 100084
local nMonsterGroup_4 = 300104  
local nMonsterGroup_4_Gen = 3029004

--机关 1121


----------------------------------------------------------数据配置----------------------------------------------------------
rwtNpcGroup[50017] = {}
rwtNpcGroup[50017]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50017]["CopyMapList"] = {nCopyMapId}


rwtTarget[60021] = {}
rwtTarget[60021]["Title"] =tLuaText[LANGUAGE_CONFIG][20025]
rwtTarget[60021]["KillMonsterGroup"] = nMonsterGroup_4
rwtTarget[60021]["ReqCount"] = 1


rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60021}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10140  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3029008 --副本传送NPC的GENID


