
--风沙堡任务剧情副本



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

--副本ID
local nCopyMapId = 3027

--用户数据
local nUserRecordId = 1020 --(已使用：Data2 Data3)

--位置点

--相关任务
local nHeiChuiOpenTaskId = 10413
local nHeiChuiFinishTaskId = 10253

--目标任务
local nHeiChuiMainTaskId_1 = 60025
local nHeiChuiMainTaskId_2 = 60026

--副本位置NPC组
local nCopyMapEnterGroupId = 50016
local nCopyMapEnterGenId = 20030161
local nCopyMapEnterGenId_Yb = 20030269

--场景加载
local tLoadGenId = {}

--怪物
local nMonsterId_ChuiZi = 1000175
local nMonsterId_ShouWei = 1000176
local nMonsterId_MoXiYa = 1000177

--怪物组
--(3)
local nMonsterGroupId_ChuiZi = 200202
local nMonsterGroupId_ChuiZi_2 = 200209
--local nMonsterGroupId_ChuiZi_3 = 200210

--[[ gen_event Id Change
		20030162 20030163 20030164
		20030165 20030166 20030167 
		20030168 20030169 20030170
		20030171 20030172
--]]

table.insert(tLoadGenId,3027001)
table.insert(tLoadGenId,3027002)
table.insert(tLoadGenId,3027003)

--(3)
local nMonsterGroupId_ShouWei = 200203
--local nMonsterGroupId_ShouWei_2 = 200211
--local nMonsterGroupId_ShouWei_3 = 200212
table.insert(tLoadGenId,3027004)
table.insert(tLoadGenId,3027005)

--(1)
local nMonsterGroupId_MoXiYa = 200204
table.insert(tLoadGenId,3027006)

--宝箱
local nPandoraBox_1 = 40050
local nPandoraBox_2 = 40051 --陷阱宝箱
local nPandoraBox_3 = 40190 --超级宝箱
table.insert(tLoadGenId,3027007)
table.insert(tLoadGenId,3027010)
table.insert(tLoadGenId,3027011)

--奖励ID (服务端)
--local Award_ID = 1000030
local Award_ID_Box = 1000072
local Award_ID_MaxBox = 1000373

--陷阱
local nTrap_1 = 30289 -- 提示陷阱
local nTrap_2 = 30290 -- 离开触发陷阱
table.insert(tLoadGenId,3027008)
table.insert(tLoadGenId,3027009)

--场景对话
local nSceneDialogId_1 = 5172 -- 进入副本触发对白
local nSceneDialogId_2 = 5173 -- 获得物品触发对白
local nSceneDialogId_3 = 5174 -- 伪装成功触发对白
local nSceneDialogId_4 = 5175 -- 提示陷阱触发对白
local nSceneDialogId_5 = 5176 -- 触发场景动画对白1
local nSceneDialogId_6 = 5177 -- 触发场景动画对白2_1 
local nSceneDialogId_7 = 5178 -- 触发场景动画对白2_2
local nSceneDialogId_8 = 5179 -- 触发场景动画对白2_3
--local nSceneDialogId_9 = 6309 -- 开陷阱宝箱对白

local nSceneDialogId_Yb = 5223 -- 未接到主线任务时对白

--场景动画
local nStoryId_1 = 15901
local nStoryId_2 = 15902

local nCGId_OpenPandoraBox_2 = 15903

--物品ID
local nItemID_1 = 7000163 -- 首领的衣服

--BuffID
local nBuff_ChangeLookFace = 1001
local nBuff_ZhongDu = 500402

----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--副本目标
rwtTarget[nHeiChuiMainTaskId_1] = {}
rwtTarget[nHeiChuiMainTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20052]
rwtTarget[nHeiChuiMainTaskId_1]["KillMonsterGroup"] = nMonsterGroupId_ChuiZi
rwtTarget[nHeiChuiMainTaskId_1]["ReqCount"] = 1

rwtTarget[nHeiChuiMainTaskId_2] = {}
rwtTarget[nHeiChuiMainTaskId_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20053]
rwtTarget[nHeiChuiMainTaskId_2]["KillMonsterGroup"] = nMonsterGroupId_MoXiYa
rwtTarget[nHeiChuiMainTaskId_2]["ReqCount"] = 1

--剧情1结束
function CopyMap_HeiChuiBaoLei_StoryEnd_1()
	rwAutoBattle(3027006)
end
rwtCGFinish[nStoryId_1] = rwtCGFinish[nStoryId_1] or {}
table.insert(rwtCGFinish[nStoryId_1],CopyMap_HeiChuiBaoLei_StoryEnd_1)

--开启陷阱宝箱
function CopyMap_HeiChuiBaoLei_OpenBox_2()
	rwStatusAdd(nBuff_ZhongDu)
end
rwtCGFinish[nCGId_OpenPandoraBox_2] = rwtCGFinish[nCGId_OpenPandoraBox_2] or {}
table.insert(rwtCGFinish[nCGId_OpenPandoraBox_2],CopyMap_HeiChuiBaoLei_OpenBox_2)


