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