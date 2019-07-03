--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--凋零之地副本
--Hq

--endregion
--===========================副本配置====================================--
local nCopyMapId = 3042        --副本ID

--副本目标
local nTarget_1 = 60041     --寻找事件源头	
local nTarget_2 = 60042     --击败魅魔修狄斯	

--切换剧情、普通本任务
local nChangeNpcTaskID = 10312

--CopyMap
local nGenIdCopyMapPlot = 20030281     --剧情副本入口

--副本入口NPC组
rwtNpcGroup[50027] = rwtNpcGroup[50027] or {}   
rwtNpcGroup[50027]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50027]["UnlockDialog"] = 5255
rwtNpcGroup[50027]["Dialog"] = 5256                                                 
rwtNpcGroup[50027]["CopyMapList"] = {nCopyMapId}



--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function()
--    CopyMap_DiaoLingZhiDi_InitMap()
--end


--机关
local nGenId_Valve_1 = 20030324  --机关
local nGenId_Valve_2 = 20030326  --机关
--采集
local nCollect_1 = 60117   --棺材1
local nGenId_Collect_1 = 20030282  --开第一个门的棺材

--陷阱
local nTrap_1 = 30338  
local nGenId_Trap_1 = 20030278

--对白
local nDialogId_1 = 5243    --进入副本对白

--怪物组gen
local tDynaMonsterGenId_1 = {20030270,20030271,20030272}
local tDynaMonsterGenId_2 = {20030275,20030276}

--boss
local nMonster_Boss = 200254


-- 怪物
local tMonsterId  = {1000247,1000248,1000249}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT 
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nGenIdCopyMapPlot 
--rwtCopyMapMission[nCopyMapId]["Target1"] = nTarget_1
--rwtCopyMapMission[nCopyMapId]["Target2"] = nTarget_2
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaMonsterGenId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nStatus"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddState"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddState"]["StateID"] = 800007
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddState"]["Times"] = 10
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2045

--------------------初始化-----------------

-- function maintask_copymapnpccreat_yongyesenlin()
--    rwprintlog("判断是否在任务中")
--    if rwtaskgetfinishmask(10312) == 1 then       
--        if not rwhasgenevent(ngenidcopymapnormal) then              
--           rwaddgenevent(ngenidcopymapnormal)   --创建普通本
--        end
--        if rwhasgenevent(ngenidcopymapplot) then
--           rwdelgenevent(ngenidcopymapplot) 
--        end
--    else 
--        if not rwhasgenevent(ngenidcopymapplot) then              
--           rwaddgenevent(ngenidcopymapplot)   --创建剧情本
--        end
--    end   
--end
--rwtsceneload_func[2003] = rwtsceneload_func[2003] or {}
--table.insert(rwtsceneload_func[2003],maintask_copymapnpccreat_yongyesenlin) 

--function CopyMap_DiaoLingZhiDi_InitMap() --初始化函数
--    if rwHasGenEvent(nGenId_Collect_1) then 
--        rwSpecialStatus_AddEffect(1,0,2045)
--    end           
--end
--rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
--table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_Meaterial_InitMap)

rwtDialog[nDialogId_1] = {}
rwtDialog[nDialogId_1]["CloseDialog"] = 2
rwtDialog[nDialogId_1]["DialogEndInit"] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][1] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][1]["MonGenId"] = tDynaMonsterGenId_1[1]
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][1]["MonsterId"] = tMonsterId[1]
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][1]["StatusType"] = 500701
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][2] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][2]["MonGenId"] = tDynaMonsterGenId_1[2]
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][2]["MonsterId"] = tMonsterId[2]
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][2]["StatusType"] = 500701
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][3] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][3]["MonGenId"] = tDynaMonsterGenId_1[3]
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][3]["MonsterId"] = tMonsterId[3]
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["MonAddStatus"][3]["StatusType"] = 500701
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["AddEffect"] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["AddEffect"][1] = {}
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2035
rwtDialog[nDialogId_1]["DialogEndInit"]["Events"][1]["AddEffect"][1]["Pos"] = "-28.3912,-0.2459996,15.8658"




