--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

local tBranchTask = {}
tBranchTask.PreTask = 10069

tBranchTask.Task1 = 70084   --梦境的来源	 惊慌失措的回想
tBranchTask.Task2  = 70075	 --梦境的来源	 去请教爷爷
--tBranchTask.Task3 = 70085	 --梦境的来源	 隐藏的真相
tBranchTask.Task4  = 70076   --梦境的来源    大胆的想法
tBranchTask.Task5  = 70077	 --梦境的来源    潜入爷爷的书房
tBranchTask.Task6 = 70082	 --开启梦境之门  创建魔法阵
tBranchTask.Task7 = 70083	 --开启梦境之门  战胜梦境守卫





local nTempCordId = 1128

local nMapid_LeiMing = 2001
local nMapid_Zilv = 1000
local nMapid_MainCity = 1000
--local sPos_Zuoxiangfu = "78.16,0.11,-148.94"
local sPos_OumuHome = "-96.93,2.19,21.15"
local sPos_Trap =  "15.41,0.02,-89.12"
local sPos_Shufang = "17.83,22.69,119.37"

local tDialog = {}
tDialog.Huixiang = 11626
tDialog.Qingjiao = 11892
tDialog.Zhenxiang = 11893
tDialog.Dadan = 11929
tDialog.Mofazhen_1 = 11925
tDialog.Mofazhen_2 = 11926
tDialog.Mofazhen_3 = 11927
tDialog.Mofazhen_Wrong = 11928
tDialog.BattleBefore = 11640
tDialog.BattleAfter = 11641
tDialog.Shufang_Task_Start = 11894
tDialog.Shufang_Task_End = 11907



local tNpc_group = {}
--tNpc_group.Aisaier = 20116
tNpc_group.Zuoxiangfu = 12001
tNpc_group.OumuHome = 10019
tNpc_group.Shufang = 10024
local tNpc = {}
tNpc.Aisaier = 3101   --艾赛尔
tNpc.Teluode = 3028   --特罗德
tNpc.Yueruike = 3021  --管家约瑞克
tNpc.Oumu = 3524
rwtNpc[tNpc.Oumu] = rwtNpc[tNpc.Oumu] or {}
rwtNpcGroup[tNpc_group.OumuHome] = rwtNpcGroup[tNpc_group.OumuHome] or {} 
rwtNpcGroup[tNpc_group.OumuHome]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tNpc_group.OumuHome]["NpcId1"]= tNpc.Oumu


rwtNpcGroup[tNpc_group.Shufang] = rwtNpcGroup[tNpc_group.Shufang] or {}  --爷爷的书房
rwtNpcGroup[tNpc_group.Shufang]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[tNpc_group.Shufang]["PuzzleId"] = 109

local tCollect = {}
tCollect.Shugui = 60288
tCollect.Yuqun = 60289
tCollect.Muzicao = 60290
tCollect.Mofazhen = 60291


rwtNpcGroup[tCollect.Mofazhen] = rwtNpcGroup[tCollect.Mofazhen] or {} 
rwtNpcGroup[tCollect.Mofazhen]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Mofazhen]["NotDel"] = 1
rwtNpcGroup[tCollect.Mofazhen]["Func"] = function()  
	if not rwTempDataIsExist(nTempCordId) then
        rwTempDataAdd(nTempCordId)  --没有掩码添加掩码
    end
    rwTempDataSet(nTempCordId,0,CONST_TEMP_DATA.Data1) --采集时重置掩码
	rwOpenNpcChatDialog(tDialog.Mofazhen_1) 
end
--第一次选择
rwtDialog[tDialog.Mofazhen_1] = {}
rwtDialog[tDialog.Mofazhen_1]["OptionFunc1"] = function ()
	rwTempDataSet(nTempCordId,1,CONST_TEMP_DATA.Data1)  --选择错误标记掩码为1
	rwOpenNpcChatDialog(tDialog.Mofazhen_2)
