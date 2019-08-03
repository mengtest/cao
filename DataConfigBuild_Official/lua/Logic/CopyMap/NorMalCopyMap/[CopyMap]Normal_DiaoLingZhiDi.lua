--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--凋零之地普通副本
--Hq

--endregion

----------------------------------------------------------数据定义----------------------------------------------------------
local nCopyMapId = 3047  --副本ID

--副本目标
local nTarget = 60043   	

--怪物
local nMonster_1 = 1000264						--腐灼不死者	100359
local nMonsterGroup_1 = 200272		
local nMonsterGroup_1_Gen = 3047001

local nMonster_2 = 1000265						--扭曲不死者 	100360
local nMonsterGroup_2 = 200273
local nMonsterGroup_2_Gen = 3047002

local nMonster_3 = 1000266 						--腐烂不死者 	100361
local nMonsterGroup_3 = 200274
local nMonsterGroup_3_Gen = 3047003

local nMonster_4 = 1000267 						--躁郁不死者  100362
local nMonsterGroup_4 = 200275
local nMonsterGroup_4_Gen = 3047004

local nMonster_5 = 1000268						--魅惑巫妖	100363
local nMonsterGroup_5 = 200276
local nMonsterGroup_5_Gen = 3047005


----------------------------------------------------------数据配置----------------------------------------------------------

rwtNpcGroup[50029] = rwtNpcGroup[50029] or {}   --副本入口NPC组
rwtNpcGroup[50029]["Type"] = CONST_NPCGROUP_TYPE.CopyMap                                                    
rwtNpcGroup[50029]["CopyMapList"] = {nCopyMapId}

--副本目标
rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][20026]
rwtTarget[nTarget]["KillMonsterGroup"] = nMonsterGroup_5
rwtTarget[nTarget]["ReqCount"] = 1

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10312  
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 20030322 
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