--采集相关
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = 5245
--rwtNpcGroup[nCollect_1]["OpenVavle"] = {}       --打开机关
--rwtNpcGroup[nCollect_1]["OpenVavle"][1] = {}  
--rwtNpcGroup[nCollect_1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
--rwtNpcGroup[nCollect_1]["OpenVavle"][1]["nStatus"] = 1
--rwtNpcGroup[nCollect_1]["OpenVavle"][2] = {}  
--rwtNpcGroup[nCollect_1]["OpenVavle"][2]["nGenId"] = nGenId_Valve_1
--rwtNpcGroup[nCollect_1]["OpenVavle"][2]["nStatus"] = 0
--rwtNpcGroup[nCollect_1]["EndDialogId"] = 5248   
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"] = {}      
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][1] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][2] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][2]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenVavle"][2]["nStatus"] = 0
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = 5248
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["AddEffect"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["AddEffect"][1] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["AddEffect"][1]["TargetId"] = 0
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["AddEffect"][1]["EffectId"] = 2036
rwtNpcGroup[nCollect_1]["Awards"]["Events"][3]["AddEffect"][1]["Pos"] = "-27.6312,-0.2459996,15.7258"
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][1] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][1]["TargetType"] = 7
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][1]["TargetId"] = 0
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][1]["EffectId"] = 2035
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][2] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][2]["TargetType"] = 1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][2]["TargetId"] = 0
rwtNpcGroup[nCollect_1]["Awards"]["Events"][4]["RemoveEffect"][2]["EffectId"] = 2045
rwtNpcGroup[nCollect_1]["Awards"]["Events"][5] = {} 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][5]["RemoveState"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][5]["RemoveState"]["StateID"] = 800007
rwtNpcGroup[nCollect_1]["Func"] = function(nGenEventId)
     --rwOpenNpcChatDialog(5248)  
    if rwHasGenEvent(tDynaMonsterGenId_1[3]) and rwHasGenEvent(tDynaMonsterGenId_1[2]) then 
        rwDelGenEvent(tDynaMonsterGenId_1[2])
        rwAddGenEvent(tDynaMonsterGenId_2[1])
        rwDelGenEvent(tDynaMonsterGenId_1[3])
        rwAddGenEvent(tDynaMonsterGenId_2[2])
        rwStoryTrigger(16303, 2, 0)
    elseif rwHasGenEvent(tDynaMonsterGenId_1[2]) and not rwHasGenEvent(tDynaMonsterGenId_1[3]) then
        rwDelGenEvent(tDynaMonsterGenId_1[2])
        rwAddGenEvent(tDynaMonsterGenId_2[1])
        rwStoryTrigger(16303, 2, 0)
    elseif rwHasGenEvent(tDynaMonsterGenId_1[3]) and not rwHasGenEvent(tDynaMonsterGenId_1[2]) then 
        rwDelGenEvent(tDynaMonsterGenId_1[3])
        rwAddGenEvent(tDynaMonsterGenId_2[2])
        rwStoryTrigger(16305, 2, 0) 
    end
--     rwSpecialStatus_RemoveEffect(7,0,2035,"-28.3912,-0.2459996,15.8658")    --删除机关雾气光效
--     rwSpecialStatus_AddEffect(7,0,2036,"-27.6312,-0.2459996,15.7258")     --机关雾气消散光效
--     rwStatusRemove(800007)   --移除玩家buff
end


rwtNpcGroup[40078] = rwtNpcGroup[40078] or {}  --宝箱1
rwtNpcGroup[40078]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40078]["Awards"] = {}
rwtNpcGroup[40078]["Awards"]["Events"] = {}
rwtNpcGroup[40078]["Awards"]["Events"][1] = {}
rwtNpcGroup[40078]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40078]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40078]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40078
rwtNpcGroup[40078]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40078]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000104  


rwtNpcGroup[40245] = rwtNpcGroup[40245] or {}  --宝箱2
rwtNpcGroup[40245]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40245]["Awards"] = {}
rwtNpcGroup[40245]["Awards"]["Events"] = {}
rwtNpcGroup[40245]["Awards"]["Events"][1] = {}
rwtNpcGroup[40245]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40245]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40245]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40245
rwtNpcGroup[40245]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40245]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000482  

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}      
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 16302
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

--副本目标
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20048]
rwtTarget[nTarget_1]["ReqTrap"] = nTrap_1
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20049]
rwtTarget[nTarget_2]["KillMonsterGroup"] = nMonster_Boss
rwtTarget[nTarget_2]["ReqCount"] = 1


--副本通关
--boss死亡
--function CopyMap_DiaoLingZhiDi_BossDead()
--	 rwLinkPassCopyMap(nCopyMapId)
--end
--rwtMonsterGroup_Func[200254] = rwtMonsterGroup_Func[200254] or {}
--table.insert(rwtMonsterGroup_Func[200254],CopyMap_DiaoLingZhiDi_BossDead)


