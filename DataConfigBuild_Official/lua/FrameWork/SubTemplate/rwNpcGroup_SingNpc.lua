---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 15:07
--- 传统单个NPC的NPC组


rwNpcGroup_SingNpc = class("rwNpcGroup_SingNpc",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.SingleNpc] = rwNpcGroup_SingNpc

function rwNpcGroup_SingNpc:EventProcess()
    local nNpcTypeId = self._Info["NpcId"]
    if nNpcTypeId then
        rwLinkNpc(self._NpcGroupType, nNpcTypeId)
    end
end