end
rwtDialog[tDialog.Mofazhen_1]["OptionFunc2"] = function ()
	rwOpenNpcChatDialog(tDialog.Mofazhen_2)
end
--第二次选择
rwtDialog[tDialog.Mofazhen_2] = {}
rwtDialog[tDialog.Mofazhen_2]["OptionFunc1"] = function ()
	rwTempDataSet(nTempCordId,1,CONST_TEMP_DATA.Data1) --选择错误标记掩码为1
	rwOpenNpcChatDialog(tDialog.Mofazhen_3)
end
rwtDialog[tDialog.Mofazhen_2]["OptionFunc2"] = function ()
	rwOpenNpcChatDialog(tDialog.Mofazhen_3)
end
--第三次选择
rwtDialog[tDialog.Mofazhen_3] = {}
rwtDialog[tDialog.Mofazhen_3]["OptionFunc1"] = function ()
	local nValue = rwTempDataGetValue(nTempCordId,CONST_TEMP_DATA.Data1)
	if nValue == 1 then
		rwOpenNpcChatDialog(tDialog.Mofazhen_Wrong)  --如果前面有选错则播放选择错误对白
		return
	end	
--	rwTaskSetData(tBranchTask.Task6,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)  --全对将任务标记完成
	rwTaskSetFinish(tBranchTask.Task6)  --完成任务
	rwStoryTrigger(2134,2,0)  --播放光效
	rwLinkTaskAccept(tBranchTask.Task7)  --接受下一个任务
end
rwtDialog[tDialog.Mofazhen_3]["OptionFunc2"] = function ()
	rwOpenNpcChatDialog(tDialog.Mofazhen_Wrong)
end

local nTrap = 30506
rwtNpcGroup[nTrap] = rwtNpcGroup[nTrap] or {} 
rwtNpcGroup[nTrap]["Type"] = CONST_NPCGROUP_TYPE.Trap
local nTrap_Accept = 30519
rwtNpcGroup[nTrap_Accept] = rwtNpcGroup[nTrap_Accept] or {} 
rwtNpcGroup[nTrap_Accept]["Type"] = CONST_NPCGROUP_TYPE.Trap

local nMonster_Group = 900369
local nMonster = 9000288

local tGenEvent = {}
tGenEvent.Monster_Xieguai = 20010154
tGenEvent.Trap = 20010155
tGenEvent.TrapAcceptTask = 20010156
tGenEvent.Shufang = 1000173
tGenEvent.Collect_Mofazhen = 20010153

function BranchTask_Wenlimengjing_CG()
    if not rwHasGenEvent(tGenEvent.Monster_Xieguai) then
		rwAddGenEvent(tGenEvent.Monster_Xieguai)
	end    
	if rwHasGenEvent(tGenEvent.Collect_Mofazhen) then
		rwDelGenEvent(tGenEvent.Collect_Mofazhen)
	end
	rwSpecialStatus_AddEffect(7,0,2056,"15.41,0.02,-89.12")
end
rwtCGFinish[2134] = rwtCGFinish[2134] or {}
table.insert(rwtCGFinish[2134],BranchTask_Wenlimengjing_CG)

--function BranchTask_Wenlimengjing_Create()
--	if rwTaskChkUserInTask(tBranchTask.Task11) then
--		if not rwHasGenEvent(tGenEvent.Monster_Xieguai) then
--			rwAddGenEvent(tGenEvent.Monster_Xieguai)
--		end  
--	end
--end

--rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
--table.insert(rwtSceneLoad_Func[2001],BranchTask_Wenlimengjing_Create)

rwtTask[tBranchTask.Task1] = {}
rwtTask[tBranchTask.Task1]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21361]
rwtTask[tBranchTask.Task1]["PreTaskId"] = tBranchTask.PreTask
rwtTask[tBranchTask.Task1]["NextTaskId"] = tBranchTask.Task2
rwtTask[tBranchTask.Task1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task1]["DialogId"] = tDialog.Huixiang
rwtTask[tBranchTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
--rwtTask[tBranchTask.Task1]["ReqTrap1"] = nTrap_Accept
rwtTask[tBranchTask.Task1]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"] = {}
--rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1] = {}
--rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.TrapAcceptTask
--rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tBranchTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete



