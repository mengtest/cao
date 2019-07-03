--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--阿克莱斯主线解谜
--by:mzy

--endregion

----***************************数据定义***************************----
--解谜id
local nPuzzleId = 102
--任务id
local nAKeLaiSiMainTask = 10075


tPuzzleEvent[nPuzzleId] = {}
tPuzzleEvent[nPuzzleId]["TempData"] = 1012

tPuzzleEvent[nPuzzleId][1] = {}  --被撕毁的纸片堆
tPuzzleEvent[nPuzzleId][1]["DataIndex"] = CONST_TEMP_DATA.Data1
tPuzzleEvent[nPuzzleId][1]["TaskId"] = nAKeLaiSiMainTask
tPuzzleEvent[nPuzzleId][1]["EventType"] = CONST_PUZZLE_EVENT_TYPE.FinishTask
tPuzzleEvent[nPuzzleId][1]["SuccRespondEvent"] = {102101,102102}
tPuzzleEvent[nPuzzleId][1]["FailRespondEvent"] = {102101,102102}
tPuzzleEvent[nPuzzleId][1]["EmptyRespondEvent"] = {102101,102102}
tPuzzleEvent[nPuzzleId][1]["SuccTaskEvent"] = {102113}

tPuzzleEvent[nPuzzleId][2] = {}  --被血染红的头饰
tPuzzleEvent[nPuzzleId][2]["DataIndex"] = CONST_TEMP_DATA.Data2
tPuzzleEvent[nPuzzleId][2]["EventType"] = CONST_PUZZLE_EVENT_TYPE.FinishTask
tPuzzleEvent[nPuzzleId][2]["TaskId"] = nAKeLaiSiMainTask
tPuzzleEvent[nPuzzleId][2]["SuccRespondEvent"] = {102103,102104}
tPuzzleEvent[nPuzzleId][2]["FailRespondEvent"] = {102103,102104}
tPuzzleEvent[nPuzzleId][2]["EmptyRespondEvent"] = {102103,102104}
tPuzzleEvent[nPuzzleId][2]["SuccTaskEvent"] = {102113}

tPuzzleEvent[nPuzzleId][3] = {}  --干净的手镯
tPuzzleEvent[nPuzzleId][3]["DataIndex"] = CONST_TEMP_DATA.Data3
tPuzzleEvent[nPuzzleId][3]["EventType"] = CONST_PUZZLE_EVENT_TYPE.FinishTask
tPuzzleEvent[nPuzzleId][3]["TaskId"] = nAKeLaiSiMainTask
tPuzzleEvent[nPuzzleId][3]["SuccRespondEvent"] = {102105,102106}
tPuzzleEvent[nPuzzleId][3]["FailRespondEvent"] = {102105,102106}
tPuzzleEvent[nPuzzleId][3]["EmptyRespondEvent"] = {102105,102106}
tPuzzleEvent[nPuzzleId][3]["SuccTaskEvent"] = {102113}

tPuzzleEvent[nPuzzleId][4] = {}  --钥匙
tPuzzleEvent[nPuzzleId][4]["DataIndex"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[nPuzzleId][4]["EventType"] = CONST_PUZZLE_EVENT_TYPE.GetItem
tPuzzleEvent[nPuzzleId][4]["SuccRespondEvent"] = {102107,102110}
tPuzzleEvent[nPuzzleId][4]["EmptyRespondEvent"] = {102114,102110}

tPuzzleEvent[nPuzzleId][5] = {}  --布
tPuzzleEvent[nPuzzleId][5]["PreDataIndex"] = CONST_TEMP_DATA.Data4
tPuzzleEvent[nPuzzleId][5]["DataIndex"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[nPuzzleId][5]["EventType"] = CONST_PUZZLE_EVENT_TYPE.ChkAndGetItem
tPuzzleEvent[nPuzzleId][5]["SuccRespondEvent"] = {102108,102111,102006}
tPuzzleEvent[nPuzzleId][5]["FailRespondEvent"] = {102116,102006}
tPuzzleEvent[nPuzzleId][5]["EmptyRespondEvent"] = {102115,102111,102006}

tPuzzleEvent[nPuzzleId][6] = {}  --箱子
tPuzzleEvent[nPuzzleId][6]["PreDataIndex"] = CONST_TEMP_DATA.Data5
tPuzzleEvent[nPuzzleId][6]["DataIndex"] = CONST_TEMP_DATA.Data6
tPuzzleEvent[nPuzzleId][6]["EventType"] = CONST_PUZZLE_EVENT_TYPE.ChkAndGetItem
tPuzzleEvent[nPuzzleId][6]["SuccRespondEvent"] = {102109}
tPuzzleEvent[nPuzzleId][6]["FailRespondEvent"] = {102117}
tPuzzleEvent[nPuzzleId][6]["EmptyRespondEvent"] = {102112}

function AKeLaiSi_PuzzleTest(nIndex)
    local nVal = rwTempDataGetValue(1012, nIndex)
    rwSendSystemMessage("掩码值为："..nVal)
end