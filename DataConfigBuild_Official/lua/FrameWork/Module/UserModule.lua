--region UserModule.lua
--Date
--用户模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================

---
-- 获取玩家属性
-- @param nType 类型查看CONST_USER_ATTR枚举
-- @return 返回true，失败返回false
function rwUserGetInt(nType)
	return GetUserInt(nType)
end

---
-- 获取玩家ID
-- @return 返回玩家ID
function rwUserGetId()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_ID)
end

---
-- 获取玩家等级
-- @return 返回玩家等级
function rwUserGetLevel()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_LEVEL)
end

---
-- 获取玩家金币
-- @return 返回玩家金币
function rwUserGetMoney()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_MONEY)
end

---
-- 获取玩家交易币
-- @return 返回玩家交易币
function rwUserGetTradMoney()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_TRAD_MONEY) 
end

---
-- 获取玩家代币
-- @return 返回玩家代币
function rwUserGetEmoney()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_EMONEY)
end

---
-- 获取玩家经验
-- @return 返回玩家经验
function rwUserGetExpBall()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_EXP_BALL) 
end

---
-- 获取玩家经验上限
-- @return 返回玩家经验上限
function rwUserGetExpBallLimit()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_EXP_BALL_LIMIT)
end

---
-- 获取玩家所在地图
-- @return 返回玩家地图ID
function rwUserGetCurMapId()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_CUR_MAP)
end

---
-- 获取玩家当前动态地图ID
-- @return 返回玩家当前动态地图ID
function rwUserGetDynMapId()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_DYNAMIC_MAP_ID)
end

---
-- 获取玩家背包空间
-- @return 返回玩家背包空间格子数
function rwUserGetPackSpace()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_EQUIP_PACK_SPACE)
end

---
-- 获取英雄形象
-- @return 返回玩家英雄形象
function rwUserGetHeroID()
    return rwUserGetInt(CONST_USER_ATTR.USER_INT_SHOW_HERO_ID)
end

---
-- 获取物品数量
-- @param nItemtypeId 物品类型ID
-- @return 返回物品数量
function rwUserGetItemCount(nItemtypeId)
    rwPrintNormalLog({Func = "rwUserGetItemCount",nItemtypeId = nItemtypeId})
    return GetItemCount(nItemtypeId)
end

---
-- 获取玩家剩余次数
-- @param nType 类型查看CONST_USER_TIMESTYPE
-- @return 返回剩余次数
function rwUserGetTimesLeft(nType)
    return GetUserTimesLeft(nType)
end

---
-- 获取玩家战队副本状态
-- @return 返回0:正常副本状态（可开启隐藏副本）,1:不正常副本状态（不可开启隐藏副本）
function rwUserGetCopyMapStatus()
    return GetCopyMapStatus()
end

---
-- 获取地图上所有玩家列表（副本）
-- @return 返回一个列表，需要用for i=1,#list遍历
function rwGetCurMapUserList()
    return GetCurMapUserId()
end


---
-- 获取账号注册时间
-- @return 返回时间戳
function rwGetUserRegTime()
    return GetUserRegTime()
end

---
-- 获取幻兽空间
-- @return 返回true:真正背包上限  false:程序警戒上限
function rwGetPetPackageLeft(bReal)
    return GetPetPackageLeft(bReal)
end

---
-- 获取玩家掩码值
-- @param nDataId 掩码ID
-- @param nIndex 该掩码ID的掩码位
-- @param nUserId 玩家ID
-- @return 返回对应的值
function rwTempDataGetValue(nDataId, nIndex, nUserId)
    nIndex = nIndex or CONST_TEMP_DATA.Data1
    nUserId = nUserId or 0
    return GetTempData(nDataId, nIndex, nUserId)
end

---
-- 获取当前玩家时装
-- @return 返回当前玩家时装
function rwGetShowFashion()
	return GetShowFashion()
end

