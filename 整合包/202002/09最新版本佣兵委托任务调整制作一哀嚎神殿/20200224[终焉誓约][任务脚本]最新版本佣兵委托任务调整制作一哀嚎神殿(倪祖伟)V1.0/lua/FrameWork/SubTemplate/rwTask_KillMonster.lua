--region rwTask_KillMonster.lua
--Purpose:		杀怪任务模板
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-02-26 $
--RCS-ID:		$Revision: 2 $
--endregion

--[[
--相关字段
KillMonsterGroup1 = 0 怪物组ID
KillMonsterGroupCount1 = 0 需要击杀怪物组数量
DynaNpcGroupMapId = 0  任务地图ID
DynaNpcGroupGen = {}    动态列表

--如果需要对白触发需配置触发方式和DialogId
DialogId = 0  剧情对白ID
MonsterGroupGenId = 0 对白结束后创建的怪物GENID

--触发方式2选1
ReqTrap1 = 0  触发的陷阱ID
TaskNpc = 0   关联的NPC ID  


IsClickComplete =1表示需要点面板才能完成
--]]

rwTask_KillMonster = class("rwTask_KillMonster",rwBaseTask)
ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.KILLMONSTER] = rwTask_KillMonster


--对白回调
function rwTask_KillMonster:DialogEndCallBack(nDialogId)
    if self._TaskInfo["CloseDialog"] and self._TaskInfo["CloseDialog"] == 0 then
        --配置0不关闭
    else
        --不配置默认关闭对话框
        rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,nDialogId)
    end
	if rwChkFunc(self._TaskInfo["DialogueEndFunc"]) then
        self._TaskInfo["DialogueEndFunc"]()            
    end 
    if self:UserIsInTask() then
        self:CreateMonsterAndBattle()
    end
end

function rwTask_KillMonster:FinishTask_OpenMercenaryMenu()
    if self._TaskType == CONST_TASK_TYPE.MERCENARY and not rwChkInt(self._TaskInfo["IsMercenaryBattleDialog"]) then
        rwOpenLocalWnd(CONST_MENUTYPE.Mercenary)
    end
end

--陷阱触发
function rwTask_KillMonster:TrapOnTask()
    if self._TaskInfo["DialogId"] then
        rwOpenNpcChatDialog(self._TaskInfo["DialogId"], CONST_NPCCHAT_TYPE.TASK, self._TaskId)
    end
end

--创建怪物并进入战斗
function rwTask_KillMonster:CreateMonsterAndBattle()
    local nGenId = self._TaskInfo["MonsterGroupGenId"]
    if nGenId then    
        if not rwHasGenEvent(nGenId) then
            rwAddGenEvent(nGenId)
        end
        rwAutoBattle(nGenId)
    end
end

--怪物组死亡
function rwTask_KillMonster:MonsterGroupBeKilled()
    if self:UserIsInTask() then
        local nOldNum = rwTaskGetData(self._TaskId,CONST_TASK_INFO_INDEX.TASK_DATA1)
        local nNeedNum = self._TaskInfo.KillMonsterGroupCount1 or 1
        local nCurNum = nOldNum + 1
        nCurNum = ((nCurNum > nNeedNum) and {nNeedNum} or {nCurNum})[1]  --防止数值溢出
        self:UpdateTaskData(CONST_TASK_INFO_INDEX.TASK_DATA1,nCurNum)       
        if nCurNum >= nNeedNum then
            self:CompleteTask() 
        end
    end
end

--任务击杀失败，接到新任务
function rwTask_KillMonster:KillMonsterFail()
    if self._TaskInfo["CheckBattleFail"] and self._TaskInfo["CheckBattleFail"] == 1 then
        if self:UserIsInTask() then
            self:DelDynaObj(CONST_TASK_INFO_DELTYPE.Success)
            rwTaskDelete(self._TaskId)
            self:TaskFail_AcceptNextTask()
        end
    end
end