rwtTask[tBranchTask.Task2] = {}
rwtTask[tBranchTask.Task2]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21364]
rwtTask[tBranchTask.Task2]["PreTaskId"] = tBranchTask.Task1
rwtTask[tBranchTask.Task2]["NextTaskId"] = tBranchTask.Task4
rwtTask[tBranchTask.Task2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBranchTask.Task2]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task2]["TaskNpc"] = tNpc.Teluode
rwtTask[tBranchTask.Task2]["DialogId"] = tDialog.Qingjiao
rwtTask[tBranchTask.Task2]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayMapId"] = nMapid_MainCity
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayGroupId"] = 20228
rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayGenId"] = 1000047
rwtTask[tBranchTask.Task2]["Awards"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000312
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task2

--rwtTask[tBranchTask.Task3] = {}
--rwtTask[tBranchTask.Task3]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21365]
--rwtTask[tBranchTask.Task3]["PreTaskId"] = tBranchTask.Task2
--rwtTask[tBranchTask.Task3]["NextTaskId"] = tBranchTask.Task4
--rwtTask[tBranchTask.Task3]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task3]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tBranchTask.Task3]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task3]["TaskNpc"] = tNpc.Teluode
--rwtTask[tBranchTask.Task3]["DialogId"] = tDialog.Zhenxiang
--rwtTask[tBranchTask.Task3]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayMapId"] = nMapid_MainCity
--rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayGroupId"] = 20228
--rwtTask[tBranchTask.Task3]["StartAutoWay"]["FindWayGenId"] = 1000047


rwtTask[tBranchTask.Task4] = {}
rwtTask[tBranchTask.Task4]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21366]
rwtTask[tBranchTask.Task4]["PreTaskId"] = tBranchTask.Task2
rwtTask[tBranchTask.Task4]["NextTaskId"] = tBranchTask.Task5
rwtTask[tBranchTask.Task4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task4]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.Task4]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task4]["TaskNpc"] = tNpc.Oumu
rwtTask[tBranchTask.Task4]["DialogId"] = tDialog.Dadan



