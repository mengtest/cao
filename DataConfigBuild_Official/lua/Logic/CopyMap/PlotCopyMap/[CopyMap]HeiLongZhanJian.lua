--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
--副本ID 黑龙战舰
local nCopyMapId = 3086

--怪物idmonsterid  1000602  1000608 

--切换剧情、普通本任务
--local nChangeNpcTaskID = nil
local nNpcGroup_GenId_CopyMap = 3086001

local nTarget1 = 60161  
local nTarget2 = 60162  
local nTarget3 = 60163
local nTarget4 = 60164 
local nTarget5 = 60165

--奖励 1000465  1000469 
local tAward_id = {}
tAward_id.nAwardID_Box_XiaoYing = 1000465
tAward_id.nAwardID_Box_2Lou = 1000466
tAward_id.nAwardID_JiXie = 1000467
tAward_id.nAwardID_TongGuan = 1000468
tAward_id.nAwardID_Box_1Lou = 1000469
   

--进入副本NPC   
--genid   3086001


local nDialogId_1 =  6293   --进入副本对白            
local nDialogId_2 =  6294   --和摩尼耶战前对白:禁止通行
local nDialogId_3 =  6306   --（电梯动画）  动画中有对白6295
local nDialogId_4 =  6295   --这个电梯是前往上一层的，亚兹莫一定在上面
local nDialogId_5 =  6307    --（亚兹莫嘲讽动画）  动画中有对白6297
local nDialogId_6 =  6297    --触发对白“西蒙发现亚兹莫，亚兹莫嘲讽西蒙”
local nDialogId_7 =  6296   --你有本事放狠话，你有种别跑啊！*&￥#，路被拦住了。<br>看来不打倒这个铁皮怪，我们是无法过去了。
local nDialogId_8 =  6305   --（打败石像鬼后动画）  动画中有对白6302
local nDialogId_9 =  6302    --打败机械石像鬼后  -- 输给你们这些应该被淘汰的劣质基因携带者，<br>亚玻伦也该回炉重造了。
local nDialogId_10=  6298    --触发对白 西蒙带亚兹莫去公审

--入口NPC对白
local nDialogId_11 =  6303    --这里面情况不明，我们不要轻举妄动。如果不小心搞砸了<br>米兰达她们的计划，那就糟糕了。
local nDialogId_12 =  6304    --走走走，我们去看看这黑龙战舰里究竟还藏着多少小秘密。


--场景动画
local nStory1 = 17004
local nStory2 = 17005
local nStory3 = 17006
local nStory4 = 17007 --枭鹰飞出

--机关门
local nGenId_Valve_1 = 3086015
local nGenId_Valve_2 = 3086016

local nValve_1 = 1075
local nValve_2 = 1076

    
-------------NPC组----------
--电梯前陷阱
local nTrap_1 =  30587  --电梯前陷阱
local nTrap_GenId_1 = 3086009
local nTrap_2 =  30588  --楼下->楼上
local nTrap_GenId_2 = 3086010
local nTrap_3 =  30589  --楼上->楼下
local nTrap_GenId_3 = 3086011
local nTrap_4 =  30590 --亚兹莫前陷阱
local nTrap_GenId_4 = 3086012

--其他设置
--机械怪
local nMonster_JiXieShiXiangGui = 200413
local nMonster_GenId_JiXieShiXiangGui = 3086005
--枭鹰
local nMonster_XiaoYing = 200458
local nMonster_GenId_XiaoYing  = 3086018

--亚兹莫
--楼上 3086008
--楼下 3086020
------------陷阱-----------------

--电梯前陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_3


--楼下->楼上
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {} --楼下->楼上
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["TrapTeleport"] = {}
rwtNpcGroup[nTrap_2]["TrapTeleport"]["Pos"] = "-17.47,13.03,-0.15"
rwtNpcGroup[nTrap_2]["TrapTeleport"]["Rot"] = -90

--楼上->楼下
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {} --楼上->楼下
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[nTrap_3]["ChangeMap"] = {3086,"-12.01,1.03,0.12"} 

