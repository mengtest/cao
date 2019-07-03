--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--玫瑰团驻地副本

--endregion

-------------------------------------------------- 数据定义 ------------------------------------------------------------
--副本ID
local nCopyMapId = 3021

rwtTarget[60020] = {}
rwtTarget[60020]["Title"] = tLuaText[LANGUAGE_CONFIG][20047]
rwtTarget[60020]["KillMonsterGroup"] = 200067
rwtTarget[60020]["ReqCount"] = 1

--物品
local nItemId_Key = 7000010 					--钥匙
local nItemId_YaoShui = 7000006 				--变身药水

--萨沙      （仅模型：  20431 3021011）
local nNpc_Girl = 3017    

local nNpcGroup_Girl = 20021
local nNpcGroup_Girl_GenId = 3021001

local nCollectGroup_Girl = 60230
local nCollectGroup_Girl_GenId = 3021010  

--场景动画id
local nDongHua1 = 15201			--BOSS：无变装
local nDongHua2 = 15204			--BOSS：有变装
local nDongHua3 = 15202			--进副本
-- local nDongHua4 = 15203			--贝拉

--怪物
local nMonsterGroupId_YinCanBoss = 200068  		--死亡掉落钥匙
local nMonsterGroupId_Boss = 200067       	    --黑色荆棘BOSS
-- local nMonsterGroupId_BaoXiang = 200432   		--草原蝎子宝箱怪：战前喊话 100211

local nMonster_YinCanBoss = 1001045
local nMonster_Boss = 1001044
-- local nMonster_BaoXiang = 1000744

local nMonster_Gen_YinCanBoss = 3021008
local nMonster_Gen_Boss = 3021009
-- local nMonster_Gen_BaoXiang = 3021015

--宝箱
local nBox_npcgroup_1 = 40002 
local nBox_npcgroup_2 = 40199

local nBox_Gen_Id_1 = 3021005 
-- local nBox_Gen_Id_2 = 3021012
local nBox_Gen_Id_3 = 3021013
-- local nBox_Gen_Id_4 = 3021014 	--宝箱怪

--陷阱
-- local nTrap_Hide = 30051   								--贝拉
-- local nTrap_Hide_GenId = 3021002 

local nTrap_Hide_Boss = 30052   						--boss
local nTrap_Hide_GenId_Boss = 3021003

--对白

local nDialogs_1 = 5001			--副本入口对白：一开始
local nDialogs_2 = 5156			--副本入口对白：萨沙
local nDialogs_3 = 5003			--解救萨沙对白.上
local nDialogs_4 = 5084			--解救萨沙对白.下
local nDialogs_5 = 5007			--贝拉战斗前
local nDialogs_6 = 5144			--贝拉战斗胜利
local nDialogs_7 = 6770			--使用变装药水
local nDialogs_8 = 6771			--BOSS对白：有变装
local nDialogs_9 = 5083			--BOSS对白：无变装
local nDialogs_10 = 5009 		--击杀BOSS
local nDialogs_11 = 6327 		--开宝箱怪


-------------------------------------------- 配置 ----------------------------------------------
--宝箱
rwtNpcGroup[nBox_npcgroup_1] = rwtNpcGroup[nBox_npcgroup_1] or {}  
rwtNpcGroup[nBox_npcgroup_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_npcgroup_1]["Awards"] = {}
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_npcgroup_1
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_npcgroup_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000046  

rwtNpcGroup[nBox_npcgroup_2] = rwtNpcGroup[nBox_npcgroup_2] or {}  
rwtNpcGroup[nBox_npcgroup_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_npcgroup_2]["Awards"] = {}
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_npcgroup_2
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000481  

