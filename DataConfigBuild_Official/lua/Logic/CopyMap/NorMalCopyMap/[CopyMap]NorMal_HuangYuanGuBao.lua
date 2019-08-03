--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
--副本ID 荒野古堡-普通本
local nCopyMapId = 3043

--切换剧情、普通本任务
local nChangeNpcTaskID = 10282
local nNpcGroup_GenId_CopyMap = 3043009

--进入副本NPC
rwtNpcGroup[50026] = {}
rwtNpcGroup[50026]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
--rwtNpcGroup[50026]["UnlockDialog"] = 5238
--rwtNpcGroup[50026]["Dialog"] = 5239
rwtNpcGroup[50026]["CopyMapList"] = {nCopyMapId}

local nTarget1 = 60054

--副本任务目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20030]
rwtTarget[nTarget1]["KillMonsterGroup"] = 200262
rwtTarget[nTarget1]["ReqCount"] = 1

--进入副本NPC   
--genid   3043009
--副本NPC位置：
--对白 女巫古堡普通本	5233	5242

local nDialogId_1 = 5233   --进入副本对白 
--local nDialogId_2 = 5234   --药剂对白1  加侦查范围
--local nDialogId_3 = 5235   --药剂对白2  加攻击
--local nDialogId_4 = 5236   --药剂对白3  加移速
--local nDialogId_5 = 5237    --哼，人类女孩。下一次，不会这么简单。
local nDialogId_6 = 5238    --喂，你们两个不要乱走。这栋城堡看起来阴森森的，说不定里面有……
local nDialogId_7 = 5239    --最近弥尔还好么？我们去看看她吧。
    
--怪物id 9000161 9000162
--怪物组 200259	200262

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1