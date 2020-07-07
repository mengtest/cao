--region [Test]FunctionTest.lua
--Purpose:		测试函数
--Creator: 		林多娜
--Created:		2019-09-10
--Modifier:		$Author:倪祖伟	$
--Modified:		$Date:2020-07-04	$
--RCS-ID:		$Revision:12	$
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

-- 打开界面
-- @param str 索引CONST_MENUTYPE key值
-- @param nData1 参数1
-- @param nData2 参数2
-- @param nData3 参数3
function TestOpenLocalWnd2(str,nData1,nData2,nData3)
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwOpenLocalWnd(CONST_MENUTYPE[str],nData1,nData2,nData3) 
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

--测试循环活动玩法（开服天数+玩家角色创建天数+指定活动开始和结束时间戳
--function testDailyactTime(nDailyactId,nTimeOffset)
--	nDailyactId = nDailyactId or 10019
--	local test1 = rwGetServerOpenDays()
--	local test2 = rwGetUserRoleCreationDays()
--	local test3 = rwIsDailyactTime(nDailyactId,nTimeOffset)
--	local test4 = "true"
 --   if not test3 then
--        test4 = 'false'
--    end
--	rwPrintErrorLog("开服时间"..test1)
--	rwPrintErrorLog("账号创建时间"..test2)
--	rwPrintErrorLog("活动id"..nDailyactId)
--	rwPrintErrorLog("是否再活动时间内"..test4)

--end
--测试是否拥有墙纸
function testIsHaveWallspaper(nWallpaperId)
    nWallpaperId = nWallpaperId or 1
    if rwHasUserWallpaper(nWallpaperId) then
--        rwSendSystemMessage("拥有墙纸"..nWallpaperId)
        return
    end
--    rwSendSystemMessage("未拥有墙纸"..nWallpaperId)
    return
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

--测试显示当前体力值
function test_ShowApPoint()
    local n = rwGetApPoint()
    rwSendSystemMessage("体力："..n)
end

--测试亲密度 
function test_getImpressLevel(nHeroTypeId)
	local nImpressLevel = rwHeroGetImpressLevel(nHeroTypeId)
	if nImpressLevel ~= nil then
		--rwPrintErrorLog("英雄"..nHeroTypeId.."的亲密度等级为"..nImpressLevel)
	end
end

function test_GetHeroImpressionTaskMask(nHeroTypeId,nIndex)
	local nMask_InSql_After = rwGetHeroImpressionTaskMask(nHeroTypeId,nIndex)
	if nMask_InSql_After ~= nil then
			--rwPrintErrorLog("设置后的英雄"..nHeroTypeId.."序号为"..nIndex.."的亲密度任务掩码位"..nMask_InSql_After)
		end

end

function test_UnlockAllUnlimitedMap()
	local tUnlimitedMap = {3038,3029,3030,3139,3028,3036,3026,3043,3040,3039,3041,3047,3048,3143,3140,3142,3146,3144,3145,3141}
	for i,v in pairs(tUnlimitedMap) do
		rwUnlockUnlimitedMap(v)
	end	
end


--测试称号
function test_UserLabelIsExist(nLabelId)
	if rwUserLabelIsExist(nLabelId) then
		rwSendSystemMessage("称号："..nLabelId.." 存在")
	else
		rwSendSystemMessage("称号："..nLabelId.." 不存在")
	end
end


function testAddLevAdaptAward (nExtractId,nAwardType,nActionId,nAwardNum,nAwardTarget )
    nAwardType = nAwardType or CONST_AWARD_TYPE.MEMORY_AWARD
    nActionId = nActionId or 0
    nExtractId = nExtractId or 1000
    nAwardNum = nAwardNum or 1
    nAwardTarget = nAwardTarget or CONST_AWARD_TARGET.SELF
    if nAwardType == CONST_AWARD_TYPE.AWARD then  --直接添加
        local nActionType =  CONST_ACTION_TYPE.TIPS
        AddLevAdaptAward(nActionType,nActionId,nExtractId,nAwardNum)
    elseif nAwardType == CONST_AWARD_TYPE.MEMORY_AWARD then  --添加到内存
        local nActionType =  CONST_ACTION_TYPE.GIFT
        if nAwardTarget == CONST_AWARD_TARGET.TEAM then
            local tUserList = rwGetCurMapUserList()
            if tUserList then
                for i=1,#tUserList do
                    AddCopyMapLevAdaptAward(nActionType,nActionId,nExtractId,tUserList[i])
                end
            end
        else
            local nUserId = rwUserGetId()
            AddCopyMapLevAdaptAward(nActionType,nActionId,nExtractId,nUserId)
        end
    end
end



--片区宝箱测试函数
--测试函数，随机坐标并刷出宝箱
function Test_rwAreaBox_RandomBox(nMapId)
    if not rwtAreaBoxInfo[nMapId] then
        rwPrintErrorLog()
        return
    end
    --删除原来宝箱
    for k,v in pairs(rwtAreaBoxInfo[nMapId]["GenId"]) do
        if rwHasGenEvent(v) then
            rwDelGenEvent(v)
        end
    end
    --时间掩码
    local nTimeData = rwtAreaBoxInfo[nMapId]["TimeData"]
    --刷新掩码
    local nRefreshData = rwtAreaBoxInfo[nMapId]["RefreshData"]
    if not rwTempDataIsExist(nTimeData) then
        rwTempDataAdd(nTimeData)
    end
    if not rwTempDataIsExist(nRefreshData) then
        rwTempDataAdd(nRefreshData)
    end
    rwAreaBox_LoopRefresh(nMapId,1)
    --随机坐标
    rwAreaBox_RandomBox(nMapId)
    rwPrintErrorLog("地图id："..nMapId)
    local nLoopMode = rwTempDataGetValue(nRefreshData, CONST_TEMP_DATA.Data2)
    rwPrintErrorLog("刷新方式："..nLoopMode)
    rwPrintErrorLog("随机到的坐标索引为")
    local nNum = 0
    --刷出宝箱
    for k,v in pairs(rwtAreaBoxInfo[nMapId]["BoxTempData"]) do
        nNum = nNum + 1
        if nNum > rwtAreaBoxInfo[nMapId]["LoopMode"][nLoopMode]["RefreshNum"] then
            break
        end
        local tPos = rwtAreaBoxInfo[nMapId]["PosInfo"]
        local nBoxType = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data1))
        local nPosIndex = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data2))
        local sPos = tPos[nPosIndex]["sPos"]
        local nRoation = tPos[nPosIndex]["nRot"]
        local nGenId = rwtAreaBoxInfo[nMapId]["GenId"][k]
