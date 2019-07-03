--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--树心城多人副本
--By:mzy
--CreatDate:2018.12.03

--endregion




--**************************************数据定义***************************
--genid分配
--NPC组：3074001-3074100
--怪物组：3074101-3074200
--机关：3074201-3074300

--副本id
local nCopyMapId = 3074

--动态创建table
local tDynaGenId = {}

--副本目标
local tTarget = {}
tTarget.Tar1 = 60134    --开启左侧机关
tTarget.Tar2 = 60135    --开启右侧机关
tTarget.Tar3 = 60136    --击败BOSS
tTarget.Pass = 60069    --通关副本

-------------------------------对白-----------------------
local tDialog = {}

--进入副本对白
tDialog.EnterMap = 6204

--机关前陷阱对白，提示玩家破除机关
tDialog.Dialog1 = 6205

--开启1个机关时对白
tDialog.Dialog2 = 6206

--boss对白
tDialog.Boss = 6207

--通关对白
tDialog.Pass = 6208

--动画内对白
--触发陷阱发现宝箱
tDialog.Dialog3 = 6209

tDialog.Dialog4 = 6210

--机关全部开启
tDialog.Dialog5 = 6215

--重复进入宝箱机关提示对白
tDialog.Dialog6 = 6689



-------------------------------动画-----------------------
local tOper = {}

--生成机关宝箱动画
tOper.Play1 = 16901

--boss障碍机关破除
tOper.Play2 = 16902

-------------------------------NPCGroup-----------------------
--机关宝箱
local nBox_Valve = 40159
local nBox_Valve_GenId = 3074001
--篝火
local nBonFire = 70014
local nBonFire_GenId = 3074002

--陷阱
local tTrap = {}
local tTrap_GenId = {}

--机关宝箱陷阱
tTrap.Trap1 = 30526
--tTrap_GenId.Trap1 = 3074003

--boss前障碍陷阱
tTrap.Trap2 = 30527
tTrap_GenId.Trap2 = 3074004

--小BOSS守护机关陷阱1
tTrap.Trap3 = 30528
--tTrap_GenId.Trap3 = 3074005

--小BOSS守护机关陷阱2
tTrap.Trap4 = 30529
--tTrap_GenId.Trap4 = 3074006

for k,v in pairs(tTrap_GenId) do
    table.insert(tDynaGenId,v)
end

--NPC
local tSingleNpc = {}
local tSingleNpc_GenId = {}

--boss
tSingleNpc.Boss = 20517
tSingleNpc_GenId.Boss = 3074007
table.insert(tDynaGenId,tSingleNpc_GenId.Boss)

-------------------------------npcid-----------------------
local tNpc = {}

--BOSS
tNpc.Boss = 3289     --蜘蛛女王艾达	
-------------------------------MonsterGroup-----------------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

--精灵战士
tMonsterGroup.Group1 = 200360
tMonsterGroupGenId.Group1 = 3074101

--要塞守卫官
tMonsterGroup.Group2 = 200361
tMonsterGroupGenId.Group2 = 3074102

--锤子团首领
tMonsterGroup.Group3 = 200362
tMonsterGroupGenId.Group3 = 3074103

--女巫仆从
tMonsterGroup.Group4 = 200363
tMonsterGroupGenId.Group4 = 3074104

--荒原女巫
tMonsterGroup.Group5 = 200364
tMonsterGroupGenId.Group5 = 3074105

--矮巨人矿工
tMonsterGroup.Group6 = 200365
tMonsterGroupGenId.Group6 = 3074106

--矮巨人指挥官
tMonsterGroup.Group7 = 200366
tMonsterGroupGenId.Group7 = 3074107

--精灵弓箭手
tMonsterGroup.Group8 = 200367
tMonsterGroupGenId.Group8 = 3074108

--绿林花妖
tMonsterGroup.Group9 = 200368
tMonsterGroupGenId.Group9 = 3074109

--黄金首领
tMonsterGroup.NorBoss1 = 200369
tMonsterGroupGenId.NorBoss1 = 3074110

--暗黑法师
tMonsterGroup.NorBoss2 = 200370
tMonsterGroupGenId.NorBoss2 = 3074111