rwtTask[tBranchTask.Task5] = {}
rwtTask[tBranchTask.Task5]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21367]
rwtTask[tBranchTask.Task5]["PreTaskId"] = tBranchTask.Task4
rwtTask[tBranchTask.Task5]["NextTaskId"] = tBranchTask.Task6
rwtTask[tBranchTask.Task5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task5]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tBranchTask.Task5]["IsClickComplete"] = 1
rwtTask[tBranchTask.Task5]["ReqPuzzleId"] = 109
rwtTask[tBranchTask.Task5]["ReqPuzzleDialogOpen"] = 1
rwtTask[tBranchTask.Task5]["ReqPuzzleEnterDialog"] = tDialog.Shufang_Task_Start
rwtTask[tBranchTask.Task5]["DialogId"] = tDialog.Shufang_Task_End
rwtTask[tBranchTask.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask.Task5]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Shufang
rwtTask[tBranchTask.Task5]["DynaNpcGroupGen"][1]["MapId"] = nMapid_MainCity
rwtTask[tBranchTask.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tBranchTask.Task5]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayMapId"] = nMapid_MainCity
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.Shufang
rwtTask[tBranchTask.Task5]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Shufang
rwtTask[tBranchTask.Task5]["Awards"] = {}
rwtTask[tBranchTask.Task5]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task5]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000217
rwtTask[tBranchTask.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task5



rwtTask[tBranchTask.Task6] = {}
rwtTask[tBranchTask.Task6]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21372]
rwtTask[tBranchTask.Task6]["PreTaskId"] = tBranchTask.Task5
rwtTask[tBranchTask.Task6]["NextTaskId"] = tBranchTask.Task7
rwtTask[tBranchTask.Task6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.DEFAULT
--rwtTask[tBranchTask.Task6]["DialogId"] = tDialog.Mofazhen
--rwtTask[tBranchTask.Task6]["ReqCollectId1"] = tCollect.Mofazhen
rwtTask[tBranchTask.Task6]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Mofazhen
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = nMapid_LeiMing
rwtTask[tBranchTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tBranchTask.Task6]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayMapId"] = nMapid_LeiMing
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayGroupId"] = tCollect.Mofazhen
rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Collect_Mofazhen
--rwtTask[tBranchTask.Task6]["DialogueEndFunc"] = function ()
--	rwStoryTrigger(2134,2,0)
--end


rwtTask[tBranchTask.Task7] = {}
rwtTask[tBranchTask.Task7]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21373]
rwtTask[tBranchTask.Task7]["PreTaskId"] = tBranchTask.Task6
rwtTask[tBranchTask.Task7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBranchTask.Task7]["DialogId"]= tDialog.BattleBefore
rwtTask[tBranchTask.Task7]["ReqTrap1"] = nTrap
rwtTask[tBranchTask.Task7]["MonsterGroupGenId"] = tGenEvent.Monster_Xieguai
rwtTask[tBranchTask.Task7]["KillMonsterGroup1"]= nMonster_Group
rwtTask[tBranchTask.Task7]["IsClickComplete"] = 0
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Monster_Xieguai
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][1]["MapId"] = nMapid_LeiMing
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][2] = {}
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][2]["GenId"] = tGenEvent.Trap
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][2]["MapId"] = nMapid_LeiMing
rwtTask[tBranchTask.Task7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBranchTask.Task7]["StartAutoWay"] = {}
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayMapId"] = nMapid_LeiMing
rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayPos"] = sPos_Trap
rwtTask[tBranchTask.Task7]["Awards"] = {}
rwtTask[tBranchTask.Task7]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task7]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000218
rwtTask[tBranchTask.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task7
rwtTask[tBranchTask.Task7]["AwardFunc"] = function ()
	rwSpecialStatus_RemoveEffect(7,0,2056)
end



tNpc_group.Shufang_2 = 10026
tGenEvent.Shufang_2 = 1000182

rwtNpcGroup[tNpc_group.Shufang_2] = rwtNpcGroup[tNpc_group.Shufang_2] or {}
rwtNpcGroup[tNpc_group.Shufang_2]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[tNpc_group.Shufang_2]["PuzzleId"] = 110


--特罗德书房(支线完成后开启)
function MainCity_TeLuoDeShuFang_Puzzle()
	if rwTaskIsSuccess(tBranchTask.Task7) then  
		if not rwHasGenEvent(tGenEvent.Shufang_2) then
			rwAddGenEvent(tGenEvent.Shufang_2)
			rwSpecialStatus_AddEffect(7,0,2056,"15.8,22.69,121.1")
		end
	end
end

rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000] or {}
table.insert(rwtSceneLoad_Func[1000],MainCity_TeLuoDeShuFang_Puzzle)





--region   删除任务数据

