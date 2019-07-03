--region *.lua
--Date
--开服七日任务第6天
--by:nizw
--date:2018-12-21


--endregion


------***************************数据定义***************************----
-------任务id-------
local tDay6TaskId = {}
local nTimeData = 1146 --七日任务掩码
-- 阿克莱斯
tDay6TaskId.Task1 = 70066	--出发！
tDay6TaskId.Task2 = 70067	--阿克莱斯桥
tDay6TaskId.Task3 = 70068	--左相府

-- 法石遗迹
tDay6TaskId.Task4 = 70069	--法石遗迹
tDay6TaskId.Task5 = 70070	--突生异象
tDay6TaskId.Task6 = 70071	--调查异象
-------对白id-------
local tDialog = {}

tDialog.Task1 = 11865
tDialog.Task2 = 11866
tDialog.Task3 = 11867
tDialog.Task4 = 11868
tDialog.Task5 = 11869
tDialog.Task6 = 11871

-------NPCGroup-------
--陷阱
local tTrap = {}
tTrap.QiaoZhongYang = 30565
tTrap.QiaoZhongYang_GenId = 20010184

tTrap.ZuoXiangFu = 30566
tTrap.ZuoXiangFu_GenId = 20010185

tTrap.WaiWei = 30567
tTrap.WaiWei_GenId = 20010186

tTrap.ZhenZhong = 30568
tTrap.ZhenZhong_GenId = 20010187

--采集物
--雕像
local nCollect_DiaoXiang = 60315
local nCollect_DiaoXiang_GenId = 20010188


-------npcid-------
--导游卡卡
local nNpcId_1 = 3591
--乔斯朗
local nNpcId_2 = 3592
--乌萨
local nNpcId_3 = 3593

-------MonsterGroup-------
--遗迹侍魂
local nMonsterGroup_1 = 900400
local nMonsterGroup_GenId = 20010189


-------monster-------
--遗迹侍魂
local nMonster_1 = 9000320

-----------奖励id------------------
local tAward_Id = {}
tAward_Id[1] = 2000250
tAward_Id[2] = 2000251

------***************************逻辑***************************----

-----------------------------------NPC组-----------
--陷阱
rwtNpcGroup[tTrap.QiaoZhongYang] = rwtNpcGroup[tTrap.QiaoZhongYang] or {}
rwtNpcGroup[tTrap.QiaoZhongYang]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.ZuoXiangFu] = rwtNpcGroup[tTrap.ZuoXiangFu] or {}
rwtNpcGroup[tTrap.ZuoXiangFu]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.WaiWei] = rwtNpcGroup[tTrap.WaiWei] or {}
rwtNpcGroup[tTrap.WaiWei]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.ZhenZhong] = rwtNpcGroup[tTrap.ZhenZhong] or {}
rwtNpcGroup[tTrap.ZhenZhong]["Type"] = CONST_NPCGROUP_TYPE.Trap

--采集物
rwtNpcGroup[nCollect_DiaoXiang] = rwtNpcGroup[nCollect_DiaoXiang] or {}     
rwtNpcGroup[nCollect_DiaoXiang]["Type"] = CONST_NPCGROUP_TYPE.Collect
-- rwtNpcGroup[nCollect_DiaoXiang]["DialogId"] = 11870


------***************************任务***************************----
--------------------------------------罗兰大帝雕像-----------------------------
--出发！
rwtTask[tDay6TaskId.Task1] = {}
rwtTask[tDay6TaskId.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][21453]
rwtTask[tDay6TaskId.Task1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tDay6TaskId.Task1]["NextTaskId"] = tDay6TaskId.Task2
rwtTask[tDay6TaskId.Task1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tDay6TaskId.Task1]["DialogId"] = tDialog.Task1
rwtTask[tDay6TaskId.Task1]["AutoTaskDialog"] = tDialog.Task1

--阿克莱斯桥
rwtTask[tDay6TaskId.Task2] = {}
rwtTask[tDay6TaskId.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][21453]
rwtTask[tDay6TaskId.Task2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tDay6TaskId.Task2]["PreTaskId"] = tDay6TaskId.Task1
rwtTask[tDay6TaskId.Task2]["NextTaskId"] = tDay6TaskId.Task3
rwtTask[tDay6TaskId.Task2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tDay6TaskId.Task2]["DialogId"] = tDialog.Task2
rwtTask[tDay6TaskId.Task2]["ReqTrap1"] = tTrap.QiaoZhongYang

rwtTask[tDay6TaskId.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tDay6TaskId.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tDay6TaskId.Task2]["DynaNpcGroupGen"][1]["GenId"] = tTrap.QiaoZhongYang_GenId
rwtTask[tDay6TaskId.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tDay6TaskId.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tDay6TaskId.Task2]["StartAutoWay"] = {}
rwtTask[tDay6TaskId.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tDay6TaskId.Task2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tDay6TaskId.Task2]["StartAutoWay"]["FindWayGroupId"] = tTrap.QiaoZhongYang
rwtTask[tDay6TaskId.Task2]["StartAutoWay"]["FindWayGenId"] = tTrap.QiaoZhongYang_GenId


