--region [CopyMap]NorMal_AiHaoShenDian.lua
--Date
--此文件由[BabeLua]插件自动生成
--[普通]哀嚎神殿单人普通副本
--by:mzy

--endregion

--***************************数据******************************
--genid分配
--NPC组：3036001-3036100
--怪物组：3036101-3036200
--机关：3036201-3036300
--副本ID
--哀嚎神殿
local nCopyMapId = 3036
--幻阵子场景
local nMap_HuanZhen = 3037
--进入副本时需要创建的NPC、monster列表
local tDynaGenId = {}
--副本内玩家数据
local tCopyMap_NorMal_AiHaoShenDianUserData = {}


--进入副本NPC
local nNpcGroup_CopyMap = 50019
local nNpcGroup_CopyMap_GenId = 3036006

--切换剧情、普通本任务
local nChangeNpcTaskID = 10182

-------------------对白、剧情id---------------------
-----对白
--桥前对白
local nDialogs_1 = 5197
--击败boss后对白(战后事件)
local nDialogs_2 = 5198
--进入幻阵对白
local nDialogs_3 = 5199
--打错对白(战后事件)
local nDialogs_4 = 5200
--进副本对白
local nDialogs_5 = 5201
--通过幻阵后对白（剧情中）
local nDialogs_6 = 5202
------剧情
--幻阵开门
local nOperPlay_1 = 2715
--通关幻阵后
local nOperPlay_2 = 2717
-----------------------怪物组MonsterGroup----------------------
--幻阵4只怪（冰火光暗）
local tMonsterGroup_HuanZhen = {}
local tMonsterGroup_HuanZhen_GenId = {}
tMonsterGroup_HuanZhen[1] = 200213
tMonsterGroup_HuanZhen_GenId[1] = 3036101
tMonsterGroup_HuanZhen[2] = 200214
tMonsterGroup_HuanZhen_GenId[2] = 3036102
tMonsterGroup_HuanZhen[3] = 200215
tMonsterGroup_HuanZhen_GenId[3] = 3036103
tMonsterGroup_HuanZhen[4] = 200216
tMonsterGroup_HuanZhen_GenId[4] = 3036104

--怪物1
local nMonsterGroup_1 = 200217
local nMonsterGroup_1_GenId = 3036105
--怪物2
local nMonsterGroup_2 = 200218
local nMonsterGroup_2_GenId = 3036106
--怪物3
local nMonsterGroup_3 = 200219
local nMonsterGroup_3_GenId = 3036107
--怪物4
local nMonsterGroup_4 = 200220
local nMonsterGroup_4_GenId = 3036108
--怪物5(幻阵前)
local nMonsterGroup_5 = 200221
local nMonsterGroup_5_GenId = 3036109
--怪物6（桥上）
local nMonsterGroup_6 = 200222
local nMonsterGroup_6_GenId = 3036110
--BOSS诺尔
local nMonsterGroup_BOSS = 200223
local nMonsterGroup_BOSS_GenId = 3036111
--table.insert(tDynaGenId,nMonsterGroup_BOSS_GenId)

----------------------怪物monster--------------
--1000182-1000190
--幻阵4只怪（冰火光暗）
local tMonster_HuanZhen = {}
tMonster_HuanZhen[1] = 1000182
tMonster_HuanZhen[2] = 1000183
tMonster_HuanZhen[3] = 1000184
tMonster_HuanZhen[4] = 1000185

--亡魂死徒
local nMonster_1 = 1000186
--亡魂死士
local nMonster_2 = 1000187
--黑骑士迪亚
local nMonster_3 = 1000188
--狮心魔骑贝恩
local nMonster_4 = 1000189
--BOSS诺尔
local nMonster_BOSS = 1000190
------------------------NPC组----------------------

--陷阱
--桥前触发对白陷阱
local nTrap_1 = 30291
local nTrap_1_GenId = 3036008
table.insert(tDynaGenId,nTrap_1_GenId)
-----------------npcid-----------
--黑魔巫师
local nNpc_Boss = 3238
-----------------机关---------
--幻阵
local nValve_1 = 1026
local nValve_1_GenId = 3036201
--桥前门
local nValve_2 = 1027
local nValve_2_GenId = 3036202
--幻阵前门
local nValve_3 = 1028
local nValve_3_GenId = 3036203
table.insert(tDynaGenId,nValve_1_GenId)
table.insert(tDynaGenId,nValve_2_GenId)
table.insert(tDynaGenId,nValve_3_GenId)
-----------------坐标点--------------
--幻阵返回点
local sPos_HuanZhenReturn = "-56.03,-12.41,-52.15"
-------------------------------副本目标---------------
--拦路之人	
local nCopyTarget_1 = 60068
--幻阵之困	
local nCopyTarget_2 = 60059
--魔由心生
local nCopyTarget_3 = 60060

