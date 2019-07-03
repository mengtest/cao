---
--- Created by Nizw.
--- DateTime: 2019/2/20
--- 检测事件NPC组（）


rwNpcGroup_CheckEvent = class("rwNpcGroup_CheckEvent",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.CheckEvent] = rwNpcGroup_CheckEvent

function rwNpcGroup_CheckEvent:EventProcess()
    rwNpcGroup_CheckEventProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
	
end

function rwNpcGroup_CheckEventProcess(NpcGroupType,NpcGroupId,GenEventId)
	if not rwtNpcGroup[NpcGroupType] then
        return
    end

	if rwChkTable(rwtNpcGroup[NpcGroupType]["Awards"]) then
		rwBaseAward:create(rwtNpcGroup[NpcGroupType]["Awards"],0,GenEventId):Process()
	end
	
end
