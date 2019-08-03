--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--功能测试


--endregion



-- 打开界面
-- @param nType 索引CONST_MENUTYPE
-- @param nData1 参数1
-- @param nData2 参数2
-- @param nData3 参数3
function TestOpenLocalWnd(nType,nData1,nData2,nData3)
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwPrintNormalLog({Func = "TestOpenLocalWnd",nType = nType,nData1 = nData1,nData2 = nData2,nData3 = nData3})
    --OpenLocalDialog(nType)
    OpenLocalDialog(nType,nData1,nData2,nData3) 
end

---
-- 关闭界面
-- @param nType 索引CONST_MENUTYPE
-- @param nData1 参数1
-- @param nData2 参数2
-- @param nData3 参数3
function TestCloseLocalDialog(nType,nData1,nData2,nData3)
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwPrintNormalLog({Func = "TestOpenLocalWnd",nType = nType,nData1 = nData1,nData2 = nData2,nData3 = nData3})
    --CloseLocalDialog(nType)
    CloseLocalDialog(nType,nData1,nData2,nData3) 
end


--监听事件次数接口
--type = 15,typeid = 1,表示片区宝箱，nData1填写宝箱品质,nData2、nData3为预留参数，暂无含义
function Test_RecordMonitorEvent(nType,nTypeId,nData1,nData2,nData3)
    nType = nType or 0
    nTypeId = nTypeId or 0
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwPrintNormalLog({Func = "Test_RecordMonitorEvent",nType = nType,nTypeId = nTypeId,nData1 = nData1,nData2 = nData2,nData3 = nData3})
    return RecordMonitorEvent(nType,nTypeId,nData1,nData2,nData3)
end

--开启探索层宝箱时监听
function Test_OpenTreasureBoxMonitor(nBoxQuality)
    return Test_RecordMonitorEvent(15,1,nBoxQuality)
end

---
-- [测试]头像解锁
-- @param nData1 头像ID
-- @param nData2 掩码类型值（11~15）
function Test_AddUserRecordData_User_Icon(nData1,nData2)
    nData2 = nData2 or 11
    rwAddUserRecordData(11,nData1,nData2)
end

-- [测试]获取头像解锁情况
-- @param nData1 头像ID
-- @param nData2 掩码类型值（11~15）
-- @return 布尔值
function Test_HasUserRecordData_User_Icon(nData1,nData2)
    nData2 = nData2 or 11
    if rwHasUserRecordData(11,nData1,nData2) then
        rwSendSystemMessage("该头像已解锁："..nData1)
    else
        rwSendSystemMessage("该头像未解锁："..nData1)
    end
end


function testCopyMapTimerMsg()
	rwSendSystemMessage("定时器时间到了",1)
end

function testCopyMapAddTimer1(nTargetType,nTargetId,nTimerId,nTime,sFunc)
	nTargetType = nTargetType or 1
	nTargetId = nTargetId or rwUserGetId()
	nTimerId = nTimerId or 1
	nTime = nTime or 15
	sFunc = sFunc or "</F>testCopyMapTimerMsg"
	return AddTimer(nTargetType,nTargetId,nTimerId,nTime,sFunc)
end
function testCopyMapAddTimer2(nTargetType,nTargetId,nTimerId,nTime,sFunc)
	nTargetType = nTargetType or 2
	nTargetId = nTargetId or rwUserGetDynMapId()
	nTimerId = nTimerId or 2
	nTime = nTime or 10
	sFunc = sFunc or "</F>testCopyMapTimerMsg"
	return AddTimer(nTargetType,nTargetId,nTimerId,nTime,sFunc)
end

function testCopyMapRemoveTimer1(nTargetType,nTargetId,nTimerId)
	nTargetType = nTargetType or 1
	nTargetId = nTargetId or rwUserGetId()
	nTimerId = nTimerId or 1
	return RemoveTimer(nTargetType,nTargetId,nTimerId)
end
function testCopyMapRemoveTimer2(nTargetType,nTargetId,nTimerId)
	nTargetType = nTargetType or 2
	nTargetId = nTargetId or rwUserGetDynMapId()
	nTimerId = nTimerId or 2
	return RemoveTimer(nTargetType,nTargetId,nTimerId)
end

function testCopyMapResetTimer1(nTargetType,nTargetId,nTimerId,nTime)
	nTargetType = nTargetType or 1
	nTargetId = nTargetId or rwUserGetId()
	nTimerId = nTimerId or 1
	nTime = nTime or 12
	return ResetTimer(nTargetType,nTargetId,nTimerId,nTime)
end