--亚兹莫前陷阱
rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}
rwtNpcGroup[nTrap_4]["DelTrap"] = 1
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_4]["Awards"] = {}  
rwtNpcGroup[nTrap_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_5


--对话完后生成怪物和光墙

rwtDialog[nDialogId_5] = rwtDialog[nDialogId_5] or {}
rwtDialog[nDialogId_5]["DialogEndInit"] = {}
rwtDialog[nDialogId_5]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogId_5]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogId_5]["DialogEndInit"]["Events"][1]["DynCreate"] = {nMonster_GenId_JiXieShiXiangGui,nGenId_Valve_1,nGenId_Valve_2}






--机关1
tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_1]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    local nState = rwGetValveData(nGenId)
    if nState == 0 then
        return
    end
    --打开提示对白
    rwOpenNpcChatDialog(nDialogId_7)
    --设置机关状态
    rwUpdateValveData(nGenId_Valve_1,0)
    rwUpdateValveData(nGenId_Valve_2,0)
end

--机关2
tValve[nValve_2] = tValve[nValve_2] or {}
tValve[nValve_2]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_2]["ValveEnterFunc"] = tValve[nValve_1]["ValveEnterFunc"]

--进入副本NPC
rwtNpcGroup[50061] = {}
rwtNpcGroup[50061]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50061]["UnlockDialog"] = 6303
--rwtNpcGroup[50061]["Dialog"] = 6304
rwtNpcGroup[50061]["CopyMapList"] = {nCopyMapId}
--宝箱1   枭鹰宝箱
local nNpcGroup_Box_1 = 40180
local nNpcGroup_Box_Gen_Id_1 = 3086013
rwtNpcGroup[nNpcGroup_Box_1] = rwtNpcGroup[nNpcGroup_Box_1] or {}  
rwtNpcGroup[nNpcGroup_Box_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box_1]["NotDel"] = 1
rwtNpcGroup[nNpcGroup_Box_1]["Function"] = function()
    local nUserId = rwUserGetId()
    if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["xiaoying"] then 
    --播放枭鹰飞出来动画
        rwStoryTrigger(nStory4 ,2 ,1)
    else
        --删除宝箱
        if  rwHasGenEvent(nNpcGroup_Box_Gen_Id_1) then
            rwDelGenEvent(nNpcGroup_Box_Gen_Id_1)
        end
    --打开宝箱获取奖励
        local tAwardInfo = {}
        tAwardInfo["Awards"] = {}
	    tAwardInfo["Awards"]["Events"] = {}
	    tAwardInfo["Awards"]["Events"][1] = {}
	    tAwardInfo["Awards"]["Events"][1]["GetServerAward"] = {}
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
        tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_id.nAwardID_Box_XiaoYing
	    tAwardInfo["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.WINDOWS
	    rwBaseAward:create(tAwardInfo["Awards"]):Process() 
    end
end



--播放枭鹰飞出来动画结束后
 function CopyMap_Patrol_HeiLongZhanJian_XiaoYing_Fei()
    --动画结束后进入与枭鹰的战斗
     if not rwHasGenEvent(nMonster_GenId_XiaoYing) then
        rwAddGenEvent(nMonster_GenId_XiaoYing)
    end
    rwAutoBattle(nMonster_GenId_XiaoYing)
 end
 rwtCGFinish[nStory4] = rwtCGFinish[nStory4] or {}
 table.insert(rwtCGFinish[nStory4],CopyMap_Patrol_HeiLongZhanJian_XiaoYing_Fei)


--rwtNpcGroup[nNpcGroup_Box_1]["Awards"] = {}
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"] = {}
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"][1] = {}
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box_1
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
--rwtNpcGroup[nNpcGroup_Box_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] =   1000369


--宝箱2    二楼的宝箱
local nNpcGroup_Box_2 = 40181
local nNpcGroup_Box_Gen_Id_2 = 3086017
rwtNpcGroup[nNpcGroup_Box_2] = rwtNpcGroup[nNpcGroup_Box_2] or {}  
rwtNpcGroup[nNpcGroup_Box_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box_2]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box_2
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_Box_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] =   tAward_id.nAwardID_Box_2Lou
--宝箱3   一楼的宝箱
local nNpcGroup_Box_3 = 40248
local nNpcGroup_Box_Gen_Id_3 = 3086019
rwtNpcGroup[nNpcGroup_Box_3] = rwtNpcGroup[nNpcGroup_Box_3] or {}  
rwtNpcGroup[nNpcGroup_Box_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box_3]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box_3
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_Box_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] =   tAward_id.nAwardID_Box_1Lou
--1000370预留给副本通关奖励 


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 5
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nTarget3}
rwtCopyMapMission[nCopyMapId]["Target4"] = {nTarget4}
rwtCopyMapMission[nCopyMapId]["Target5"] = {nTarget5}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10655  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "xiaoying"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["DynCreate"] = {3086008}

