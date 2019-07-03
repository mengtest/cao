--region *.lua
--Date	   2017-12-29
--此文件由[BabeLua]插件自动生成
--诡异的左相府


--endregion

----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------
--副本ID
local nCopyMapId = 3084

--位置
--local sPos = "-314.54,-24.88,-33.59"

--进入副本NPC
rwtNpcGroup[50008] = {}
rwtNpcGroup[50008]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50008]["CopyMapList"] = {nCopyMapId}

--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--    CopyMap_ZuoXiang_InitMap()
--end

--副本目标
rwtTarget[60040] = {}
rwtTarget[60040]["Title"] = tLuaText[LANGUAGE_CONFIG][21446]
rwtTarget[60040]["ReqCollectId"] = 60064
rwtTarget[60040]["ReqCount"] = 1

--怪物
local nMonsterId = 1000121

--怪物组
local nMonsterGroupId = 200160
local nMonsterGroup_GenId = 200160
--机关
local nValve_1 = 1012		   --入口障碍
local nValve_1_GenId = 3084007  
local nValve_1 = 1013		   --出口障碍
local nValve_1_GenId = 3084008
local nValve_1 = 1014
local nValve_1_GenId = 3084009   --书房障碍脚本刷
--采集物
local nCollect = 60064    --日记本
local nCollect_GenId = 3084013

--陷阱
--local nTrap_1 = 30184  --入口
--local nTrap_GenId_1 = 3084010 
local nTrap_2 = 30185  --书房
local nTrap_GenId_2 = 3084011
--local nTrap_3 = 30186  --出口
--local nTrap_GenId_3 = 3084012 

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60040}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5065
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nCollect_GenId,nTrap_GenId_2}

----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------
--对话
--rwtDialog[5068] = {}
--rwtDialog[5068]["CloseDialog"] = 1
--rwtDialog[5068]["DialogEnd"] = function()	
--    --rwPrintWarnLog("对话完成刷出陷阱") 
--	--rwAddGenEvent(nTrap_GenId_3)    --完成任务陷阱
--	rwSendSystemMessage("任务完成 可以离开副本了!",1)
--end

--采集物
rwtNpcGroup[nCollect] = rwtNpcGroup[nCollect] or {}	    --物件
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect]["EndDialogId"]= 5068          --采集后对白
rwtNpcGroup[nCollect]["Awards"] = {}  
rwtNpcGroup[nCollect]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5068
--rwtNpcGroup[nCollect]["Func"] = function()
--	rwOpenNpcChatDialog(5068) 
--	--rwLinkPassCopyMap(nCopyMapId)
--end
 
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}  
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["DelTrap"] = 1
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}     
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["DynCreate"] = {nValve_1_GenId}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5067
		 

--怪物
--rwtMonsterGroup[200160] = {}
--rwtMonsterGroup[200160]["BattleCheckFunc"] = function()
----	rwPrintWarnLog("战前校验")
----	rwEnterMap(nCopyMapId,sPos)
----	rwPrintWarnLog("已回到原点")
----	rwSendSystemMessage(nCopyMapId,1)	  
--	return false
--end


--初始化
--function CopyMap_ZuoXiang_InitMap()--初始化函数
--   rwPrintLog("进入诡异的左相府，开始执行初始化函数")
--   rwAddGenEvent(nCollect_GenId)   --日记本
--   rwAddGenEvent(nTrap_GenId_2)    --陷阱2  
--   rwOpenNpcChatDialog(5065)             --进入副本打开对话
--   rwPrintLog("进入诡异的左相府")
--end
--切图后触发
--rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
--table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_ZuoXiang_InitMap)