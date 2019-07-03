--任务索引对白回调
rwtDialog[12436] = {}
rwtDialog[12436]["DialogEnd"] = function()
	local nPuzzleId = 112
	rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,12436)
	rwPuzzle_Show(nPuzzleId)
end

--解谜屋
tPuzzleEvent[112] = {}
tPuzzleEvent[113] = {}
tPuzzleEvent[114] = {}


--解谜屋关闭事件
local tCloseEvent_112 = {112101}
local tCloseEvent_113 = {113101}
local tCloseEvent_114 = {114101}

--掩码位
local nUserRecordId_1 = 1215
--Data1 画册1点击次数
--Data2 画册2点击次数
--Data3 画册3点击次数

--Data4 画册1物件1掩码
--Data5 画册1物件2掩码
--Data6 画册1物件3掩码
--Data7 画册1物件4掩码
local nUserRecordId_2 = 1216
--Data1 画册2物件1掩码
--Data2 画册2物件2掩码
--Data3 画册2物件3掩码

--Data4 画册3物件1掩码
--Data5 画册3物件2掩码


--解谜对应对白
local tDialog_Puzzle1 = {}
tDialog_Puzzle1[1] = 12364
tDialog_Puzzle1[2] = 12365
tDialog_Puzzle1[3] = 12366
tDialog_Puzzle1[4] = 12373

local tDialog_Puzzle2 = {}
tDialog_Puzzle2[1] = 12367
tDialog_Puzzle2[2] = 12368
tDialog_Puzzle2[3] = 12374

local tDialog_Puzzle3 = {}
tDialog_Puzzle3[1] = 12369
tDialog_Puzzle3[2] = 12375


--对白对应掩码
local tPuzzle1_RecordEvent = {}
tPuzzle1_RecordEvent[12364] = CONST_TEMP_DATA.Data4
tPuzzle1_RecordEvent[12365] = CONST_TEMP_DATA.Data5
tPuzzle1_RecordEvent[12366] = CONST_TEMP_DATA.Data6
tPuzzle1_RecordEvent[12373] = CONST_TEMP_DATA.Data7

local tPuzzle2_RecordEvent = {}
tPuzzle2_RecordEvent[12367] = CONST_TEMP_DATA.Data1
tPuzzle2_RecordEvent[12368] = CONST_TEMP_DATA.Data2
tPuzzle2_RecordEvent[12374] = CONST_TEMP_DATA.Data3

local tPuzzle3_RecordEvent = {}
tPuzzle3_RecordEvent[12369] = CONST_TEMP_DATA.Data4
tPuzzle3_RecordEvent[12375] = CONST_TEMP_DATA.Data5



--画册1

tPuzzleEvent[112][112002] = {}
tPuzzleEvent[112][112002]["OnceFlag"] = nUserRecordId_1
tPuzzleEvent[112][112002]["OnceIndex"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[112][112002]["ClickDialog"] = tDialog_Puzzle1[1]
tPuzzleEvent[112][112002]["RemoveSelf"] = 112102
tPuzzleEvent[112][112002]["RemoveEffect"] = 112106

tPuzzleEvent[112][112003] = {}
tPuzzleEvent[112][112003]["OnceFlag"] = nUserRecordId_1
tPuzzleEvent[112][112003]["OnceIndex"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[112][112003]["ClickDialog"] = tDialog_Puzzle1[2]
tPuzzleEvent[112][112003]["RemoveSelf"] = 112103
tPuzzleEvent[112][112003]["RemoveEffect"] = 112107

tPuzzleEvent[112][112004] = {}
tPuzzleEvent[112][112004]["OnceFlag"] = nUserRecordId_1
tPuzzleEvent[112][112004]["OnceIndex"] = CONST_TEMP_DATA.Data6
tPuzzleEvent[112][112004]["ClickDialog"] = tDialog_Puzzle1[3]
tPuzzleEvent[112][112004]["RemoveSelf"] = 112104
tPuzzleEvent[112][112004]["RemoveEffect"] = 112108

tPuzzleEvent[112][112005] = {}
tPuzzleEvent[112][112005]["OnceFlag"] = nUserRecordId_1
tPuzzleEvent[112][112005]["OnceIndex"] = CONST_TEMP_DATA.Data7
tPuzzleEvent[112][112005]["ClickDialog"] = tDialog_Puzzle1[4]
tPuzzleEvent[112][112005]["RemoveSelf"] = 112105
tPuzzleEvent[112][112005]["RemoveEffect"] = 112109

for _,nDialog_Puzzle1 in pairs(tDialog_Puzzle1) do
rwtDialog[nDialog_Puzzle1] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nUserRecordId_1
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 3
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = tCloseEvent_112
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["OpenPuzzle"] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][1]["OpenPuzzle"]["PuzzleId"] = 113
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nUserRecordId_1
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["AddValue"] = 1
rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
	if tPuzzle1_RecordEvent[nDialog_Puzzle1] then
		rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][2] = {}
		rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["TempDataID"] = nUserRecordId_1
		rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["AddValue"] = 1
		rwtDialog[nDialog_Puzzle1]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["DataIndex"] = tPuzzle1_RecordEvent[nDialog_Puzzle1]
	end
