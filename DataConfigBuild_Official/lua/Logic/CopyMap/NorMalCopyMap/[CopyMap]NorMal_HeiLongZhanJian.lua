--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
--副本ID 黑龙战舰(普通本)
local nCopyMapId = 3141

--monster 1001177	1001181
--monstergroup 200693	200700

--切换剧情、普通本任务
--local nChangeNpcTaskID = nil
local nNpcGroup_GenId_CopyMap = 3141001

local nTarget1 = 60309

   

--进入副本NPC   
--genid   3141001
--local nDialogId_1 =  6293   --进入副本对白            
----入口NPC对白
--local nDialogId_10 =  6303    --这里面情况不明，我们不要轻举妄动。如果不小心搞砸了<br>米兰达她们的计划，那就糟糕了。
--local nDialogId_11 =  6304    --走走走，我们去看看这黑龙战舰里究竟还藏着多少小秘密。

------------陷阱-----------------
--进入副本NPC
rwtNpcGroup[50064] = {}
rwtNpcGroup[50064]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
--rwtNpcGroup[50064]["UnlockDialog"] = 6303
--rwtNpcGroup[50064]["Dialog"] = 6304
rwtNpcGroup[50064]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10655  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}

--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1
--副本任务目标 
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21817]
rwtTarget[nTarget1]["KillMonsterGroup"] = 200699 --亚兹莫
rwtTarget[nTarget1]["ReqCount"] = 1
