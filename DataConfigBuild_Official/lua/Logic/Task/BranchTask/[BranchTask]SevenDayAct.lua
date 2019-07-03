--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
------------------------------------------------------------------------------------------------------------------------
--第一天任务
----切屏，检查七日任务是否完成，判断是否刷出七日任务NPC赛罗
function BranchTask_SevenDayAct()
	local nTimeData = 1146 --七日任务掩码

--	if not rwTempDataIsExist(nTimeData) then --没有接受过七日任务
--		return
--	end
	if rwTempDataGetValue(nTimeData,CONST_TEMP_DATA.Data7) == 1 then   --七日任务全部完成，不刷出赛罗
		return
	end
	
	rwAddGenEvent(1000169)

end
rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000]or {}
table.insert(rwtSceneLoad_Func[1000],BranchTask_SevenDayAct)


local nTimeData = 1146 --七日任务掩码
local tSevenDayAct_Day1 = {}
--保卫帝国
tSevenDayAct_Day1.Task_1 = 70025 --塞罗的呼唤
tSevenDayAct_Day1.Task_2 = 70026 --修复法阵
--度日如年
tSevenDayAct_Day1.Task_3 = 70027 --世说新语
tSevenDayAct_Day1.Task_4 = 70028 --超级歌姬
tSevenDayAct_Day1.Task_5 = 70029 --慷慨的商人
tSevenDayAct_Day1.Task_6 = 70030 --米尼的馈赠 
--旅程的开始
tSevenDayAct_Day1.Task_7 = 70031 --联系塞罗
tSevenDayAct_Day1.Task_8 = 70032 --修复魔法阵
tSevenDayAct_Day1.Task_9 = 70033 --七日旅游团

--奖励
local tAwardId = {}
tAwardId[1] = 2000247   -- 保卫帝国
tAwardId[2] = 2000248   -- 度日如年
tAwardId[3] = 2000249   -- 旅程的开始

local nMapId = 1000

--local tNpc = {}
--tNpc.Saien = 3574
--tNpc.Mamen = 1175 
--tNpc.Luna = 3230 
--tNpc.Xide = 3575 
--tNpc.Mini = 3576

local tSingleNpc = {}
tSingleNpc.Saien = 20528  
tSingleNpc.Mamen = 20153 
tSingleNpc.Luna = 20151 
tSingleNpc.Xide = 20383 
tSingleNpc.Mini = 20234

--NPCID
local tSingleNpc = {}

tSingleNpc.nNpc_Saien  = 3574
tSingleNpc.nNpcGroup_Saien  = 20528
tSingleNpc.nNpcGroup_GenId_Saien  = 1000169
rwtNpc[tSingleNpc.nNpc_Saien] = rwtNpc[tSingleNpc.nNpc_Saien ] or {}
--rwtNpc[tSingleNpc.nNpc_Saien]["DialogId"] = {1665,1666,1667} 
rwtNpcGroup[tSingleNpc.nNpcGroup_Saien ] = rwtNpcGroup[tSingleNpc.nNpcGroup_Saien ] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_Saien ]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_Saien ]["NpcId"] = tSingleNpc.nNpc_Saien 
---------------------------------------------------------------------------
------赛罗接任务临时用逻辑-------------------------------------------------
--七日任务每日id
local tSevenDayAct_Day = {}
tSevenDayAct_Day[1] = 70026
tSevenDayAct_Day[2] = 70035
tSevenDayAct_Day[3] = 70043
tSevenDayAct_Day[4] = 70051
tSevenDayAct_Day[5] = 70059
tSevenDayAct_Day[6] = 70066
tSevenDayAct_Day[7] = 70196
--七日任务完成前故事对白
local tSevenDayAct_BeFore_Task = {}
tSevenDayAct_BeFore_Task[1] = 11935
tSevenDayAct_BeFore_Task[2] = 11937
tSevenDayAct_BeFore_Task[3] = 11939
tSevenDayAct_BeFore_Task[4] = 11941
tSevenDayAct_BeFore_Task[5] = 11943
tSevenDayAct_BeFore_Task[6] = 11945
tSevenDayAct_BeFore_Task[7] = 11947

--七日任务完成后故事对白
local tSevenDayAct_Aft_Task = {}
tSevenDayAct_Aft_Task[1] = 11936
tSevenDayAct_Aft_Task[2] = 11938
tSevenDayAct_Aft_Task[3] = 11940
tSevenDayAct_Aft_Task[4] = 11942
tSevenDayAct_Aft_Task[5] = 11944
tSevenDayAct_Aft_Task[6] = 11946
tSevenDayAct_Aft_Task[7] = 11948

