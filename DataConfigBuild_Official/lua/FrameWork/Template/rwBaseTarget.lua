--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--目标模板
--YJX


--endregion


--===============================================================================--
--=========						  通用数据      						=========--
--===============================================================================--
--单人本通用
rwtTarget[60072] = {}
rwtTarget[60072]["Title"] = tLuaText[LANGUAGE_CONFIG][20000]
rwtTarget[60072]["KillMonsterGroup"] = 1
rwtTarget[60072]["ReqCount"] = 1

--多人本通用
rwtTarget[60069] = {}
rwtTarget[60069]["Title"] = tLuaText[LANGUAGE_CONFIG][20001]
rwtTarget[60069]["KillMonsterGroup"] = 1
rwtTarget[60069]["ReqCount"] = 1

--===============================================================================--



rwBaseTarget = class("rwBaseTarget")

--构造函数
function rwBaseTarget:ctor(nTaskId)
    self._TaskId = nTaskId
    self._TaskInfo = rwtTarget[self._TaskId] or {}
end

--添加目标
function rwBaseTarget:AddTarget()
    if self:IsTargetCanAdd() then
        rwAddMapTaskData(self._TaskId)
    end
end

--获取目标进度
function rwBaseTarget:GetTargetProgress()
    return rwGetMapTaskProgress(self._TaskId)
end

--是否满足添加目标条件
function rwBaseTarget:IsTargetCanAdd()
    return rwIsTargetCanAdd(self._TaskId)
end

--更新目标进度
function rwBaseTarget:UpdateTarget(nProgress)    
    rwUpdateMapTaskData(self._TaskId,nProgress)
    if self:IsTargetFinished() then
        local nMapId = rwUserGetCurMapId()
        local nDyMapId = rwUserGetDynMapId()
		local tInfo = self._TaskInfo
		if rwChkTable(tInfo) then
			rwBaseAward:create(tInfo):Process()
		end  	
        --副本
        rwCopyMapTemplate:create(nMapId, nDyMapId):CopyMapTargetFinished(self._TaskId)
    end
end

--目标是否完成
function rwBaseTarget:IsTargetFinished()
    return rwIsTargetFinished(self._TaskId)
end

--目标全部完成才能通关副本
--function rwBaseTarget:AllTargetFinished()
--	if self._TaskInfo["CopyMapId"] and type(self._TaskInfo["CopyMapId"]) == "number" then

--		local nMapId = self._TaskInfo["CopyMapId"]
--		if not rwtCopyMapMission[nMapId] then
--			return 
--		end

--		if rwtCopyMapMission[nMapId]["TotalTarget"] ~= nil and type(rwtCopyMapMission[nMapId]["TotalTarget"]) == "table" then
--			local nTotalNum = table.getn(rwtCopyMapMission[nMapId]["TotalTarget"])
--			local nIndex = 0 
--			for _,v in pairs (rwtCopyMapMission[nMapId]["TotalTarget"]) do
--				local nval = rwtTarget[v]["ReqCount"]
--				if rwGetMapTaskProgress(v) == nval then
--					nIndex = nIndex + 1
--					if nIndex == nTotalNum then
--						rwLinkPassCopyMap(nMapId)
--					end
--				else
--					return
--				end
--			end 
--		end
--	end
--end

--对应事件触发目标更新
function rwBaseTarget:EventOnTargetUpdate()
    local nOldVal = self:GetTargetProgress()
    if nOldVal >= 0 then
        local nCurVal = nOldVal + 1
        self:UpdateTarget(nCurVal)
		--self:AllTargetFinished()
    end
end

--目标是否可添加
function rwIsTargetCanAdd(nTaskId)
    if not nTaskId or not rwtTarget[nTaskId] then
        return false
    end
--    if rwChkTable(rwtTarget[nTaskId]["PreTarget"]) then
--        for _,v in pairs(rwtTarget[nTaskId]["PreTarget"]) do
--            if not IsTargetFinished(v) then
--                return false
--            end
--        end    
--    end
    return true 
end

--目标是否完成
function rwIsTargetFinished(nTaskId)
    if not nTaskId or not rwtTarget[nTaskId] then
        return false
    end
    local nVal = rwGetMapTaskProgress(nTaskId)
    local nNeedProgress = rwtTarget[nTaskId]["ReqCount"] or 1
    if nVal < nNeedProgress then
        return false
    end   
    return true    
end




