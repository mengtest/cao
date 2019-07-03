--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--银母矿洞

--endregion

------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3041

--副本传送NPC的GENID
local nNpcGroup_GenId_CopyMap = 3041005

--切换剧情、普通本任务
local nChangeNpcTaskID = 10340

--进入副本NPC
rwtNpcGroup[50025] = {}   --副本入口NPC组
rwtNpcGroup[50025]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50025]["UnlockDialog"] = 5231
rwtNpcGroup[50025]["Dialog"] = 5232
rwtNpcGroup[50025]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60030}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5229
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--    CopyMap_NorMal_YinMuKuangDong_InitMap()
--end

--副本目标
rwtTarget[60030] = {}
rwtTarget[60030]["KillMonsterGroup"] = 200250
rwtTarget[60030]["ReqCount"] = 1

--怪物
local nMonsterGroupId_1 = 200247   -- 采矿工兵1
local nMonsterGroupId_2 = 200248   -- 矮巨人矿工
local nMonsterGroupId_3 = 200249   -- 矮巨人矿工
local nMonsterGroupId_4 = 200250   -- 矮巨人指挥


-------初始化
--function CopyMap_NorMal_YinMuKuangDong_InitMap()--初始化函数
--   rwPrintLog("进入银母矿洞普通副本，开始执行初始化函数")
--   rwOpenNpcChatDialog(5229)             --进入副本打开对话
--   rwPrintLog("银母矿洞普通副本初始化函数执行完毕")
--end
