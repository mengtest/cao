--region *.lua
--Date
--生存副本中，采集能量球配置（陷阱）
--Nizw


--endregion



local BuffNum = 1   --默认buff同时存在地图上的数量
--掩码位
--data1:记录次数
--data2：记录是否拿到采集器
--data3：记录是否领到奖励
rwNPCGroup_SurvivalTrap = class("rwNPCGroup_SurvivalTrap",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.SurvivalTrap] = rwNPCGroup_SurvivalTrap

function rwNPCGroup_SurvivalTrap:EventProcess()
    if not rwtNpcGroup[self._NpcGroupType] then
        return
    end
    local nUserId = rwUserGetId()
    local nMapId = rwtNpcGroup[self._NpcGroupType]["MapId"]
    self._UserId = nUserId
    self._MapId = nMapId

    local Global = rwtCopyMapUserInitInfo[self._MapId][self._UserId]

    --全局表初始化
    if not rwChkTable(Global["Monster"]) or not rwChkTable(Global["Buff"]) or not rwChkTable(Global["Buff_2"]) then
        return
    end

    if not Global["Monster"]["Speed"] or not Global["Monster"]["View"] then
        Global["Monster"]["Speed"] = {}
        Global["Monster"]["View"] = {}
    end

    if not Global["Buff"]["PosIndex"] or not Global["Buff"]["GenIdToPos"] then
        Global["Buff"]["PosIndex"] = {}
        Global["Buff"]["GenIdToPos"] = {}
        if rwChkTable(rwtSurivialCopyMapInfo[self._MapId]["PositionInfo"]) and rwChkTable(rwtSurivialCopyMapInfo[self._MapId]["PositionInfo"]["BuffPos"]) then
            for i = 1,#rwtSurivialCopyMapInfo[self._MapId]["PositionInfo"]["BuffPos"] do
                Global["Buff"]["PosIndex"][i] = i
            end
        end
    end

    if not Global["Buff_2"]["PosIndex"] or not Global["Buff_2"]["GenIdToPos"]then
        Global["Buff_2"]["PosIndex"] = {}
        Global["Buff_2"]["GenIdToPos"] = {} 
        if rwChkTable(rwtSurivialCopyMapInfo[self._MapId]["PositionInfo"]) and rwChkTable(rwtSurivialCopyMapInfo[self._MapId]["PositionInfo"]["Buff_2Pos"]) then
            for i = 1,#rwtSurivialCopyMapInfo[self._MapId]["PositionInfo"]["Buff_2Pos"] do
                Global["Buff_2"]["PosIndex"][i] = i
            end
        end  
    end

    -----------------------------
    local nDetailId = self._Info["DetailType"] or CONST_SURVIVAL_TYPE.Collect

    if nDetailId == CONST_SURVIVAL_TYPE.Collect then
        self:CollectEventProcess()
    elseif self._Info["DetailType"] == CONST_SURVIVAL_TYPE.Buff then
        self:AddBuffEventProcess()
    elseif self._Info["DetailType"] == CONST_SURVIVAL_TYPE.CaiJiQi then
        self:CaiJiQiEventProcess()
    elseif self._Info["DetailType"] == CONST_SURVIVAL_TYPE.ChuFaQi then
        self:ChuFaQiEventProcess()
    end

    -- 播放采集后光效
    if rwChkInt(self._Info["CollectEffect"]) then
        rwSpecialStatus_AddEffect(1,rwUserGetId(),self._Info["CollectEffect"])
    end

    -- 任务目标逻辑
    if rwtTargetTrapInfo[self._NpcGroupType] then
        for _, TaskId in pairs(rwtTargetTrapInfo[self._NpcGroupType]) do
            rwBaseTarget:create(TaskId):EventOnTargetUpdate()
        end
    end
    
    if not self._Info["NoDelTrap"] then  
        if rwHasGenEvent(self._GenEventId) then 
            rwDelGenEvent(self._GenEventId)
        end
    end
end

