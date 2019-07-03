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
    --rwPrintNormalLog({Func = "rwLinkMonsterBeKilled",nMonsterType = nMonsterType})
    --暂无用
end

--怪物组死亡触发入口
function rwLinkMonsterGroupBeKilled(nMonsterGroupType, nMonsterGroupId, nGenId)
    rwPrintNormalLog({Func = "rwLinkMonsterGroupBeKilled",nMonsterGroupType = nMonsterGroupType,nMonsterGroupId= nMonsterGroupId,nGenId = nGenId})

    --适用于目前模板暂无的功能
	if rwtMonsterGroup_Func[nMonsterGroupType] ~= nil and type(rwtMonsterGroup_Func[nMonsterGroupType]) == "table" then
		for _,func in pairs(rwtMonsterGroup_Func[nMonsterGroupType]) do
			func(nMonsterGroupType, nMonsterGroupId, nGenId)
		end
	end

end


--战前校验
function rwLinkMonsterGroupBattleCheck(nMonsterGroupType,nMonsterGroupId,nGenId)
    rwPrintNormalLog({Func = "rwLinkMonsterGroupBattleCheck",nMonsterGroupType = nMonsterGroupType,nMonsterGroupId = nMonsterGroupId,nGenId = nGenId})

    local TemplateType = rwMonsterGroupTemplate.GetTemplateType(nMonsterGroupType)
    if TemplateType then
        return ENUM_MONSTERGROUP_TEMPLATE[TemplateType]:create(nMonsterGroupId,nMonsterGroupType,nGenId):BattleCheck()
    end
end

--战斗消息
--nResult：1胜利、2失败、3离开
--nMonsterGroupId：动态ID
--nMonsterGroupType：怪物组类型ID
--nGenId：刷新表ID
--bIsAttack:是否是偷袭
function rwLinkMonsterGroupBattleResult(nResult,nMonsterGroupId,nMonsterGroupType,nGenId,bIsAttack)
    rwPrintNormalLog({Func = "rwLinkMonsterGroupBattleResult",nResult = nResult,nMonsterGroupId = nMonsterGroupId,nMonsterGroupType = nMonsterGroupType,nGenId = nGenId})

    local TemplateType = rwMonsterGroupTemplate.GetTemplateType(nMonsterGroupType)
    if TemplateType then
        ENUM_MONSTERGROUP_TEMPLATE[TemplateType]:create(nMonsterGroupId,nMonsterGroupType,nGenId):BattleOver(nResult)
    end

    -- TODO 暂时
    if rwChkTable(rwtManyHeroMonsterInfo[nGenId]) then
        rwCopyMap_ManyHeroes_Battle_result(nResult,nMonsterGroupType,nGenId)
    end
    --埋点功能
    rwMaiDianLog_monster(nMonsterGroupType,nResult,bIsAttack)
end