--tBranchTask.Task12 = 70084   --梦境的来源	 惊慌失措的回想
--tBranchTask.Task1  = 70073	 --梦境的来源	 请求艾塞尔
--tBranchTask.Task2  = 70074	 --梦境的来源	 查阅书籍
--tBranchTask.Task14  = 70086	 --梦境的来源	 查阅书籍
--tBranchTask.Task15  = 70087	 --梦境的来源	 查阅书籍
--tBranchTask.Task3  = 70075	 --梦境的来源	 去请教爷爷
--tBranchTask.Task13 = 70085	 --梦境的来源	 隐藏的真相
--tBranchTask.Task4  = 70076   --开启梦境之门  询问魔法导师欧姆
--tBranchTask.Task5  = 70077	 --开启梦境之门  前往左相藏书室
--tBranchTask.Task6  = 70078	 --开启梦境之门  将信送给特罗德
--tBranchTask.Task7  = 70079	 --开启梦境之门  回左相府领取抄录
--tBranchTask.Task8  = 70080	 --开启梦境之门  获取双头鱼
--tBranchTask.Task9  = 70081	 --开启梦境之门  采集母子草
--tBranchTask.Task10 = 70082	 --开启梦境之门  创建魔法阵
--tBranchTask.Task11 = 70083	 --开启梦境之门  战胜梦境守卫
--tDialog[2] = 11627
--tDialog[3] = 11628
--tDialog[4] = 11629
--tDialog[5] = 11630
--tDialog[6] = 11631
--tDialog[7] = 11632
--tDialog[8] = 11633
--tDialog[9] = 11634
--tDialog[10] = 11635
--tDialog[11] = 11636
--tDialog[12] = 11637
--tDialog[13] = 11638
--tDialog[14] = 11639
--tDialog[15] = 11640
--tDialog[16] = 11641
--tGenEvent.Building_Zuoxiangfu = 2001343
--tGenEvent.Collect_Shugui_1 = 20010145
--tGenEvent.Collect_Shugui_2 = 20010146
--tGenEvent.Collect_Shugui_3 = 20010147
--tGenEvent.BuildingOumu = 20010148
--tGenEvent.Collect_Yuqun = 20010149
--tGenEvent.Collect_Muzicao_1 = 20010150
--tGenEvent.Collect_Muzicao_2 = 20010151
--tGenEvent.Collect_Muzicao_3 = 20010152
--tGenEvent.Collect_Mofazhen = 20010153

--rwtNpcGroup[tCollect.Shugui] = rwtNpcGroup[tCollect.Shugui] or {} 
--rwtNpcGroup[tCollect.Shugui]["Type"] = CONST_NPCGROUP_TYPE.Collect

--rwtNpcGroup[tCollect.Yuqun] = rwtNpcGroup[tCollect.Yuqun] or {} 
--rwtNpcGroup[tCollect.Yuqun]["Type"] = CONST_NPCGROUP_TYPE.Collect

--rwtNpcGroup[tCollect.Muzicao] = rwtNpcGroup[tCollect.Muzicao] or {} 
--rwtNpcGroup[tCollect.Muzicao]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[tCollect.Muzicao]["Awards"] = {}  
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"] = {}   
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1] = {}   
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["ChkEventCond"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["ChkUserTempData"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempCordId
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 2
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["OpenDialog"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog[13]}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2] = {}   
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["ChkEventCond"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["ChkUserTempData"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["ChkUserTempData"][1] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempCordId
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["ChkUserTempData"][1]["Value"] = 1
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["SetUserTempData"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["SetUserTempData"][1] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nTempCordId
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 2
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3] = {}   
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["ChkEventCond"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["ChkUserTempData"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["ChkUserTempData"][1] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["ChkUserTempData"][1]["Record"] = nTempCordId
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["ChkUserTempData"][1]["Value"] = 0
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["SetUserTempData"] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["SetUserTempData"][1] = {}
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["SetUserTempData"][1]["TempDataID"] = nTempCordId
--rwtNpcGroup[tCollect.Muzicao]["Awards"]["Events"][3]["SetUserTempData"][1]["SetValue"] =

--rwtTask[tBranchTask.Task1] = {}
--rwtTask[tBranchTask.Task1]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21362]
--rwtTask[tBranchTask.Task1]["PreTaskId"] = tBranchTask.Task12
--rwtTask[tBranchTask.Task1]["NextTaskId"] = tBranchTask.Task2
--rwtTask[tBranchTask.Task1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task1]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tBranchTask.Task1]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task1]["TaskNpc"] = tNpc.Aisaier
--rwtTask[tBranchTask.Task1]["DialogId"] = tDialog[2]

--rwtTask[tBranchTask.Task2] = {}
--rwtTask[tBranchTask.Task2]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21363]
--rwtTask[tBranchTask.Task2]["PreTaskId"] = tBranchTask.Task1
--rwtTask[tBranchTask.Task2]["NextTaskId"] = tBranchTask.Task14
--rwtTask[tBranchTask.Task2]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task2]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
--rwtTask[tBranchTask.Task2]["ReqCollectId1"] = tCollect.Shugui
--rwtTask[tBranchTask.Task2]["DialogId"] = tDialog[3]
----rwtTask[tBranchTask.Task2]["ReqCollectCount1"] = 3
----rwtTask[tBranchTask.Task2]["ReqCollectOnceNum"] = 1
--rwtTask[tBranchTask.Task2]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"] = {}
--rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][1] = {}
--rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Shugui_1
--rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][1]["MapId"] = nMapid_Zilv
--rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][2] = {}
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][2]["GenId"] = tGenEvent.Collect_Shugui_2
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][2]["MapId"] = nMapid_Zilv
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][3] = {}
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][3]["GenId"] = tGenEvent.Collect_Shugui_3
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][3]["MapId"] = nMapid_Zilv
----rwtTask[tBranchTask.Task2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task2]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayMapId"] = nMapid_Zilv
--rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayGroupId"] = tCollect.Shugui
--rwtTask[tBranchTask.Task2]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Collect_Shugui_1