--蜘蛛女王
tMonsterGroup.Boss = 200371
tMonsterGroupGenId.Boss = 3074112

-------------------------------Monster-----------------------

local tMonster = {}

--精灵战士
tMonster.Monster1 = 1000526

--要塞守卫官
tMonster.Monster2 = 1000527

--锤子团首领
tMonster.Monster3 = 1000528

--女巫仆从
tMonster.Monster4 = 1000529

--荒原女巫
tMonster.Monster5 = 1000530

--矮巨人矿工
tMonster.Monster6 = 1000531

--矮巨人指挥官
tMonster.Monster7 = 1000532

--精灵弓箭手
tMonster.Monster8 = 1000533

--绿林花妖
tMonster.Monster9 = 1000534

--黄金首领
tMonster.NorBoss1 = 1000535

--暗黑法师
tMonster.NorBoss2 = 1000536

--蜘蛛女王
tMonster.Boss = 1000537

-------------------------------怪物冒泡-----------------------
--100181-100192


-------------------------------机关-----------------------
local tLocalValve = {}
local tLocalValve_GenId = {}

--boss前障碍机关
tLocalValve.Valve1 = 1058
tLocalValve_GenId.Valve1 = 3074201

--宝箱机关
tLocalValve.Valve2 = 1077
tLocalValve_GenId.Valve2 = 3074202

--boss前障碍子机关1
tLocalValve.Valve3 = 1078
tLocalValve_GenId.Valve3 = 3074203

--boss前障碍子机关2
tLocalValve.Valve4 = 1079
tLocalValve_GenId.Valve4 = 3074204

for k,v in pairs(tLocalValve_GenId) do
    table.insert(tDynaGenId,v)
end
-------------------------------光效-----------------------
local tEffect = {}

--宝箱机关位置初始光效
tEffect.Effect1 = 2057
--宝箱机关位置触发光效
tEffect.Effect2 = 2058

--宝箱位置初始光效
tEffect.Effect3 = 2059
----宝箱位置触发光效
--tEffect.Effect4 = 2060
--宝箱位置触发后
tEffect.Effect5 = 2061

--怨灵墙机关陷阱初始光效
tEffect.Effect6 = 2062
--怨灵墙机关陷阱触发光效
tEffect.Effect7 = 2063
--怨灵墙机关陷阱触发后
tEffect.Effect8 = 2064

--怨灵墙机关陷阱全部开启后
tEffect.Effect9 = 2065


-------------------------------buff-----------------------
local tBuff = {}
tBuff[1] = 501201
tBuff[2] = 501301
tBuff[3] = 501401

-------------------------------坐标-----------------------
local tPos = {}

--宝箱坐标
tPos.Box = "22.234,-0.62,-33.822"
--宝箱陷阱坐标
tPos.BoxTrap = "6.03,-0.64,-33.7"
--怨灵墙机关1
tPos.TrapValve1 = "15.78,-1.25,26.5"
--怨灵墙机关2
tPos.TrapValve2 = "54.37,-1.25,26.61"

--机关墙前的陷阱
tPos.TrapValve3 = "34.74,-3.31,35.65"
--篝火
tPos.Fire = "35.65,0.00,48.71"
-------------------------------奖励数据-----------------------
local tAward = {}

--宝箱开启奖励
tAward.Box = 1000344

--通关奖励
tAward.Pass = 1000345
--**************************************逻辑***************************
-------------------------副本-------------------------
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["Type"] = CONST_COPYMAP_TYPE.MULTI
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.TeamCopyMap
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget.Tar1,tTarget.Tar2}
rwtCopyMapMission[nCopyMapId]["Target2"] = {tTarget.Tar3}
rwtCopyMapMission[nCopyMapId]["Target99"] = {tTarget.Pass}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.EnterMap

--设置标记，表示小boss处机关是否开启
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}

rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["DynCreate"] = tDynaGenId   --动态创建

rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = tTrap.Trap3
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = tTrap.Trap4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3] = {} --宝箱是否开启掩码
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3]["SetValue"] = false
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3]["ValueRes"] = "OpenBox"
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3] = {} --是否播放宝箱出现动画
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][3]["ValueRes"] = "BoxEnableOper"
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][4] = {} --是否播放左边机关对白
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][4]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][4]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][4]["ValueRes"] = "LeftDialog"
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][5] = {} --是否播放右边机关对白
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][5]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][5]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][5]["ValueRes"] = "RightDialog"

--光效添加
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["EffectId"] = tEffect.Effect1
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["Pos"] = tPos.BoxTrap
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetType"] = 7
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetId"] = 0
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["EffectId"] = tEffect.Effect3
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["Pos"] = tPos.Box
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetType"] = 6
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetId"] = tLocalValve_GenId.Valve3
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["EffectId"] = tEffect.Effect6
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetType"] = 6
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetId"] = tLocalValve_GenId.Valve4
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["EffectId"] = tEffect.Effect6


rwtCopyMapMission[nCopyMapId]["Fire"] = {}  ---篝火配置
rwtCopyMapMission[nCopyMapId]["Fire"]["GenId"] = nBonFire_GenId
rwtCopyMapMission[nCopyMapId]["Fire"]["LifeTime"] = 60
rwtCopyMapMission[nCopyMapId]["Fire"]["InterVal"] = 3
rwtCopyMapMission[nCopyMapId]["Fire"]["ExpBall"] = 8000
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][1] = "35.35,-0.08,43.66"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][2] = "32.92,-0.08,44.94"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][3] = "38.35,-0.08,45.20"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][1] = 0		
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][2] = 0
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][3] = 280


rwtCopyMapMission[nCopyMapId]["MultiDestroyFunc"] = function(nCopyMapMissId,nMapId)
    CopyMap_Multi_ShuXinCheng_Destroy(nCopyMapMissId,nMapId)
end

----------------------副本目标-------------------------
--开启左侧机关
rwtTarget[tTarget.Tar1] = {}
rwtTarget[tTarget.Tar1]["Title"] = tLuaText[LANGUAGE_CONFIG][21425]
--rwtTarget[tTarget.Tar1]["ReqTrap"] = tTrap.Trap3
rwtTarget[tTarget.Tar1]["ReqCount"] = 1

--开启右侧机关
rwtTarget[tTarget.Tar2] = {}
rwtTarget[tTarget.Tar2]["Title"] = tLuaText[LANGUAGE_CONFIG][21426]
--rwtTarget[tTarget.Tar2]["ReqTrap"] = tTrap.Trap4
rwtTarget[tTarget.Tar2]["ReqCount"] = 1

--击败BOSS
rwtTarget[tTarget.Tar3] = {}
rwtTarget[tTarget.Tar3]["Title"] = tLuaText[LANGUAGE_CONFIG][21427]
rwtTarget[tTarget.Tar3]["KillMonsterGroup"] = tMonsterGroup.Boss
rwtTarget[tTarget.Tar3]["ReqCount"] = 1


------------陷阱-----------------
--进入陷阱播放动画，再生成宝箱
rwtNpcGroup[tTrap.Trap1] = rwtNpcGroup[tTrap.Trap1] or {}
rwtNpcGroup[tTrap.Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.Trap1]["DelTrap"] = 1
rwtNpcGroup[tTrap.Trap1]["Awards"] = {}  
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= tOper.Play1
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["EffectId"] = tEffect.Effect5
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["Pos"] = tPos.Box
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1]["TargetType"] = 7
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1]["TargetId"] = 0
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1]["EffectId"] = tEffect.Effect3
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["DynCreate"] = {nBox_Valve_GenId}

