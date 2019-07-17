--region *.lua
--Date
--生存副本中，采集能量球配置（陷阱）
--Nizw


--endregion



local BuffNum = 4   --默认buff同时存在地图上的数量

rwNPCGroup_SurvivalTrap = class("rwNPCGroup_SurvivalTrap",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.SurvivalTrap] = rwNPCGroup_SurvivalTrap

function rwNPCGroup_SurvivalTrap:EventProcess()
    if not rwtNpcGroup[self._NpcGroupType] then
        return
    end

    local nDetailId = self._Info["DetailType"] or CONST_SURVIVAL_TYPE.Collect
    rwDelGenEvent(self._GenEventId)

    if nDetailId == CONST_SURVIVAL_TYPE.Collect then
        self:CollectEventProcess()
    elseif self._Info["DetailType"] == CONST_SURVIVAL_TYPE.Buff then
        self:AddBuffEventProcess()
    end

    -- 任务目标逻辑
    if rwtTargetTrapInfo[self._NpcGroupType] then
		for _, TaskId in pairs(rwtTargetTrapInfo[self._NpcGroupType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end
end

-- 采集物逻辑
-- 每采集一个采集物后，生成另一个采集物
-- 每采集n个生成一个buff
-- 每采集m个生成一个追击怪
-- 采集完成后，有额外的奖励
function rwNPCGroup_SurvivalTrap:CollectEventProcess()
    if not self._Info["nTempdata"] then
        return
    end

    local nMapId = self._Info["MapId"]
    local nUserId = rwUserGetId()
    local nTempdata = rwtNpcGroup[self._NpcGroupType]["nTempdata"]
    local times = 0
    local CreateMonsterNeed = self._Info["CreateMonsterNeedNum"] or 1
    local CreateBuffNeed = self._Info["CreateBuffNeedNum"] or 1
    --若不存在掩码，则为第一次采集
    if not rwTempDataIsExist(nTempdata) then
        times = 0
    else
        times = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data1"],nUserId)
    end
    -- if rwChkTable(self._Info["SpecialNumCreate"]) and self._Info["SpecialNumCreate"]["Num"] then
    --     if times+1 == self._Info["SpecialNumCreate"]["Num"] then
    --         if rwChkTable(self._Info["SpecialNumCreate"]["Creats"]) then
    --             for i, v in ipairs(self._Info["SpecialNumCreate"]["Creats"]) do
    --                 rwAddGenEvent(v)
    --             end
    --         end

    --         if rwChkFunc(self._Info["SpecialNumCreate"]["Fun"]) then
    --             self._Info["SpecialNumCreate"]["Fun"]()
    --         end
    --         rwUserTempDataSet(nTempdata,times+1,CONST_TEMP_DATA["Data1"],nUserId)
    --         return
    --     end
    -- end
    --每M个生成怪
    if (times+1)%CreateMonsterNeed == 0 then
        local nNum = (times+1)/CreateMonsterNeed
        local nGenId = rwtSurivialCopyMapInfo[nMapId]["tMonsterGenId"][nNum]
        rwSurvivalCopyMap_CreateMonster(nGenId,nMapId)
        --发出提示，有怪物生成
        if self._Info["PlayMessage"] then
            -- local index = self._Info["PlayTimes"] or 1
            -- for i = 1,index do
                rwSendSystemMessage(self._Info["PlayMessage"],2,1)
            -- end
        end
    end
    --每N个生成buff
    if (times+1)%CreateBuffNeed == 0 then
        local nNum = (times+1)/CreateBuffNeed
        local nBuffGenId = rwtSurivialCopyMapInfo[nMapId]["tBuffGenIds"][nNum]
        local nNpcGroupId = rwNPCGroup_Survival_BuffRandomId(nMapId) --决出是哪种buff NPCGroupID
        local tPosInfo = rwtSurivialCopyMapInfo[nMapId]["tBuffPos"]             --随机位子池子
        rwSurvivalCopyMap_CreateBuff(nNpcGroupId,nBuffGenId,nMapId,tPosInfo)
    end
    --满次数后进行额外奖励
    local FinishNum = self._Info["CollectNum"] or 0
    if times+1 == FinishNum then
        if rwChkTable(self._Info["FinishAward"]) then
            rwBaseAward:create(self._Info["FinishAward"]):Process()
        end
    end
    --掩码次数记录加1
    rwUserTempDataSet(nTempdata,times+1,CONST_TEMP_DATA["Data1"],nUserId)
    --生成新的采集物
    local tPosInfo = rwtSurivialCopyMapInfo[nMapId]["tRandomPos"]
    rwSurvivalCopyMap_Create(self._NpcGroupType,self._GenEventId,nMapId,tPosInfo)
end


--buff处理
--buff的逻辑储存在rwtSurivialMonsterBuffFunc
--Param1：BuffParms字段 改变巡逻的参数
--Param2：MapID 获取改变对象的genId
function rwNPCGroup_SurvivalTrap:AddBuffEventProcess()
    if not rwChkTable(self._Info["Buff"]) then
        return
    end
    local sRecordKey = rwtNpcGroup[self._NpcGroupType]["RecordPosKey"]
    local nUserId = rwUserGetId()
    if not rwChkTable(rwtCopyMapUserInitInfo[self._Info["MapId"]][nUserId][sRecordKey]) then
        return
    end
    --随机哪个buff
    local nBuffIndex = rwGetRandInt(1,#self._Info["Buff"])
    if self._Info["Buff"][nBuffIndex]["BuffType"] and rwChkFunc(rwtSurivialMonsterBuffFunc[self._Info["Buff"][nBuffIndex]["BuffType"]])then
        rwtSurivialMonsterBuffFunc[self._Info["Buff"][nBuffIndex]["BuffType"]](self._Info["Buff"][nBuffIndex]["BuffParms"],self._Info["MapId"])
    end

    
    local buffNum = rwtNpcGroup[self._NpcGroupType]["BuffNum"] or BuffNum
    local existBuffNum = rwtCopyMapUserInitInfo[self._Info["MapId"]][nUserId][sRecordKey]["existBuffNum"] or 1
    existBuffNum = existBuffNum - 1
    rwtCopyMapUserInitInfo[self._Info["MapId"]][nUserId][sRecordKey]["existBuffNum"] = existBuffNum
end

function rwNPCGroup_Survival_BuffRandomId(Mapid)
    local nRandom = math.random(1,10000)
    for i,v in pairs(rwtSurivialCopyMapInfo[Mapid]["BuffNPCGroupID"]) do
        local nMin = v["MinRate"] or 0
	    local nMax = v["MaxRate"] or 10000
        if nRandom >= nMin and nParam <= nMax then
            return i
        end
    end
    return 0
end

function rwNPCGroup_Survival_Buff_Minus_Speed(Param,Mapid)
    local tMonsterGenids = rwNPCGroup_Survival_GetGoal(Mapid)

    for i,v in ipairs(tMonsterGenids) do
        if rwHasGenEvent(v) then
            rwChangeMonsterRounds(v,0,Param)
        end
    end
    rwSendSystemMessage("Buff:怪物减速度")
end

function rwNPCGroup_Survival_Buff_HIDE(Params,Mapid)
    rwStatusAddHide(Params)
    rwSendSystemMessage("Buff:玩家隐身")
end

function rwNPCGroup_Survival_Buff_Minus_View(Params,Mapid)
    local tMonsterGenids = rwNPCGroup_Survival_GetGoal(Mapid)

    for i,v in ipairs(tMonsterGenids) do
        if rwHasGenEvent(v) then
            rwChangeMonsterRounds(v,0,-1,Params)
        end
    end
    rwSendSystemMessage("Buff:怪物减视野")
end

function rwNPCGroup_Survival_Buff_Add_Speed(Params,Mapid)
    local tMonsterGenids = rwNPCGroup_Survival_GetGoal(Mapid)

    for i,v in ipairs(tMonsterGenids) do
        if rwHasGenEvent(v) then
            rwChangeMonsterRounds(v,0,Params)
        end
    end
    rwSendSystemMessage("Buff:怪物加速度")
end

function rwNPCGroup_Survival_Buff_Add_View(Params,Mapid)
    local tMonsterGenids = rwNPCGroup_Survival_GetGoal(Mapid)

    for i,v in ipairs(tMonsterGenids) do
        if rwHasGenEvent(v) then
            rwChangeMonsterRounds(v,0,-1,Params)
        end
    end
    rwSendSystemMessage("Buff:怪物加视野")
end

function rwNPCGroup_Survival_GetGoal(Mapid)
    local tMonsterGenids = rwtSurivialCopyMapInfo[Mapid]["tMonsterGenId"]


    if rwChkTable(rwtSurivialCopyMapInfo[Mapid]["ExtraMonsterGenId"]) then
        for i,v in ipairs(rwtSurivialCopyMapInfo[Mapid]["ExtraMonsterGenId"]) do
            table.insert(tMonsterGenids,v)
        end
    end
    return tMonsterGenids
end

rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Minus_Speed] = rwNPCGroup_Survival_Buff_Minus_Speed
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.HIDE] = rwNPCGroup_Survival_Buff_HIDE
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Minus_View] = rwNPCGroup_Survival_Buff_Minus_View
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Add_Speed] = rwNPCGroup_Survival_Buff_Add_Speed
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Add_View] = rwNPCGroup_Survival_Buff_Add_View

