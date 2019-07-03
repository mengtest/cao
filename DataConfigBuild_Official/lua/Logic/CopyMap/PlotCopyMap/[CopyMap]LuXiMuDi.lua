--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--露西墓地副本
--YJX


--endregion
--===========================副本配置====================================--
local tMsg_LuXiMuDi= {}
    tMsg_LuXiMuDi[1] = "空荡的墓地传来响声，墓地似乎发生了变化。"
    tMsg_LuXiMuDi[2] = "一股木材腐败的气味飘出，里面什么都没有。"
    tMsg_LuXiMuDi[3] = "棺材里有一件散发着恶臭的亡灵披风。"
    tMsg_LuXiMuDi[4] = "颜色诡异的亡灵眼泪，有意想不到的作用。"

local nCopyMapId = 3035   --副本ID

rwtNpcGroup[50005] = {}   --副本入口NPC组
rwtNpcGroup[50005]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50005]["UnlockDialog"] = 5213
rwtNpcGroup[50005]["Dialog"] = 5207
rwtNpcGroup[50005]["CopyMapList"] = {nCopyMapId}

local tLuXiMuDiInit = {} --进入副本时记录各种信息，包含随机等

--NPC
local nNpc_Group_Genid_1 = 2001749    --僵尸老婆
local nNpc_Group_Genid_2 = 2001750    --左相(站)
local nNpc_Group_Genid_3 = 2001751    --左相(躺)
local nNpc_Group_Genid_4 = 2001752    --莱克
local nNpc_Group_Genid_5 = 2001753    --左相施法光效
local nNpc_Group_Genid_6 = 2001754    --左相光幕

--采集NPC
local nCollect_Coffin_1 = 60058   --棺材1
local nCollect_Coffin_2 = 60059   --棺材2
local nCollect_Coffin_3 = 60060   --棺材3
local nCollect_DeadBody = 60061   --尸体

local nGenId_Collect_Coffin_1 = 3035010  --开第一个门的棺材
local nGenId_Collect_Mid_1 = 3035011  
local nGenId_Collect_Mid_2 = 3035012
local nGenId_Collect_Mid_3 = 3035013
local nGenId_Collect_Coffin_3 = 3035014  --开第二个门的棺材

--陷阱
local nGenId_Trap_1 = 3035041
local nGenId_Trap_2 = 3035042

--怪物
--local nGenId_MonsterGroup_1 = 3035008   --采集时出现的怪物
--local nGenId_MonsterGroup_2 = 3035009

--BOSS
local nGenId_MonsterGroup_Boss = 3035006  

--机关
local nGenId_Valve_1 = 3035030  --第一个门
local nGenId_Valve_2 = 3035031  --第二个门

--物品
local nItem_DouPeng = 7000061  --隐身斗篷
local nItem_YaoJi = 7000071  --杀戮药剂

--NPC
--local nGenId_Npc_BOSS = 3035050

--剧情
local nCGId_ZuoXiang = 15402  --左相尸化剧情
local nCGId_BossDeath = 15403  --BOSS死亡剧情
local nCGId_OpenDoor = 15404  --铁门开启

--指示光效
local nEffect_Jiantou = 2004
local nEffect_GuanCaiKuang = 2005
local nEffect_GuanCaiKuang_2 = 2008

--玩法事件配置
local tLuXiMuDiEventConfig = {}
      tLuXiMuDiEventConfig["Coffin_2"] = {}
      tLuXiMuDiEventConfig["Coffin_2"]["Awards"] = {}
      tLuXiMuDiEventConfig["Coffin_2"]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
      tLuXiMuDiEventConfig["Coffin_2"]["Awards"]["AwardId"] = 1000044

      tLuXiMuDiEventConfig["DeadBody"] = {}
      tLuXiMuDiEventConfig["DeadBody"]["Awards"] = {}
      tLuXiMuDiEventConfig["DeadBody"]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
      tLuXiMuDiEventConfig["DeadBody"]["Awards"]["AwardId"] = 1000045