-- rwtNpcGroup[nBox_npcgroup_2] = rwtNpcGroup[nBox_npcgroup_2] or {}  
-- rwtNpcGroup[nBox_npcgroup_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
-- rwtNpcGroup[nBox_npcgroup_2]["NotDel"] = 1
-- rwtNpcGroup[nBox_npcgroup_2]["Awards"] = {}
-- rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"] = {}
-- rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["AutoBattle"] = {}
-- rwtNpcGroup[nBox_npcgroup_2]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = nMonster_Gen_BaoXiang

-- function CopyMap_DaoZei_BaoXiangGuai()
   -- if rwHasGenEvent(nBox_Gen_Id_4) then
		-- rwDelGenEvent(nBox_Gen_Id_4)
    -- end
-- end

-- rwtMonsterGroup_Func[nMonsterGroupId_BaoXiang] = rwtMonsterGroup_Func[nMonsterGroupId_BaoXiang] or {} 
-- table.insert(rwtMonsterGroup_Func[nMonsterGroupId_BaoXiang],CopyMap_DaoZei_BaoXiangGuai)


--小女孩组
rwtNpcGroup[nNpcGroup_Girl] = {}
rwtNpcGroup[nNpcGroup_Girl]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Girl]["NpcId"]= nNpc_Girl
-- rwtNpcGroup[nNpcGroup_Girl]["Awards"] = {}  
-- rwtNpcGroup[nNpcGroup_Girl]["Awards"]["Events"] = {}   
-- rwtNpcGroup[nNpcGroup_Girl]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[nNpcGroup_Girl]["Awards"]["Events"][1]["OpenDialog"] = {}          
-- rwtNpcGroup[nNpcGroup_Girl]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogs_3

rwtNpc[nNpc_Girl] =rwtNpc[nNpc_Girl] or {}
rwtNpc[nNpc_Girl]["DialogId"] = {nDialogs_3}

-- rwtNpcGroup[nCollectGroup_Girl] = {}
-- rwtNpcGroup[nCollectGroup_Girl]["Type"] = CONST_NPCGROUP_TYPE.Collect
-- rwtNpcGroup[nCollectGroup_Girl]["DialogId"] = nDialogs_3
-- rwtNpcGroup[nCollectGroup_Girl]["Awards"] = {}  
-- rwtNpcGroup[nCollectGroup_Girl]["Awards"]["Events"] = {}   
-- rwtNpcGroup[nCollectGroup_Girl]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[nCollectGroup_Girl]["Awards"]["Events"][1]["OpenDialog"] = {}          
-- rwtNpcGroup[nCollectGroup_Girl]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogs_4

rwtDialog[nDialogs_3] = {}
rwtDialog[nDialogs_3]["CloseDialog"] = 1
-- rwtDialog[5084]["DialogEnd"] = function ()
	-- rwItemDel(nItemId_Key) 
-- end 
rwtDialog[nDialogs_3]["DialogEndInit"] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1] = {}

-- rwtDialog[5084]["DialogEndInit"]["Events"][2] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {nNpcGroup_Girl_GenId}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["AddEffect"] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["AddEffect"][1] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetId"] = nNpcGroup_Girl_GenId
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2044 
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["AddEffect"][1]["Pos"] = "-9,0.01186991,-24.84" 
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["DynDelete"][1] = nNpcGroup_Girl_GenId
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000047
rwtDialog[nDialogs_3]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--boss对白陷阱
rwtNpcGroup[nTrap_Hide_Boss] = rwtNpcGroup[nTrap_Hide_Boss] or {}
rwtNpcGroup[nTrap_Hide_Boss]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Hide_Boss]["DelTrap"] = 1
rwtNpcGroup[nTrap_Hide_Boss]["TrapFunc"] = function(NpcGroupType,NpcGroupId,GenEventId)
	local nUserId = rwUserGetId()
	if rwUserGetItemCount(nItemId_YaoShui) == 0 then
		rwSpecialStatus_RemoveLookFace(1,0,10022)
		rwStoryTrigger(nDongHua2,2,0,nUserId)
		-- rwSpecialStatus_RemoveLookFace(1,10022)
	else
	
		local nUserId = rwUserGetId()
		rwStoryTrigger(nDongHua1,2,0,nUserId)
	end
end



-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"] = {}  
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"] = {}   
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1] = {} 
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nDongHua1
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["RemoveChangeLook"] = {}       
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["RemoveChangeLook"]["TargetType"] = 1
-- rwtNpcGroup[nTrap_Hide_Boss]["Awards"]["Events"][1]["RemoveChangeLook"]["LookFace"] = 10022