-- 生存副本创建事件
function rwSurvivalCopyMap_Create(nEventId,nGenId,nMapId,tPosInfo)
    if not rwtNpcGroup[nEventId] or not rwtNpcGroup[nEventId]["RecordPosKey"] then
        return
    end
    --sRecordKey用于记录已经存在的采集物的位子，储存在rwtCopyMapUserInitInfo中
    local sRecordKey = rwtNpcGroup[nEventId]["RecordPosKey"]
    local nUserId = rwUserGetId()
    local random = rwGetRandInt(1,#tPosInfo)
    local bIsExist = false

    for i,v in pairs(rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey]) do
        if v == random then
            bIsExist = true
        end
    end

    if not bIsExist then
        local sPos = tPosInfo[random]
        --符合条件后，记录位子对应的id。并生成
        rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey][nGenId] = random
        rwAddGenEvent(nGenId, sPos, nEventId)
    else
        --不符合条件，再次进行随机
        rwSurvivalCopyMap_Create(nEventId,nGenId,nMapId,tPosInfo)
    end
end

function rwSurvivalCopyMap_CreateBuff(nEventId,nGenId,nMapId,tPosInfo)
    if not rwtNpcGroup[nEventId] or not rwtNpcGroup[nEventId]["RecordPosKey"] then
        return
    end
    --sRecordKey用于记录已经存在的采集物的位子，储存在rwtCopyMapUserInitInfo中
    local sRecordKey = rwtNpcGroup[nEventId]["RecordPosKey"]
    local buffNum = rwtNpcGroup[nEventId]["BuffNum"] or BuffNum
    local nUserId = rwUserGetId()
    
    local existBuffNum = rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey]["existBuffNum"] or 0
    if existBuffNum >= buffNum then
        existBuffNum = buffNum
        --数量大于，直接返回
        return
    else
        existBuffNum = existBuffNum + 1
    end

    local random = rwGetRandInt(1,#tPosInfo)
    local bIsExist = false
    
    local Index = rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey]["Index"] or 1
    local NextIndex
    if Index == buffNum then
        NextIndex = 1
    else
        NextIndex = Index+1
    end

    for i = 1,buffNum do
        if rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey][i] and rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey][i]==random then
            bIsExist = true
        end
    end

    if not bIsExist then
        local sPos = tPosInfo[random]
        --符合条件后，记录位子对应的id。并生成
        rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey][Index] = random
        rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey]["existBuffNum"] = existBuffNum
        rwtCopyMapUserInitInfo[nMapId][nUserId][sRecordKey]["Index"] = NextIndex
        rwAddGenEvent(nGenId, sPos, nEventId)
    else
        --不符合条件，再次进行随机
        rwSurvivalCopyMap_CreateBuff(nEventId,nGenId,nMapId,tPosInfo)
    end
