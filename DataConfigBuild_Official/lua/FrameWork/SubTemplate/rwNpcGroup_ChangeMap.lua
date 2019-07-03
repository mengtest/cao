---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 14:55
--- 切屏NPC组


rwNpcGroup_ChangeMap = class("rwNpcGroup_ChangeMap",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.ChangeMap] = rwNpcGroup_ChangeMap

function rwNpcGroup_ChangeMap:EventProcess()
    rwNpcGroup_ChangeMap2(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
end

--传送
function rwNpcGroup_ChangeMap2(nNpcGroupType)
    local tInfo = rwtNpcGroup[nNpcGroupType] or {}
    if tInfo["ChangeMap"] ~= nil and type(tInfo["ChangeMap"]) == "table" then
        local nChangeFlag = rwEnterMap(unpack(tInfo["ChangeMap"]))
        if nChangeFlag then
            if tInfo.func ~= nil and type(tInfo.func) == "function" then
                tInfo.func()
            end

            --切换成功完成任务
            if rwtTaskChangeMapInfo[nNpcGroupType] and rwtTaskChangeMapInfo[nNpcGroupType] ~= nil then
                for i,nTaskId in pairs(rwtTaskChangeMapInfo[nNpcGroupType]) do
                    if rwTaskChkUserInTask(nTaskId) then
                        local nTaskDetailType = rwtTask[nTaskId]["TaskDetailType"]
                        if nTaskDetailType and ENUM_TASK_TEMPLATE[nTaskDetailType] then
                            ENUM_TASK_TEMPLATE[nTaskDetailType]:create(nTaskId):UseChangeMapPoint(nNpcGroupType)
                        end
                    end
                end
            end
        end

    end
end