--rwtTask[tBranchTask.Task14] = {}
--rwtTask[tBranchTask.Task14]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21363]
--rwtTask[tBranchTask.Task14]["PreTaskId"] = tBranchTask.Task2
--rwtTask[tBranchTask.Task14]["NextTaskId"] = tBranchTask.Task15
--rwtTask[tBranchTask.Task14]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task14]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
--rwtTask[tBranchTask.Task14]["ReqCollectId1"] = tCollect.Shugui
--rwtTask[tBranchTask.Task14]["DialogId"] = tDialog[4]
--rwtTask[tBranchTask.Task14]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task14]["DynaNpcGroupGen"] = {}
--rwtTask[tBranchTask.Task14]["DynaNpcGroupGen"][1] = {}
--rwtTask[tBranchTask.Task14]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Shugui_2
--rwtTask[tBranchTask.Task14]["DynaNpcGroupGen"][1]["MapId"] = nMapid_Zilv
--rwtTask[tBranchTask.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task14]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task14]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task14]["StartAutoWay"]["FindWayMapId"] = nMapid_Zilv
--rwtTask[tBranchTask.Task14]["StartAutoWay"]["FindWayGroupId"] = tCollect.Shugui
--rwtTask[tBranchTask.Task14]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Collect_Shugui_2

--rwtTask[tBranchTask.Task15] = {}
--rwtTask[tBranchTask.Task15]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21363]
--rwtTask[tBranchTask.Task15]["PreTaskId"] = tBranchTask.Task14
--rwtTask[tBranchTask.Task15]["NextTaskId"] = tBranchTask.Task3
--rwtTask[tBranchTask.Task15]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task15]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
--rwtTask[tBranchTask.Task15]["ReqCollectId1"] = tCollect.Shugui
--rwtTask[tBranchTask.Task15]["DialogId"] = tDialog[5]
--rwtTask[tBranchTask.Task15]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task15]["DynaNpcGroupGen"] = {}
--rwtTask[tBranchTask.Task15]["DynaNpcGroupGen"][1] = {}
--rwtTask[tBranchTask.Task15]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Shugui_3
--rwtTask[tBranchTask.Task15]["DynaNpcGroupGen"][1]["MapId"] = nMapid_Zilv
--rwtTask[tBranchTask.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task15]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task15]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task15]["StartAutoWay"]["FindWayMapId"] = nMapid_Zilv
--rwtTask[tBranchTask.Task15]["StartAutoWay"]["FindWayGroupId"] = tCollect.Shugui
--rwtTask[tBranchTask.Task15]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Collect_Shugui_3
--rwtTask[tBranchTask.Task6] = {}
--rwtTask[tBranchTask.Task6]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21368]
--rwtTask[tBranchTask.Task6]["PreTaskId"] = tBranchTask.Task5
--rwtTask[tBranchTask.Task6]["NextTaskId"] = tBranchTask.Task7
--rwtTask[tBranchTask.Task6]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task6]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tBranchTask.Task6]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task6]["TaskNpc"] = tNpc.Teluode
--rwtTask[tBranchTask.Task6]["DialogId"] = tDialog[10]
--rwtTask[tBranchTask.Task6]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayMapId"] = nMapid_MainCity
--rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayGroupId"] = 20228
--rwtTask[tBranchTask.Task6]["StartAutoWay"]["FindWayGenId"] = 1000047