--rwtNpc[tSingleNpc.nNpc_Saien]["ChkOpen"] = true
--rwtNpc[tSingleNpc.nNpc_Saien]["NotOpenDialogId"] = {1022,1023,1024}
--rwtNpc[tSingleNpc.nNpc_Saien]["TaskIngDialogId"] = {1665,1666,1667}
rwtNpc[tSingleNpc.nNpc_Saien]["DialogId"] = {11934} 
rwtNpc[tSingleNpc.nNpc_Saien]["Option"] = {}
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][1] = {}
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][1]["Title"]= "参加七日之旅"
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][1]["State"] = 1
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][1]["Chk"] = function(nNpcId)

	if rwTempDataGetValue(nTimeData,CONST_TEMP_DATA.Data7) == 1 then   --七日任务全部完成，不刷出
		return false
	end
	local tSevenDayTask = rwTaskGetListByType(CONST_TASK_TYPE.SEVENTDAY)
	--身上已有七日任务
	if tSevenDayTask and #tSevenDayTask > 0 then
		return false
    end
	--掩码未隔天
	if not rwTempDataDayJudgment(1146) then
		if rwTempDataGetValue(1146,CONST_TEMP_DATA.Data1) == 1 then 
			--rwSendSystemMessage("掩码未隔天")
			return false
		end
	end 
	return true
end
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][1]["Func"] = function(nNpcTypeId)  --点击按钮触发

	local tSevenDayTask = rwTaskGetListByType(CONST_TASK_TYPE.SEVENTDAY)
	if tSevenDayTask and #tSevenDayTask > 0 then
		--rwSendSystemMessage("身上已有七日任务")
		return
    end
	--判断掩码
	local nMarkSevenAct = 0
	for i = 1, 7 do
		if not rwHasUserRecordData(7,i) then
			nMarkSevenAct = i
			--rwSendSystemMessage("做到第.."..nMarkSevenAct.."天")
			break
		end
	end
	if nMarkSevenAct == 0 then
		return
	end
	--接任务
	rwLinkSevenDayTaskAccept(tSevenDayAct_Day[nMarkSevenAct],nMarkSevenAct)
	return
end

rwtNpc[tSingleNpc.nNpc_Saien]["Option"][2] = {}
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][2]["Title"]= "七日故事"
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][2]["State"] = 1	
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][2]["Chk"] = function(nNpcId)
	return true
end									
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][2]["Func"] = function(nNpcTypeId)  --点击按钮触发
--判断做到哪一个任务
	--判断掩码
	local nMarkSevenAct = 0
	for i = 1, 7 do
		if not rwHasUserRecordData(7,i) then
			nMarkSevenAct = i
			break
		end
	end
	--时间
	if nMarkSevenAct == 1 then
		rwOpenNpcChatDialog(tSevenDayAct_BeFore_Task[1],CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)	
		return
	else 
		if not rwTempDataDayJudgment(1146) then
			rwOpenNpcChatDialog(tSevenDayAct_Aft_Task[nMarkSevenAct-1],CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
		else
			rwOpenNpcChatDialog(tSevenDayAct_BeFore_Task[nMarkSevenAct],CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
		end
	end
end

rwtNpc[tSingleNpc.nNpc_Saien]["Option"][3] = {}
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][3]["Title"]= "规则介绍"
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][3]["State"] = 1
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][3]["Chk"] = function(nNpcId)
	return true
end									
rwtNpc[tSingleNpc.nNpc_Saien]["Option"][3]["Func"] = function(nNpcTypeId)  --点击按钮触发
	rwOpenNpcChatDialog(11949,CONST_NPCCHAT_TYPE.NPC,nNpcTypeId)
	return
end

--rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4] = {}
--rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4]["Title"]= "路过看看"
--rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4]["State"] = 1
--rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4]["Chk"] = function(nNpcId)
--	return true
--end	
----rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4]["Chk"] = function(nNpcId)end										
----rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4]["TaskChk"] = function(nNpcId) --判断是否显示TaskIngDialogId end										
--rwtNpc[tSingleNpc.nNpc_Saien]["Option"][4]["Func"] = function(nNpcTypeId)  --点击按钮触发
--	return
--end