---
-- 获取玩家剩余好友宝箱空间
-- @return 返回玩家剩余好友宝箱空间
function rwFriendBoxSpaceLeft()
    return GetBoxSpaceLeft()
end
--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 增加经验球
-- @param nVal 增加的数值
-- @return 返回布尔值
function rwAddExpBall(nVal)
    rwPrintNormalLog({Func = "rwAddExpBall",nVal = nVal})
    return AddExpBall(nVal)
end

---
-- 增加战队经验
-- @param nVal 增加的数值
-- @return 返回布尔值
function rwAddTeamExp(nVal)
    rwPrintNormalLog({Func = "rwAddTeamExp",nVal = nVal})
    return AddExp(nVal)
end

--增加金币，返回布尔值(废弃)
--function rwAddMoney(nVal)
--    rwPrintNormalLog({Func = "rwAddMoney",nVal = nVal})
--    return AddMoney(nVal)    
--end

--增加代币，返回布尔值(废弃)
--function rwAddEMoney(nVal)
--    rwPrintNormalLog({Func = "rwAddEMoney",nVal = nVal})
--    return AddEMoney(nVal)    
--end

---
-- 增加交易币
-- @param nVal 增加的数值
-- @return 返回布尔值
function rwAddTradMoney(nVal)
    rwPrintNormalLog({Func = "rwAddTradMoney",nVal = nVal})
    return AddTradMoney(nVal)
end

---
-- 判断玩家是否已经拥有该头像
-- @param nIconId 头像ID
-- @return 返回布尔值
function rwUserHeadIconIsExist(nIconId)
    rwPrintNormalLog({Func = "rwUserHeadIconIsExist",nIconId = nIconId})
    --return HasIcon(nIconId) 
    return rwHasUserRecordData(5,nIconId)
end

---
-- 添加头像
-- @param nIconId 头像ID
-- @return 返回布尔值
function rwUserAddHeadIcon(nIconId)
    rwPrintNormalLog({Func = "rwUserAddHeadIcon",nIconId = nIconId})
    --return AddIcon(nIconId) 
    return rwAddUserRecordData(5,nIconId)
end

---
-- [脚本封装]检查需求的玩家最小等级
-- @param nVal 等级
-- @return 返回布尔值
function rwChkUserReqMinLevel(nVal)
    nVal = nVal or 1
    local nCurLevel = rwUserGetLevel() or 1
    return nCurLevel >= nVal
end

---
-- [脚本封装]检查需求的玩家最大等级
-- @param nVal 等级
-- @return 返回布尔值
function rwChkUserReqMaxLevel(nVal)
    nVal = nVal or 999
    local nCurLevel = rwUserGetLevel() or 1
    return nCurLevel <= nVal
end

---
-- [脚本封装]检测玩家经验球是否会超出上限
-- @param nVal 要增加的经验值
-- @return 返回布尔值
function rwChkUserExpBallLimit(nVal)
    local nCurExpBall = rwUserGetExpBall()
    local nExpBallLimit = rwUserGetExpBallLimit()
    if (nCurExpBall + nVal > nExpBallLimit) then
        return true
    end
    return false
end

---
-- [脚本封装]检测玩家金钱是否足够
-- @param nVal 检测的金钱值
-- @return 返回布尔值
function rwChkUserMoney(nVal)
    local nCurMoney = rwUserGetMoney()
    return nCurMoney >= nVal
end

---
-- [脚本封装]检测玩家金钱是否会超出上限
-- @param nVal 要增加的金钱值
-- @return 返回布尔值
function rwChkUserMoneyLimit(nVal)
    local nCurMoney = rwUserGetMoney()
    if (nCurMoney + nVal > MONEY_LIMIT) then
        return true
    end
    return false
end

---
-- [脚本封装]检测玩家代币是否足够
-- @param nVal 检测的代币值
-- @return 返回布尔值
function rwChkUserEmoney(nVal)
    local nCurEmoney = rwUserGetEmoney()
    return nCurEmoney >= nVal
end

