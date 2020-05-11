--region SystemModule.lua
--Purpose:		系统模块 LOG 系统提示 系统广播
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 余锦鑫 $
--Modified:		$Date: 18-08-08 $
--RCS-ID:		$Revision: 1 $
--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================

--==============================System  Sys==========================
---
-- [脚本封装]获取城镇解锁的状态
-- @param nAreaId
-- @param nTownId
-- @return 布尔值
function rwSysGetTaskLockMask(nAreaId, nTownId)
    --return GetTaskLockMask(nAreaId, nTownId)
     return rwHasUserRecordData(1,nAreaId,nTownId)
end

---
-- [脚本封装]获取传送阵解锁状态
-- @param nData1
-- @param nData2
-- @return 布尔值
function rwHasUserRecordData_Transfer_Mask(nData1,nData2)
    nData2 = nData2 or 0
    return rwHasUserRecordData(2,nData1,nData2)
end

---
-- [脚本封装]获取系统功能解锁状态
-- @param nData1
-- @param nData2
-- @return 布尔值
function rwHasUserRecordData_System_Unlock(nData1,nData2)
    nData2 = nData2 or 0
    return rwHasUserRecordData(3,nData1,nData2)
end

---
-- [脚本封装]获取头像解锁状态
-- @param nData1
-- @param nData2
-- @return 布尔值
function rwHasUserRecordData_User_Icon(nData1,nData2)
    nData2 = nData2 or 0
    return rwHasUserRecordData(5,nData1,nData2)
end

---
-- [脚本封装]获取掩码和功能随主线解锁状态
-- @param nMapMaskId
-- @return 布尔值
function rwSysGetWorldMapLockMask(nMapMaskId)
    return rwHasUserRecordData(6,nMapMaskId)
end

---
-- 获取开服时间
-- @return 时间戳
function rwGetStartServerTime()
    return GetStartServerTime()
end

---
-- 获取掩码和功能随主线解锁状态
-- @param nType 功能类型
-- @param nData1 参数1
-- @param nData2 参数2
-- @usage 当nType = 1时， nData1表示片区， nData2表示城镇
-- @usage 当nType = 2时， nData1表示传送阵id
-- @usage 当nType = 3时， nData1表示系统功能id
-- @usage 当nType = 5时， nData1表示头像id
-- @usage 当nType = 6时， nData1表示地图level id
-- @return 布尔值
function rwHasUserRecordData(nType,nData1,nData2)
    nType = nType or 0
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    rwPrintNormalLog({Func = "rwHasUserRecordData",nType = nType,nData1 = nData1,nData2 = nData2})
    return HasUserRecordData(nType,nData1,nData2)
end

-- 获取某类静态表配置的上限次数
-- @param nType 索引times_limit表中type数据
 function rwGetUserTimesLimit(nType)  
    rwPrintNormalLog({Func = "rwGetUserTimesLimit",nType = nType})
    return GetUserTimesLimit(nType)
 end

-- 获取开服天数
-- @return int开服天数
function rwGetServerOpenDays()
	return GetServerOpenDays()
end

