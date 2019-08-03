--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--深海实验室副本
--By:syl

--endregion

----------------------------------------------------------数据定义----------------------------------------------------------

--副本ID
local nCopyMapId = 3144

--怪物
local nMonster_1 = 1001191			
local nMonsterGroup_1 = 200712
local nMonsterGroup_1_Gen = 3144002

local nMonster_2 = 1001192			
local nMonsterGroup_2 = 200713  
local nMonsterGroup_2_Gen = 3144003

local nMonster_3 = 1001193        			
local nMonsterGroup_3 = 200714              
local nMonsterGroup_3_Gen = 3144004         

local nMonster_4 = 1001194			
local nMonsterGroup_4 = 200715  
local nMonsterGroup_4_Gen = 3144005


----------------------------------------------------------数据配置----------------------------------------------------------

--进入副本NPC
rwtNpcGroup[30663] = {}
rwtNpcGroup[30663]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[30663]["CopyMapList"] = {nCopyMapId}

rwtTarget[60312] = {}
rwtTarget[60312]["Title"] =tLuaText[LANGUAGE_CONFIG][21821]
rwtTarget[60312]["KillMonsterGroup"] = nMonsterGroup_4
rwtTarget[60312]["ReqCount"] = 1


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60312}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10525  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3144001 --副本传送NPC的GENID



