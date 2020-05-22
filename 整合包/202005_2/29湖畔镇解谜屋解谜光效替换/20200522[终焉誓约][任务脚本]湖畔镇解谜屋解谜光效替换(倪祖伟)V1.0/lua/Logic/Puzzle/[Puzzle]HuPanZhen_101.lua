--region [Puzzle]HuPanZhen_101.lua
--Purpose:		主线湖畔镇解密屋
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-5-22 $
--RCS-ID:		$Revision: 6 $
--endregion


-- 罐头：
-- 每日领取奖励，完成任务的话会播放退出引导
-- 掩码 1213 记录是否领取过，隔天清0
-- 掩码 1023 data1 宝箱一次性的；data2记录完成任务情况：0=未完成；1=完成；2=完成后离开了解密屋。
-- 若完成任务时是第一次开罐头，则在对白后进行播放退出引导逻辑；若已经开过罐头，则直接开始退出引导逻辑
--
-- 钥匙：
-- 任务10109任务解谜物品，任务解谜物品 灯 点击后才生成，是宝箱的前置物件
-- 一次性掩码：1021；拥有掩码：1022
--
-- 宝箱：
-- 任务10109任务解谜物品，任务解谜物品 钥匙 得到后才能打开，
-- 打开后更新掩码 1023 成完成状态：data2 = 1
--
-- 退出
-- 完成任务退出则播放引导
-- 掩码 1023 data2 = 1 时播放引导；完成后设置为离开 1023 data2 = 2

    tPuzzleEvent[101] = {}
    tPuzzleEvent[101]["PuzzleInit"] = {}
    tPuzzleEvent[101]["PuzzleInit"]["Events"]= {}
    tPuzzleEvent[101]["PuzzleInit"]["Events"][1] = {}
    tPuzzleEvent[101]["PuzzleInit"]["Events"][1]["SetUserTempData"] = {}
    tPuzzleEvent[101]["PuzzleInit"]["Events"][1]["SetUserTempData"][1] = {}
    tPuzzleEvent[101]["PuzzleInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1021
    tPuzzleEvent[101]["PuzzleInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
    tPuzzleEvent[101]["PuzzleInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0

    tPuzzleEvent[101][101001] = {} --书1
    tPuzzleEvent[101][101001]["SuccMsg"] = 101101

    tPuzzleEvent[101][101002] = {} --书2
    tPuzzleEvent[101][101002]["SuccMsg"] = 101102
    tPuzzleEvent[101][101002]["RemoveSelf"] = 101026

    tPuzzleEvent[101][101003] = {} --陶罐
    tPuzzleEvent[101][101003]["TempCordChk"] = {}
    tPuzzleEvent[101][101003]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101003]["TempCordChk"][1]["TempDataID"] = 1213
    tPuzzleEvent[101][101003]["TempCordChk"][1]["Value"] = 0
    tPuzzleEvent[101][101003]["TempCordChk"][1]["DialogId"] = 12372
    tPuzzleEvent[101][101003]["TempCordChk"][2] = {}
    tPuzzleEvent[101][101003]["TempCordChk"][2]["TempDataID"] = 1213
    tPuzzleEvent[101][101003]["TempCordChk"][2]["Value"] = 1
    tPuzzleEvent[101][101003]["TempCordChk"][2]["Func"] = function()
        if rwTempDataIsExist(1023,rwUserGetId()) and rwTempDataGetValue(1023,CONST_TEMP_DATA.Data2,rwUserGetId()) == 1 and rwTempDataGetValue(1213,CONST_TEMP_DATA.Data1,rwUserGetId()) == 1 then
            rwStartGuide(117,1)
        end
    end
    tPuzzleEvent[101][101003]["ClearTempDayJudgment"] = 1213
    tPuzzleEvent[101][101003]["AwardFlag"] = 1214
    tPuzzleEvent[101][101003]["AwardId"] = 6000000
    tPuzzleEvent[101][101003]["AwardTempdata"] = 1213
    tPuzzleEvent[101][101003]["AwardTempIndex"] = CONST_TEMP_DATA.Data1
    tPuzzleEvent[101][101003]["AwardFailMsg"] = 101103
    
    rwtDialog[12372] = rwtDialog[12372] or {}
    rwtDialog[12372]["DialogEnd"] = function()
        if rwTempDataIsExist(1023,rwUserGetId()) and rwTempDataGetValue(1023,CONST_TEMP_DATA.Data2,rwUserGetId()) == 1 then
            rwStartGuide(117,1)
        end
    end

    tPuzzleEvent[101][101004] = {} --木盆
    tPuzzleEvent[101][101004]["SuccMsg"] = 101104

    tPuzzleEvent[101][101025] = {} --钥匙
    tPuzzleEvent[101][101025]["OnceFlag"] = 1021    -- 一次性掩码
    tPuzzleEvent[101][101025]["AwardFlag"] = 1022   -- 拥有掩码
    tPuzzleEvent[101][101025]["AwardMsg"] = 101105
    tPuzzleEvent[101][101025]["RemoveSelf"] = 101126
    tPuzzleEvent[101][101025]["RemoveEffect"] = 101023
    tPuzzleEvent[101][101025]["ReqObj"] = 101010 --前置物件



    tPuzzleEvent[101][101006] = {} --宝箱
    tPuzzleEvent[101][101006]["InTask"] = 10109
    tPuzzleEvent[101][101006]["OnceFlagNoAward"] = 1023
    tPuzzleEvent[101][101006]["RemoveSelf"] = 101127
    tPuzzleEvent[101][101006]["ReqObj"] = 101025 --前置物件
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
    tPuzzleEvent[101][101006]["TempCordChk"][2] = {}
    tPuzzleEvent[101][101006]["TempCordChk"][2]["TempDataID"] = 1022
    tPuzzleEvent[101][101006]["TempCordChk"][2]["Value"] = 0
    tPuzzleEvent[101][101006]["TempCordChk"][2]["Func"] = function()
        if rwTaskChkUserInTask(10109) then
            rwOpenNpcChatDialog(12371)
        end
    end

    tPuzzleEvent[101][101007] = {} --渔网
    tPuzzleEvent[101][101007]["SuccMsg"] = 101108
    tPuzzleEvent[101][101007]["RemoveSelf"] = 101027

    tPuzzleEvent[101][101008] = {} --木桶
    tPuzzleEvent[101][101008]["SuccMsg"] = 101109

    tPuzzleEvent[101][101010] = {} --灯
    tPuzzleEvent[101][101010]["InTask"] = 10109
    tPuzzleEvent[101][101010]["RemoveSelf"] = 101024
    tPuzzleEvent[101][101010]["AwardFlag"] = 1217
    tPuzzleEvent[101][101010]["TempCordChk"] = {}
    tPuzzleEvent[101][101010]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101010]["TempCordChk"][1]["TempDataID"] = 1021
    tPuzzleEvent[101][101010]["TempCordChk"][1]["Value"] = 0
    tPuzzleEvent[101][101010]["TempCordChk"][1]["PuzzleEvent"] = {}
    tPuzzleEvent[101][101010]["TempCordChk"][1]["PuzzleEvent"][1] = 101022
    tPuzzleEvent[101][101010]["AddPicture"]=101025
    tPuzzleEvent[101][101010]["RemoveEffect"]=101028
    
    tPuzzleEvent[101][101011] = {} --退出
    tPuzzleEvent[101][101011]["TempCordChk"] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1]["TempDataID"] = 1023
    tPuzzleEvent[101][101011]["TempCordChk"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
    tPuzzleEvent[101][101011]["TempCordChk"][1]["Value"] = 1
    tPuzzleEvent[101][101011]["TempCordChk"][1]["Func"] = function()
        rwStartGuide(123,1)
    end
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1] = {}
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1]["TempDataID"] = 1023
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
    tPuzzleEvent[101][101011]["TempCordChk"][1]["SetUserTempData"][1]["SetValue"] = 2


    tPuzzleEvent[101][101005] = {} --书2光效
    tPuzzleEvent[101][101005]["InTask"] = {20346,20347,20348,20349,20350}
    tPuzzleEvent[101][101005]["RemoveOutLineEffect"] = 101026

    tPuzzleEvent[101][101012] = {} --渔网光效
    tPuzzleEvent[101][101012]["InTask"] = 50191
    tPuzzleEvent[101][101012]["RemoveOutLineEffect"] = 101027
    