--rwtTask[tBranchTask.Task7] = {}
--rwtTask[tBranchTask.Task7]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21369]
--rwtTask[tBranchTask.Task7]["PreTaskId"] = tBranchTask.Task6
--rwtTask[tBranchTask.Task7]["NextTaskId"] = tBranchTask.Task8
--rwtTask[tBranchTask.Task7]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task7]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tBranchTask.Task7]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task7]["TaskNpc"] = tNpc.Yueruike
--rwtTask[tBranchTask.Task7]["DialogId"] = tDialog[11]
--rwtTask[tBranchTask.Task7]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayMapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayGroupId"] = tNpc_group.Zuoxiangfu
--rwtTask[tBranchTask.Task7]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Building_Zuoxiangfu

--rwtTask[tBranchTask.Task8] = {}
--rwtTask[tBranchTask.Task8]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21370]
--rwtTask[tBranchTask.Task8]["PreTaskId"] = tBranchTask.Task7
--rwtTask[tBranchTask.Task8]["NextTaskId"] = tBranchTask.Task9
--rwtTask[tBranchTask.Task8]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task8]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
--rwtTask[tBranchTask.Task8]["ReqCollectId1"] = tCollect.Yuqun
--rwtTask[tBranchTask.Task8]["DialogId"] = tDialog[12]
--rwtTask[tBranchTask.Task8]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task8]["DynaNpcGroupGen"] = {}
--rwtTask[tBranchTask.Task8]["DynaNpcGroupGen"][1] = {}
--rwtTask[tBranchTask.Task8]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Yuqun
--rwtTask[tBranchTask.Task8]["DynaNpcGroupGen"][1]["MapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task8]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task8]["StartAutoWay"]["FindWayMapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task8]["StartAutoWay"]["FindWayGroupId"] = tCollect.Yuqun
--rwtTask[tBranchTask.Task8]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Collect_Yuqun

--rwtTask[tBranchTask.Task9] = {}
--rwtTask[tBranchTask.Task9]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21371]
--rwtTask[tBranchTask.Task9]["PreTaskId"] = tBranchTask.Task8
--rwtTask[tBranchTask.Task9]["NextTaskId"] = tBranchTask.Task10
--rwtTask[tBranchTask.Task9]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tBranchTask.Task9]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tBranchTask.Task9]["ReqCollectId1"] = tCollect.Muzicao
--rwtTask[tBranchTask.Task9]["ReqCollectCount1"] = 3
--rwtTask[tBranchTask.Task9]["ReqCollectOnceNum"] = 1
--rwtTask[tBranchTask.Task9]["IsClickComplete"] = 0
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"] = {}
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][1] = {}
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][1]["GenId"] = tGenEvent.Collect_Muzicao_1
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][1]["MapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][2] = {}
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][2]["GenId"] = tGenEvent.Collect_Muzicao_2
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][2]["MapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][3] = {}
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][3]["GenId"] = tGenEvent.Collect_Muzicao_3
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][3]["MapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task9]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tBranchTask.Task9]["StartAutoWay"] = {}
--rwtTask[tBranchTask.Task9]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tBranchTask.Task9]["StartAutoWay"]["FindWayMapId"] = nMapid_LeiMing
--rwtTask[tBranchTask.Task9]["StartAutoWay"]["FindWayGroupId"] = tCollect.Muzicao
--rwtTask[tBranchTask.Task9]["StartAutoWay"]["FindWayGenId"] = tGenEvent.Collect_Muzicao_1

--endregion