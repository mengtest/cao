--region MonsterModule.lua
--Date
--怪物模块



--endregion

--===================================================================
--==============================取值函数=============================
--===================================================================




--===================================================================
--==============================功能函数=============================
--===================================================================
---
-- 触发和怪物的战斗
-- @param nGenId nGenId
function rwAutoBattle(nGenId)
    rwPrintNormalLog({Func = "rwAutoBattle",nGenId = nGenId})
    AutoBattle(nGenId)
end


---
-- 怪物巡逻
-- @param nMonster_GenId 怪物genid
-- @param nEscapeFlag 0巡逻 1逃跑
-- @param nSpeedRate 巡逻速度比例  百位进制 传参100 相当于客户端收到参数1
-- @param nFightRadiu 战斗触发半径 百位进制 传参100 相当于客户端收到参数1
-- @param nTriggerRadiu 视野半径 百位进制 传参100 相当于客户端收到参数1
-- @param nTriggerAngle 视野角度 百位进制 传参100 相当于客户端收到参数1
-- @param nBacktabRadiu 偷袭触发半径 百位进制 传参100 相当于客户端收到参数1
-- @param nStayMinTime 巡逻停留时间下限
-- @param nStayMaxTime 巡逻停留时间上限
-- @param nEscapeSpeedRate 逃跑速度 百位进制 传参100 相当于客户端收到参数1
-- @param sEscapePos 逃跑终点
function rwChangeMonsterRounds(nMonster_GenId,nEscapeFlag,nSpeedRate,nFightRadiu,nTriggerRadiu,nTriggerAngle,nBacktabRadiu,nStayMinTime,nStayMaxTime,nEscapeSpeedRate,sEscapePos)
    nMonster_GenId = nMonster_GenId or 0
    nEscapeFlag = nEscapeFlag or 0
    nSpeedRate = nSpeedRate or -1
    nFightRadiu = nFightRadiu or -1
    nTriggerRadiu = nTriggerRadiu or -1
    nTriggerAngle = nTriggerAngle or -1
    nBacktabRadiu = nBacktabRadiu or -1
    nStayMinTime = nStayMinTime or -1
    nStayMaxTime = nStayMaxTime or -1
    nEscapeSpeedRate = nEscapeSpeedRate or -1
    sEscapePos = sEscapePos or ""
    local tToJsonTable = {}
    tToJsonTable = {["escapeFlag"] = nEscapeFlag,["speedRate"] = nSpeedRate,["fightRadiu"] = nFightRadiu,["triggerRadiu"] = nTriggerRadiu,["triggerAngle"] = nTriggerAngle,["backtabRadiu"] = nBacktabRadiu,["stayMinTime"] = nStayMinTime,["stayMaxTime"] = nStayMaxTime,["escapeSpeedRate"] = nEscapeSpeedRate,["escapePos"] = sEscapePos}
    local sStr = rwTable2Json(tToJsonTable)
    ChangeMonsterRounds(nMonster_GenId,sStr)
end

---
-- 怪物逃跑
-- @param nMonster_GenId 怪物genid
-- @param nEscapeSpeedRate 逃跑速度 百位进制 传参100 相当于客户端收到参数1
-- @param sEscapePos 逃跑终点
function rwChangeMonsterToEscape(nMonster_GenId,nEscapeSpeedRate,sEscapePos)
    nMonster_GenId = nMonster_GenId or 0
    nEscapeSpeedRate = nEscapeSpeedRate or -1
    sEscapePos = sEscapePos or ""
    tToJsonTable = {["escapeFlag"] = 1,["speedRate"] = -1,["fightRadiu"] = -1,["triggerRadiu"] = -1,["triggerAngle"] = -1,["backtabRadiu"] = -1,["stayMinTime"] = -1,["stayMaxTime"] = -1,["escapeSpeedRate"] = nEscapeSpeedRate,["escapePos"] = sEscapePos}
    local sStr = rwTable2Json(tToJsonTable)
    ChangeMonsterRounds(nMonster_GenId,sStr)
end

-- 怪物特性添加
-- @param nGenEventId 怪物genid
-- @param nMonsterId 怪物id
-- @param nEfeId 特性ID
function rwAddMonsterTalent(nGenEventId,nMonsterId,nEfeId)
    local idGenEvent = nGenEventId or 0
    local monsterId = nMonsterId or 0
    local eftId = nEfeId or 0
    rwPrintNormalLog({Func = "rwAddMonsterTalent",nGenEventId = nGenEventId,nMonsterId=nMonsterId,nEfeId=nEfeId})
    return AddMonsterTalent(idGenEvent, monsterId, eftId)