--左相府
rwtTask[tDay6TaskId.Task3] = {}
rwtTask[tDay6TaskId.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][21453]
rwtTask[tDay6TaskId.Task3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tDay6TaskId.Task3]["PreTaskId"] = tDay6TaskId.Task2
rwtTask[tDay6TaskId.Task3]["NextTaskId"] = tDay6TaskId.Task4
rwtTask[tDay6TaskId.Task3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tDay6TaskId.Task3]["DialogId"] = tDialog.Task3
rwtTask[tDay6TaskId.Task3]["ReqTrap1"] = tTrap.ZuoXiangFu

rwtTask[tDay6TaskId.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tDay6TaskId.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tDay6TaskId.Task3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.ZuoXiangFu_GenId
rwtTask[tDay6TaskId.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tDay6TaskId.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tDay6TaskId.Task3]["StartAutoWay"] = {}
rwtTask[tDay6TaskId.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tDay6TaskId.Task3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tDay6TaskId.Task3]["StartAutoWay"]["FindWayGroupId"] = tTrap.ZuoXiangFu
rwtTask[tDay6TaskId.Task3]["StartAutoWay"]["FindWayGenId"] = tTrap.ZuoXiangFu_GenId

rwtTask[tDay6TaskId.Task3]["Awards"] = {}
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"] = {}
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"][1] = {}
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[1]
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tDay6TaskId.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tDay6TaskId.Task3


--------------------------------------法石遗迹-----------------------------
--法石遗迹
rwtTask[tDay6TaskId.Task4] = {}
rwtTask[tDay6TaskId.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][21454]
rwtTask[tDay6TaskId.Task4]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tDay6TaskId.Task4]["PreTaskId"] = tDay6TaskId.Task3
rwtTask[tDay6TaskId.Task4]["NextTaskId"] = tDay6TaskId.Task5
rwtTask[tDay6TaskId.Task4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tDay6TaskId.Task4]["DialogId"] = tDialog.Task4
rwtTask[tDay6TaskId.Task4]["ReqTrap1"] = tTrap.WaiWei

rwtTask[tDay6TaskId.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tDay6TaskId.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tDay6TaskId.Task4]["DynaNpcGroupGen"][1]["GenId"] = tTrap.WaiWei_GenId
rwtTask[tDay6TaskId.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tDay6TaskId.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tDay6TaskId.Task4]["StartAutoWay"] = {}
rwtTask[tDay6TaskId.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tDay6TaskId.Task4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tDay6TaskId.Task4]["StartAutoWay"]["FindWayGroupId"] = tTrap.WaiWei
rwtTask[tDay6TaskId.Task4]["StartAutoWay"]["FindWayGenId"] = tTrap.WaiWei_GenId

--突生异象
rwtTask[tDay6TaskId.Task5] = {}
rwtTask[tDay6TaskId.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][21454]
rwtTask[tDay6TaskId.Task5]["PreTaskId"] = tDay6TaskId.Task4
rwtTask[tDay6TaskId.Task5]["NextTaskId"] = tDay6TaskId.Task6
rwtTask[tDay6TaskId.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tDay6TaskId.Task5]["DialogId"] = tDialog.Task5
rwtTask[tDay6TaskId.Task5]["ReqTrap1"] = tTrap.ZhenZhong
rwtTask[tDay6TaskId.Task5]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][1]["GenId"] = tTrap.ZhenZhong_GenId
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tDay6TaskId.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tDay6TaskId.Task5]["MonsterGroupGenId"] = nMonsterGroup_GenId
rwtTask[tDay6TaskId.Task5]["KillMonsterGroup1"]= nMonsterGroup_1

rwtTask[tDay6TaskId.Task5]["StartAutoWay"] = {}
rwtTask[tDay6TaskId.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tDay6TaskId.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tDay6TaskId.Task5]["StartAutoWay"]["FindWayGroupId"] = tTrap.ZhenZhong
rwtTask[tDay6TaskId.Task5]["StartAutoWay"]["FindWayGenId"] = tTrap.ZhenZhong_GenId


--调查异象
rwtTask[tDay6TaskId.Task6] = {}
rwtTask[tDay6TaskId.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][21454]
rwtTask[tDay6TaskId.Task6]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tDay6TaskId.Task6]["PreTaskId"] = tDay6TaskId.Task5
rwtTask[tDay6TaskId.Task6]["NextTaskId"] = tDay6TaskId.Task7
rwtTask[tDay6TaskId.Task6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tDay6TaskId.Task6]["DialogId"] = tDialog.Task6
rwtTask[tDay6TaskId.Task6]["ReqCollectId1"] = nCollect_DiaoXiang

rwtTask[tDay6TaskId.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tDay6TaskId.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tDay6TaskId.Task6]["DynaNpcGroupGen"][1]["GenId"] = nCollect_DiaoXiang_GenId
rwtTask[tDay6TaskId.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tDay6TaskId.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tDay6TaskId.Task6]["StartAutoWay"] = {}
rwtTask[tDay6TaskId.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tDay6TaskId.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tDay6TaskId.Task6]["StartAutoWay"]["FindWayGroupId"] = nCollect_DiaoXiang
rwtTask[tDay6TaskId.Task6]["StartAutoWay"]["FindWayGenId"] = nCollect_DiaoXiang_GenId

rwtTask[tDay6TaskId.Task6]["Awards"] = {}
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"] = {}
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1] = {}
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Id[2]
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tDay6TaskId.Task6
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtTask[tDay6TaskId.Task6]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tDay6TaskId.Task6]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,6) then
		rwAddUserRecordData(7,6)
	end 
end