--    tLuXiMuDiEventConfig["Coffin_2"] = {}
--    tLuXiMuDiEventConfig["Coffin_2"][1] = {}
--    tLuXiMuDiEventConfig["Coffin_2"][1]["Prob"] = 40
--    tLuXiMuDiEventConfig["Coffin_2"][1]["Event"] = "AddItem"
--    tLuXiMuDiEventConfig["Coffin_2"][1]["EventParam1"] = {nItem_DouPeng,1}
--    tLuXiMuDiEventConfig["Coffin_2"][1]["Msg"] = tMsg_LuXiMuDi[3]

--    tLuXiMuDiEventConfig["Coffin_2"][2] = {}
--    tLuXiMuDiEventConfig["Coffin_2"][2]["Prob"] = 70
--    tLuXiMuDiEventConfig["Coffin_2"][2]["Event"] = "AddMemoryItem"
--    tLuXiMuDiEventConfig["Coffin_2"][2]["EventParam1"] = {CONST_SPECIALITEM_ID.MONEY,3000}

--    tLuXiMuDiEventConfig["Coffin_2"][3] = {}
--    tLuXiMuDiEventConfig["Coffin_2"][3]["Prob"] = 100
--    tLuXiMuDiEventConfig["Coffin_2"][3]["Event"] = "AddMemoryItem"
--    tLuXiMuDiEventConfig["Coffin_2"][3]["EventParam1"] = {2110014,5}

--    tLuXiMuDiEventConfig["Coffin_3"] = {}
--    tLuXiMuDiEventConfig["Coffin_3"][1] = {}
--    tLuXiMuDiEventConfig["Coffin_3"][1]["Prob"] = 50
--    tLuXiMuDiEventConfig["Coffin_3"][1]["Event"] = "Empty"
--    tLuXiMuDiEventConfig["Coffin_3"][1]["Msg"] = tMsg_LuXiMuDi[2]
--    tLuXiMuDiEventConfig["Coffin_3"][2] = {}
--    tLuXiMuDiEventConfig["Coffin_3"][2]["Prob"] = 70
--    tLuXiMuDiEventConfig["Coffin_3"][2]["Event"] = "AddDialog"
--    tLuXiMuDiEventConfig["Coffin_3"][2]["EventParam1"] = 5027
--    tLuXiMuDiEventConfig["Coffin_3"][3] = {}
--    tLuXiMuDiEventConfig["Coffin_3"][3]["Prob"] = 100
--    tLuXiMuDiEventConfig["Coffin_3"][3]["Event"] = "AddItem"
--    tLuXiMuDiEventConfig["Coffin_3"][3]["EventParam1"] = {nItem_YaoJi,1}
--    tLuXiMuDiEventConfig["Coffin_3"][3]["Msg"] = tMsg_LuXiMuDi[3]

--    tLuXiMuDiEventConfig["DeadBody"] = {}
--    tLuXiMuDiEventConfig["DeadBody"][1] = {}
--    tLuXiMuDiEventConfig["DeadBody"][1]["Prob"] = 20
--    tLuXiMuDiEventConfig["DeadBody"][1]["Event"] = "AddMemoryItem"
--    tLuXiMuDiEventConfig["DeadBody"][1]["EventParam1"] = {CONST_SPECIALITEM_ID.MONEY,1000}

--    tLuXiMuDiEventConfig["DeadBody"][2] = {}
--    tLuXiMuDiEventConfig["DeadBody"][2]["Prob"] = 50
--    tLuXiMuDiEventConfig["DeadBody"][2]["Event"] = "AddMemoryItem"
--    tLuXiMuDiEventConfig["DeadBody"][2]["EventParam1"] = {CONST_SPECIALITEM_ID.MONEY,2000}