--------------------------其他数据------------------------
----采集物奖励id
--local nCollect_AwardId = 1000031
----宝箱奖励id
--local nBox_AwardId = 1000032

--怪物变强buff
local nStatus_Stronger = 600004  
--***************************逻辑******************************
------------------------副本-----------------------
--副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["UnlockDialog"] = 5214
rwtNpcGroup[nNpcGroup_CopyMap]["Dialog"] = 5208
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
--rwtCopyMapMission[nCopyMapId]["EnterNpc"] = nNpcGroup_CopyMap
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_CopyMap_GenId --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 3
rwtCopyMapMission[nCopyMapId]["Target1"] = {nCopyTarget_1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nCopyTarget_2}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nCopyTarget_3}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--rwtCopyMapMission[nCopyMapId]["Target1"] = nCopyTarget_1
--rwtCopyMapMission[nCopyMapId]["Target2"] = nCopyTarget_2
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--    CopyMap_NorMal_AiHaoShenDian_InitMap()
--end
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogs_5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "HuanZhen"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = {1,2,3,4}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "HuanZhenRandomList"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["SetValue"] = SysCopyTable(tMonster_FaZhen_GenId)
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["ValueRes"] = "HuanZhenMonsterList"

--------------------副本目标-------------------
----------------------副本目标-------------------------
--拦路之人
rwtTarget[nCopyTarget_1] = {}
rwtTarget[nCopyTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20022]
rwtTarget[nCopyTarget_1]["KillMonsterGroup"] = nMonsterGroup_5
rwtTarget[nCopyTarget_1]["ReqCount"] = 1
--幻阵之困
rwtTarget[nCopyTarget_2] = {}
rwtTarget[nCopyTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20023]
rwtTarget[nCopyTarget_2]["ReqCount"] = 1

--魔由心生
rwtTarget[nCopyTarget_3] = {}
rwtTarget[nCopyTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20024]
rwtTarget[nCopyTarget_3]["KillMonsterGroup"] = nMonsterGroup_BOSS
rwtTarget[nCopyTarget_3]["ReqCount"] = 1

---------------------NPC组---------------------------

--陷阱（桥前对白）
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}           
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogs_1

---------------------怪物组--------------------------
--幻阵前怪物死亡后开门
function CopyMap_NorMalAiHaoShenDian_HuanZhenDoorBeKill()
    --rwPrintLog("看门怪死亡函数")
    --怪物死亡开门
    rwUpdateValveData(nValve_3_GenId,1) 
    rwStoryTrigger(nOperPlay_1,2,1)    
    --rwPrintLog("看门怪死亡函数结束")
end
rwtMonsterGroup_Func[nMonsterGroup_5] = rwtMonsterGroup_Func[nMonsterGroup_5] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_5],CopyMap_NorMalAiHaoShenDian_HuanZhenDoorBeKill)

--诺尔
function CopyMap_NorMal_AiHaoShenDian_BOSSBeKill()
--rwPrintErrorLog("boss死亡")
--    --击败boss后触发对白
    rwOpenNpcChatDialog(nDialogs_2,CONST_NPCCHAT_TYPE.COPYMAP)
    -- 设置副本通关
--    rwLinkPassCopyMap(nCopyMapId)
end
rwtMonsterGroup_Func[nMonsterGroup_BOSS] = rwtMonsterGroup_Func[nMonsterGroup_BOSS] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_BOSS],CopyMap_NorMal_AiHaoShenDian_BOSSBeKill)


---------------------函数--------------------------
--幻阵随机目标怪物
function CopyMap_NorMal_AiHaoShenDian_RandomStatus()
	local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] or {}
    local nRandom = math.random(1,#rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"])
    local nTarget = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"][nRandom]
    local nStaus = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"][nRandom] - 1
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] = tMonsterGroup_HuanZhen_GenId[nTarget] 
    return nStaus
end

