--rwBaseNpcGroup *.lua
--Date
--NPC群模板



--endregion

rwBaseNpcGroup = class("rwBaseNpcGroup")

--nNpcGroupTypeId：组ID
--nNpcGroupId：组动态ID
function rwBaseNpcGroup:ctor(nNpcGroupId, nNpcGroupType, nGenEventId)
    self._NpcGroupType = nNpcGroupType
    self._NpcGroupId = nNpcGroupId
    self._GenEventId = nGenEventId
    self._Info = rwtNpcGroup[self._NpcGroupType] or {}
end

function rwBaseNpcGroup:Process()
    if not rwtNpcGroup[self._NpcGroupType] then    
        return
    end
    --独立接口
    if rwtNpcGroup[self._NpcGroupType] and rwChkFunc(rwtNpcGroup[self._NpcGroupType]["InterfaceFunc"]) then
        rwtNpcGroup[self._NpcGroupType]["InterfaceFunc"](self._NpcGroupType,self._NpcGroupId,self._GenEventId)
        return
    end
end

function rwBaseNpcGroup:EventProcess()
    self:Process()
end