-- 获取玩家角色创建天数(创建单天返回1
-- @return int
function rwGetUserRoleCreationDays()
	return GetUserRoleCreationDays()
end

-- 获取指定活动id开始和结束时间戳
-- 目前只针对dailyact表中的type=6,7,8,9的限时活动。
-- 其中type=8限时循环活动，与type=9不限时循环活动做一样处理，返回的皆为当前周期（或下个周期）的起始时间戳和截止时间戳。
-- @param nDailyactId 活动id
 function rwGetDailyactStartAndEndTime(nDailyactId)
	nDailyactId = nDailyactId or 0
	return GetDailyactStartAndEndTime(nDailyactId)
 end
--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 对话框对白
-- @param sStr JSON串
-- @param sFunc String类型，函数
function rwAddDlgText(sStr,sFunc)
	sFunc = sFunc or ""
    rwPrintNormalLog({Func = "rwAddDlgText",sStr = sStr,sFunc = sFunc})
    AddDlgText(sStr,sFunc)
end

---
-- 对话框选项
-- @param sStr JSON串
function rwAddDlgOption(sStr)
    rwPrintNormalLog({Func = "rwAddDlgOption",sStr = sStr})
    AddDlgOption(sStr)
end

---
-- 副本对话框
-- @param sStr JSON串
function rwAddCopyMapDlg(sStr)
    rwPrintNormalLog({Func = "rwAddCopyMapDlg",sStr = sStr})
    return AddCopyMapDlg(sStr)    
end

---
-- 打开界面
-- @param nType 索引CONST_MENUTYPE
-- @param nData1 参数1
-- @param nData2 参数2
-- @param nData3 参数3
function rwOpenLocalWnd(nType,nData1,nData2,nData3)
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwPrintNormalLog({Func = "rwOpenLocalWnd",nType = nType,nData1 = nData1,nData2 = nData2,nData3 = nData3})
    --OpenLocalDialog(nType)
    OpenLocalDialog(nType,nData1,nData2,nData3) 
end

---
-- 关闭界面
-- @param nType 索引CONST_MENUTYPE
-- @param nData1 参数1，nType=1时，填写对白id
-- @param nData2 参数2
-- @param nData3 参数3
function rwCloseLocalDialog(nType,nData1,nData2,nData3)
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwPrintNormalLog({Func = "rwCloseLocalDialog",nType = nType,nData1 = nData1,nData2 = nData2,nData3 = nData3})
    --CloseLocalDialog(nType)
    CloseLocalDialog(nType,nData1,nData2,nData3) 
end

---
-- LOG打印功能
-- @param sMsg 信息
-- @param nType LOG类型
function rwPrintLog(sMsg,nType)
    nType = nType or CONST_LOG_TYPE.NORMAL
    AddLog(nType,"[UserId:" .. rwUserGetId() .."]" .. sMsg)
end

---
-- [脚本封装]普通LOG
-- @param tMsg 信息表
function rwPrintNormalLog(tMsg)
    --local stxt = ""
    --for i,v in pairs(tMsg) do
    --    stxt = i .. ":" .. tostring(v) .. "," .. stxt
    --end
    --rwPrintLog(string.sub(stxt, 1, -2),CONST_LOG_TYPE.NORMAL)
end

---
-- [脚本封装]警告LOG
-- @param sMsg 提示文字
function rwPrintWarnLog(sMsg)
    sMsg = sMsg or ""
    rwPrintLog(sMsg,CONST_LOG_TYPE.WARN)
end

---
-- [脚本封装]错误LOG
-- @param sMsg 提示文字
function rwPrintErrorLog(sMsg)
    sMsg = sMsg or ""
    rwPrintLog(sMsg,CONST_LOG_TYPE.ERROR)
end

---
-- 系统提示
-- @param sStr 提示文字
-- @param nType 1表示弹框 2表示弹提示
-- @param nShowType 1是立即 2是战后
-- @param nUserId 玩家ID
-- @return 布尔值
function rwSendSystemMessage(sStr,nType,nShowType,nUserId)
    nType = nType or 2
    nShowType = nShowType or 2
    nUserId = nUserId or 0
    rwPrintNormalLog({Func = "rwSendSystemMessage",sStr = sStr,nType=nType,nShowType=nShowType,nUserId=nUserId})
    SendSystemMessage(nType,nShowType,sStr,nUserId)
end

---
-- [脚本封装]城镇解锁
-- @param nAreaId 片区ID
-- @param nTownId 城镇ID
-- @return 布尔值
function rwSysSetTaskLockMask(nAreaId, nTownId)
    rwPrintNormalLog({Func = "rwSysSetTaskLockMask",nAreaId = nAreaId,nTownId = nTownId})
    --return SetTaskLockMask(nAreaId, nTownId)
    return rwAddUserRecordData(1,nAreaId,nTownId)
end

---
-- [脚本封装]传送阵解锁
-- @param nData1
-- @param nData2
-- @return 布尔值
function rwAddUserRecordData_Transfer_Mask(nData1,nData2)
    nData2 = nData2 or 0
     if not rwHasUserRecordData(2,nData1,nData2) then
        rwAddUserRecordData(2,nData1,nData2)
     end
end


---
-- [脚本封装]系统功能解锁
-- @param nData1
-- @param nData2
-- @return 布尔值
function rwAddUserRecordData_System_Unlock(nData1,nData2)
    nData2 = nData2 or 0
     if not rwHasUserRecordData(3,nData1,nData2) then
        rwAddUserRecordData(3,nData1,nData2)
      end
end

---
-- [脚本封装]头像解锁
-- @param nData1
-- @param nData2
-- @return 布尔值
function rwAddUserRecordData_User_Icon(nData1,nData2)
    nData2 = nData2 or 0
     if not rwHasUserRecordData(5,nData1,nData2) then
        rwAddUserRecordData(5,nData1,nData2)
     end
end

---
-- [脚本封装]世界地图解锁
-- @param nMapMaskId
-- @return 布尔值
function rwSysSetWorldMapLockMask(nMapMaskId)
    return rwAddUserRecordData(6,nMapMaskId)
end

---
-- 递增玩家次数表的数据user_times
-- @param nType 索引CONST_USER_TIMESTYPE
-- @return 布尔值
function rwSysIncreaseUserTimes(nType)
    rwPrintNormalLog({Func = "rwSysIncreaseUserTimes",nType = nType})
    return IncreaseUserTimes(nType)
end

---
-- 物品奖励弹框
-- @param sStr JSON串
-- @param nUserId 弹框对象
-- @return 布尔值
function rwAddViewDataDialog(sStr,nUserId)
    sStr = sStr or ""
    nUserId = nUserId or 0
    rwPrintNormalLog({Func = "rwAddViewDataDialog",sStr = sStr,nUserId = nUserId})
    return AddViewDataDialog(sStr,nUserId)    
end

---
-- 返回2个数之间的随机数
-- @param nMin 最小值
-- @param nMax 最大值
-- @return 布尔值
function rwGetRandInt(nMin,nMax) 
    local nRet = GetRandInt(nMin,nMax+1)
    return nRet
end

---
-- 功能和掩码修改
-- @param nType 功能类型
-- @param nData1 参数1
-- @param nData2 参数2
-- @usage 当nType = 1时， nData1表示片区， nData2表示城镇
-- @usage 当nType = 2时， nData1表示传送阵id
-- @usage 当nType = 3时， nData1表示系统功能id
-- @usage 当nType = 5时， nData1表示头像id
-- @usage 当nType = 6时， nData1表示地图level id
-- @return 布尔值
function rwAddUserRecordData(nType,nData1,nData2)
    nType = nType or 0
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    rwPrintNormalLog({Func = "rwAddUserRecordData",nType = nType,nData1 = nData1,nData2 = nData2})
    return AddUserRecordData(nType,nData1,nData2)
end

--战技研习条件解锁
-- @param nTrainId 解锁的关卡ID
-- @return 布尔值
function rwUnlockTrain(nTrainId)
    nTrainId = nTrainId or 0
    return UnlockTrain(nTrainId)
end
--
--监听事件次数接口
-- @param nType 事件大类型
-- @param nTypeId 事件子类型
-- @param nData1 参数1
-- @param nData2 参数2
-- @param nData3 参数3
-- @usage 当nType = 15,nTypeId = 1时， nData1表示宝箱品质
-- @usage nData2、nData3为预留参数，暂无含义
function rwRecordMonitorEvent(nType,nTypeId,nData1,nData2,nData3)
    nType = nType or 0
    nTypeId = nTypeId or 0
    nData1 = nData1 or 0
    nData2 = nData2 or 0
    nData3 = nData3 or 0
    rwPrintNormalLog({Func = "rwRecordMonitorEvent",nType = nType,nTypeId = nTypeId,nData1 = nData1,nData2 = nData2,nData3 = nData3})
    return RecordMonitorEvent(nType,nTypeId,nData1,nData2,nData3)
end

-- [脚本封装]每日必做活跃度记录
-- @param nType 每日必做活动类型(1 探索层宝箱开启)
-- @param nNum 用于记录本次增加的次数
function rwRecordActiveEvent(nType,nNum)
    return RecordActiveEvent(nType,nNum)
end

--
-- 判断循环活动的活动时间
-- @param nId 对应dailyact.id
-- @param nTimeOffset 时间偏移量，单位秒，目前用在开服时间、账号创建时间类型，例如，某些活动不是按自然天计算，而是从5:00:00到次日4:59:59算一天，此时timeOffset传5* 60 * 60
function rwIsDailyactTime(nId,nTimeOffset)
	nId = nId or 0
	nTimeOffset = nTimeOffset or 0
	rwPrintNormalLog({Func = "rwIsDailyactTime",nId = nId,nTimeOffset = nTimeOffset})
	return IsDailyactTime(nId,nTimeOffset)
end

-- 播放音频接口
-- @param nAudioId 音频ID
-- @param nControlType 音频控制类型（0：停播背景音乐；1：播放背景音乐；2：停播音效；3：播放音效）
-- @param nFadeInTime 淡入处理（0：不做处理；X：对应时间，表示进行时长x的淡入，单位毫秒）
-- @param nFadeOutTime 淡出处理（0：不做处理；X：对应时间，表示进行时长x的淡入，单位毫秒）
function rwSynAudioInfo(nAudioId, nControlType, nFadeInTime, nFadeOutTime)
    nControlType = nControlType or 0
    nFadeInTime = nFadeInTime or 0
    nFadeOutTime = nFadeOutTime or 0
    return SynAudioInfo(nAudioId, nControlType, nFadeInTime, nFadeOutTime)
end

-- 获取全服事件单个数据
-- @param nRegIndex 全服事件id
-- @param nDataIndex 对应data参数位
-- @return int
function rwGetGlobalReg(nRegIndex,nDataIndex)
	nRegIndex = nRegIndex or 0
	nDataIndex = nDataIndex or 0
	rwPrintNormalLog({Func = "rwGetGlobalReg",nRegIndex = nRegIndex, nDataIndex = nDataIndex})
	return GetGlobalReg(nRegIndex, nDataIndex)
end
-- 设置全服事件单个数据
-- @param nRegIndex 全服事件id
-- @param nDataIndex 对应data参数位
-- @param nData 参数设置内容
-- @return 布尔值
function rwSetGlobalReg(nRegIndex,nDataIndex,nData)
	nRegIndex = nRegIndex or 0
	nDataIndex = nDataIndex or 0
	nData = nData or 0
	rwPrintNormalLog({Func = "rwSetGlobalReg",nRegIndex = nRegIndex, nDataIndex = nDataIndex, nData = nData})
	return SetGlobalReg(nRegIndex, nDataIndex, nData)
end
-- 获取全服事件多个数据
-- @param nRegIndex 全服事件id
-- @return int
function rwGetAllGlobalReg(nRegIndex)
	nRegIndex = nRegIndex or 0
	rwPrintNormalLog({Func = "rwGetAllGlobalReg",nRegIndex = nRegIndex})
	return GetAllGlobalReg(nRegIndex) 
end
-- 设置全服事件多个数据
-- @param nRegIndex 全服事件id
-- @param nData1 
-- @param nData2
-- @param nData3
-- @param nData4
-- @param nData5
-- @param nData6
-- @return 布尔值
function rwSetAllGlobalReg(nRegIndex, nData1, nData2, nData3, nData4, nData5, nData6) 
	nRegIndex = nRegIndex or 0
	nData1 = nData1  or 0
	nData2 = nData2  or 0
	nData3 = nData3  or 0
	nData4 = nData4  or 0
	nData5 = nData5  or 0
	nData6 = nData6  or 0
	rwPrintNormalLog({Func = "rwSetAllGlobalReg",nRegIndex = nRegIndex, nData1 = nData1, nData2 = nData2, nData3 = nData3, nData4 = nData4, nData5 = nData5, nData6 = nData6})
	return SetAllGlobalReg(nRegIndex, nData1, nData2, nData3, nData4, nData5, nData6) 
end

-- 打印埋点日志接口
-- @param sDataStr
function rwAddScriptLog(sDataStr)
    sDataStr = sDataStr or ""
    return AddScriptLog(sDataStr)
end
--===================================================================
--===============================回调================================
--===================================================================




--===================================================================
--==============================回调封装=============================
--===================================================================