--幻阵怪物增强
function CopyMap_NorMalAiHaoShenDian_MonsterStronger(nUserId)
    for k,v in pairs(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"]) do
        if rwHasGenEvent(tMonsterGroup_HuanZhen_GenId[v]) then
            rwMonsterAddStatus(tMonsterGroup_HuanZhen_GenId[v], tMonsterGroup_HuanZhen[v], nStatus_Stronger)
        end       
    end
end

--副本初始化函数
--function CopyMap_NorMal_AiHaoShenDian_InitMap()
--   rwPrintLog("进入哀嚎神殿普通副本，开始执行初始化函数")
--   rwOpenNpcChatDialog(nDialogs_5)             --进入副本打开对话
--   --副本内玩家数据
----   tCopyMap_NorMal_AiHaoShenDianUserData = tCopyMap_NorMal_AiHaoShenDianUserData or {}
--   local nUserId = rwUserGetId()
--   rwtCopyMapUserInitInfo[nCopyMapId][nUserId] = {}
--   --副本内启用法阵
--   rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhen"] = true
--   --幻阵初始随机列表(1-4分别对应幻阵4种怪物：冰火光暗)
--   rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"] or {1,2,3,4}
--   rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenMonsterList"] = SysCopyTable(tMonsterGroup_HuanZhen_GenId)
--   --创建动态NPC、monster
--   for _,v in pairs(tDynaGenId) do
--        if not rwHasGenEvent(v) then
--            rwAddGenEvent(v)
--        end
--   end
--   rwPrintLog("哀嚎神殿普通副本初始化完毕")
--end

---------------------------------------幻阵玩法----------------------------
--机关逻辑
tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.MAGICARRAY
--tValve[nValve_1]["ValveClickFunc"] = function(nValveType, nGenId, nValveId)
--    CopyMap_NorMal_AiHaoShenDianFaZhen_InitMap()
--    rwChangeScene(nMap_HuanZhen)

--end

--幻阵怪物死亡
function CopyMap_NorMal_AiHaoShenDianHuanZhen_MonsterDeath(nMonsterGroupType, nMonsterGroupId, nGenId)
        local nUserId = rwUserGetId()
        for k,v in pairs(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenMonsterList"]) do
            if nGenId == v then 
                --更新列表
                table.remove(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"], k)
                table.remove(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhenRandomList"], k)
            end
        end
       if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] == nGenId then
            --完成任务目标            
            rwBaseTarget:create(nCopyTarget_2):EventOnTargetUpdate()
            --击杀正，破阵成功，返回主副本
            rwChangeScene(nCopyMapId,sPos_HuanZhenReturn)
            --关闭幻阵
            rwUpdateValveData(nValve_1_GenId, 2)
            --开启吊桥机关
            rwUpdateValveData(nValve_2_GenId, 1)
            rwStoryTrigger(nOperPlay_2,2,1)
        else
            --击杀错误，其他怪物变强
            CopyMap_NorMalAiHaoShenDian_MonsterStronger(nUserId)
            --重新随机目标怪物
            local nStatus = CopyMap_NorMal_AiHaoShenDian_RandomStatus()
            --移除所有怪物身上光效，给对应怪物添加光效 不是这，是对话
            local sPos = "0,1,0"   --光效位置
            for k,v in pairs(tMonsterGroup_HuanZhen_GenId) do
                if rwHasGenEvent(v) then
                    --其余怪加光效
                    --rwPrintLog("加状态上升光效")
                    rwSpecialStatus_AddEffect(5,v,2007,sPos) 
                end
            end
            --更新幻阵状态
            rwUpdateValveData(nValve_1_GenId, 1, nStatus)
        end
end
for k,v in pairs(tMonsterGroup_HuanZhen) do
    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
    table.insert(rwtMonsterGroup_Func[v],CopyMap_NorMal_AiHaoShenDianHuanZhen_MonsterDeath)
end


--法阵初始化
function CopyMap_NorMal_AiHaoShenDianFaZhen_InitMap()--初始化函数
    for k,v in pairs(tMonsterGroup_HuanZhen_GenId) do
        if not rwHasGenEvent(v) then
            rwAddGenEvent(v)
        end
    end
    local nStaus = CopyMap_NorMal_AiHaoShenDian_RandomStatus()
    rwUpdateValveData(nValve_1_GenId, 1, nStaus)
end
--切图后弹出提示
function CopyMap_NorMal_AiHaoShenDianFaZhen_EnterEnd()--初始化函数
    local nUserId = rwUserGetId()
    if  rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["HuanZhen"] then
        rwOpenNpcChatDialog(nDialogs_3)
    end
end
----切图后触发
rwtChangeSceneSucc_Func[nMap_HuanZhen] = rwtChangeSceneSucc_Func[nMap_HuanZhen] or {}
table.insert(rwtChangeSceneSucc_Func[nMap_HuanZhen],CopyMap_NorMal_AiHaoShenDianFaZhen_EnterEnd)

--幻阵通关剧情结束函数
function CopyMap_NorMal_AiHaoShenDian_StoryEnd_PassFaZhen()
    --开启吊桥机关
    rwUpdateValveData(nValve_2_GenId, 1)
end
rwtCGFinish[nOperPlay_2] = rwtCGFinish[nOperPlay_2] or {}