----------------------------------------------------------------------------
tSingleNpc.nNpc_Mamen = 1175
tSingleNpc.nNpcGroup_Mamen = 20153
tSingleNpc.nNpcGroup_GenId_Mamen = 1000019

tSingleNpc.nNpc_Luna  = 3230 
tSingleNpc.nNpcGroup_Luna  = 20151
tSingleNpc.nNpcGroup_GenId_Luna  = 1000017

tSingleNpc.nNpc_Xide = 3358
tSingleNpc.nNpcGroup_Xide = 20383
tSingleNpc.nNpcGroup_GenId_Xide = 1000113
--rwtNpc[tSingleNpc.nNpc_Xide ] = rwtNpc[tSingleNpc.nNpc_Xide ] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_Xide ] = rwtNpcGroup[tSingleNpc.nNpcGroup_Xide ] or {} 
--rwtNpcGroup[tSingleNpc.nNpcGroup_Xide ]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_Xide ]["NpcId"] = tSingleNpc.nNpc_Xide 

tSingleNpc.nNpc_Mini = 3193
tSingleNpc.nNpcGroup_Mini = 20234
tSingleNpc.nNpcGroup_GenId_Mini = 1000053
--rwtNpc[tSingleNpc.nNpc_Mini ] = rwtNpc[tSingleNpc.nNpc_Mini ] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_Mini ] = rwtNpcGroup[tSingleNpc.nNpcGroup_Mini ] or {} 
--rwtNpcGroup[tSingleNpc.nNpcGroup_Mini ]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_Mini ]["NpcId"] = tSingleNpc.nNpc_Mini 



--对话ID
local tDialog = {}
tDialog.nTask1 = 11804
tDialog.nTask2 = 11805
tDialog.nTask3 = 11806
tDialog.nTask4 = 11807
tDialog.nTask5 = 11808
tDialog.nTask6 = 11809
tDialog.nTask7 = 11810
tDialog.nTask8 = 11812
tDialog.nTask9 = 11813

--采集物ID
local tCollect= {}

