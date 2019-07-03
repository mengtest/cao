--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--by:mzy
--date:2018-12-10


--endregion


--**************************************数据定义***************************
--genid分配
--NPC组：3083001-3083100
--怪物组：3083101-3083200
--机关：3083201-3083300

--副本ID
local nCopyMapId = 3083

--首通掩码
local nTemp_PassCopyMap = 1138

--首通奖励
local nAwardId_PassCopyMap = 1000356


-------------对白----------
local tDialog = {}

--进入副本对白
tDialog.EnterMap = 6227    

----第一次打错怪物
--tDialog.Dialog1 = 6228    

----后续选择错误怪物
--tDialog.Dialog2 = 6229    

--通关对白
tDialog.Pass = 6230    

-------------怪物组----------
local tMonsterGroup = {}
local tMonsterGroup_GenId = {}

--冰
tMonsterGroup[1] = 200383
tMonsterGroup_GenId[1] = 3083101
--火
tMonsterGroup[2] = 200384
tMonsterGroup_GenId[2] = 3083102
--光
tMonsterGroup[3] = 200385
tMonsterGroup_GenId[3] = 3083103
--暗
tMonsterGroup[4] = 200386
tMonsterGroup_GenId[4] = 3083104



-------------怪物----------
local tMonster = {}
tMonster[1] = 1000553
tMonster[2] = 1000554
tMonster[3] = 1000555
tMonster[4] = 1000556

-------------机关----------
local nValve = 1067
local nValve_GenId = 3083201

-------------buff----------
--怪物变强buff
local nStatus_Stronger = 600004  
-------------对白NPCid----------
--瑞德男爵
local nNpcId_1 = 3590
--马斯德子爵
local nNpcId_2 = 3631

-------------------------------副本目标---------------
--通关幻阵	
local nCopyTarget_1 = 60153

--***************************逻辑******************************
-------------------------副本-------------------------
--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

--副本首通掩码
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 1

--副本目标
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nCopyTarget_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--副本首通检查和首通奖励
rwtCopyMapMission[nCopyMapId]["TargetAward1"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTemp_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Data"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"] = {}          
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassCopyMap
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = {1,2,3,4}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "FaZhenRandomList"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = tMonsterGroup_GenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "FaZhenMonsterList"
rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
    CopyMap_YeMuGuBao_HuanZhen_InitMap()
end
----------------------副本目标-------------------------
--犯人就是你
rwtTarget[nCopyTarget_1] = {}
rwtTarget[nCopyTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21428]
rwtTarget[nCopyTarget_1]["ReqTrap"] = nTrap_1
rwtTarget[nCopyTarget_1]["ReqCount"] = 1

--------------怪物-----------------

-----------函数-------------------
--法阵随机目标怪物
function CopyMap_YeMuGuBao_HuanZhen_RandomStatus()
    local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] =  rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] or nil
    local nRandom = math.random(1,#rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"])
    local nTarget =rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"][nRandom]
    local nStaus = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"][nRandom] - 1
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] = tMonsterGroup_GenId[nTarget] 
    return nStaus
end

--幻阵怪物增强
function CopyMap_YeMuGuBao_HuanZhen_MonsterStronger(nUserId)
    for k,v in pairs(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"]) do
        if rwHasGenEvent(tMonsterGroup_GenId[v]) then
            rwMonsterAddStatus(tMonsterGroup_GenId[v], tMonster[v], nStatus_Stronger)
        end       
    end
end



---------------------------------------幻阵玩法----------------------------
--幻阵怪物死亡
function CopyMap_YeMuGuBao_HuanZhen_MonsterDeath(nMonsterGroupType, nMonsterGroupId, nGenId)
        local nUserId = rwUserGetId()
        for k,v in pairs(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenMonsterList"]) do
            if nGenId == v then 
                --更新列表
                table.remove(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"], k)
                table.remove(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenMonsterList"], k)
            end
        end
       if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] == nGenId then
            --击杀正确，破阵成功
            --完成任务目标            
            rwBaseTarget:create(nCopyTarget_1):EventOnTargetUpdate()
            rwOpenNpcChatDialog(tDialog.Pass)
            --关闭幻阵
            rwUpdateValveData(nValve_GenId, 2)
        else
            
            --击杀错误，其他怪物变强
            CopyMap_YeMuGuBao_HuanZhen_MonsterStronger(nUserId)
            --重新随机目标怪物
            local nStatus = CopyMap_YeMuGuBao_HuanZhen_RandomStatus()
            --更新幻阵状态
            rwUpdateValveData(nValve_GenId, 1, nStatus)
            local sPos = "0,1,0"   --光效位置
            for k,v in pairs(tMonsterGroup_GenId) do
                if rwHasGenEvent(v) then
                    --其余怪加光效
                    --rwPrintLog("加状态上升光效")
                    rwSpecialStatus_AddEffect(5,v,2007,sPos) 
                end
            end
        end
end
for k,v in pairs(tMonsterGroup) do
    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
    table.insert(rwtMonsterGroup_Func[v],CopyMap_YeMuGuBao_HuanZhen_MonsterDeath)
end

----怪物战前校验
--for k,v in pairs(tMonsterGroup) do
--    rwtMonsterGroup[v] = rwtMonsterGroup[v] or {}
--    rwtMonsterGroup[v]["BattleCheckFunc"] = function(nMonsterGroupId,nMonsterGroupType,nGenEventId)
--        local nUserId = rwUserGetId()
--        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] or 0
--        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] + 1
--        if not rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] then
--            return false
--        end
--        if not (rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] == nGenEventId) then
--            if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FirstKillError"] == 1 then
--                --不是第一次打错
--                rwOpenNpcChatDialog(tDialog.Dialog2)
--                return false
--            else 
--                return true
--            end
--        else
--            return true
--        end
--    end
--end


--法阵初始化
function CopyMap_YeMuGuBao_HuanZhen_InitMap()--初始化函数
    local nStaus = CopyMap_YeMuGuBao_HuanZhen_RandomStatus()
    rwUpdateValveData(nValve_GenId, 1, nStaus)
end