---
-- [脚本封装]检测玩家代币是否会超出上限
-- @param nVal 要增加的代币值
-- @return 返回布尔值
function rwChkUserEmoneyLimit(nVal)
    local nCurEmoney = rwUserGetEmoney()
    if (nCurEmoney + nVal > EMONEY_LIMIT) then
        return true
    end
    return false
end

--检测玩家物品是否会超出携带上限
function rwChkUserItemLimit(nItemType,nCount)
    return false
end

---
-- [脚本封装]检测玩家幻兽背包空间
-- @param nCount 要检测梳理
-- @return 返回布尔值
function rwChkUserPetPackSpace(nCount)
    local nCount = nCount or 1
    if rwGetPetSpace(CONST_USER_PET_SPACE.PACKAGE) >= nCount then
        return false
    elseif rwGetPetSpace(CONST_USER_PET_SPACE.PACKAGE) >= 1 and rwGetPetSpace(CONST_USER_PET_SPACE.PROGRAM) >= nCount then
        return false
    else
        return true
    end   
end

---
-- 创建掩码
-- @param nDataId 掩码ID
-- @param nUserId 玩家ID
-- @return 返回布尔值
function rwTempDataAdd(nDataId, nUserId)
    nUserId = nUserId or 0
    if not nDataId then
        return false
    end
    return AddTempData(nDataId, nUserId)
end

---
-- 判断掩码是否存在
-- @param nDataId 掩码ID
-- @param nUserId 玩家ID
-- @return 返回布尔值
function rwTempDataIsExist(nDataId, nUserId)
    nUserId = nUserId or 0
    if not nDataId then
        return false
    end
    return HasTempData(nDataId, nUserId)
end

---
-- 重置掩码(时间重置为当前时间，其他字段重置为0)
-- @param nDataId 掩码ID
-- @param nUserId 玩家ID
-- @return 返回布尔值
function rwTempDataReset(nDataId, nUserId)
    nUserId = nUserId or 0
    if not nDataId then
        return false
    end
    return ResetTempData(nDataId, nUserId)
end

---
-- 掩码设置
-- @param nDataId 掩码ID
-- @param nVal 值
-- @param nIndex 掩码位
-- @param nUserId 玩家ID
-- @param bSetRecordTime 掩码设置时是否重置时间
-- @return 返回布尔值
function rwTempDataSet(nDataId, nVal, nIndex, nUserId,bSetRecordTime)
    nUserId = nUserId or 0
    nIndex =  nIndex or CONST_TEMP_DATA.Data1
	bSetRecordTime = bSetRecordTime or false
    if nDataId and nVal then
        return SetTempData(nDataId,nIndex,nVal, nUserId,bSetRecordTime)
    else
        return false
    end 
end

---
-- [脚本封装]掩码设置
-- @param nDataId 掩码ID
-- @param nVal 值
-- @param nIndex 掩码位
-- @param nUserId 玩家ID
-- @return 返回布尔值
function rwUserTempDataSet(nDataId,nVal,nIndex, nUserId,bSetRecordTime)
    nUserId = nUserId or 0
	bSetRecordTime = bSetRecordTime or false
    rwPrintNormalLog({Func = "rwUserTempDataSet",nDataId = nDataId,nVal = nVal,nIndex = nIndex})
    if not rwTempDataIsExist(nDataId, nUserId) then
        if rwTempDataAdd(nDataId, nUserId) then
            return rwTempDataSet(nDataId,nVal,nIndex, nUserId,bSetRecordTime)
        end
    else
        return rwTempDataSet(nDataId,nVal,nIndex, nUserId,bSetRecordTime)
    end
    return false
end

