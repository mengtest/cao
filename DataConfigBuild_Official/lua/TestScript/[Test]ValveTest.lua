--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--机关测试
--by:MZY


--endregion

--local nCopyMap_Id = 9000
--local nSubScene = 3033

----初始刷新表
--local tDynaGenId = {}

----测试地图坐标点
--local nTestMapId = 9001
--local sTestCopyMap_Pos = "22.37,0.04,-80.69"

----幻阵位置
--local sPos_HuanZhen = "-100,-20,-30"


----进入副本NPC
--rwtNpcGroup[50006] = rwtNpcGroup[50006] or {}
--rwtNpcGroup[50006]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
--rwtNpcGroup[50006]["CopyMapList"] = {nCopyMap_Id}
----NPC位置：-95.0,0.1,-189.7
----副本
--rwtCopyMapMission[nCopyMap_Id] = rwtCopyMapMission[nCopyMap_Id] or {}
--rwtCopyMapMission[nCopyMap_Id]["ReqLev"] = 1
--rwtCopyMapMission[nCopyMap_Id]["Difficulty"] = 1
--rwtCopyMapMission[nCopyMap_Id]["MapInitFunc"] = function()
--   ValveTest_InitMap()
--end

----法阵4个怪
--local tMonster_FaZhen = {}
--local tMonster_FaZhen_GenId = {}
--tMonster_FaZhen[1] = 200101
--tMonster_FaZhen_GenId[1] = 3033001
--tMonster_FaZhen[2] = 200102
--tMonster_FaZhen_GenId[2] = 3033002
--tMonster_FaZhen[3] = 200103
--tMonster_FaZhen_GenId[3] = 3033003
--tMonster_FaZhen[4] = 200104
--tMonster_FaZhen_GenId[4] = 3033004
--for _,v in pairs(tMonster_FaZhen_GenId) do
--    table.insert(tDynaGenId,v)
--end

----主副本怪物
--local nMonster_Boss = 200092
--local nMonster_Boss_GenId = 9000002
--table.insert(tDynaGenId,nMonster_Boss_GenId)

----机关
--local nValve = 2
--local nValve_FaZhen_GenId = 9000001
--table.insert(tDynaGenId,nValve_FaZhen_GenId)


--------------------逻辑-----------------
--tValve[nValve] = tValve[nValve] or {}
--tValve[nValve]["Type"] = CONST_VALVE_TYPE.MAGICARRAY
--tValve[nValve]["ValveClickFunc"] = function(nValveType, nGenId, nValveId)
--    rwPrintLog("进入幻阵机关")
--    if nValveType == CONST_VALVE_TYPE.MAGICARRAY then
--        rwPrintLog("进入幻阵场景")
--        rwChangeScene(nSubScene)
--        rwUpdateValveData(nValve_FaZhen_GenId, 1, 1)
--    end
--end

----击杀怪物1后换颜色
--function ValveTest_MonsterBeKilled_1()
--   rwPrintLog("怪物1死亡")
--   rwUpdateValveData(nValve_FaZhen_GenId, 1, 2)
--end
--rwtMonsterGroup_Func[tMonster_FaZhen[1]] = rwtMonsterGroup_Func[tMonster_FaZhen[1]] or {}
--table.insert(rwtMonsterGroup_Func[tMonster_FaZhen[1]],ValveTest_MonsterBeKilled_1)

----击杀怪物2后回主副本
--function ValveTest_MonsterBeKilled_2()
--    rwPrintLog("怪物2死亡")
--    rwUpdateValveData(nValve_FaZhen_GenId, 2)
--    rwChangeScene(nCopyMap_Id,sPos_HuanZhen)
--end
--rwtMonsterGroup_Func[tMonster_FaZhen[2]] = rwtMonsterGroup_Func[tMonster_FaZhen[2]] or {}
--table.insert(rwtMonsterGroup_Func[tMonster_FaZhen[2]],ValveTest_MonsterBeKilled_2)



--------------------------函数--------------------
----初始化函数
--function ValveTest_InitMap()
--   rwPrintLog("机关测试副本初始化函数")
--   for _,v in pairs(tDynaGenId) do
--        if not rwHasGenEvent(v) then
--            rwAddGenEvent(v)
--        end
--   end
--    rwPrintLog("机关测试副本初始化完毕")
--end



-------------------------------------------------------多人本机关测试----------------------------
--测试地图：9003
local nValve_1 = 1070
local nValve_GenId_1 = 9003010
local nValve_2 = 1071
local nValve_GenId_2 = 9003011
local nValve_3 = 1072
local nValve_GenId_3 = 9003012
local nValve_4 = 1073
local nValve_GenId_4 = 9003013

local tSubValveGen = {}
tSubValveGen[1] = nValve_GenId_2
tSubValveGen[2] = nValve_GenId_3

tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_1]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount >= 1 then
        rwSendSystemMessage("进入持续触发机关，当前人数："..nUserCount)
    else
        rwSendSystemMessage("进入持续触发机关，当前人数不足1")
    end
end
tValve[nValve_1]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount < 1 then
        rwSendSystemMessage("离开持续触发机关，当前人数少于1")
    else
        rwSendSystemMessage("离开持续触发机关，当前机关内人数："..nUserCount)
    end
end

tValve[nValve_2] = tValve[nValve_2] or {}
tValve[nValve_2]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_2]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId,nUserCount)

    rwSendSystemMessage("进入多人交互子机关1")
    --获取当前机关状态
    local nVavleStatus = rwGetValveData(nGenId)
    if nVavleStatus ~= 1 then
        rwUpdateValveData(nGenId,1)
    end
    --获取全部机关状态，判断是否开启机关
    for i,v in pairs(tSubValveGen) do
        local nSubValveStatus = rwGetValveData(v) 
        rwPrintLog("机关id："..v.."   机关状态："..nSubValveStatus)
        if nSubValveStatus ~= 1 then
            rwSendSystemMessage("尚有机关未开启")
            return
        end
    end
    --子机关全部开启后开启主机关
    local nMainValveStatus = rwGetValveData(nValve_GenId_4)
    if nMainValveStatus ~= 1 then
        rwUpdateValveData(nValve_GenId_4,1)
        rwSendSystemMessage("子机关已全部开启，开启主机关")
    end
end


tValve[nValve_3] = tValve[nValve_3] or {}
tValve[nValve_3]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_3]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
  
    rwSendSystemMessage("进入多人交互子机关2")
    --获取当前机关状态
    local nVavleStatus = rwGetValveData(nGenId)
    if nVavleStatus ~= 1 then
        rwUpdateValveData(nGenId,1)
    end
    --获取全部机关状态，判断是否开启机关
    for i,v in pairs(tSubValveGen) do
        local nSubValveStatus = rwGetValveData(v) 
        rwPrintLog("机关id："..v.."   机关状态："..nSubValveStatus)
        if nSubValveStatus ~= 1 then
            rwSendSystemMessage("尚有机关未开启")
            return
        end
    end
    local nMainValveStatus = rwGetValveData(nValve_GenId_4)
    --子机关全部开启后开启主机关
    if nMainValveStatus ~= 1 then
        rwUpdateValveData(nValve_GenId_4,1)
        rwSendSystemMessage("子机关已全部开启，开启主机关")
    end
end