--boss前障碍陷阱,进入时提示破除机关
rwtNpcGroup[tTrap.Trap2] = rwtNpcGroup[tTrap.Trap2] or {}
rwtNpcGroup[tTrap.Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.Trap2]["Awards"] = {}  
rwtNpcGroup[tTrap.Trap2]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.Trap2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTrap.Trap2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[tTrap.Trap2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.Dialog1

--小BOSS守护机关陷阱1
rwtNpcGroup[tTrap.Trap3] = rwtNpcGroup[tTrap.Trap3] or {}
rwtNpcGroup[tTrap.Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.Trap3]["TrapFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    --播放光效、删除、生成新的光效
    rwSpecialStatus_AddEffect(7,0, tEffect.Effect7,tPos.TrapValve1)
--    rwSpecialStatus_AddEffect(4,nGenEventId, tEffect.Effect7)
    rwDelGenEvent(nGenEventId)
    rwSpecialStatus_AddEffect(7,0, tEffect.Effect8,tPos.TrapValve1)
    --开启当前机关
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][nNpcGroupType] = true

    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap3] and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap4] then
    
    --全部开启后，播光效，播动画，删除障碍机关及陷阱
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwStoryTrigger(tOper.Play2,2,1,tUserList[i])
            end
        end
        rwDelGenEvent(tLocalValve_GenId.Valve1)
        rwDelGenEvent(tTrap_GenId.Trap2)

    else
        --未全部开启时，播放对白
        rwOpenNpcChatDialog(tDialog.Dialog2)
    end
end

--小BOSS守护机关陷阱2
rwtNpcGroup[tTrap.Trap4] = rwtNpcGroup[tTrap.Trap4] or {}
rwtNpcGroup[tTrap.Trap4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.Trap4]["TrapFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
    local nDynMapId = rwUserGetDynMapId()
    --播放光效、删除、生成新的光效
--    rwSpecialStatus_AddEffect(4,nGenEventId, tEffect.Effect7)
    rwSpecialStatus_AddEffect(7,0, tEffect.Effect7,tPos.TrapValve2)
    rwDelGenEvent(nGenEventId)
    rwSpecialStatus_AddEffect(7,0, tEffect.Effect8,tPos.TrapValve2)
    --开启当前机关
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][nNpcGroupType] = true

    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap3] and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap4] then
    
    --全部开启后，播动画，删除障碍机关及陷阱
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwStoryTrigger(tOper.Play2,2,1,tUserList[i])
            end
        end
        rwDelGenEvent(tLocalValve_GenId.Valve1)
        rwDelGenEvent(tTrap_GenId.Trap2)

    else
        --未全部开启时，播放对白
        rwOpenNpcChatDialog(tDialog.Dialog2)
    end
end


------------宝箱-----------------
--宝箱
rwtNpcGroup[nBox_Valve] = rwtNpcGroup[nBox_Valve] or {}
rwtNpcGroup[nBox_Valve]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox 
rwtNpcGroup[nBox_Valve]["Awards"] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][1]["OpenVavle"] = {}        --宝箱开启后关闭机关
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][1]["OpenVavle"][1] ={}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = tLocalValve_GenId.Valve2
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 2
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2]["GetServerAward"]["AwardTarget"] = CONST_AWARD_TARGET.TEAM
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = nBox_Valve
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = tAward.Box  
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][1] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][1]["TargetId"] = 0
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][1]["EffectId"] = tEffect.Effect3
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][1]["Pos"] = tPos.Box
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][2] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][2]["TargetType"] = 6
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][2]["TargetId"] = tLocalValve_GenId.Valve2
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["AddEffect"][2]["EffectId"] = tEffect.Effect6
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][1] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][1]["TargetType"] = 7
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][1]["TargetId"] = 0
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][1]["EffectId"] = tEffect.Effect1
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][2] = {}
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][2]["TargetType"] = 7
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][2]["TargetId"] = 0
rwtNpcGroup[nBox_Valve]["Awards"]["Events"][3]["RemoveEffect"][2]["EffectId"] = tEffect.Effect5

------------npc-----------------
--BOSS
rwtNpcGroup[tSingleNpc.Boss] = rwtNpcGroup[tSingleNpc.Boss] or {}
rwtNpcGroup[tSingleNpc.Boss]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.Boss]["NpcId"]= tNpc.Boss

rwtNpc[tNpc.Boss] = rwtNpc[tNpc.Boss] or {}
rwtNpc[tNpc.Boss]["DialogId"] = tDialog.Boss