-- 采集物逻辑
-- 掩码记录采集数量+1
-- 采集满数量后，生成采集器
-- 生成采集器后，发出提示，在哪个房间
function rwNPCGroup_SurvivalTrap:CollectEventProcess()
    if not self._Info["nTempdata"] or not self._Info["MapId"] then
        return
    end

    local times = 0
    local nTempdata = rwtNpcGroup[self._NpcGroupType]["nTempdata"]

    if not rwTempDataIsExist(nTempdata) then
        times = 0
        rwTempDataAdd(nTempdata,self._UserId)
    else
        times = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data1"],self._UserId)
    end
    -- 掩码次数记录加1
    rwUserTempDataSet(nTempdata,times+1,CONST_TEMP_DATA["Data1"],self._UserId)

    -- 采集满数量后，生成采集器
    for i,v in ipairs(rwtSurivialCopyMapInfo[self._MapId]["Events"]) do
        if times+1 == v["CollectNum"] then
            self:CreatCaiJiQi(v)
        end
    end

    if rwChkInt(self._Info["CollectNum"]) then
        if times+1 >= self._Info["CollectNum"] and rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data3"],self._UserId) == 0 then
            if rwChkTable(self._Info["FinishAward"]) then
                rwBaseAward:create(self._Info["FinishAward"]):Process()
                rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA["Data3"],self._UserId)
            end
        end
    end
end

-- 采集器逻辑
-- 掩码data2记录变1,表示拿到采集器
-- 更改触发器光效
function rwNPCGroup_SurvivalTrap:CaiJiQiEventProcess()
    if not self._Info["nTempdata"] then
        return
    end
    local nTempdata = self._Info["nTempdata"]
    rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA["Data2"],self._UserId)
    --更改触发器光效
    if not rwChkTable(rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]) then
        return
    end
    
    local nGenId = rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]["nGenId"]
    local befEffect = rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]["EffectBef"] or 0
    rwSpecialStatus_RemoveEffect(4,nGenId,befEffect)
    local AftEffect = rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]["EffectAft"] or 0
    rwSpecialStatus_AddEffect(4,nGenId,AftEffect)

    if self._Info["Message"] then
        rwSendSystemMessage(self._Info["Message"])
    end
end

-- 触发器逻辑
-- 根据已采集的能量采集物，创建相应的事件
-- 跟换自身的光效
-- 掩码data2清0，需要下一个采集器才能继续触发
function rwNPCGroup_SurvivalTrap:ChuFaQiEventProcess()
    if not self._Info["nTempdata"] then
        return
    end
    local nTempdata = self._Info["nTempdata"]
    local times
    if not rwTempDataIsExist(nTempdata) then
        times = 0
        rwTempDataAdd(nTempdata,self._UserId)
    else
        times = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data1"],self._UserId)
    end

    if rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data2"],self._UserId) == 1 then
    
        for i,v in ipairs(rwtSurivialCopyMapInfo[self._MapId]["Events"]) do
            if times == v["CollectNum"] then
                self:CreateCollect(v)
                self:CreateMonster(v)
                self:RemoveMonster(v)
                self:CreateManyMonster(v)
                self:CreateBuff(v)
            end
        end

        if not rwChkTable(rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]) then
            return
        end
        local AftEffect = rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]["EffectAft"] or 0
        rwSpecialStatus_RemoveEffect(4,self._GenEventId,AftEffect)
        local befEffect = rwtSurivialCopyMapInfo[self._MapId]["ChuFaQiInfo"]["EffectBef"] or 0
        rwSpecialStatus_AddEffect(4,self._GenEventId,befEffect)

        rwUserTempDataSet(nTempdata,0,CONST_TEMP_DATA["Data2"],self._UserId)
    elseif rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data2"],self._UserId) == 0 then
        if self._Info["FailMessage"] then
            rwSendSystemMessage(self._Info["FailMessage"])
        end
    end
end