end

-- 怪物特性移除
-- @param nGenEventId 怪物genid
-- @param nMonsterId 怪物id
-- @param nEfeId 特性ID
function rwRemoveMonsterTalent(nGenEventId,nMonsterId,nEfeId)
    local idGenEvent = nGenEventId or 0
    local idMonster = nMonsterId or 0
    local eftId = nEfeId or 0
    rwPrintNormalLog({Func = "rwRemoveMonsterTalent",nGenEventId = nGenEventId,nMonsterId=nMonsterId,nEfeId=nEfeId})
    return RemoveMonsterTalent(idGenEvent, idMonster, eftId)
end

--===================================================================
--===============================回调================================
--===================================================================
---
-- [回调]怪物死亡触发(目前不使用)
-- @param nMonsterType 怪物类型
function monster_be_kill(nMonsterType)    
    rwLinkMonsterBeKilled(nMonsterType)
end

---
-- [回调]怪物组死亡触发
-- @param nMonsterGroupType 怪物组类型
-- @param nMonsterGroupId 怪物组动态ID
-- @param nGenId GenId
function monster_group_be_kill(nMonsterGroupType, nMonsterGroupId, nGenId)
    rwLinkMonsterGroupBeKilled(nMonsterGroupType, nMonsterGroupId, nGenId)
end


---
-- [回调]战前校验触发
-- @param nMonsterGroupType 怪物组类型
-- @param nMonsterGroupId 怪物组动态ID
-- @param nGenId GenId
-- @return 返回false给服务端表示不能战斗
function monster_group_battle_check(nMonsterGroupType,nMonsterGroupId,nGenId)
  return rwLinkMonsterGroupBattleCheck(nMonsterGroupType,nMonsterGroupId,nGenId)
end

---
-- [回调]战斗结果触发
-- @param nResult 1胜利、2失败、3离开
-- @param nMonsterGroupType 怪物组类型
-- @param nMonsterGroupId 怪物组动态ID
-- @param nGenId GenId
-- @param bIsAttack 表示偷袭
function monster_group_battle_result(nResult,nMonsterGroupType,nMonsterGroupId,nGenId,bIsAttack)
    rwLinkMonsterGroupBattleResult(nResult,nMonsterGroupId,nMonsterGroupType,nGenId,bIsAttack)
end
--===================================================================
--==============================回调封装=============================
--===================================================================
--怪物死亡触发入口
function rwLinkMonsterBeKilled(nMonsterType)
    rwPrintNormalLog({Func = "rwLinkMonsterBeKilled",nMonsterType = nMonsterType})
    if rwtTaskMonsterInfo[nMonsterType] then
        for TaskId, v in pairs(rwtTaskMonsterInfo[nMonsterType]) do
--            if rwTaskChkUserInTask(TaskId) then
--			    rwTaskMonsterBeKilled(TaskId,v[1],v[2])
--			end

        end
        --被杀死时触发的函数
--        if (rwMonsterTypeAI[nMonsterType].InterfaceBeKill and type(rwMonsterTypeAI[nMonsterType].InterfaceBeKill) == "function") then

--	        rwMonsterTypeAI[nMonsterType].InterfaceBeKill()
--	        --死亡前触发
--        else
--	        --待添加调用各类型怪物的攻击接口
--        end
    end
end