end

function rwSurvivalCopyMap_CreateMonster(nGenId,nMapId)
    if not rwtSurivialCopyMapInfo[nMapId] then
        return
    end
    if not rwChkTable(rwtSurivialCopyMapInfo[nMapId]["tMonsterGenId"]) then
        return
    end
    if not rwChkTable(rwtSurivialCopyMapInfo[nMapId]["tMonsterPath"]) then
        return
    end
    if not rwtSurivialCopyMapInfo[nMapId]["nMonsterGroupId"] then
        return
    end
    --怪物由scenePath确定位子
    local random = rwGetRandInt(1,#rwtSurivialCopyMapInfo[nMapId]["tMonsterPath"])
    local Path = rwtSurivialCopyMapInfo[nMapId]["tMonsterPath"][random]
    rwAddGenEvent(nGenId, "", rwtSurivialCopyMapInfo[nMapId]["nMonsterGroupId"],0 ,Path)

    --怪物的初始速度进行随机
    if rwChkTable(rwtSurivialCopyMapInfo[nMapId]["MonsterSpeedRange"]) then
        local speed = rwGetRandInt(rwtSurivialCopyMapInfo[nMapId]["MonsterSpeedRange"][1],rwtSurivialCopyMapInfo[nMapId]["MonsterSpeedRange"][2])
        rwChangeMonsterRounds(nGenId,0,speed)
    end
end

function moqi()
    if rwtNpcGroup[30635]["PlayMessage"] then
        local index = rwtNpcGroup[30635]["PlayTimes"] or 1
        for i = 1,index do
            rwSendSystemMessage(rwtNpcGroup[30635]["PlayMessage"]..index,2,1)
        end
    end
end


function moqiadd()
    if rwtNpcGroup[30635]["PlayMessage"] then
        local index = rwtNpcGroup[30635]["PlayTimes"] or 1
        for i = 1,index do
            rwSendSystemMessage(rwtNpcGroup[30635]["PlayMessage"]..index,2,1)
        end
    end
end