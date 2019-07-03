--region HeroModule.lua
--Date
--英雄模块



--endregion

--===================================================================
--===========================取值函数================================
--===================================================================
---
-- 获取英雄属性
-- @param nHeroType 英雄类型
-- @param nAttrType 类型对应CONST_HERO_ATTR
-- @return 数值
function rwHeroGetInt(nHeroType,nAttrType)
	return GetHeroInt(nAttrType,nHeroType)
end

---
-- [脚本封装]获取英雄等级
-- @param nHeroType 英雄类型
-- @return 数值
function rwHeroGetLevel(nHeroType)
    return rwHeroGetInt(nHeroType,CONST_HERO_ATTR.HERO_ATTR_LEVEL)    
end
--经验值
--function rwHeroGetExp(nHeroType)
--    return rwHeroGetInt(nHeroType,CONST_HERO_ATTR.HERO_ATTR_EXP)
--end
--技能点
--function rwHeroGetSkillPoint(nHeroType)
--    return rwHeroGetInt(nHeroType,CONST_HERO_ATTR.HERO_ATTR_SKILL_POINTS)
--end
--是否首次重置技能点
--function rwHeroGetResetFirst()
--    return rwHeroGetInt(nHeroType,CONST_HERO_ATTR.HERO_ATTR_RESET_FIRST)
--end

---
-- [脚本封装]获取英雄阶数
-- @param nHeroType 英雄类型
-- @return 数值
function rwHeroGetRank(nHeroType)
    return rwHeroGetInt(nHeroType,CONST_HERO_ATTR.HERO_ATTR_HERO_RANK)
end

---
-- [脚本封装]获取转职次数
-- @param nHeroType 英雄类型
-- @return 数值
function rwHeroGetClass(nHeroType)
    return rwHeroGetInt(nHeroType,CONST_HERO_ATTR.HERO_ATTR_HERO_CLASS)
end

---
-- 获取所有出战英雄
-- @return 列表
function rwHeroGetAllInFight()    
    return GetFightHeroType()
end

--获取英雄战力
--@param nHeroType 英雄ID
--当nHeroType = 0时，表示获取战队战力；当nHeroType为单个英雄id时，表示单个英雄战力
function rwGetHeroFight(nHeroType)
    nHeroType = nHeroType or 0
    rwPrintNormalLog({Func = "rwGetHeroFight",nHeroType = nHeroType})
    local nFight = GetHeroFight(nHeroType)
    return nFight
end
--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 是否拥有某类型英雄
-- @param nHeroType 英雄类型
-- @return 布尔值
function rwHeroIsHas(nHeroType)
    rwPrintNormalLog({Func = "rwHeroIsHas",nHeroType = nHeroType})
    return HasHero(nHeroType)
end

---
-- 添加英雄
-- @param nHeroType 英雄类型
-- @return 布尔值
function rwHeroAdd(nHeroType)
    rwPrintNormalLog({Func = "rwHeroAdd",nHeroType = nHeroType})
    return AddHero(nHeroType)
end

---
-- 发起英雄转职
-- @param nHeroType 英雄类型
function rwHeroChangeClass(nHeroType)
    rwPrintNormalLog({Func = "rwHeroChangeClass",nHeroType = nHeroType})
    ChangeHeroClass(nHeroType)
end

---
-- 增加英雄经验
-- @param nHeroType 英雄类型
-- @param nExp 经验值
-- @return 布尔值
function rwHeroAddexp(nHeroType,nExp)
    rwPrintNormalLog({Func = "rwHeroAddexp",nHeroType = nHeroType,nExp = nExp})
    return AddHeroExp(nHeroType,nExp)
end

--判断某个英雄是否上阵
--@param nHeroType 英雄ID
function rwIsHeroFight(nHeroType)
    nHeroType = nHeroType or 0
    rwPrintNormalLog({Func = "rwIsHeroFight",nHeroType = nHeroType})
    return IsHeroFight(nHeroType)
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]点击英雄转职按钮触发
-- @param nHeroType 英雄类型
function hero_change_class(nHeroType)
    rwLinkHeroChangeClass(nHeroType)
end

--===================================================================
--==============================回调封装=============================
--===================================================================

--点击英雄转职任务按钮触发
--nHeroType:英雄类型
function rwLinkHeroChangeClass(nHeroType)
    rwPrintNormalLog({Func = "rwLinkHeroChangeClass",nHeroType = nHeroType})
    if not nHeroType then
        return false
    end
    local nClass = rwHeroGetClass(nHeroType)
    nClass = nClass or 0
    local tClassInfo = rw_GetChangeClassReqInfo(nClass+1)
    local tTaskInfo = rw_GetChangeClassTaskByHero(nHeroType)
    if tClassInfo and tTaskInfo then
        --rwPrintWarnLog("rwLinkHeroChangeClass:转职任务条件不满足   -1")
        local nRank = rwHeroGetRank(nHeroType)
        
        if rwHeroGetLevel(nHeroType) >= tClassInfo["ReqLev"] and nRank >= tClassInfo["ReqRank"] then
            --rwPrintWarnLog("rwLinkHeroChangeClass:转职任务条件不满足   -3")
            local nTaskId = tTaskInfo["task" .. nClass+1] or 0
            if nTaskId then                
                --rwTaskTemplate:create(nTaskId,CONST_TASK_TYPE.CHANGE_CLASS):Accept(2)
                local obj_task = rwBaseTask:create(nTaskId,CONST_TASK_TYPE.CHANGE_CLASS)
                obj_task:AcceptTask()
                obj_task:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1, 1)
                return true
            end             
        end
        --rwPrintWarnLog("rwLinkHeroChangeClass:转职任务条件不满足")
    else
        --rwPrintWarnLog("rwLinkHeroChangeClass:请检查配置")   
    end
    return false
end
