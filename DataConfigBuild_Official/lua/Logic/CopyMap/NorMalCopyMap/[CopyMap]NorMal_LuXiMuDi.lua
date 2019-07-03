--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--露西墓地普通副本
--黄艳婷


--endregion
--===========================副本配置====================================--

local nCopyMapId = 3028   --副本ID

rwtNpcGroup[50018] = {}   --副本入口NPC组
rwtNpcGroup[50018]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50018]["UnlockDialog"] = 5213
rwtNpcGroup[50018]["Dialog"] = 5207
rwtNpcGroup[50018]["CopyMapList"] = {nCopyMapId}

local tLuXiMuDiInit = {} --进入副本时记录各种信息，包含随机等

--采集NPC
local nCollect_Coffin_1 = 60097   --棺材1
local nCollect_Coffin_2 = 60098   --棺材2
local nCollect_Coffin_3 = 60099   --棺材3
local nCollect_DeadBody = 60100   --尸体

local nGenId_Collect_Coffin_1 = 3028001  --开第一个门的棺材
local nGenId_Collect_Coffin_3 = 3028004  --开第二个门的棺材

--陷阱
local nGenId_Trap_1 = 3028008
local nGenId_Trap_2 = 3028009

--BOSS
local nGenId_MonsterGroup_Boss = 3028015  

--机关
local nGenId_Valve_1 = 3028016  --第一个门
local nGenId_Valve_2 = 3028017  --第二个门


--玩法事件配置
--local tLuXiMuDiEventConfig = {}

--    tLuXiMuDiEventConfig["Coffin_2"] = {}
--    tLuXiMuDiEventConfig["Coffin_2"]["Awards"] = {}
--    tLuXiMuDiEventConfig["Coffin_2"]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--    tLuXiMuDiEventConfig["Coffin_2"]["Awards"]["AwardId"] = 1000037

--    tLuXiMuDiEventConfig["DeadBody"] = {}
--    tLuXiMuDiEventConfig["DeadBody"]["Awards"] = {}
--    tLuXiMuDiEventConfig["DeadBody"]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--    tLuXiMuDiEventConfig["DeadBody"]["Awards"]["AwardId"] = 1000038

--光效配置
local tNormal_LuXiMuDiEffectConfig = {3028001,3028004}                      

--任务目标配置

rwtTarget[60006] = {}
rwtTarget[60006]["Title"] = tLuaText[LANGUAGE_CONFIG][20031]
rwtTarget[60006]["ReqCollectId"] = 60097
rwtTarget[60006]["ReqCount"] = 1

rwtTarget[60007] = {}
rwtTarget[60007]["Title"] = tLuaText[LANGUAGE_CONFIG][20032]
rwtTarget[60007]["ReqCollectId"] = 60099
rwtTarget[60007]["ReqCount"] = 1

rwtTarget[60008] = {}
rwtTarget[60008]["Title"] = tLuaText[LANGUAGE_CONFIG][20033]
rwtTarget[60008]["KillMonsterGroup"] = 200207
rwtTarget[60008]["ReqCount"] = 1  
            
--副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10092  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3028018 --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 3 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60006}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60007}
rwtCopyMapMission[nCopyMapId]["Target3"] = {60008}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5180
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_Valve_1,nGenId_Valve_2}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 3028001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 3028004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = 2000
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapMissId)
--    CopyMap_NorMal_LuXiMuDi_Enter(nCopyMapMissId)
--end

--===========================副本逻辑====================================--

--function CopyMap_NorMal_LuXiMuDi_Enter(nCopyMapMissId)
--    rwOpenNpcChatDialog(5180)
--    local nUserId = rwUserGetId()
--    tLuXiMuDiInit[nUserId] = {}

--    rwAddGenEvent(nGenId_Valve_1)  --第一个门
--    rwAddGenEvent(nGenId_Valve_2)  --第二个门

--    for _,v in pairs(tNormal_LuXiMuDiEffectConfig) do
--        rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,v, 2000)  
--    end
--end


--function CopyMap_NorMal_LuXiMuDi_EventHandle(sEvent)           
--    local tInfo = tLuXiMuDiEventConfig[sEvent]["Awards"]
--    if not tInfo then
--        return 
--    end

--    local awardCode = rwBaseAward:create(CONST_ACTION_TYPE.TREASURE_BOX,0,tInfo):Process()
--      if awardCode ~= CONST_CODE.OK then        
--          rwPrintErrorLog("陆露西普通本墓地奖励出错"  .. "award error!")            
--      end
--end


--采集相关
rwtNpcGroup[nCollect_Coffin_1] = rwtNpcGroup[nCollect_Coffin_1] or {}
rwtNpcGroup[nCollect_Coffin_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Coffin_1]["Awards"] = {}  
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"] = {}      
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"][1] = {} 
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2] = {} 
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = 5181
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][3] = {} 
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][3]["DynDelete"] = {nGenId_Trap_1}

--rwtNpcGroup[nCollect_Coffin_1]["EndDialogId"]= 5181          --采集后对白
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"][1] = {}       
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[nCollect_Coffin_1]["DelGen"] = {nGenId_Trap_1}   --删除物品（陷

rwtNpcGroup[nCollect_Coffin_3] = rwtNpcGroup[nCollect_Coffin_3] or {}
rwtNpcGroup[nCollect_Coffin_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Coffin_3]["Awards"] = {}  
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"] = {}      
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"][1] = {} 
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][2] = {} 
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = 5182
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][3] = {} 
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][3]["DynDelete"] = {nGenId_Trap_2}

--rwtNpcGroup[nCollect_Coffin_3]["EndDialogId"]= 5182          --采集后对白
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"][1] = {}       
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[nCollect_Coffin_3]["DelGen"] = {nGenId_Trap_2}   --删除物品（陷阱）


--第一个机关前陷阱
rwtNpcGroup[30307] = rwtNpcGroup[30307] or {}
rwtNpcGroup[30307]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30307]["DelTrap"] = 1
rwtNpcGroup[30307]["Awards"] = {}  
rwtNpcGroup[30307]["Awards"]["Events"] = {}   
rwtNpcGroup[30307]["Awards"]["Events"][1] = {}
rwtNpcGroup[30307]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[30307]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5183


--第二个机关前陷阱
rwtNpcGroup[30308] = rwtNpcGroup[30308] or {}
rwtNpcGroup[30308]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30308]["DelTrap"] = 1
rwtNpcGroup[30308]["Awards"] = {}  
rwtNpcGroup[30308]["Awards"]["Events"] = {}   
rwtNpcGroup[30308]["Awards"]["Events"][1] = {}
rwtNpcGroup[30308]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[30308]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5183

--function CopyMap_Normal_LuXiMuDi_BOSS_Death()

--    rwLinkPassCopyMap(3028)
--end

--rwtMonsterGroup_Func[200207] = rwtMonsterGroup_Func[200207] or {} 
--table.insert(rwtMonsterGroup_Func[200207],CopyMap_Normal_LuXiMuDi_BOSS_Death)