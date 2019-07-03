--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
local nPuzzleId = 115
local nTempCordId = 1218
local tPuzzleEventId = {}
tPuzzleEventId.Molishi = 115101
tPuzzleEventId.HenJi2 = 115102
tPuzzleEventId.HenJi3 = 115103
tPuzzleEventId.HenJi4 = 115104
tPuzzleEventId.HenJi5 = 115105

local tDialog = {}
tDialog.Event_1 = 12493
tDialog.Event_2 = 12494
tDialog.Event_3 = 12495
tDialog.Event_4 = 12496
tDialog.Event_5 = 12497
tDialog.Event_6 = 12498
tDialog.Event_7 = 12499



tPuzzleEvent[nPuzzleId] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"]= {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEventId.Molishi}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][2]["PuzzleEvent"] = {tPuzzleEventId.HenJi2}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3]["ChkUserTempData"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][3]["PuzzleEvent"] = {tPuzzleEventId.HenJi3}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4]["ChkUserTempData"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][4]["PuzzleEvent"] = {tPuzzleEventId.HenJi4}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5]["ChkUserTempData"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][5]["PuzzleEvent"] = {tPuzzleEventId.HenJi5}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["ChkUserTempData"][1]["Value"] = 0
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["OpenDialog"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][6]["OpenDialog"]["DialogId"] = tDialog.Event_1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["ChkUserTempData"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["ChkUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["ChkUserTempData"][1]["Record"] = nTempCordId
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data6
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["ChkUserTempData"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["OpenDialog"] = {}
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["OpenDialog"]["DialogId"] = tDialog.Event_7
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
tPuzzleEvent[nPuzzleId]["PuzzleInit"]["Events"][7]["OpenDialog"]["nId"] = 10156




tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi] = {} --魔力石
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data1   
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["DialogId"] = tDialog.Event_2
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][1] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1 
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][2] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][2]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][2]["SetValue"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][3] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][3]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][3]["DataIndex"] = CONST_TEMP_DATA.Data3
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][3]["SetValue"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][4] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][4]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][4]["DataIndex"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][4]["SetValue"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][5] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][5]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][5]["DataIndex"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[nPuzzleId][tPuzzleEventId.Molishi]["TempCordChk"][1]["SetUserTempData"][5]["SetValue"] = 1


tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2] = {} --痕迹
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data2  
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["DialogId"] = tDialog.Event_3
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["SetUserTempData"] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["SetUserTempData"][1] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi2]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2

tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3] = {} --痕迹
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["DialogId"] = tDialog.Event_4
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["SetUserTempData"] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["SetUserTempData"][1] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi3]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2

tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4] = {} --痕迹
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["DialogId"] = tDialog.Event_5
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["SetUserTempData"] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["SetUserTempData"][1] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi4]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2

tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5] = {} --痕迹
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1] = {}
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["ChkType"] = CONST_PUZZLE_CHKTEMP_TYPE.CHKONETEMP  
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["TempDataID"] = nTempCordId
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["Value"] = 1
tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["DialogId"] = tDialog.Event_6
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["SetUserTempData"] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["SetUserTempData"][1] = {}
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data5
--tPuzzleEvent[nPuzzleId][tPuzzleEventId.HenJi5]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2


rwtDialog[tDialog.Event_1] = {} 
rwtDialog[tDialog.Event_1]["DialogEndInit"] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempCordId
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEventId.Molishi}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["SetUserTempData"] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempCordId
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtDialog[tDialog.Event_1]["DialogEndInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 1


rwtDialog[tDialog.Event_2] = {}
rwtDialog[tDialog.Event_2]["DialogEndInit"] = {}
rwtDialog[tDialog.Event_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Event_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Event_2]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = {tPuzzleEventId.HenJi2,tPuzzleEventId.HenJi3,tPuzzleEventId.HenJi4,tPuzzleEventId.HenJi5}

rwtDialog[tDialog.Event_3] = {}
rwtDialog[tDialog.Event_3]["DialogEnd"] = function ()
	rwUserTempDataSet(nTempCordId,2,CONST_TEMP_DATA.Data2)	
	PuzzleFengchejiemi_JudgeDialog7()
end
rwtDialog[tDialog.Event_4] = {}
rwtDialog[tDialog.Event_4]["DialogEnd"] = function ()
	rwUserTempDataSet(nTempCordId,2,CONST_TEMP_DATA.Data3)	
	PuzzleFengchejiemi_JudgeDialog7()
end
rwtDialog[tDialog.Event_5] = {}
rwtDialog[tDialog.Event_5]["DialogEnd"] = function ()
	rwUserTempDataSet(nTempCordId,2,CONST_TEMP_DATA.Data4)	
	PuzzleFengchejiemi_JudgeDialog7()
end
rwtDialog[tDialog.Event_6] = {}
rwtDialog[tDialog.Event_6]["DialogEnd"] = function ()
	rwUserTempDataSet(nTempCordId,2,CONST_TEMP_DATA.Data5)	
	PuzzleFengchejiemi_JudgeDialog7()
end

function PuzzleFengchejiemi_JudgeDialog7()
	local tDataChk = {CONST_TEMP_DATA.Data2,CONST_TEMP_DATA.Data3,CONST_TEMP_DATA.Data4,CONST_TEMP_DATA.Data5}
	for i,v in pairs (tDataChk) do 
		if rwTempDataGetValue(nTempCordId,v) ~= 2 then
			return 
		end
	end
	rwUserTempDataSet(nTempCordId,1,CONST_TEMP_DATA.Data6)	
	rwOpenNpcChatDialog(tDialog.Event_7,CONST_NPCCHAT_TYPE.TASK,10156)
end

--function testFengchediaocha()
--	rwOpenNpcChatDialog(tDialog.Event_1)
--end