--    tLuXiMuDiEventConfig["DeadBody"][3] = {}
--    tLuXiMuDiEventConfig["DeadBody"][3]["Prob"] = 100
--    tLuXiMuDiEventConfig["DeadBody"][3]["Event"] = "AddMemoryItem"
--    tLuXiMuDiEventConfig["DeadBody"][3]["EventParam1"] = {CONST_SPECIALITEM_ID.MONEY,3000}


--光效配置
local tLuXiMuDiEffectConfig = {3035010,3035012,3035013,3035014}                      

--任务目标配置
rwtTarget[60012] = {}
rwtTarget[60012]["Title"] = tLuaText[LANGUAGE_CONFIG][20062]
rwtTarget[60012]["ReqCollectId"] = 60058
rwtTarget[60012]["ReqCount"] = 1

rwtTarget[60013] = {}
rwtTarget[60013]["Title"] = tLuaText[LANGUAGE_CONFIG][20063]
rwtTarget[60013]["ReqCollectId"] = 60060
rwtTarget[60013]["ReqCount"] = 1

rwtTarget[60014] = {}
rwtTarget[60014]["Title"] = tLuaText[LANGUAGE_CONFIG][20064]
rwtTarget[60014]["ReqTrap"] = 30176
rwtTarget[60014]["ReqCount"] = 1

rwtTarget[60015] = {}
rwtTarget[60015]["Title"] = tLuaText[LANGUAGE_CONFIG][20065]
rwtTarget[60015]["KillMonsterGroup"] = 200076
rwtTarget[60015]["ReqCount"] = 1  

--副本配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10092  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 2001121 --副本传送NPC的GENID

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 4 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60012}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60013}
rwtCopyMapMission[nCopyMapId]["Target3"] = {60014}
rwtCopyMapMission[nCopyMapId]["Target4"] = {60015}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5046
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_Valve_1,nGenId_Valve_2}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "Init"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 3035010
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 3035012
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = 2000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 3035013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = 2000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = CONST_SPECICAL_TARGET.NPCGROUP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 3035014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = 2000
--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapMissId)
--    CopyMap_LuXiMuDi_Enter(nCopyMapMissId)
--end

--===========================副本逻辑====================================--
--function CopyMap_LuXiMuDi_Enter(nCopyMapMissId)
--    rwOpenNpcChatDialog(5046)
--    local nUserId = rwUserGetId()
--    tLuXiMuDiInit[nUserId] = {}

--    rwAddGenEvent(nGenId_Valve_1)  --第一个门
--    rwAddGenEvent(nGenId_Valve_2)  --第二个门

--    for _,v in pairs(tLuXiMuDiEffectConfig) do
--        rwSpecialStatus_AddEffect(CONST_SPECICAL_TARGET.NPCGROUP,v, 2000)  
--    end
--end

--采集相关
rwtNpcGroup[nCollect_Coffin_1] = rwtNpcGroup[nCollect_Coffin_1] or {}
rwtNpcGroup[nCollect_Coffin_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Coffin_1]["DialogId"] = 5146
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"][1] = {}       --打开机关
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
--rwtNpcGroup[nCollect_Coffin_1]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[nCollect_Coffin_1]["StoryTrigger"] = {}     --触发场景动画
--rwtNpcGroup[nCollect_Coffin_1]["StoryTrigger"]["StoryId"] = nCGId_OpenDoor
--rwtNpcGroup[nCollect_Coffin_1]["StoryTrigger"]["Type"] = 2
--rwtNpcGroup[nCollect_Coffin_1]["StoryTrigger"]["nChgScenePlay"]= 0
--rwtNpcGroup[nCollect_Coffin_1]["DelGen"] = {nGenId_Trap_1}   --删除物品（陷阱）
rwtNpcGroup[nCollect_Coffin_1]["Awards"] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"][1] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2]["PlaySceneAnimation"] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2]["PlaySceneAnimation"]["Id"]= nCGId_OpenDoor
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][2]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][3] = {}
rwtNpcGroup[nCollect_Coffin_1]["Awards"]["Events"][3]["DynDelete"] = {nGenId_Trap_1}

