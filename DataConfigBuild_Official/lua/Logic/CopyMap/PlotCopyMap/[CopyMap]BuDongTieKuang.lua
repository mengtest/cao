
--枭鹰矿洞任务剧情副本



----------------------------------------------------------------------------------
------------------------------------数据------------------------------------------
----------------------------------------------------------------------------------

local tCopyMap_TieKuang = {}

--副本ID
tCopyMap_TieKuang["nCopyMapId"] = 3055

--用户数据( 存储副本采矿次数 )
tCopyMap_TieKuang["nUserRecordId"] = 1094

--位置点

--相关任务
local nTieKuangFinishTaskId = 10456

--目标任务
tCopyMap_TieKuang["nMainTaskId_1"] = 60087 --采集铁矿


--副本位置NPC组
local nCopyMapEnterGroupId = 50043
local nCopyMapEnterGenId = 20050044


--场景加载
local tLoadGenId = {}

--怪物
local nMonsterId_XiaoYing = 9000213
--local nMonsterId_HeCheng = 9000214
--local nMonsterId_HaiMo = 9000215
--local nMonsterId_ChiHu = 9000410
--local nMonsterId_HWX = 9000411

--怪物组
--(1 3)合成怪 + 荒野赤狐
--local nMonsterGroupId_HeCheng1 = 200312
--local nMonsterGroupId_HeCheng2 = 200323
table.insert(tLoadGenId,3055004)
table.insert(tLoadGenId,3055005)


--(2 4)海魔 + 褐尾蝎
--local nMonsterGroupId_HaiMo1 = 200313
--local nMonsterGroupId_HaiMo2 = 200324
table.insert(tLoadGenId,3055006)
table.insert(tLoadGenId,3055007)


--(4z)枭鹰
local nMonsterGroupId_XiaoYing1 = 200311
local nMonsterGroup_XiaoYing_GenId1 = 3055008
table.insert(tLoadGenId,nMonsterGroup_XiaoYing_GenId1)


--枭鹰Buff
local nStatusType = 700007



--宝箱
tCopyMap_TieKuang["nBox1"] = 40246
tCopyMap_TieKuang["nBox2"] = 40247
local nBox1_GenId = 3055009
local nBox2_GenId = 3055010


--奖励ID (服务端)
--local Award_ID_FuBen = 1000372
local Award_ID_Box1 = 1000458
local Award_ID_Box2 = 1000459

--陷阱

--采集物(铁矿)
tCopyMap_TieKuang["nCollect1"] = 60139
tCopyMap_TieKuang["nCollect2"] = 60187
tCopyMap_TieKuang["nCollect3"] = 60188


--local nCollect_GenId1 = 3055001
--local nCollect_GenId2 = 3055002
--local nCollect_GenId3 = 3055003
table.insert(tLoadGenId,3055001)
table.insert(tLoadGenId,3055002)
table.insert(tLoadGenId,3055003)


local tCollectBuild = {}
tCollectBuild[1] = 3055001
tCollectBuild[2] = 3055002
tCollectBuild[3] = 3055003


--场景对话
--local nSceneDialogId_1 = 5312 -- 进入副本触发对白
--local nSceneDialogId_2 = 5313 -- 采集铁矿触发对白
--local nSceneDialogId_3 = 5314 -- 杀巡逻怪触发对白
--local nSceneDialogId_4 = 5315 -- 杀枭鹰触发对白
--local nSceneDialogId_5 = 5316 -- 采集铁矿触发对白2

local nSceneDialogId_Yb1 = 6213 -- 未接到主线任务时对白
--local nSceneDialogId_Yb2 = 6214 -- 已经完成主线未接到佣兵任务时对白

--场景动画


--物品ID


----------------------------------------------------------------------------------
------------------------------------逻辑------------------------------------------
----------------------------------------------------------------------------------

--枭鹰生成逻辑
function CopyMap_BuDongTieKuang_XiaoYingBorn()
	local nCount = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data1)
	if nStatusType then
		if not rwHasGenEvent(nMonsterGroup_XiaoYing_GenId1) then
			rwAddGenEvent(nMonsterGroup_XiaoYing_GenId1)
		else
			rwDelGenEvent(nMonsterGroup_XiaoYing_GenId1)
			rwAddGenEvent(nMonsterGroup_XiaoYing_GenId1)
		end
		for k=1,nCount do
			rwMonsterAddStatus(nMonsterGroup_XiaoYing_GenId1, 9000213, nStatusType)
		end
		rwAutoBattle(nMonsterGroup_XiaoYing_GenId1)
	end
end

--战巡逻怪逻辑
function CopyMap_BuDongTieKuangMonster1_Dead()
	local nCount = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data1)
	if nCount == 0 then
		rwOpenNpcChatDialog(5314,CONST_NPCCHAT_TYPE.COPYMAP)
	end
	rwUserTempDataSet(tCopyMap_TieKuang["nUserRecordId"],nCount+1,CONST_TEMP_DATA.Data1)
end


rwtMonsterGroup_Func[200312] = rwtMonsterGroup_Func[200312] or {}
table.insert(rwtMonsterGroup_Func[200312],CopyMap_BuDongTieKuangMonster1_Dead)

rwtMonsterGroup_Func[200313] = rwtMonsterGroup_Func[200313] or {}
table.insert(rwtMonsterGroup_Func[200313],CopyMap_BuDongTieKuangMonster1_Dead)

rwtMonsterGroup_Func[200323] = rwtMonsterGroup_Func[200323] or {}
table.insert(rwtMonsterGroup_Func[200323],CopyMap_BuDongTieKuangMonster1_Dead)

