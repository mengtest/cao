---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 14:37
--- 副本NPC组

--JSON中字段
local m_data = "data"
local m_missionId = "missionId"
local m_enterFunc = "enterFunc"
local m_lefttimes = "lefttimes"
local m_difficulty = "difficulty"

rwNpcGroup_CopyMap = class("rwNpcGroup_CopyMap",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.CopyMap] = rwNpcGroup_CopyMap

function rwNpcGroup_CopyMap:EventProcess()
    rwNpcGroup_ShowCopyMap(self._NpcGroupType)
end

--副本界面
function rwNpcGroup_ShowCopyMap(nNpcGroupType)
    local tInfo = rwtNpcGroup[nNpcGroupType] or {}
    local tJsonTable = {}
	--进入副本掩码判断
	if rwChkTable(rwtNpcGroup[nNpcGroupType]["ChkTempCord"])  then
		local nUserId = rwUserGetId()
		for i,v in pairs(rwtNpcGroup[nNpcGroupType]["ChkTempCord"]) do
			local nTempDataID = v["TempDataId"]  or 0
			local nDataIndex = v["DataIndex"] or CONST_TEMP_DATA.Data1
			local nValue = v["Value"] or 0
			if nTempDataID and nValue then
				if not rwTempDataIsExist(nTempDataID, nUserId) then
					rwTempDataAdd(nTempDataID, nUserId)
				end
				if rwTempDataGetValue(nTempDataID,nDataIndex,nUserId) ~= nValue then
					rwPrintWarnLog("不符合掩码条件") 
					rwSendSystemMessage("该副本还不能进入",2,1)
					return false 
				end
			end
		end
	end
    if tInfo["CopyMapList"] ~= nil and type(tInfo["CopyMapList"]) == "table" then
        tJsonTable[m_lefttimes]  = rwUserGetTimesLeft(CONST_USER_TIMESTYPE.CopyMap)  --副本剩余次数
        tJsonTable[m_data] = {}
        for _,nMissionId in pairs(tInfo["CopyMapList"]) do
            local bEnterCopymap = false
            if rwtTaskUnlockCopyMapInfo[nMissionId] and rwtTaskUnlockCopyMapInfo[nMissionId] ~= 0 then
                if rwtTaskUnlockCopyMapInfo[nMissionId]["TaskId"] and rwtTaskUnlockCopyMapInfo[nMissionId]["TaskId"] ~= 0 then
                    local nUnlockTaskId = rwtTaskUnlockCopyMapInfo[nMissionId]["TaskId"]
                    if rwTaskGetFinishMask(nUnlockTaskId) ~= 1 then
                        if tInfo["UnlockDialog"] and tInfo["UnlockDialog"] ~= 0 then
                            rwOpenNpcChatDialog(tInfo["UnlockDialog"],CONST_NPCCHAT_TYPE.NPC)
                            return
                        end
                    elseif rwtTaskEnterCopyMapInfo[nMissionId] and rwtTaskEnterCopyMapInfo[nMissionId] ~= 0 then
                        for i,v in pairs (rwtTaskEnterCopyMapInfo[nMissionId]) do
                            if rwTaskChkUserInTask (v) then
                                if rwTaskGetFinishMask(v) == 1 then
                                else
                                    bEnterCopymap = true
                                    break
                                end
                            end
                        end
                        if not bEnterCopymap then
                            if tInfo["Dialog"] and tInfo["Dialog"] ~= 0 then
                                rwOpenNpcChatDialog(tInfo["Dialog"],CONST_NPCCHAT_TYPE.NPC)
                                return
                            end
                        end
                    end
                end
            end
            local bJudge = false
            for i,v in pairs(rwtTaskEnterCopyMapInfo) do
                if nMissionId == i then
                    bJudge = true
                    break
                end
            end
            if not bJudge then
                if tInfo["Dialog"] and tInfo["Dialog"] ~= 0 then
                    rwOpenNpcChatDialog(tInfo["Dialog"],CONST_NPCCHAT_TYPE.NPC)
                    return
                end
            end
            if rwtCopyMapMission[nMissionId] then
                local nDifficulty = rwtCopyMapMission[nMissionId]["Difficulty"] or 1
                table.insert(tJsonTable[m_data],{[m_difficulty] = nDifficulty, [m_missionId] = nMissionId,[m_enterFunc] = "</F>rwLinkCopyMapMissionEnter</N>" .. nMissionId})
            end
        end

        local sStr = rwTable2Json(tJsonTable)
        rwAddCopyMapDlg(sStr)
    end
end