rwtItem[nItemID_1] = rwtItem[nItemID_1] or {}
rwtItem[nItemID_1]["Function"] = function(nItemType)
	if rwTempDataGetValue(nUserRecordId, CONST_TEMP_DATA.Data3) == 0 then
		if rwItemDel(nItemID_1) then
			--rwPrintLog("风沙堡 - 首领的衣服 - Del")
			if rwTempDataGetValue(nUserRecordId, CONST_TEMP_DATA.Data2) == 0 then
				rwTempDataSet(nUserRecordId,1,CONST_TEMP_DATA.Data2)
				rwOpenNpcChatDialog(nSceneDialogId_3,CONST_NPCCHAT_TYPE.COPYMAP)
			end
			
			rwTempDataSet(nUserRecordId,1,CONST_TEMP_DATA.Data3)
			rwSpecialStatus_ChangeLookFace(1, rwUserGetId(), 0, 10050)
			rwStatusAdd(nBuff_ChangeLookFace)
			
		end
	end
	return true
end


--怪物战前(首领)
rwtMonsterGroup[nMonsterGroupId_ChuiZi_2] = {}
rwtMonsterGroup[nMonsterGroupId_ChuiZi_2]["BattleCheckFunc"] = function()
	if rwTempDataGetValue(nUserRecordId, CONST_TEMP_DATA.Data3) == 1 then
		rwTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data3)
		rwStatusRemove(nBuff_ChangeLookFace)
	end
	return true
end

--怪物战前(Boss)
rwtMonsterGroup[nMonsterGroupId_MoXiYa] = {}
rwtMonsterGroup[nMonsterGroupId_MoXiYa]["BattleCheckFunc"] = function()
	if rwTempDataGetValue(nUserRecordId, CONST_TEMP_DATA.Data3) == 1 then
		rwTempDataSet(nUserRecordId,0,CONST_TEMP_DATA.Data3)
		rwStatusRemove(nBuff_ChangeLookFace)
	end
	return true
end


--进入副本
rwtNpcGroup[nCopyMapEnterGroupId] = {}
rwtNpcGroup[nCopyMapEnterGroupId]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapEnterGroupId]["CopyMapList"] = {nCopyMapId}
rwtNpcGroup[nCopyMapEnterGroupId]["UnlockDialog"] = nSceneDialogId_Yb


--副本信息(简单难度)
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nHeiChuiFinishTaskId
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nCopyMapEnterGenId
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nHeiChuiMainTaskId_1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nHeiChuiMainTaskId_2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nSceneDialogId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data3



--宝箱
rwtNpcGroup[nPandoraBox_1] = rwtNpcGroup[nPandoraBox_1] or {}
rwtNpcGroup[nPandoraBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nPandoraBox_1]["Awards"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nPandoraBox_1
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Box  

--陷阱宝箱
rwtNpcGroup[nPandoraBox_2] = rwtNpcGroup[nPandoraBox_2] or {}
rwtNpcGroup[nPandoraBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nPandoraBox_2]["Awards"] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["RemoveChangeLook"] = {}       
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["RemoveChangeLook"]["TargetType"] = 1
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["RemoveChangeLook"]["LookFace"] = 10050
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["RemoveState"] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["RemoveState"]["StateID"] = nBuff_ChangeLookFace
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nUserRecordId
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["PlaySceneAnimation"]["Id"] = nCGId_OpenPandoraBox_2
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
--rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["AddEffect"] = {}
--rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["AddEffect"][1] = {}
--rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["AddEffect"][1]["TargetType"] = 7
--rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["AddEffect"][1]["TargetId"] = 0
--rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["AddEffect"][1]["EffectId"] = 2035
--rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][2]["AddEffect"][1]["Pos"] = "-22.56,1.94,9.29"




--超级宝箱
rwtNpcGroup[nPandoraBox_3] = rwtNpcGroup[nPandoraBox_3] or {}
rwtNpcGroup[nPandoraBox_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nPandoraBox_3]["Awards"] = {}
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"] = {}
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nPandoraBox_3
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nPandoraBox_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_MaxBox  


--陷阱


--提示陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}    
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nSceneDialogId_4


--触发陷阱
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["DelTrap"] = 1
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["RemoveChangeLook"] = {}       
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["RemoveChangeLook"]["TargetType"] = 1
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["RemoveChangeLook"]["LookFace"] = 10050
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["RemoveState"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["RemoveState"]["StateID"] = nBuff_ChangeLookFace
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nUserRecordId
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtNpcGroup[nTrap_2]["Awards"]["Events"][2] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][2]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_2]["Awards"]["Events"][2]["PlaySceneAnimation"]["Id"] = nStoryId_1
rwtNpcGroup[nTrap_2]["Awards"]["Events"][2]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[nTrap_2]["Awards"]["Events"][2]["PlaySceneAnimation"]["IsChgScenePlay"] = 0


