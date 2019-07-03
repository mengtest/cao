---
--- Created by Administrator.
--- DateTime: 2018/6/20 0020 15:03
---


rwNpcGroup_Puzzle = class("rwNpcGroup_Puzzle",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.PuzzleNpc] = rwNpcGroup_Puzzle

function rwNpcGroup_Puzzle:EventProcess()
    rwNpcGroup_PuzzleNpcProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
end

--解谜NPC逻辑
function rwNpcGroup_PuzzleNpcProcess(nNpcGroupType,nNpcGroupId)
    rwPuzzleTemplate:create(nNpcGroupType):Process()
end