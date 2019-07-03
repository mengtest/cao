---
--- Created by YJX.
--- DateTime: 2018/6/20 0020 15:05
--- 多NPC的NPC组


--JSON中字段
local m_groupId = "groupId"
local m_id = "id"
local m_data = "data"
local m_index = "index"
local m_npcId = "npcId"

rwNpcGroup_NpcGroup = class("rwNpcGroup_NpcGroup",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.MapNpc] = rwNpcGroup_NpcGroup

function rwNpcGroup_NpcGroup:EventProcess()
    rwNpcGroup_NpcGroupProcess(self._NpcGroupType,self._NpcGroupId,self._GenEventId)
end


--功能NPC界面
function rwNpcGroup_NpcGroupProcess(nNpcGroupType,nNpcGroupId)
    local tInfo = rwtNpcGroup[nNpcGroupType] or {}

    --判断掩码
    --若达成了某个目标，掩码Data1等于某个值，则在这里return
    if rwChkTable(tInfo["ChkTempdata"]) then
        local nUserId = rwUserGetId()
        local nMask = tInfo["ChkTempdata"]["Id"]
        if rwTempDataIsExist(nMask,nUserId) then
            local nFailData = tInfo["ChkTempdata"]["FailData"] or 1
            if rwTempDataGetValue(nMask,CONST_TEMP_DATA.Data1,nUserId) == nFailData then
                if rwChkInt(tInfo["ChkTempdata"]["FailDialogId"]) then
                    rwOpenNpcChatDialog(tInfo["ChkTempdata"]["FailDialogId"],CONST_NPCCHAT_TYPE.NPC)
                end
                return
            end
        end
    end


    local tJsonTable = {}
    local nNpcIndex = 1   --群组里NPC索引
    local nJsonNpcIndex = 1   --Json列表中NPC索引
    tJsonTable[m_groupId] = nNpcGroupType
    tJsonTable[m_id] = nNpcGroupId
    tJsonTable[m_data] = {}

    local nDefaultNpcIndex = 1
    --local bIsHasTask = false
    --检索群组内可显示的NPC
    while tInfo["NpcId"..nNpcIndex] do
        local bIsShowNpc = true

        local nNpcId = tInfo["NpcId"..nNpcIndex]
        if tInfo["NpcChkFuc"..nNpcIndex] ~= nil and type(tInfo["NpcChkFuc"..nNpcIndex]) == "function" then
            if tInfo["NpcChkFuc"..nNpcIndex](nNpcId) == false then
                bIsShowNpc = false
            end
        end

        if bIsShowNpc then
            tJsonTable[m_data][nJsonNpcIndex] = {[m_index] = nJsonNpcIndex,[m_npcId] = nNpcId}

            --            for _,nTaskId in pairs(rwtTaskNpcInfo[nNpcId]) do
            --                if not bIsHasTask and rwTaskChkUserInTask(nTaskId) then
            --                    bIsHasTask = true
            --                    nDefaultNpcIndex = nNpcIndex
            --                    break
            --                end
            --            end
            nJsonNpcIndex = nJsonNpcIndex + 1
        end
        nNpcIndex = nNpcIndex + 1
    end

    local sStr = rwTable2Json(tJsonTable)
    rwAddNpcGroupDlg(sStr)

    --链接NPC功能，默认群里第一个NPC
    if tJsonTable[m_data][nDefaultNpcIndex] then
        rwLinkNpc(tJsonTable[m_groupId], tJsonTable[m_data][1][m_npcId])
    end
end