tCollect.nCollect_1 = 60311
tCollect.nCollect_GenId_1 = 1000170
rwtNpcGroup[tCollect.nCollect_1] = rwtNpcGroup[tCollect.nCollect_1] or {} 
rwtNpcGroup[tCollect.nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_2 = 60312
tCollect.nCollect_GenId_2 = 1000171
rwtNpcGroup[tCollect.nCollect_2] = rwtNpcGroup[tCollect.nCollect_2] or {} 
rwtNpcGroup[tCollect.nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_2]["DialogId"] = 11811
rwtNpcGroup[tCollect.nCollect_2]["Awards"] = {}  
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"][1]["AddEffect"] = {}
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"][1]["AddEffect"][1] = {}
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"][1]["AddEffect"][1]["TargetId"] = 1000170
rwtNpcGroup[tCollect.nCollect_2]["Awards"]["Events"][1]["AddEffect"][1]["EffectId"] = 2018

--------------------------------------------------------------------
-----------------------------保卫帝国-------------------------------
--------------------------------------------------------------------
--塞罗的呼唤
--rwtTask[tSevenDayAct_Day1.Task_1] = {}
--rwtTask[tSevenDayAct_Day1.Task_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21400]
--rwtTask[tSevenDayAct_Day1.Task_1]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
--rwtTask[tSevenDayAct_Day1.Task_1]["AcceptDialogId"] = tSevenDayAct_Day1.Task_1
--rwtTask[tSevenDayAct_Day1.Task_1]["NextTaskId"] = tSevenDayAct_Day1.Task_2
--rwtTask[tSevenDayAct_Day1.Task_1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tSevenDayAct_Day1.Task_1]["IsClickComplete"] = 0
--rwtTask[tSevenDayAct_Day1.Task_1]["TaskNpc"] = tSingleNpc.nNpc_Saien 
--rwtTask[tSevenDayAct_Day1.Task_1]["DialogId"] = tDialog.nTask1
--rwtTask[tSevenDayAct_Day1.Task_1]["StartAutoWay"] = {}
--rwtTask[tSevenDayAct_Day1.Task_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tSevenDayAct_Day1.Task_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tSevenDayAct_Day1.Task_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Saien 
--rwtTask[tSevenDayAct_Day1.Task_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"] = {}
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][2] = {}
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
--rwtTask[tSevenDayAct_Day1.Task_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

--修复法阵
rwtTask[tSevenDayAct_Day1.Task_2] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21400]
rwtTask[tSevenDayAct_Day1.Task_2]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
--rwtTask[tSevenDayAct_Day1.Task_2]["PreTaskId"] = tSevenDayAct_Day1.Task_1
rwtTask[tSevenDayAct_Day1.Task_2]["NextTaskId"] = tSevenDayAct_Day1.Task_3
rwtTask[tSevenDayAct_Day1.Task_2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_2]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_2]["TaskNpc"] = tSingleNpc.nNpc_Saien 
rwtTask[tSevenDayAct_Day1.Task_2]["AcceptDialogId"] = tDialog.nTask2
rwtTask[tSevenDayAct_Day1.Task_2]["DialogId"] = tDialog.nTask2
--rwtTask[tSevenDayAct_Day1.Task_2]["StartAutoWay"] = {}
--rwtTask[tSevenDayAct_Day1.Task_2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tSevenDayAct_Day1.Task_2]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tSevenDayAct_Day1.Task_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Saien 
--rwtTask[tSevenDayAct_Day1.Task_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
--rwtTask[tSevenDayAct_Day1.Task_2]["EndAutoWay"] = {}
--rwtTask[tSevenDayAct_Day1.Task_2]["EndAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tSevenDayAct_Day1.Task_2]["EndAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[tSevenDayAct_Day1.Task_2]["EndAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Mamen 
--rwtTask[tSevenDayAct_Day1.Task_2]["EndAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Mamen 
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[1]
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tSevenDayAct_Day1.Task_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSevenDayAct_Day1.Task_2

--------------------------------------------------------------------
-----------------------------度日如年-------------------------------
--------------------------------------------------------------------
--世说新语
rwtTask[tSevenDayAct_Day1.Task_3] = {}
rwtTask[tSevenDayAct_Day1.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21401]
rwtTask[tSevenDayAct_Day1.Task_3]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_3]["PreTaskId"] = tSevenDayAct_Day1.Task_2
rwtTask[tSevenDayAct_Day1.Task_3]["NextTaskId"] = tSevenDayAct_Day1.Task_4
rwtTask[tSevenDayAct_Day1.Task_3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_3]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_3]["TaskNpc"] = tSingleNpc.nNpc_Mamen
rwtTask[tSevenDayAct_Day1.Task_3]["DialogId"] = tDialog.nTask3
rwtTask[tSevenDayAct_Day1.Task_3]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Mamen
rwtTask[tSevenDayAct_Day1.Task_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Mamen
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


--超级歌姬
rwtTask[tSevenDayAct_Day1.Task_4] = {}
rwtTask[tSevenDayAct_Day1.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21401]
rwtTask[tSevenDayAct_Day1.Task_4]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_4]["PreTaskId"] = tSevenDayAct_Day1.Task_3
rwtTask[tSevenDayAct_Day1.Task_4]["NextTaskId"] = tSevenDayAct_Day1.Task_5
rwtTask[tSevenDayAct_Day1.Task_4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_4]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_4]["TaskNpc"] = tSingleNpc.nNpc_Luna 
rwtTask[tSevenDayAct_Day1.Task_4]["DialogId"] = tDialog.nTask4
rwtTask[tSevenDayAct_Day1.Task_4]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Luna 
rwtTask[tSevenDayAct_Day1.Task_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Luna 
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

--慷慨的商人
rwtTask[tSevenDayAct_Day1.Task_5] = {}
rwtTask[tSevenDayAct_Day1.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21401]
rwtTask[tSevenDayAct_Day1.Task_5]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_5]["PreTaskId"] = tSevenDayAct_Day1.Task_4
rwtTask[tSevenDayAct_Day1.Task_5]["NextTaskId"] = tSevenDayAct_Day1.Task_6
rwtTask[tSevenDayAct_Day1.Task_5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_5]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_5]["TaskNpc"] = tSingleNpc.nNpc_Xide
rwtTask[tSevenDayAct_Day1.Task_5]["DialogId"] = tDialog.nTask5
rwtTask[tSevenDayAct_Day1.Task_5]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Xide
rwtTask[tSevenDayAct_Day1.Task_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Xide
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


--米尼的馈赠 
rwtTask[tSevenDayAct_Day1.Task_6] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21401]
rwtTask[tSevenDayAct_Day1.Task_6]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_6]["PreTaskId"] = tSevenDayAct_Day1.Task_5
rwtTask[tSevenDayAct_Day1.Task_6]["NextTaskId"] = tSevenDayAct_Day1.Task_7
rwtTask[tSevenDayAct_Day1.Task_6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_6]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_6]["TaskNpc"] = tSingleNpc.nNpc_Mini
rwtTask[tSevenDayAct_Day1.Task_6]["DialogId"] = tDialog.nTask6
rwtTask[tSevenDayAct_Day1.Task_6]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Mini
rwtTask[tSevenDayAct_Day1.Task_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Mini
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[2]
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tSevenDayAct_Day1.Task_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSevenDayAct_Day1.Task_6

--------------------------------------------------------------------
-----------------------------旅程的开始-----------------------------
--------------------------------------------------------------------
--联系塞罗
rwtTask[tSevenDayAct_Day1.Task_7] = {}
rwtTask[tSevenDayAct_Day1.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21402]
rwtTask[tSevenDayAct_Day1.Task_7]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_7]["PreTaskId"] = tSevenDayAct_Day1.Task_6
rwtTask[tSevenDayAct_Day1.Task_7]["NextTaskId"] = tSevenDayAct_Day1.Task_8
rwtTask[tSevenDayAct_Day1.Task_7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_7]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_7]["TaskNpc"] = tSingleNpc.nNpc_Saien 
rwtTask[tSevenDayAct_Day1.Task_7]["DialogId"] = tDialog.nTask7
rwtTask[tSevenDayAct_Day1.Task_7]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Saien 
rwtTask[tSevenDayAct_Day1.Task_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


--修复魔法阵
rwtTask[tSevenDayAct_Day1.Task_8] = {}
rwtTask[tSevenDayAct_Day1.Task_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21402]
rwtTask[tSevenDayAct_Day1.Task_8]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_8]["PreTaskId"] = tSevenDayAct_Day1.Task_7
rwtTask[tSevenDayAct_Day1.Task_8]["NextTaskId"] = tSevenDayAct_Day1.Task_9
rwtTask[tSevenDayAct_Day1.Task_8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSevenDayAct_Day1.Task_8]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_8]["ReqCollectId1"] =   tCollect.nCollect_2
rwtTask[tSevenDayAct_Day1.Task_8]["ReqCollectOnceNum"] = 1
rwtTask[tSevenDayAct_Day1.Task_8]["ReqCollectCount1"] =  1
rwtTask[tSevenDayAct_Day1.Task_8]["DialogId"] = tDialog.nTask8
rwtTask[tSevenDayAct_Day1.Task_8]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_8]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_2
rwtTask[tSevenDayAct_Day1.Task_8]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_2
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_1 
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][3] = {}
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][3]["GenId"] = tCollect.nCollect_GenId_2
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_8]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete



