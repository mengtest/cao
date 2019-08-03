--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--露西墓地普通副本
--黄艳婷


--endregion
--===========================副本配置====================================--

local nCopyMapId = 3028   --副本ID
local nTarget1 = 60006
local nChangeNpcTaskID = 10092
local nEnterNpcGen = 3028018	--
local nNpcGroup_RuKou = 50018	--入口NPC
local nMonsterGroup_Boss = 200208	--boss
local nGenId_MonsterGroup_Boss = 3028006  

rwtNpcGroup[nNpcGroup_RuKou] = {}   --副本入口NPC组
rwtNpcGroup[nNpcGroup_RuKou]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
--rwtNpcGroup[nNpcGroup_RuKou]["UnlockDialog"] = 5213
--rwtNpcGroup[nNpcGroup_RuKou]["Dialog"] = 5207
rwtNpcGroup[nNpcGroup_RuKou]["CopyMapList"] = {nCopyMapId}


rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20033]
rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroup_Boss 
rwtTarget[nTarget1]["ReqCount"] = 1  
            
--副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10092  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3028018 --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