--副本任务目标 
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21486]
rwtTarget[nTarget1]["KillMonsterGroup"] = 200412 --击败摩尼耶
rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}    --前往战舰二层
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][21487]
rwtTarget[nTarget2]["ReqTrap"] = nTrap_2
rwtTarget[nTarget2]["ReqCount"] = 1

rwtTarget[nTarget3] = {}    --寻找亚兹莫
rwtTarget[nTarget3]["Title"] = tLuaText[LANGUAGE_CONFIG][21488]
rwtTarget[nTarget3]["ReqTrap"] = nTrap_4
rwtTarget[nTarget3]["ReqCount"] = 1

rwtTarget[nTarget4] = {}
rwtTarget[nTarget4]["Title"] = tLuaText[LANGUAGE_CONFIG][21489]
rwtTarget[nTarget4]["KillMonsterGroup"] = 200413 --机械石像鬼
rwtTarget[nTarget4]["ReqCount"] = 1

rwtTarget[nTarget5] = {}
rwtTarget[nTarget5]["Title"] = tLuaText[LANGUAGE_CONFIG][21490]
rwtTarget[nTarget5]["KillMonsterGroup"] = 200416 --亚兹莫
rwtTarget[nTarget5]["ReqCount"] = 1

--战胜机械石像
--机械石像死亡
function CopyMap_Patrol_HeiLongZhanJian_JiXie_MonsterDeath()
    --删除激光墙
    rwDelGenEvent(nGenId_Valve_1)
    rwDelGenEvent(nGenId_Valve_2)
    --播放动画
    rwStoryTrigger(nStory3 ,2 ,1)
end
rwtMonsterGroup_Func[nMonster_JiXieShiXiangGui] = rwtMonsterGroup_Func[nMonster_JiXieShiXiangGui] or {}
table.insert(rwtMonsterGroup_Func[nMonster_JiXieShiXiangGui],CopyMap_Patrol_HeiLongZhanJian_JiXie_MonsterDeath)

--动画结束刷出亚兹莫
function CopyMap_Patrol_HeiLongZhanJian_YaZiMo()
    if rwHasGenEvent(3086008) then
        rwDelGenEvent(3086008)
    end
    --生成楼下亚兹莫
    if not rwHasGenEvent(3086020) then
        rwAddGenEvent(3086020)
    end
end
rwtCGFinish[nStory3] = rwtCGFinish[nStory3] or {}
table.insert(rwtCGFinish[nStory3],CopyMap_Patrol_HeiLongZhanJian_YaZiMo)

--枭鹰死亡
function CopyMap_Patrol_HeiLongZhanJian_XiaoYing_MonsterDeath()
    --置掩码
    local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["xiaoying"]  = false
end
rwtMonsterGroup_Func[nMonster_XiaoYing] = rwtMonsterGroup_Func[nMonster_XiaoYing] or {}
table.insert(rwtMonsterGroup_Func[nMonster_XiaoYing],CopyMap_Patrol_HeiLongZhanJian_XiaoYing_MonsterDeath)