--七日旅游团
rwtTask[tSevenDayAct_Day1.Task_9] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21402]
rwtTask[tSevenDayAct_Day1.Task_9]["TaskType"] = CONST_TASK_TYPE.SEVENTDAY
rwtTask[tSevenDayAct_Day1.Task_9]["PreTaskId"] = tSevenDayAct_Day1.Task_8
--rwtTask[tSevenDayAct_Day1.Task_9]["NextTaskId"] = End
rwtTask[tSevenDayAct_Day1.Task_9]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSevenDayAct_Day1.Task_9]["IsClickComplete"] = 0
rwtTask[tSevenDayAct_Day1.Task_9]["TaskNpc"] = tSingleNpc.nNpc_Saien 
rwtTask[tSevenDayAct_Day1.Task_9]["DialogId"] = tDialog.nTask9
rwtTask[tSevenDayAct_Day1.Task_9]["StartAutoWay"] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tSevenDayAct_Day1.Task_9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_9]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Saien 
rwtTask[tSevenDayAct_Day1.Task_9]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_9]["DynaNpcGroupGen"] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_Saien 
rwtTask[tSevenDayAct_Day1.Task_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tSevenDayAct_Day1.Task_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[3]
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tSevenDayAct_Day1.Task_9
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTimeData
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtTask[tSevenDayAct_Day1.Task_9]["Awards"]["Events"][1]["SetUserTempData"][1]["SetRecordTime"] = true
rwtTask[tSevenDayAct_Day1.Task_9]["AwardFunc"] = function ()
	if not rwHasUserRecordData(7,1) then
		rwAddUserRecordData(7,1)
	end 
end