rwtDialog[tDialog.Boss] = rwtDialog[tDialog.Boss] or {}
rwtDialog[tDialog.Boss]["DialogEndInit"] = {}
rwtDialog[tDialog.Boss]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Boss]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Boss]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.Boss]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGenId.Boss


------------怪物-----------------
--Boss
rwtMonsterGroup[tMonsterGroup.Boss] = rwtMonsterGroup[tMonsterGroup.Boss] or {}
rwtMonsterGroup[tMonsterGroup.Boss]["BattleWin"] = function()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwOpenNpcChatDialog(tDialog.Pass)
        end
    end
end

--锤子团首领
rwtMonsterGroup[tMonsterGroup.Group3] = rwtMonsterGroup[tMonsterGroup.Group3] or {}
rwtMonsterGroup[tMonsterGroup.Group3]["BattleWin"] = function()
    rwStatusAdd(tBuff[1],99,3)
end

--荒原女巫
rwtMonsterGroup[tMonsterGroup.Group5] = rwtMonsterGroup[tMonsterGroup.Group5] or {}
rwtMonsterGroup[tMonsterGroup.Group5]["BattleWin"] = function()
    rwStatusAdd(tBuff[2],99,3)
end

--矮巨人指挥官
rwtMonsterGroup[tMonsterGroup.Group7] = rwtMonsterGroup[tMonsterGroup.Group7] or {}
rwtMonsterGroup[tMonsterGroup.Group7]["BattleWin"] = function()
    rwStatusAdd(tBuff[3],99,3)
end


------------机关-----------------
rwtNpcGroup[tTrap.Trap1] = rwtNpcGroup[tTrap.Trap1] or {}
rwtNpcGroup[tTrap.Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.Trap1]["DelTrap"] = 1
rwtNpcGroup[tTrap.Trap1]["Awards"] = {}  
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= tOper.Play1
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["EffectId"] = tEffect.Effect5
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["AddEffect"][1]["Pos"] = tPos.Box
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1] = {}
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1]["TargetType"] = 7
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1]["TargetId"] = 0
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["RemoveEffect"][1]["EffectId"] = tEffect.Effect3
rwtNpcGroup[tTrap.Trap1]["Awards"]["Events"][1]["DynCreate"] = {nBox_Valve_GenId}
--宝箱机关（持续交互机关）
tValve[tLocalValve.Valve2] = tValve[tLocalValve.Valve2] or {}
tValve[tLocalValve.Valve2]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tLocalValve.Valve2]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount > 1 then
        return
    end
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end

    local nDynMapId = rwUserGetDynMapId()
--    --宝箱开启后不执行逻辑
--    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["OpenBox"] then
--        return
--    end
    --第一次进入播放动画
    if not rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["BoxEnableOper"] then
        rwStoryTrigger(tOper.Play1, 2)
        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["BoxEnableOper"] = true
--        return
    else
        --重复进入时弹提示对白
        rwOpenNpcChatDialog(tDialog.Dialog6)
    end
    
    rwSpecialStatus_RemoveEffect(7,0, tEffect.Effect3)
    rwSpecialStatus_AddEffect(7,0, tEffect.Effect5,tPos.Box)
    --第一个人进入机关生成宝箱
    if not rwHasGenEvent(nBox_Valve_GenId) then
        rwAddGenEvent(nBox_Valve_GenId)
    end
end

tValve[tLocalValve.Valve2]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
   if nUserCount > 0 then
        return
    end
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end
--    --宝箱开启后不执行逻辑
--    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["OpenBox"] then
--        return
--    end
    --所有人离开机关删除宝箱
    if rwHasGenEvent(nBox_Valve_GenId) then
        rwDelGenEvent(nBox_Valve_GenId)
    end
    --恢复光效
    rwSpecialStatus_RemoveEffect(7,0, tEffect.Effect5)
    rwSpecialStatus_AddEffect(7,0, tEffect.Effect3,tPos.Box)
end