--进入副本NPC
rwtNpcGroup[50001] = {}
rwtNpcGroup[50001]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50001]["UnlockDialog"] = 5211
rwtNpcGroup[50001]["Dialog"] = 5205
rwtNpcGroup[50001]["CopyMapList"] = {nCopyMapId}

--变身药水
rwtItem[nItemId_YaoShui] = rwtItem[nItemId_YaoShui] or {}
rwtItem[nItemId_YaoShui]["Awards"] = {}
rwtItem[nItemId_YaoShui]["Awards"]["Events"] = {}
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1] = {}
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"] = {}
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"]["TargetType"] = 1
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"]["TargetId"] = 0
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"]["LifeTime"] = 0
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"]["LookFace"] = 10022
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"]["Speed"] = 100
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["ChangeLook"]["Size"] = 100
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtItem[nItemId_YaoShui]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogs_7



--------------------------------------- 副本初始化 ---------------------------------------
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60020}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10140  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3021004 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nTrap_Hide_GenId_Boss}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = nDongHua3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.USERID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = 1
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"] = {}          
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"]["DialogId"] = nDialogs_2


--宝箱随机事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = nBox_Gen_Id_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "24.08,0.02,3.09"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 150
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = nBox_Gen_Id_2
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "20.2,0.02,-24"
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 320
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = nBox_Gen_Id_3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "6.5,0.02,-22.71"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 139.96
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nBox_Gen_Id_4

--------------------------------------- 废除 ---------------------------------------
-- local tPandoraBoxGen = {}

--萝莉的勇气（解救小女孩后获得）
-- local nStatus_Loli = 700005

-- local 
--罗兰镇佣兵任务
-- local tLuoLanZhenMercenaryTask = {20125,20126,20127,20128,20129}

-- rwtDialog[5002] = {}
-- rwtDialog[5002]["CloseDialog"] = 1
-- rwtDialog[5002]["DialogEnd"] = function ()
   -- if rwUserGetItemCount(nItemId_Key) < 1 then
		-- local nUserId = rwUserGetId()
		-- if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["DaiZei"] == 1 then
			-- rwStoryTrigger(15203, 2, 0)
			-- rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["DaiZei"] = 0
		-- end
   -- else      
       -- if CopyMap_DaoZei_IsUnlock() then
           -- CopyMap_DaoZei_UnLockGirl()	   
           -- return true
       -- else      
           -- return false
       -- end 
   -- end  
   -- rwOpenNpcChatDialog(tDialog8[nIndex])
-- end 

--贝拉死亡小女孩创建逻辑
-- function CopyMap_DaoZei_BeiLa_Death()
	-- if rwHasGenEvent(nNpcGroup_Girl_GenId) then
		-- rwDelGenEvent(nNpcGroup_Girl_GenId)	
	-- end
	-- if not rwHasGenEvent(nCollectGroup_Girl_GenId) then
		-- rwAddGenEvent(nCollectGroup_Girl_GenId)
		-- rwAddGenEvent(3021011)
    -- end
-- end

-- rwtMonsterGroup_Func[200068] = rwtMonsterGroup_Func[200068] or {} 
-- table.insert(rwtMonsterGroup_Func[200068],CopyMap_DaoZei_BeiLa_Death)


--选择对白
-- function CopyMap_DaoZei_CheckDialog()
   -- if rwUserGetItemCount(nItemId_Key) < 1 then
		-- rwOpenNpcChatDialog(5002,CONST_NPCCHAT_TYPE.NPC)
   -- else 
		-- rwOpenNpcChatDialog(5003,CONST_NPCCHAT_TYPE.NPC)
   -- end     
-- end

-- 判断能否解救
-- function CopyMap_DaoZei_IsUnlock()
   -- if rwUserGetItemCount(nItemId_Key) < 1 then
       -- return false
   -- else      
       -- return true
   -- end  
-- end

-- 解救小女孩
-- function CopyMap_DaoZei_UnLockGirl()
    -- 删除钥匙道具
    -- if rwItemDel(nItemId_Key) then	 
		-- 解救后删除小女孩 
		-- rwOpenNpcChatDialog(5084,CONST_NPCCHAT_TYPE.NPC)
    -- end

-- end

