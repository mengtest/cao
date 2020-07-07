--region [CopyMap]NorMal_ShenJiShiYan
--Purpose:		普通神迹实验室
--Creator: 		倪祖伟
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-07-4 $
--RCS-ID:		$Revision: 3 $
--endregion

--endregion
----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3146

local tGenId = {}
tGenId.Monster_XianQuOne       = 3146001     -- 超体智能1号
tGenId.Monster_NvPu1           = 3146002     -- 伊甸傀从
tGenId.Monster_NvPu2           = 3146003     -- 伊甸傀从
-- tGenId.Monster_NvPu3           = 3146004     -- 伊甸傀从
tGenId.Monster_Boss            = 3146005     -- 疯狂博士

local tMonsterGroup = {}
tMonsterGroup.Monster_XianQuOne       = 200731     -- 超体智能1号
tMonsterGroup.Monster_NvPu1           = 200732     -- 伊甸傀从
tMonsterGroup.Monster_NvPu2           = 200733     -- 伊甸傀从
tMonsterGroup.Monster_NvPu3           = 200734     -- 伊甸傀从
tMonsterGroup.Monster_Boss            = 200735     -- 疯狂博士


--副本入口NPC组 --TODO
rwtNpcGroup[50068] = {}
rwtNpcGroup[50068]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50068]["CopyMapList"] = {nCopyMapId}


--任务目标配置
rwtTarget[60314] = {}
rwtTarget[60314]["Title"] = tLuaText[LANGUAGE_CONFIG][21822]
rwtTarget[60314]["KillMonsterGroup"] = tMonsterGroup.Monster_Boss
rwtTarget[60314]["ReqCount"] = 1

-- 副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60314}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2004
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10492
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 20040110
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tGenId

--[[
    3146002 200732 1001200 2
    3146003 200733 1001199 3
    3146001 200731 1001199 1 
    3146005 200735 1001201 5
]]