--障碍子机关1
tValve[tLocalValve.Valve3] = tValve[tLocalValve.Valve3] or {}
tValve[tLocalValve.Valve3]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tLocalValve.Valve3]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount > 1 then
        return
    end
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end

    local nDynMapId = rwUserGetDynMapId()
    --播放光效、删除、生成新的光效
    rwSpecialStatus_RemoveEffect(6,nGenId, tEffect.Effect6)
    rwSpecialStatus_AddEffect(6,nGenId,tEffect.Effect7)
    rwSpecialStatus_AddEffect(6,nGenId,tEffect.Effect8)
--    rwSpecialStatus_AddEffect(7,0, tEffect.Effect7,tPos.TrapValve1)
--    rwSpecialStatus_AddEffect(7,0, tEffect.Effect8,tPos.TrapValve1)

    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap3] = true
    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap3] and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap4] then
        --关闭子机关
        rwUpdateValveData(tLocalValve_GenId.Valve3,2)
        rwUpdateValveData(tLocalValve_GenId.Valve4,2)
        --播放动画并删除障碍机关
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwStoryTrigger(tOper.Play2,2,1,tUserList[i])
            end
        end
        rwDelGenEvent(tLocalValve_GenId.Valve1)
        rwDelGenEvent(tTrap_GenId.Trap2)
        --完成副本目标            
        rwBaseTarget:create(tTarget.Tar1):EventOnTargetUpdate()
        rwBaseTarget:create(tTarget.Tar2):EventOnTargetUpdate()
    else
        --未全部开启时，第一次进入播放对白
        if not rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["LeftDialog"] then
            rwOpenNpcChatDialog(tDialog.Dialog2)
            rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["LeftDialog"] = true
        end 
    end

end

tValve[tLocalValve.Valve3]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount > 0 then
        return
    end
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end

    local nDynMapId = rwUserGetDynMapId()

    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap3] = false
    --恢复光效
    rwSpecialStatus_RemoveEffect(6,nGenId, tEffect.Effect8)
    rwSpecialStatus_AddEffect(6,nGenId,tEffect.Effect6)
end

--障碍子机关2
tValve[tLocalValve.Valve4] = tValve[tLocalValve.Valve4] or {}
tValve[tLocalValve.Valve4]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tLocalValve.Valve4]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount > 1 then
        return
    end
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end

    local nDynMapId = rwUserGetDynMapId()
    --播放光效、删除、生成新的光效
    rwSpecialStatus_RemoveEffect(6,nGenId, tEffect.Effect6)
    rwSpecialStatus_AddEffect(6,nGenId,tEffect.Effect7)
    rwSpecialStatus_AddEffect(6,nGenId,tEffect.Effect8)

    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap4] = true
    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap3] and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap4] then
        --关闭子机关
        rwUpdateValveData(tLocalValve_GenId.Valve3,2)
        rwUpdateValveData(tLocalValve_GenId.Valve4,2)
        --播放动画并删除障碍机关、陷阱
        local tUserList = rwGetCurMapUserList()
        if tUserList then
            for i=1,#tUserList do
                rwStoryTrigger(tOper.Play2,2,1,tUserList[i])
            end
        end
        rwDelGenEvent(tLocalValve_GenId.Valve1)
        rwDelGenEvent(tTrap_GenId.Trap2)
        --完成副本目标            
        rwBaseTarget:create(tTarget.Tar1):EventOnTargetUpdate()
        rwBaseTarget:create(tTarget.Tar2):EventOnTargetUpdate()
        
    else
        --未全部开启时，第一次进入播放对白
        if not rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["RightDialog"] then
            rwOpenNpcChatDialog(tDialog.Dialog2)
            rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["RightDialog"] = true
        end 
    end

end

tValve[tLocalValve.Valve4]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId,nUserCount)
    if nUserCount > 0 then
        return
    end
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end

    local nDynMapId = rwUserGetDynMapId()

    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId][tTrap.Trap4] = false
    --恢复光效
    rwSpecialStatus_RemoveEffect(6,nGenId, tEffect.Effect8)
    rwSpecialStatus_AddEffect(6,nGenId,tEffect.Effect6)
end

--**************************************函数***************************
--销毁副本
function CopyMap_Multi_ShuXinCheng_Destroy(nCopyMapId,nDynMapId)
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId] = {}
end
