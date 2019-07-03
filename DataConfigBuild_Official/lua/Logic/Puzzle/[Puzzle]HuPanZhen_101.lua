--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--湖畔镇杂货屋解谜


--endregion

    tPuzzleEvent[101] = {}
    tPuzzleEvent[101][101001] = {} --书1
    tPuzzleEvent[101][101001]["SuccMsg"] = 101101

    tPuzzleEvent[101][101002] = {} --书2
    tPuzzleEvent[101][101002]["SuccMsg"] = 101102

    tPuzzleEvent[101][101003] = {} --陶罐
    tPuzzleEvent[101][101003]["TempCordChk"] = {}
    tPuzzleEvent[101][101003]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101003]["TempCordChk"][1]["TempDataID"] = 1213
    tPuzzleEvent[101][101003]["TempCordChk"][1]["Value"] = 0
    tPuzzleEvent[101][101003]["TempCordChk"][1]["DialogId"] = 12372
    tPuzzleEvent[101][101003]["ClearTempDayJudgment"] = 1213
    tPuzzleEvent[101][101003]["AwardFlag"] = 1214
    tPuzzleEvent[101][101003]["AwardId"] = 6000000
    tPuzzleEvent[101][101003]["AwardTempdata"] = 1213
    tPuzzleEvent[101][101003]["AwardTempIndex"] = CONST_TEMP_DATA.Data1
    tPuzzleEvent[101][101003]["AwardFailMsg"] = 101103
    

    tPuzzleEvent[101][101004] = {} --木盆
    tPuzzleEvent[101][101004]["SuccMsg"] = 101104

    tPuzzleEvent[101][101005] = {} --钥匙
    tPuzzleEvent[101][101005]["OnceFlag"] = 1021    -- 一次性掩码
    tPuzzleEvent[101][101005]["AwardFlag"] = 1022   -- 拥有掩码
    tPuzzleEvent[101][101005]["AwardMsg"] = 101105
    tPuzzleEvent[101][101005]["RemoveSelf"] = 101126
    tPuzzleEvent[101][101005]["RemoveEffect"] = 101013
    tPuzzleEvent[101][101005]["ReqObj"] = 101010 --前置物件



    tPuzzleEvent[101][101006] = {} --宝箱
    tPuzzleEvent[101][101006]["InTask"] = 10109
    tPuzzleEvent[101][101006]["OnceFlagNoAward"] = 1023
    tPuzzleEvent[101][101006]["RemoveSelf"] = 101127
    tPuzzleEvent[101][101006]["ReqObj"] = 101005 --前置物件
    tPuzzleEvent[101][101006]["ReqObjDialog"] = 12371 --前置物件不满足时对白
    tPuzzleEvent[101][101006]["TempCordChk"] = {}
    tPuzzleEvent[101][101006]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101006]["TempCordChk"][1]["TempDataID"] = 1022
    tPuzzleEvent[101][101006]["TempCordChk"][1]["Value"] = 1
    tPuzzleEvent[101][101006]["TempCordChk"][1]["Func"] = function()
        if rwTaskChkUserInTask(10109) then
            local nUserId = rwUserGetId()
	        rwUserTempDataSet(1023,1,CONST_TEMP_DATA.Data2,nUserId)
        end
    end


    tPuzzleEvent[101][101007] = {} --渔网
    tPuzzleEvent[101][101007]["SuccMsg"] = 101108

    tPuzzleEvent[101][101008] = {} --木桶
    tPuzzleEvent[101][101008]["SuccMsg"] = 101109

    tPuzzleEvent[101][101010] = {} --灯
    tPuzzleEvent[101][101010]["AwardFlag"] = 1217
    tPuzzleEvent[101][101010]["TempCordChk"] = {}
    tPuzzleEvent[101][101010]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101010]["TempCordChk"][1]["TempDataID"] = 1021
    tPuzzleEvent[101][101010]["TempCordChk"][1]["Value"] = 0
    tPuzzleEvent[101][101010]["TempCordChk"][1]["PuzzleEvent"] = {}
    tPuzzleEvent[101][101010]["TempCordChk"][1]["PuzzleEvent"][1] = 101012
    tPuzzleEvent[101][101010]["TempCordChk"][1]["PuzzleEvent"][2] = 101014
    tPuzzleEvent[101][101010]["TempCordChk"][1]["DialogId"] = 12437

    tPuzzleEvent[101][101011] = {} --退出
    tPuzzleEvent[101][101011]["TempCordChk"] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1]["TempDataID"] = 1023
    tPuzzleEvent[101][101011]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
    tPuzzleEvent[101][101011]["TempCordChk"][1]["Value"] = 1
    tPuzzleEvent[101][101011]["TempCordChk"][1]["DialogId"] = 12597
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = 1023
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2
