---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 15:00
--- 传送阵NPC组


rwNpcGroup_Transfer = class("rwNpcGroup_Transfer",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.Transfer] = rwNpcGroup_Transfer

function rwNpcGroup_Transfer:EventProcess()
    rwNpcGroup_TransferProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
end

--传送NPC
function rwNpcGroup_TransferProcess(nNpcGroupType)
    local tInfo = rwtNpcGroup[nNpcGroupType] or {}
    local nIndex = tInfo["nIndex"]
    local tTransferInfo = rwGetTransferInfo(nIndex)
    local bLock = rwMapGetTransferMask(nIndex)
    if bLock == false then
        --未解锁，进行解锁操作
        if tTransferInfo["ChkFuc"] ~= nil and type(tTransferInfo["ChkFuc"]) == "function" then
            rwSetTransferMask(nIndex)
			if tTransferInfo["OpenTransferTip"]	 then
				 rwSendSystemMessage(tTransferInfo["OpenTransferTip"],2)
			end
        else
            return
        end
    elseif bLock == true then
        --已解锁
    end
end