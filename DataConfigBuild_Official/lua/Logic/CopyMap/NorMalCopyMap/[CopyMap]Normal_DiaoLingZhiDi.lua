--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--凋零之地普通副本
--Hq

--endregion
--===========================副本配置====================================--
local nCopyMapId = 3047  --副本ID

--副本目标
local nTarget = 60043   --击败不死者尼普	

 --切换剧情、普通本任务
local nChangeNpcTaskID = 10312

--CopyMap
local nGenIdCopyMapNormal = 20030322   --普通副本入口

rwtNpcGroup[50029] = rwtNpcGroup[50029] or {}   --副本入口NPC组
rwtNpcGroup[50029]["Type"] = CONST_NPCGROUP_TYPE.CopyMap                                                    
rwtNpcGroup[50029]["CopyMapList"] = {nCopyMapId}
rwtNpcGroup[50029]["Dialog"] = 5256 
rwtNpcGroup[50029]["UnlockDialog"] = 5255

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nGenIdCopyMapNormal 
--rwtCopyMapMission[nCopyMapId]["Target1"] = nTarget
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5251
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaMonsterGenId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nStatus"] = 0

--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()                     
--    CopyMap_NorMalDiaoLingZhiDi_InitMap()
--end
--怪物gen
local tDynaMonsterGenId_1  = {20030316,20030317}   --潜伏怪
local tDynaMonsterGenId_2  = {20030320,20030321}   --巡逻怪

--机关
local nGenId_Valve_1 = 20030325  --棺材
local nGenId_Valve_2 = 20030327  --棺材
--采集
local nCollect_1 = 60123  -- 永生之棺
--boss
local nMonster_Boss = 200275

--------==========逻辑=========-------
--采集相关
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = 5252
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"] = {}      
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][1] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][2] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][2]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][2]["nStatus"] = 0
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2]["PlaySceneAnimation"]["Id"]= 16304
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["DynCreate"] = tDynaMonsterGenId_2
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["DynDelete"] = tDynaMonsterGenId_1

--rwtNpcGroup[nCollect_1]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[nCollect_1]["OpenVavle"][1] = {}  
--rwtNpcGroup[nCollect_1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
--rwtNpcGroup[nCollect_1]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[nCollect_1]["OpenVavle"][2] = {}  
--rwtNpcGroup[nCollect_1]["OpenVavle"][2]["nGenId"] = nGenId_Valve_1
--rwtNpcGroup[nCollect_1]["OpenVavle"][2]["nStatus"] = 0
--rwtNpcGroup[nCollect_1]["StoryTrigger"] = {}     --触发场景动画
--rwtNpcGroup[nCollect_1]["StoryTrigger"]["StoryId"] = 16304
--rwtNpcGroup[nCollect_1]["StoryTrigger"]["Type"] = 2
--rwtNpcGroup[nCollect_1]["StoryTrigger"]["nChgScenePlay"]= 0
--rwtNpcGroup[nCollect_1]["DelGen"] = tDynaMonsterGenId_1   
--rwtNpcGroup[nCollect_1]["AddGen"] = tDynaMonsterGenId_2 
--副本目标
rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][20026]
rwtTarget[nTarget]["KillMonsterGroup"] = nMonster_Boss
rwtTarget[nTarget]["ReqCount"] = 1

--副本通关
--boss死亡
--function CopyMap_NorMal_DiaoLingZhiDi_BossDead()
--	 rwLinkPassCopyMap(nCopyMapId)
--end
--rwtMonsterGroup_Func[200275] = rwtMonsterGroup_Func[200275] or {}
--table.insert(rwtMonsterGroup_Func[200275],CopyMap_NorMal_DiaoLingZhiDi_BossDead)

-------初始化
--function CopyMap_NorMalDiaoLingZhiDi_InitMap()--初始化函数
--    rwPrintLog("进入凋零之地普通副本，开始执行初始化函数")
-- --创建NPC、monster
--   for _,v in pairs(tDynaMonsterGenId_1) do
--        if not rwHasGenEvent(v) then
--            rwAddGenEvent(v)
--        end
--   end
--   rwOpenNpcChatDialog(5251)             --进入副本打开对话
--   rwUpdateValveData(nGenId_Valve_2, 0) 
--   rwPrintLog("凋零之地普通副本初始化函数执行完毕")
--end