--        local nIsOpen = tonumber(rwTempDataGetValue(v, CONST_TEMP_DATA.Data3))
        rwDelGenEvent(nGenId)
        rwAddGenEvent(nGenId, sPos, nBoxType, nRoation)
        rwPrintErrorLog("第".. k .. "个：" .. nPosIndex)
    end

end
--测试每种刷新方式的概率
function Test_AreaBoxLoopModeRefresh(nMapid,nRandomTimes)

    local tModeTimes = {}
    for nIndex,_ in ipairs(rwtAreaBoxInfo[nMapid]["LoopMode"]) do
        tModeTimes[nIndex] = 0
    end
    for i=1,nRandomTimes do
        local nRefrshMode = rwAreaBox_LoopRefresh(nMapid,1)
        tModeTimes[nRefrshMode] = tModeTimes[nRefrshMode] + 1
    end
    for nIndex,nTimes in ipairs(tModeTimes) do
        rwPrintErrorLog("刷新方式"..nIndex.."次数："..nTimes)
    end

end
-- 消息通知信息转发接口（发通知接口）
-- @param nShowType  显示位置（1：跑马灯显示  2：消息盒子气泡显示 3：跑马灯和消息盒子气泡都显示）
-- @param nTextType  文字读取方式（1：直接下发文字 2：客户端广播ID获取）
-- @param sData 参数位（当nTextType=1时，直接填写需要显示的文字，当nTextType=2时，填写广播ID）
function test_NotifyMessage(nShowType, nTextType, sData)
    nShowType = nShowType or 1
    nTextType = nTextType or 1
    sData = sData or ""
    return NotifyMessage(nShowType, nTextType, sData)
end


-- 获取全服分享boss数量
function test_GetAllBossLiveCount()
    local nResult =  GetAllBossLiveCount()
    rwSendSystemMessage("test_GetAllBossLiveCount ="..nResult,1,1)
    return nResult
end

-- 获取当前玩家拥有分享boss数量
function test_GetUserFindLiveCount()
     local nResult = GetUserFindLiveCount()
     rwSendSystemMessage("test_GetUserFindLiveCount ="..nResult,1,1)
     return nResult
end

-- 召唤boss
-- @param nType  Boss类型（与share_boss表中的type字段对应）
-- @return 第一个参数，参数含义如下
--    CREATE_SHARE_BOSS_OK int32 = 1 //成功
--    CREATE_SHARE_BOSS_ERROR int32 = 2 //异常
--    CREATE_SHARE_BOSS_NO_ENOUGH int32 = 3 //道具数量不够
--    CREATE_SHARE_BOSS_NO_BOSS int32 = 4 //没有怪物
--    CREATE_SHARE_BOSS_LESS_LEVEL int32 = 5 //战队等级太低
--    CREATE_SHARE_BOSS_LIVE_BOSS_LIMIT_SELF int32 = 6 //该玩家已召唤并且存活的BOSS数量>=3
--    CREATE_SHARE_BOSS_OVER_LEVEL int32 = 7 //战队等级太高
--    CREATE_SHARE_BOSS_NOT_UNLOCK int32 = 8 //未解锁
--    CREATE_SHARE_BOSS_NOT_START int32 = 9 //活动未开始
--    CREATE_SHARE_BOSS_LIVE_BOSS_LIMIT_SERVER int32 = 10 //全服分享boss数量达到上限
-- @return 第二个参数，服务端生成的bossKeyId，boss的唯一标识
function test_CreateShareBoss(nType)
    nType = nType or 0
    local nResult = CreateShareBoss(nType)
     rwSendSystemMessage("test_CreateShareBoss ="..nResult,1,1)
     return nResult
end


--function player_exit_multicopymap(mapid,dynmapid,userid)
--   rwPrintErrorLog( "player_exit_multicopymap:mapid "..mapid ..",dynmapid "..dynmapid ..",userid "..userid)
--end

--function destroy_single_copymap(mapid,dynmapid,userid)
--    rwPrintErrorLog( "destroy_single_copymap "..mapid ..",dynmapid "..dynmapid ..",userid "..userid)

--end

--解锁表情
-- @param nEmojiId  表情id（对应 emoji 表中id）
function test_AddUserEmoji(nEmojiId)
	if AddUserEmoji(nEmojiId) then
		rwPrintWarnLog("表情："..nEmojiId.." 添加成功")
	else
		rwPrintWarnLog("表情："..nEmojiId.." 添加失败")
	end
end

--获取表情解锁状态
-- @param nEmojiId  表情id（对应 emoji 表中id）
function test_HasUserEmoji(nEmojiId)
	if HasUserEmoji(nEmojiId) then
		rwPrintWarnLog("表情："..nEmojiId.." 已解锁")
	else
		rwPrintWarnLog("表情："..nEmojiId.."  没解锁")
	end
end