rwtNpcGroup[nCollect_Coffin_2] = rwtNpcGroup[nCollect_Coffin_2] or {}
rwtNpcGroup[nCollect_Coffin_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_Coffin_2]["Awards"] = {}                 --奖励
--rwtNpcGroup[nCollect_Coffin_2]["Awards"]["AwardId"] = 1000044
--rwtNpcGroup[nCollect_Coffin_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Coffin_2]["Awards"] = {}
rwtNpcGroup[nCollect_Coffin_2]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_Coffin_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_Coffin_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nCollect_Coffin_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000044
rwtNpcGroup[nCollect_Coffin_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Coffin_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_Coffin_3] = rwtNpcGroup[nCollect_Coffin_3] or {}
rwtNpcGroup[nCollect_Coffin_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Coffin_3]["DialogId"] = 5090
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"][1] = {}       --打开机关
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
--rwtNpcGroup[nCollect_Coffin_3]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[nCollect_Coffin_3]["DelGen"] = {nGenId_Trap_2}   --删除物品（陷阱）
rwtNpcGroup[nCollect_Coffin_3]["Awards"] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1] = {}
--rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
--rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15414
--rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
--rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"][1] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySynAudio"] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySynAudio"]["AudioId"] = 22020005
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][1]["PlaySynAudio"]["ControlType"] = 3
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][2] = {}
rwtNpcGroup[nCollect_Coffin_3]["Awards"]["Events"][2]["DynDelete"] = {nGenId_Trap_2}

rwtNpcGroup[nCollect_DeadBody] = rwtNpcGroup[nCollect_DeadBody] or {}
rwtNpcGroup[nCollect_DeadBody]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[nCollect_DeadBody]["Awards"] = {}                 --奖励
--rwtNpcGroup[nCollect_DeadBody]["Awards"]["AwardId"] = 1000045
--rwtNpcGroup[nCollect_DeadBody]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_DeadBody]["Awards"] = {}
rwtNpcGroup[nCollect_DeadBody]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_DeadBody]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_DeadBody]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nCollect_DeadBody]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000045
rwtNpcGroup[nCollect_DeadBody]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_DeadBody]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--隐身斗篷
rwtItem[nItem_DouPeng] = rwtItem[nItem_DouPeng] or {}
rwtItem[nItem_DouPeng]["Awards"] = {}
rwtItem[nItem_DouPeng]["Awards"]["Events"] = {}
rwtItem[nItem_DouPeng]["Awards"]["Events"][1] = {}
rwtItem[nItem_DouPeng]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[nItem_DouPeng]["Awards"]["Events"][1]["AddState"]["SpecialState"] = CONST_USER_SPECIAL_STATE.HIDE
rwtItem[nItem_DouPeng]["Awards"]["Events"][1]["AddState"]["SpecialStateParam"] = 10

--杀戮药剂
rwtItem[nItem_YaoJi] = rwtItem[nItem_YaoJi] or {}
rwtItem[nItem_YaoJi]["Awards"] = {}
rwtItem[nItem_YaoJi]["Awards"]["Events"] = {}
rwtItem[nItem_YaoJi]["Awards"]["Events"][1] = {}
rwtItem[nItem_YaoJi]["Awards"]["Events"][1]["AddState"] = {}
rwtItem[nItem_YaoJi]["Awards"]["Events"][1]["AddState"]["StateID"] = 700001

--BOSS前陷阱
rwtNpcGroup[30176] = {}
rwtNpcGroup[30176]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30176]["DelTrap"] = 1
rwtNpcGroup[30176]["Awards"] = {}  
rwtNpcGroup[30176]["Awards"]["Events"] = {}   
--rwtNpcGroup[30176]["Awards"]["Events"][1] = {}
--rwtNpcGroup[30176]["Awards"]["Events"][1]["OpenDialog"] = {}          
--rwtNpcGroup[30176]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5025
rwtNpcGroup[30176]["Awards"]["Events"][1] = {} 
rwtNpcGroup[30176]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[30176]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nCGId_ZuoXiang
rwtNpcGroup[30176]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[30176]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