function testCopyMapResetTimer2(nTargetType,nTargetId,nTimerId,nTime)
	nTargetType = nTargetType or 2
	nTargetId = nTargetId or rwUserGetDynMapId()
	nTimerId = nTimerId or 2
	nTime = nTime or 8
	return ResetTimer(nTargetType,nTargetId,nTimerId,nTime)
end


--功能测试
--对白
function testNpcDialogTest(sFunc)
    local tJsonTable = {}       
	tJsonTable["Text"] =  "测试一下2"   --  对白内容
	tJsonTable["talkId"] =  3536  --  说话者
	tJsonTable["Leftid"] =  3536   --  左半身像，填写NPCid
	tJsonTable["leftFace"] =  0   --  左边表情编号
	tJsonTable["leftAlpha"] = -1  --  左边透明度
	tJsonTable["LeftMagicEffect"] = 0  --  左边魔法效果 
	tJsonTable["EffectClipId"]= 0  --  音效ID
	tJsonTable["BgmClipId"] = 0  --  背景音乐ID
	tJsonTable["VoiceId"] = 0  --  配音ID
	tJsonTable["HideContine"]= 0  --  是否隐藏继续按钮默认显示
	--rwPrintErrorLog("进入对白了吗")
	local sStr = rwTable2Json(tJsonTable)
	local sFunc = sFunc or "</F>rwEnterMap</N>1001"
    rwAddDlgText(sStr,sFunc) 
end


--全服事件接口测试
function testGlobalReg(nRegIndex,nDataIndex,nData)
	nRegIndex = nRegIndex or 1
	nDataIndex = nDataIndex or 1
	nData = nData or 1	
	local ntest2 = rwGetGlobalReg(nRegIndex,nDataIndex)
	if rwChkInt(ntest2) then
--		rwPrintErrorLog("单个获取全服事件data = "..ntest2.."nRegIndex = "..nRegIndex.." nDataIndex = "..nDataIndex.." nData = "..nData)	
	end
end
--全服事件接口测试
function testAllGlobalReg(nRegIndex, nData1, nData2, nData3, nData4, nData5, nData6) 
	nRegIndex = nRegIndex or 2
	nData1 = nData1  or 2
	nData2 = nData2  or 2
	nData3 = nData3  or 2
	nData4 = nData4  or 2
	nData5 = nData5  or 2
	nData6 = nData6  or 2
	local ntest4 = rwGetAllGlobalReg(nRegIndex)
--	rwPrintErrorLog("打印多个全服事件开始")
	for i = 1,#ntest4 do 
--		rwPrintErrorLog(ntest4[i])
	end
--		rwPrintErrorLog("打印多个全服事件结束")
end


--测试活动玩法（开服天数+玩家角色创建天数+指定活动开始和结束时间戳
function testDailyact(nDailyactId)
	nDailyactId = nDailyactId or 10019
	local test1 = rwGetServerOpenDays()
	local test2 = rwGetUserRoleCreationDays()
	local test3,test4 = rwGetDailyactStartAndEndTime(nDailyactId)
	local test5 = os.date("%Y/%m/%d/%H",test3)
	local test6 = os.date("%Y/%m/%d/%H",test4)

--	rwPrintErrorLog("开服时间"..test1)
--	rwPrintErrorLog("账号创建时间"..test2)
--	rwPrintErrorLog("活动id"..nDailyactId)
--	rwPrintErrorLog("开始时间戳 "..test3..", 结束时间戳 "..test4)
--	rwPrintErrorLog("开始日期 "..test5..", 结束日期 "..test6)

end


--function view_field_trigger (nGenId)
--	local sTextInfo = "" 
--	sTextInfo = sTextInfo .. "view_field_trigger收到了"..nGenId .."的回调信息"
--	testSynBubbleInfo(nGenId,sTextInfo,0,3)
--end

----进入怪物视野时
--function view_field_trigger (nGenId)
--	rwLinkFieldViewTrigger(nGenId)
--end
--function rwLinkFieldViewTrigger(nGenId)

--end


function testSynBubbleInfo (nGenId,sTextInfo,nMode,nShowTime)
	nGenId = nGenId or 0
	sTextInfo = sTextInfo or ""
	nMode = nMode or 0 
	nShowTime = nShowTime or 0
	SynBubbleInfo(nGenId,sTextInfo,nMode,nShowTime)
end

function testOpenBubbleView (nTime)
	nTime = nTime or 0
	OpenBubbleView (nTime)
end


--播放特效封装PM测试
function test_PlayLocalEffect(sEffectId, nDirectly)
	if nDirectly == 0 then
		rwPlayLocalEffect(sEffectId, false)
	elseif nDirectly == 1 then
		rwPlayLocalEffect(sEffectId, true)
	end
end