--怪物组死亡触发入口
function rwLinkMonsterGroupBeKilled(nMonsterGroupType, nMonsterGroupId, nGenId)
    rwPrintNormalLog({Func = "rwLinkMonsterGroupBeKilled",nMonsterGroupType = nMonsterGroupType,nMonsterGroupId= nMonsterGroupId,nGenId = nGenId})
     if rwtTaskMonsterGroupInfo[nMonsterGroupType] then
        for TaskId, v in pairs(rwtTaskMonsterGroupInfo[nMonsterGroupType]) do
            if rwTaskChkUserInTask(TaskId) then
                local nTaskDetailType = rwtTask[TaskId]["TaskDetailType"]
                if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                    ENUM_TASK_TEMPLATE[nTaskDetailType]:create(TaskId):MonsterGroupBeKilled()
                end
            end
        end
    end

    if rwtTargetMonsterGroupInfo[nMonsterGroupType] then
        for _, TaskId in pairs(rwtTargetMonsterGroupInfo[nMonsterGroupType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end

	if rwtMonsterGroup_Func[nMonsterGroupType] ~= nil and type(rwtMonsterGroup_Func[nMonsterGroupType]) == "table" then
		for _,func in pairs(rwtMonsterGroup_Func[nMonsterGroupType]) do
			func(nMonsterGroupType, nMonsterGroupId, nGenId)
		end
	end

    if rwChkTable(rwtManyHeroMonsterInfo[nGenId]) then
        rwCopyMap_ManyHeroes_Battle_result(nMonsterGroupType,nGenId)
    end
end


--战前校验
function rwLinkMonsterGroupBattleCheck(nMonsterGroupType,nMonsterGroupId,nGenId)
    if rwtMonsterGroup[nMonsterGroupType] and rwChkInt(rwtMonsterGroup[nMonsterGroupType]["PassCopyByChkBattle"]) then
        rwLinkPassCopyMap(rwtMonsterGroup[nMonsterGroupType]["PassCopyByChkBattle"])
    end
    return rwMonsterGroupTemplate:create(nMonsterGroupId,nMonsterGroupType,nGenId):BattleCheck()
end

--战斗消息
--nResult：1胜利、2失败、3离开
--nMonsterGroupId：动态ID
--nMonsterGroupType：怪物组类型ID
--nGenId：刷新表ID
--bIsAttack:是否是偷袭
function rwLinkMonsterGroupBattleResult(nResult,nMonsterGroupId,nMonsterGroupType,nGenId,bIsAttack)
    rwPrintNormalLog({Func = "rwLinkMonsterGroupBattleResult",nResult = nResult,nMonsterGroupId = nMonsterGroupId,nMonsterGroupType = nMonsterGroupType,nGenId = nGenId})
    --战斗之后执行
	if rwtMonsterGroup[nMonsterGroupType] and rwChkFunc (rwtMonsterGroup[nMonsterGroupType]["BattleResult"]) then
		rwtMonsterGroup[nMonsterGroupType]["BattleResult"]()
	end
    if nResult == 1 then  --战斗胜利执行
        
        if rwtMonsterGroup[nMonsterGroupType] and rwChkFunc(rwtMonsterGroup[nMonsterGroupType]["BattleWin"]) then
            rwtMonsterGroup[nMonsterGroupType]["BattleWin"](nMonsterGroupId,nMonsterGroupType,nGenId)
        end
		
    else      
        if rwtTaskMonsterGroupInfo[nMonsterGroupType] then
            for TaskId, v in pairs(rwtTaskMonsterGroupInfo[nMonsterGroupType]) do
                if rwTaskChkUserInTask(TaskId) then
                    local nTaskDetailType = rwtTask[TaskId]["TaskDetailType"]
                    if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(TaskId):KillMonsterFail()
                    end
                end
            end
        end
        if nResult == 2 then  --战斗失败执行
            if rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupType] then
                for _, TaskId in pairs(rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupType]) do
                    rwBaseTarget:create(TaskId):EventOnTargetUpdate()
                end
            end
            if rwtMonsterGroup[nMonsterGroupType] and rwChkFunc(rwtMonsterGroup[nMonsterGroupType]["BattleLose"]) then
                rwtMonsterGroup[nMonsterGroupType]["BattleLose"](nMonsterGroupId,nMonsterGroupType,nGenId)
            end
        end
        
        if nResult == 3 then  --战斗逃跑执行
			if rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupType] then
                for _, TaskId in pairs(rwtTargetMonsterGroupBattleFailInfo[nMonsterGroupType]) do
                    rwBaseTarget:create(TaskId):EventOnTargetUpdate()
                end
            end
			if rwtMonsterGroup[nMonsterGroupType] and rwChkFunc(rwtMonsterGroup[nMonsterGroupType]["BattleEscape"]) then
                rwtMonsterGroup[nMonsterGroupType]["BattleEscape"](nMonsterGroupId,nMonsterGroupType,nGenId)
            end
        end
    end

    -- 偷袭进入的战斗执行
    if bIsAttack then
        if rwtMonsterGroup[nMonsterGroupType] and rwChkFunc(rwtMonsterGroup[nMonsterGroupType]["SneakAttack"]) then
            rwtMonsterGroup[nMonsterGroupType]["SneakAttack"](nMonsterGroupId,nMonsterGroupType,nGenId)
        end
    else
        if rwtMonsterGroup[nMonsterGroupType] and rwChkFunc(rwtMonsterGroup[nMonsterGroupType]["NormalFight"]) then
            rwtMonsterGroup[nMonsterGroupType]["NormalFight"](nMonsterGroupId,nMonsterGroupType,nGenId)
        end
    end

    rwMaiDianLog_monster(nMonsterGroupType,nResult,bIsAttack)
end