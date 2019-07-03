--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--怪物组模板
--YJX

--endregion



rwMonsterGroupTemplate = class("rwMonsterGroupTemplate")
ENUM_MONSTERGROUP_TEMPLATE[CONST_MONSTERGROUP_TYPE.BASE] = rwMonsterGroupTemplate

function rwMonsterGroupTemplate:ctor(nMonsterGroupId,nMonsterGroupType,nGenEventId)
    self._MonsterGroupType = nMonsterGroupType
    self._MonsterGroupId = nMonsterGroupId
    self._GenEventId = nGenEventId
    self._MonsterGroupInfo = rwtMonsterGroup[nMonsterGroupType] or {}
end

--战斗校验
function rwMonsterGroupTemplate:BattleCheck()
    local nFunc = self._MonsterGroupInfo["BattleCheckFunc"]
	if nFunc ~= nil and type(nFunc) == "function" then
        return nFunc(self._MonsterGroupId,self._MonsterGroupType,self._GenEventId)
	else
		return false
    end
end

--怪物组战斗结束处理函数  1胜利 2失败 3离开
function rwMonsterGroupTemplate:BattleOver(nResult)
    if not nResult then
        rwPrintWarnLog("战斗结果返回值错误")
        return
    end

    if not rwtMonsterGroup[self._MonsterGroupType] then
        rwPrintWarnLog("怪物组ID" .. self._MonsterGroupType .. "未配置")
        return
    end

    self:BattleOverCommon()  --战斗结果的通用处理

    if nResult == 1 then
        self:BattleWinOnTask()
        self:BattleWinHandle()

    else
        self:BattleFailOnTask()

        if nResult == 2 then
            self:BattleLoseHandle()

        elseif nResult == 3 then
            self:BattleEscapeHandle()
        end
    end

end

--任务模板相关
function rwMonsterGroupTemplate:BattleWinOnTask()
    if rwtTaskMonsterGroupInfo[self._MonsterGroupType] then
        for taskId, _ in pairs(rwtTaskMonsterGroupInfo[self._MonsterGroupType]) do
            if rwTaskChkUserInTask(taskId) then
                local nTaskDetailType = rwtTask[taskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(taskId):MonsterGroupBeKilled()
                end
            end
        end
    end

    if rwtTargetMonsterGroupInfo[self._MonsterGroupType] then
        for _, taskId in pairs(rwtTargetMonsterGroupInfo[self._MonsterGroupType]) do
            rwBaseTarget:create(taskId):EventOnTargetUpdate()
        end
    end
end

function rwMonsterGroupTemplate:BattleFailOnTask()
    if rwtTaskMonsterGroupInfo[self._MonsterGroupType] then
        for taskId, _ in pairs(rwtTaskMonsterGroupInfo[self._MonsterGroupType]) do
            if rwTaskChkUserInTask(taskId) then
                local nTaskDetailType = rwtTask[taskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(taskId):KillMonsterFail()
                end
            end
        end
    end

    if rwtTargetMonsterGroupBattleFailInfo[self._MonsterGroupType] then
        for _, taskId in pairs(rwtTargetMonsterGroupBattleFailInfo[self._MonsterGroupType]) do
            rwBaseTarget:create(taskId):EventOnTargetUpdate()
        end
    end
end

--不论战斗结果都会处理
function rwMonsterGroupTemplate:BattleOverCommon()
    if rwtMonsterGroup[self._MonsterGroupType] and rwChkFunc (rwtMonsterGroup[self._MonsterGroupType]["BattleOverCommon"]) then
        rwtMonsterGroup[self._MonsterGroupType]["BattleOverCommon"](self._MonsterGroupId,self._MonsterGroupType,self._GenEventId)
    end
end

--战斗胜利处理
function rwMonsterGroupTemplate:BattleWinHandle()
    if rwtMonsterGroup[self._MonsterGroupType] and rwChkFunc(rwtMonsterGroup[self._MonsterGroupType]["BattleWin"]) then
        rwtMonsterGroup[self._MonsterGroupType]["BattleWin"](self._MonsterGroupId,self._MonsterGroupType,self._GenEventId)
    end
end

--战斗失败处理
function rwMonsterGroupTemplate:BattleLoseHandle()
    if rwtMonsterGroup[self._MonsterGroupType] and rwChkFunc(rwtMonsterGroup[self._MonsterGroupType]["BattleLose"]) then
        rwtMonsterGroup[self._MonsterGroupType]["BattleLose"](self._MonsterGroupId,self._MonsterGroupType,self._GenEventId)
    end
end

--战斗逃跑处理
function rwMonsterGroupTemplate:BattleEscapeHandle()
    if rwtMonsterGroup[self._MonsterGroupType] and rwChkFunc(rwtMonsterGroup[self._MonsterGroupType]["BattleEscape"]) then
        rwtMonsterGroup[self._MonsterGroupType]["BattleEscape"](self._MonsterGroupId,self._MonsterGroupType,self._GenEventId)
    end
end


--===============================================================================--
--=========						  接口      						=========--
--===============================================================================--
--获取怪物模板
function rwMonsterGroupTemplate.GetTemplateType(nMonsterGroupType)
    if not rwtMonsterGroup[nMonsterGroupType] then
        rwtMonsterGroup[nMonsterGroupType] = {}
    end
    return rwtMonsterGroup[nMonsterGroupType]["Type"] or CONST_MONSTERGROUP_TYPE.BASE
end