rwtMonsterGroup_Func[200324] = rwtMonsterGroup_Func[200324] or {}
table.insert(rwtMonsterGroup_Func[200324],CopyMap_BuDongTieKuangMonster1_Dead)



--战枭鹰逻辑
function CopyMap_BuDongTieKuangMonster2_Dead()
	local nCount = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data2)
	local nCount_2 = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data3)
	if nCount_2 and nCount_2 ~= 0 then
		rwDelGenEvent(tCollectBuild[nCount_2]) 
		rwUserTempDataSet(tCopyMap_TieKuang["nUserRecordId"],0,CONST_TEMP_DATA.Data3)
	end
	if nCount < 2 then
		rwOpenNpcChatDialog(5315,CONST_NPCCHAT_TYPE.COPYMAP)
		rwUserTempDataSet(tCopyMap_TieKuang["nUserRecordId"],nCount+1,CONST_TEMP_DATA.Data2)
	else
		rwOpenNpcChatDialog(5316,CONST_NPCCHAT_TYPE.COPYMAP)
	end
end


rwtMonsterGroup_Func[nMonsterGroupId_XiaoYing1] = rwtMonsterGroup_Func[nMonsterGroupId_XiaoYing1] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_XiaoYing1],CopyMap_BuDongTieKuangMonster2_Dead)



--采集逻辑
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]] = rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]] or {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"] = {}  
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5313
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][2] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 2
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["SetValue"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect1"]]["Func"] = function()
	local nCount = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data4)
	if nCount == 2 then
		CopyMap_BuDongTieKuang_XiaoYingBorn()
	end
end



rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]] = rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]] or {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5313
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 2
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][2] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 2
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["SetValue"] = 2
rwtNpcGroup[tCopyMap_TieKuang["nCollect2"]]["Func"] = function()
	local nCount = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data4)
	if nCount == 2 then
		CopyMap_BuDongTieKuang_XiaoYingBorn()
	end
end

rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]] = rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]] or {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Type"] =  CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["NotDel"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5313
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 3
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][2] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 1
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 2
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2] = {}
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["TempDataID"] = tCopyMap_TieKuang["nUserRecordId"]
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][2]["SetValue"] = 3
rwtNpcGroup[tCopyMap_TieKuang["nCollect3"]]["Func"] = function()
	local nCount = rwTempDataGetValue(tCopyMap_TieKuang["nUserRecordId"], CONST_TEMP_DATA.Data4)
	if nCount == 2 then
		CopyMap_BuDongTieKuang_XiaoYingBorn()
	end
end

rwtDialog[5313] = rwtDialog[5313] or {}
rwtDialog[5313]["DialogEnd"] = function()
	CopyMap_BuDongTieKuang_XiaoYingBorn()
end




--进入副本
rwtNpcGroup[nCopyMapEnterGroupId] = {}
rwtNpcGroup[nCopyMapEnterGroupId]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMapEnterGroupId]["CopyMapList"] = {tCopyMap_TieKuang["nCopyMapId"]}
rwtNpcGroup[nCopyMapEnterGroupId]["UnlockDialog"] = nSceneDialogId_Yb1
--rwtNpcGroup[nCopyMapEnterGroupId]["Dialog"] = nSceneDialogId_Yb2


--副本目标
rwtTarget[tCopyMap_TieKuang["nMainTaskId_1"]] = {}
rwtTarget[tCopyMap_TieKuang["nMainTaskId_1"]]["Title"] = tLuaText[LANGUAGE_CONFIG][20046]
rwtTarget[tCopyMap_TieKuang["nMainTaskId_1"]]["KillMonsterGroup"] = nMonsterGroupId_XiaoYing1
rwtTarget[tCopyMap_TieKuang["nMainTaskId_1"]]["ReqCount"] = 3


--副本信息(简单难度)
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]] = rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]] or {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["ReqLev"] = 1
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["Difficulty"] = 1
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["EnterNpcMap"] = 2005
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["ChangeNpcTask"] = nTieKuangFinishTaskId
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["EnterNpcGen"] = nCopyMapEnterGenId
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["TargetStepNum"] = 1 
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["Target1"] = {tCopyMap_TieKuang["nMainTaskId_1"]}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["Target99"] = {60072}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5312
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] =tCopyMap_TieKuang["nUserRecordId"]
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] =tCopyMap_TieKuang["nUserRecordId"]
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["TempDataID"] =tCopyMap_TieKuang["nUserRecordId"]
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][4] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["TempDataID"] =tCopyMap_TieKuang["nUserRecordId"]
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["SetValue"] = 0
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["DataIndex"] = CONST_TEMP_DATA.Data4
--副本初始化 随机事件
--(随机宝箱)
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "30.93,0.46,19.06"
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -30
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "0.05,1.79,15.39"
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = -20
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-14.33,0.31,-18.67"
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 50
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 2
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nBox1_GenId
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[tCopyMap_TieKuang["nCopyMapId"]]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = nBox2_GenId


--宝箱

--宝箱1
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]] = rwtNpcGroup[tCopyMap_TieKuang["nBox1"]] or {}
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_TieKuang["nBox1"]
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_TieKuang["nBox1"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Box1


--宝箱2
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]] = rwtNpcGroup[tCopyMap_TieKuang["nBox2"]] or {}
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCopyMap_TieKuang["nBox2"]
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCopyMap_TieKuang["nBox2"]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = Award_ID_Box2


--陷阱

