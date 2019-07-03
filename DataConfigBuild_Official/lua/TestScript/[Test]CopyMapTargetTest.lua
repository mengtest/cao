--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--副本任务目标测试


--endregion

local nTestCopyId = 3011  --鹿角兽副本

local nTarget_1 = 60000 --击杀BOSS
local nTarget_2 = 60001 --其他测试目标1
local nTarget_3 = 60002 --其他测试目标2
local nTarget_4 = 60003 --其他测试目标3
local nTarget_5 = 60004 --其他测试目标4
local nTarget_6 = 60005 --其他测试目标5

--进入副本
function CopyMapTargetTest_Enter()
    if nTestCopyId and rwtCopyMapMission[nTestCopyId] then
        rwEnterMap(nTestCopyId)
        for i = 60000,60005 do
            CopyMapTargetTest_AddTarget(i,0)
        end
    end
end

--添加副本目标
function CopyMapTargetTest_AddTarget(nTaskId,nProgress)
    nProgress = nProgress or 0
    rwAddMapTaskData(nTaskId,nProgress)
end

--更新副本目标
function CopyMapTargetTest_UpdateTarget(nTaskId,nProgress)
    rwUpdateMapTaskData(nTaskId,nProgress)
end

--删除副本通关目标
function CopyMapTargetTest_DelTarget(nTaskId)
    rwRemoveMapTaskData(nTaskId)
end

--获取副本通关目标
function CopyMapTargetTest_GetTarget(nTaskId)
    local nVal = rwGetMapTaskProgress(nTaskId)
    rwSendSystemMessage("副本目标ID".. nTaskId .. "的进度为" .. nVal,1)
end

function CopyMapTargetTest_Boss()
    CopyMapTargetTest_UpdateTarget(nTarget_1,1)
end

--rwtMonsterGroup_Func[200156] = rwtMonsterGroup_Func[200156] or {} --狼王
--table.insert(rwtMonsterGroup_Func[200156],CopyMapTargetTest_Boss)