function rwNPCGroup_SurvivalTrap:CreatCaiJiQi(Info)
    if not rwChkTable(Info.CaiJiQiInfo)then
        return
    end

    local Index = rwGetRandInt(1,#Info.CaiJiQiInfo)
    if Info.CaiJiQiInfo[Index]["GenId"] then
        rwAddGenEvent(Info.CaiJiQiInfo[Index]["GenId"])
    end
    if Info.CaiJiQiInfo[Index]["Message"] then
        rwSendSystemMessage(Info.CaiJiQiInfo[Index]["Message"])
    end


end

function rwNPCGroup_SurvivalTrap:CreateBuff(Info)
    if not rwChkTable(Info.BuffInfo)then
        return
    end
    if not rwChkTable(Info.BuffInfo["tPos"]) then
        return
    end
    
    local tsRecordKey = rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Buff"]["PosIndex"]
    if #tsRecordKey == 0 then
        for i = 1,#Info.BuffInfo["tPos"] do
            tsRecordKey[i] = i
        end
    end
    
    if #tsRecordKey == 0 then
        return
    end

    local nNPCGroup = 0
    if rwChkInt(Info.BuffInfo["tGenId"]) then
        local nGenId = Info.BuffInfo["tGenId"]
        if rwChkTable(Info.BuffInfo["tNPCGroupId"]) then
            local NpcGroupIndex = rwGetRandInt(1,#Info.BuffInfo["tNPCGroupId"])
            nNPCGroup = Info.BuffInfo["tNPCGroupId"][NpcGroupIndex]
        elseif rwChkInt(Info.BuffInfo["tNPCGroupId"]) then
            nNPCGroup = Info.BuffInfo["tNPCGroupId"]
        end
        local PosIndex = rwGetRandInt(1,#tsRecordKey)

        rwAddGenEvent(nGenId, Info.BuffInfo["tPos"][tsRecordKey[PosIndex]], nNPCGroup)
        rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Buff"]["GenIdToPos"][nGenId] = tsRecordKey[PosIndex]
        table.remove(tsRecordKey,PosIndex)

    elseif rwChkTable(Info.BuffInfo["tGenId"]) and rwChkTable(Info.BuffInfo["tNPCGroupId"]) then
        for i,v in ipairs(Info.BuffInfo["tGenId"]) do
            local NpcGroupIndex = rwGetRandInt(1,#Info.BuffInfo["tNPCGroupId"])
            nNPCGroup = Info.BuffInfo["tNPCGroupId"][NpcGroupIndex]
            local PosIndex = rwGetRandInt(1,#tsRecordKey)

            rwAddGenEvent(v, Info.BuffInfo["tPos"][tsRecordKey[PosIndex]], nNPCGroup)
            rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Buff"]["GenIdToPos"][v] = tsRecordKey[PosIndex]
            table.remove(tsRecordKey,PosIndex)

            if #tsRecordKey == 0 then
                return
            end
        end

    elseif rwChkTable(Info.BuffInfo["tGenId"]) and rwChkInt(Info.BuffInfo["tNPCGroupId"]) then
        for i,v in ipairs(Info.BuffInfo["tGenId"]) do
            nNPCGroup = Info.BuffInfo["tNPCGroupId"]
            local PosIndex = rwGetRandInt(1,#tsRecordKey)

            rwAddGenEvent(v, Info.BuffInfo["tPos"][tsRecordKey[PosIndex]], nNPCGroup)
            rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Buff"]["GenIdToPos"][v] = tsRecordKey[PosIndex]
            table.remove(tsRecordKey,PosIndex)

            if #tsRecordKey == 0 then
                return
            end
        end
    end
end


function rwNPCGroup_SurvivalTrap:CreateCollect(Info)
    if not rwChkTable(Info.CollectInfo)then
        return
    end
    if not rwChkTable(Info.CollectInfo["tGenId"]) or not rwChkInt(Info.CollectInfo["tNPCGroupId"]) or not rwChkTable(Info.CollectInfo["tPos"]) then
        return
    end
    if #Info.CollectInfo["tGenId"] > #Info.CollectInfo["tPos"] then
        return
    end

    local tPos = SysCopyTable(Info.CollectInfo["tPos"])
    for i, v in pairs(Info.CollectInfo["tGenId"]) do
        local index = rwGetRandInt(1,#tPos)
        rwAddGenEvent(v, tPos[index], Info.CollectInfo["tNPCGroupId"])
        table.remove(tPos,index)
    end
end

function rwNPCGroup_SurvivalTrap:CreateMonster(Info)
    if not rwChkTable(Info.MonsterInfo)then
        return
    end
    if not rwChkTable(Info.MonsterInfo["tGenId"]) or not rwChkInt(Info.MonsterInfo["MonsterGroupId"]) or not rwChkTable(Info.MonsterInfo["tPath"]) then
        return
    end
    if #Info.MonsterInfo["tGenId"] > #Info.MonsterInfo["tPath"] then
        return
    end

    if Info.MonsterInfo["tGenId"]["Title"] then
        rwSendSystemMessage(Info.MonsterInfo["tGenId"]["Title"])
    end

    local Size = Info.MonsterInfo["Size"] or 1
    local tPath = SysCopyTable(Info.MonsterInfo["tPath"])
    for i, v in pairs(Info.MonsterInfo["tGenId"]) do
        local index = rwGetRandInt(1,#tPath)
        local nRot = 0
        if Info.MonsterInfo["tRotation"] and rwChkInt(Info.MonsterInfo["tRotation"][index]) then
            nRot = Info.MonsterInfo["tRotation"][index]
        end
        rwAddGenEvent(v, "", Info.MonsterInfo["MonsterGroupId"],nRot,tPath[index],Size)
        if rwChkTable(Info.MonsterInfo["InitSpeedRange"]) then
            local speed = rwGetRandInt(Info.MonsterInfo["InitSpeedRange"][1],Info.MonsterInfo["InitSpeedRange"][2])
            rwChangeMonsterRounds(v,0,speed)
            rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Monster"]["Speed"][v] = speed
        elseif rwChkInt(Info.MonsterInfo["InitSpeedRange"]) then
            rwChangeMonsterRounds(v,0,Info.MonsterInfo["InitSpeedRange"])
            rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Monster"]["Speed"][v] = Info.MonsterInfo["InitSpeedRange"]
        end
        table.remove(tPath,index)
    end
end

function rwNPCGroup_SurvivalTrap:RemoveMonster(Info)
    if not rwChkTable(Info.tRemoveMonsterGenId)then
        return
    end
    for i,v in ipairs(Info.tRemoveMonsterGenId) do
        if rwHasGenEvent(v) then
            rwDelGenEvent(v)
        end
    end
end

function rwNPCGroup_SurvivalTrap:CreateManyMonster(Info)
    if not rwChkTable(Info.ManyMonsterInfo)then
        return
    end
    if rwChkTable(Info.ManyMonsterInfo["Title"]) then
        for i,v in ipairs(Info.ManyMonsterInfo["Title"]) do
            rwSendSystemMessage(v)
        end
    end

    for j,k in ipairs(Info.ManyMonsterInfo) do
        if not rwChkTable(k["PathInfo"]) then
            return
        end
    
        local PathInfo = SysCopyTable(k["PathInfo"])
        local index = rwGetRandInt(1,#PathInfo)
        local tPath = SysCopyTable(k["PathInfo"][index])
        table.remove(PathInfo,index)
        local LifeTime = k["LifeTime"] or 0
        local Size = k["Size"] or 1

        local nRot = 0
        if k["tRotation"] and rwChkInt(k["tRotation"][index]) then
            nRot = k["tRotation"][index]
        end

        for i, v in pairs(k["tGenId"]) do
            if #tPath < 1 then
                tPath = SysCopyTable(k["PathInfo"][index])
            end
            local nPath = rwGetRandInt(1,#tPath)
            local nEvent = rwGetRandInt(1,#k["tMonsterGroupId"])
            rwAddGenEvent(v, "", k["tMonsterGroupId"][nEvent],nRot,tPath[nPath],Size,false,LifeTime)

            if rwChkTable(k["InitSpeedRange"]) then
                local speed = rwGetRandInt(k["InitSpeedRange"][1],k["InitSpeedRange"][2])
                rwChangeMonsterRounds(v,0,speed)
            elseif rwChkInt(k["InitSpeedRange"]) then
                rwChangeMonsterRounds(v,0,k["InitSpeedRange"])
            end

            table.remove(tPath,nPath)
        end
    end
end

--===================================================

--buff处理
function rwNPCGroup_SurvivalTrap:AddBuffEventProcess()
    if not self._Info["BuffType"] or not rwChkInt(self._MapId) then
        return
    end

    if rwChkFunc(rwtSurivialMonsterBuffFunc[self._Info["BuffType"]])then
        rwtSurivialMonsterBuffFunc[self._Info["BuffType"]](self._Info)
    end

    local index = rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Buff"]["GenIdToPos"][self._GenEventId]
    table.insert(rwtCopyMapUserInitInfo[self._MapId][self._UserId]["Buff"]["PosIndex"],index)
end


function rwNPCGroup_Survival_Buff_Minus_Speed(Info)
    if not rwChkInt(Info["MinusValue"]) then
        return
    end
    local Param = Info["MinusValue"]
    local Userid = rwUserGetId()
    local MinSpeed = Info["MinSpeed"] or 0
    local MonsterGenIds = Info["tMonsterGenIds"] or {}
    for i,v in ipairs(MonsterGenIds) do
        if rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["Speed"][v] then
            
            local PerSpeed = rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["Speed"][v]
            local Speed
            if PerSpeed - Param < MinSpeed then
                Speed = MinSpeed
            else
                Speed = PerSpeed - Param
            end 
            rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["Speed"][v] = Speed
            rwChangeMonsterRounds(v,0,Speed)
        else
            rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["Speed"][v] = Param
            rwChangeMonsterRounds(v,0,Param)
        end
    end
    if Info["Title"] then
        rwSendSystemMessage(Info["Title"])
    end
end

function rwNPCGroup_Survival_Buff_HIDE(Info)
    if not rwChkInt(Info["HideTime"]) then
        return
    end
    rwStatusAddHide(Info["HideTime"])
    if Info["Title"] then
        rwSendSystemMessage(Info["Title"])
    end
end

function rwNPCGroup_Survival_Buff_Minus_View(Info)
    if not rwChkInt(Info["MinusValue"]) then
        return
    end
    local Param = Info["MinusValue"]
    local Userid = rwUserGetId()
    local MinView = Info["MinView"] or 0
    local MonsterGenIds = Info["tMonsterGenIds"] or {}
    for i,v in ipairs(MonsterGenIds) do
        if rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["View"][v] then
            
            local PerSpeed = rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["View"][v]
            local View
            if PerSpeed - Param < MinView then
                View = MinView
            else
                View = PerSpeed - Param
            end
            rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["View"][v] = View
            rwChangeMonsterRounds(v,0,-1,View)
        else
            rwtCopyMapUserInitInfo[Info.MapId][Userid]["Monster"]["View"][v] = Param
            rwChangeMonsterRounds(v,0,-1,Param)
        end
    end
    if Info["Title"] then
        rwSendSystemMessage(Info["Title"])
    end
end

function rwNPCGroup_Survival_Buff_Minus_Monster(Info)
    if not rwChkTable(Info["tMonsterGenIds"]) then
        return
    end

    local num = Info["MinusNum"] or 1
    local tMonster = {}
    for i,v in ipairs(Info["tMonsterGenIds"]) do
        if rwHasGenEvent(v) then
            table.insert(tMonster,v)
        end
    end

    if #tMonster >= 1 then
        local index = rwGetRandInt(1,#tMonster)
        rwDelGenEvent(tMonster[index])
        if Info["Title"] then
            rwSendSystemMessage(Info["Title"])
        end
    end
end

rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Minus_Speed] = rwNPCGroup_Survival_Buff_Minus_Speed
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.HIDE] = rwNPCGroup_Survival_Buff_HIDE
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Minus_View] = rwNPCGroup_Survival_Buff_Minus_View
rwtSurivialMonsterBuffFunc[CONST_SURVIVAL_MONSTERBUFF.Minus_Monster] = rwNPCGroup_Survival_Buff_Minus_Monster

function moqi(genid)
    local test = rwNPCGroup_SurvivalTrap:create(0, 30636, 3120049)
    local tPos = {
        "-242.674,-21.166,-38.674",
        "-242.667,-21.166,-20.293",
        "-226,-21.166,-37.333",
        "-225.869,-21.166,-21.333",
    }
    local info = {}
    info["BuffInfo"] = {}
    info["BuffInfo"]["tGenId"] = genid
    info["BuffInfo"]["tPos"] = tPos
    info["BuffInfo"]["tNPCGroupId"] = {30636,30638}
    test._MapId = 3120
    test._UserId = rwUserGetId()
    test:CreateBuff(info)
end

function test_MinusSpeed()
    local Info = rwtNpcGroup[30636]
    rwNPCGroup_Survival_Buff_Minus_Speed(Info)
end