end



--画册2

tPuzzleEvent[113][113002] = {}
tPuzzleEvent[113][113002]["OnceFlag"] = nUserRecordId_2
tPuzzleEvent[113][113002]["OnceIndex"] = CONST_TEMP_DATA.Data1
tPuzzleEvent[113][113002]["ClickDialog"] = tDialog_Puzzle2[1]
tPuzzleEvent[113][113002]["RemoveSelf"] = 113102
tPuzzleEvent[113][113002]["RemoveEffect"] = 113105

tPuzzleEvent[113][113003] = {}
tPuzzleEvent[113][113003]["OnceFlag"] = nUserRecordId_2
tPuzzleEvent[113][113003]["OnceIndex"] = CONST_TEMP_DATA.Data2
tPuzzleEvent[113][113003]["ClickDialog"] = tDialog_Puzzle2[2]
tPuzzleEvent[113][113003]["RemoveSelf"] = 113103
tPuzzleEvent[113][113003]["RemoveEffect"] = 113106

tPuzzleEvent[113][113004] = {}
tPuzzleEvent[113][113004]["OnceFlag"] = nUserRecordId_2
tPuzzleEvent[113][113004]["OnceIndex"] = CONST_TEMP_DATA.Data3
tPuzzleEvent[113][113004]["ClickDialog"] = tDialog_Puzzle2[3]
tPuzzleEvent[113][113004]["RemoveSelf"] = 113104
tPuzzleEvent[113][113004]["RemoveEffect"] = 113107


for _,nDialog_Puzzle2 in pairs(tDialog_Puzzle2) do
rwtDialog[nDialog_Puzzle2] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nUserRecordId_1
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 2
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = tCloseEvent_113
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["OpenPuzzle"] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][1]["OpenPuzzle"]["PuzzleId"] = 114
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nUserRecordId_1
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["AddValue"] = 1
rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
	if tPuzzle2_RecordEvent[nDialog_Puzzle2] then
		rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][2] = {}
		rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["TempDataID"] = nUserRecordId_2
		rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["AddValue"] = 1
		rwtDialog[nDialog_Puzzle2]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["DataIndex"] = tPuzzle2_RecordEvent[nDialog_Puzzle2]
	end
end


--画册3

tPuzzleEvent[114][114002] = {}
tPuzzleEvent[114][114002]["TempCordChk"] = {}
tPuzzleEvent[114][114002]["TempCordChk"][1] = {}
tPuzzleEvent[114][114002]["TempCordChk"][1]["DialogId"] = tDialog_Puzzle3[1]
tPuzzleEvent[114][114002]["TempCordChk"][1]["DialogType"] = 0
tPuzzleEvent[114][114002]["TempCordChk"][1]["nId"] = 10168
tPuzzleEvent[114][114002]["OnceFlag"] = nUserRecordId_2
tPuzzleEvent[114][114002]["OnceIndex"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[114][114002]["RemoveSelf"] = 114102
tPuzzleEvent[114][114002]["RemoveEffect"] = 114104



tPuzzleEvent[114][114003] = {}
tPuzzleEvent[114][114003]["TempCordChk"] = {}
tPuzzleEvent[114][114003]["TempCordChk"][1] = {}
tPuzzleEvent[114][114003]["TempCordChk"][1]["DialogId"] = tDialog_Puzzle3[2]
tPuzzleEvent[114][114003]["TempCordChk"][1]["DialogType"] = 0
tPuzzleEvent[114][114003]["TempCordChk"][1]["nId"] = 10168
tPuzzleEvent[114][114003]["OnceFlag"] = nUserRecordId_2
tPuzzleEvent[114][114003]["OnceIndex"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[114][114003]["RemoveSelf"] = 114103
tPuzzleEvent[114][114003]["RemoveEffect"] = 114105

for _,nDialog_Puzzle3 in pairs(tDialog_Puzzle3) do
rwtDialog[nDialog_Puzzle3] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["ChkUserTempData"] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = nUserRecordId_1
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["PuzzleEvent"] = tCloseEvent_114
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] = 12370
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = nUserRecordId_1
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["AddValue"] = 1
rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
	if tPuzzle3_RecordEvent[nDialog_Puzzle3] then
		rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][2] = {}
		rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["TempDataID"] = nUserRecordId_2
		rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["AddValue"] = 1
		rwtDialog[nDialog_Puzzle3]["DialogEndInit"]["Events"][2]["SetUserTempData"][2]["DataIndex"] = tPuzzle3_RecordEvent[nDialog_Puzzle3]
	end
end