function CopyMap_LuXiMuDi_CGEnd_ZuoXiang()
      --删除  --站着的左相、施法光效、莱克npc
     if rwHasGenEvent(nNpc_Group_Genid_2) then
        rwDelGenEvent(nNpc_Group_Genid_2)
     end
      if rwHasGenEvent(nNpc_Group_Genid_4) then
        rwDelGenEvent(nNpc_Group_Genid_4)
     end
      if rwHasGenEvent(nNpc_Group_Genid_5) then
        rwDelGenEvent(nNpc_Group_Genid_5)
     end
    --添加    --躺着的左相
    if not rwHasGenEvent(nNpc_Group_Genid_3) then
        rwAddGenEvent(nNpc_Group_Genid_3)
    end
    if not rwHasGenEvent(nGenId_MonsterGroup_Boss) then
        rwAddGenEvent(nGenId_MonsterGroup_Boss)
    end
    rwAutoBattle(nGenId_MonsterGroup_Boss)
end
rwtCGFinish[nCGId_ZuoXiang] = rwtCGFinish[nCGId_ZuoXiang] or {}
table.insert(rwtCGFinish[nCGId_ZuoXiang],CopyMap_LuXiMuDi_CGEnd_ZuoXiang)

function CopyMap_LuXiMuDi_CG2_End_BaoZha()
rwSpecialStatus_AddEffect(7,0,2039,"17.48,-3.45,66.24")
rwSpecialStatus_AddEffect(7,0,2039,"19.98,-3.45,60.89")
rwSpecialStatus_AddEffect(7,0,2039,"11.66,-3.65,74.28")
rwSpecialStatus_AddEffect(7,0,2039,"22.49,-3.71,72.78")
end
rwtCGFinish[nCGId_BossDeath] = rwtCGFinish[nCGId_BossDeath] or {}
table.insert(rwtCGFinish[nCGId_BossDeath],CopyMap_LuXiMuDi_CG2_End_BaoZha)

--[[
rwtDialog[5026] = rwtDialog[5026] or {}
rwtDialog[5026]["DialogEndInit"] = {}
rwtDialog[5026]["DialogEndInit"]["Events"] = {}
rwtDialog[5026]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5026]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5026]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_MonsterGroup_1
--]]

--[[
rwtDialog[5027] = rwtDialog[5027] or {}
rwtDialog[5027]["DialogEndInit"] = {}
rwtDialog[5027]["DialogEndInit"]["Events"] = {}
rwtDialog[5027]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5027]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5027]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_MonsterGroup_2
--]]


--第一个机关前陷阱
rwtNpcGroup[30177] = rwtNpcGroup[30177] or {}
rwtNpcGroup[30177]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30177]["Awards"] = {}  
rwtNpcGroup[30177]["Awards"]["Events"] = {}   
rwtNpcGroup[30177]["Awards"]["Events"][1] = {}
rwtNpcGroup[30177]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[30177]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5088


--第二个机关前陷阱
rwtNpcGroup[30178] = rwtNpcGroup[30178] or {}
rwtNpcGroup[30178]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30178]["Awards"] = {}  
rwtNpcGroup[30178]["Awards"]["Events"] = {}   
rwtNpcGroup[30178]["Awards"]["Events"][1] = {}
rwtNpcGroup[30178]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[30178]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 5088


function CopyMap_LuXiMuDi_BOSS_Death()
    rwStoryTrigger(nCGId_BossDeath,2,1) --BOSS剧情
--    rwLinkPassCopyMap(nCopyMapId)
end

rwtMonsterGroup_Func[200076] = rwtMonsterGroup_Func[200076] or {} 
table.insert(rwtMonsterGroup_Func[200076],CopyMap_LuXiMuDi_BOSS_Death)