---
-- [脚本封装]掩码隔天判断
-- @param nTempData 掩码ID
-- @param tRefreshTime 刷新时间点，默认0点0分
-- @return 返回布尔值
function rwTempDataDayJudgment(nTempData,tRefreshTime)
    if not rwTempDataIsExist(nTempData) then
        rwTempDataAdd(nTempData)
        return true
    end

    --确定重置时间
    local nRestHour = 0
    local nRestMin = 0
    if rwChkTable(tRefreshTime) then
        nRestHour = tRefreshTime.Hour or 0
        nRestMin = tRefreshTime.Min or 0
    end

    --获取掩码记录时间
    local nTempTime = rwTempDataGetValue(nTempData, CONST_TEMP_DATA.RecordTime)

    --根据当前时间获取最近一次刷新点时间戳
    local nLocalTime = os.time()
    local tCurData = os.date("*t",nLocalTime)

    local nCurrentHour = tCurData.hour
    local nCurrentMin = tCurData.min
    
    --获取当天刷新点与当前时间差
    local nTimeDiff = (nCurrentHour * 3600 + nCurrentMin * 60) - (nRestHour * 3600 + nRestMin * 60)
    --数据校正，为负数时往前推一天
    local nCorrectTime = nTimeDiff >= 0 and nTimeDiff or (86400 + nTimeDiff)
    --前一次重置点时间戳
    local nBeforTime = nLocalTime - nCorrectTime
    --掩码记录时间小于上次重置时间则重置
    if nTempTime < nBeforTime then
        return true
    else
        return false
    end

end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]玩家登陆
function user_login()
    --rwPrintLog("登录回调")
    rwLinkUserLogin()
end

---
-- [回调]玩家成功改名
function user_change_name_suc()
    rwLinkUserChangeNameSus()
end

---
-- [回调]玩家定时器
function user_ontimer(nUserId)
    local nHour = tonumber(os.date("%H"))
    local nMinute = tonumber(os.date("%M"))
    local nHM = tonumber(os.date("%H%M"))

    --分钟触发
    if tUserOntimerFunc_M[nMinute] ~= nil then
        for _,func in ipairs(tUserOntimerFunc_M[nMinute]) do
            func(nMinute)
        end
    end
    --小时/分钟
    if tUserOntimerFunc_HM[nHM] ~= nil then
        for _,func in ipairs(tUserOntimerFunc_HM[nHM]) do
            func(nHour,nMinute)
        end
    end
end

---
-- [回调]玩家升级
function user_uplevel(nBeforeLevel,nFinalLevel)
    rwLinkUserUpLevel(nBeforeLevel,nFinalLevel)
end
--===================================================================
--==============================回调封装=============================
--===================================================================
--玩家登陆
function rwLinkUserLogin()
--rwPrintLog("登录执行")
    for k,v in pairs (tUserLoginAction) do
        if rwChkFunc(v) then
            v()
        end
    end
end

--玩家改名成功
function rwLinkUserChangeNameSus()
    local nUserId = rwUserGetId()
    --rwPrintLog("玩家改名成功,userid = "..nUserId)
    for _,v in ipairs(rwtChangNameSuc) do
        if rwChkFunc(v) then
            v(nUserId)
        end
    end
end

--玩家升级
function rwLinkUserUpLevel(nBeforeLevel,nFinalLevel)
      --rwPrintWarnLog("战队升级成功,nBeforeLevel = "..nBeforeLevel .. "nFinalLevel" .. nFinalLevel)
      for i,v  in pairs (rwtTaskUpLevelInfo) do 
          if rwTaskChkUserInTask(v) then
              if rwtTask[v]["NeedLevel"] <= nFinalLevel then
                 rwTaskSetData(v,CONST_TASK_INFO_INDEX.TASK_FINISH_FLAG,2)
                 rwOpenNpcChatDialog(rwtTask[v]["DialogId"],CONST_NPCCHAT_TYPE.TASK,v)
                 break
              end
          end          
      end
--    local nUserId = rwUserGetId()
--    rwPrintLog("战队升级成功,userid = "..nUserId)
--    for _,v in pairs(rwtTeamUpLevel) do
--        if rwChkFunc(v) then
--            v(nUserId)
--        end
--    end
end