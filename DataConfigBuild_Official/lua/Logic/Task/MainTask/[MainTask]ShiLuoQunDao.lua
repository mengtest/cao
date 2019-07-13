local nMapId_1 = 2001
local nMapId_2 = 2003
local nMapId_3 = 1000
local nMapId_4 = 1000

-----------npc群组
--npc
local nNpc_1   = 20344   -- 葛莱蒂丝
local nNpc_GenId_1  = 20030384
local nNpc_2   = 20108   -- 赫丽$加冕
local nNpc_GenId_2  = 2001523
local nNpc_3   = 20228   -- 特罗德
local nNpc_GenId_3  = 1000047


--陷阱
local nTrap_1 =  30396    -- 调查震动原因 
local nTrap_GenId_1 = 2001951
local nTrap_2 =  30397    --研究奇怪的仪器
local nTrap_GenId_2 = 2001952
local nTrap_3 =  30398    --前往海岸边
local nTrap_GenId_3 = 1000174

--采集
local nCollect_1 =  60138    --坠落的船只 （可以采集）
local nCollect_GenId_1 = 2001954
local nCollect_2 =  60151    --坠落的船只 （只让采集物出现在地图上）
local nCollect_GenId_2 = 2001956

--建筑
local nBuild_1 = 10015   --船只
local nBuild_GenId_1  =  2001955

--副本入口NPC
local nCopyNpc_ShiShiFeiChuan = 50057
local nCopyNpc_ShiShiFeiChuan_GenId = 3087001

--坐标
local sPox_1 = "-1.80,-2.25,59.80"
local sPox_2 = "-3.77423,-2.408381,64.71213"
local sPox_3 = "-69.54,19.12,-4.14"
--对白
local nDialog_1 = 10949        --与葛莱蒂丝告别
local nDialog_2 = 10950        --向赫丽复命
local nDialog_3 = 10951        --接听意外来电
local nDialog_4 = 10952        --调查震动原因
local nDialog_5 = 10953        --调查坠落的船只
local nDialog_6 = 10954        --研究奇怪的仪器
local nDialog_7 = 10955        --寻找特罗德求助
local nDialog_8 = 10956        --前往废弃的飞船
local nDialog_9 = 11037        --进入船舱
local nDialog_10 = 11437       --寻找特罗德求助
local nDialog_11 = 11911       --前往纳雅天空城
local nDialog_12 = 12096       --前往废弃的飞船
local nDialog_13 = 12097       --前往废弃的飞船


--npc
local nNpc_GeLaiDiSi =  3132   -- 葛莱蒂丝 (已有)
local nNpc_HeLi = 3314         -- 赫丽$加冕 （已有）
local nNpc_TeLuoDe = 3028      -- 特罗德    （已有）

  
--task   
local tShiLuoQunDaoTask   = {}                
tShiLuoQunDaoTask[1]  = 10437        --与葛莱蒂丝告别
tShiLuoQunDaoTask[2]  = 10438        --向赫丽复命
tShiLuoQunDaoTask[3]  = 10439        --达到46级
tShiLuoQunDaoTask[4]  = 10440        --接听意外来电
tShiLuoQunDaoTask[5]  = 10441        --调查震动原因
tShiLuoQunDaoTask[6]  = 10442        --调查坠落的船只
tShiLuoQunDaoTask[7]  = 10443        --进入船舱
tShiLuoQunDaoTask[8]  = 10444        --研究奇怪的仪器
tShiLuoQunDaoTask[9]  = 10445        --寻找特罗德求助
tShiLuoQunDaoTask[10] = 10446        --登上飞船
tShiLuoQunDaoTask[11] = 10541        --寻找特罗德求助
tShiLuoQunDaoTask[12] = 10609        --前往纳雅天空城
tShiLuoQunDaoTask[13] = 10618        --达到47级
tShiLuoQunDaoTask[14] = 10623        --前往飞船停靠点

--奖励
local nRewardId_1 = 2000305
local nRewardId_2 = 2000306
local nRewardId_3 = 2000307
local nRewardId_4 = 2000308
local nRewardId_5 = 2000309

 -------------
rwtNpcGroup[nNpc_1] = rwtNpcGroup[nNpc_1] or {}                                                
rwtNpcGroup[nNpc_1]["NpcId"] = nNpc_GeLaiDiSi
rwtNpcGroup[nNpc_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}  
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}  
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}  
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}  
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = nDialog_5      --采集前的对白  

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}  
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
 
--动态生成副本入口 
function MainTask_ShiLuoQunDao_CreatCopyMapNpc() --第一片区探索层创建NPC判断
    if rwTaskGetFinishMask(tShiLuoQunDaoTask[7]) == 1 then      
        if not rwHasGenEvent(nCopyNpc_ShiShiFeiChuan_GenId) then 
            --创建副本入口NPC
            rwAddGenEvent(nCopyNpc_ShiShiFeiChuan_GenId) 
        end
    end
end
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],MainTask_ShiLuoQunDao_CreatCopyMapNpc)

------------------

rwtTask[tShiLuoQunDaoTask[1]] = {}
rwtTask[tShiLuoQunDaoTask[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20407]
rwtTask[tShiLuoQunDaoTask[1]]["PreTaskId"] = 10405
rwtTask[tShiLuoQunDaoTask[1]]["NextTaskId"] = tShiLuoQunDaoTask[2]
rwtTask[tShiLuoQunDaoTask[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tShiLuoQunDaoTask[1]]["DialogId"] = nDialog_1
rwtTask[tShiLuoQunDaoTask[1]]["TaskNpc"] = nNpc_GeLaiDiSi  
rwtTask[tShiLuoQunDaoTask[1]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[1]]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_1
rwtTask[tShiLuoQunDaoTask[1]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_2   
rwtTask[tShiLuoQunDaoTask[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete         
rwtTask[tShiLuoQunDaoTask[1]]["IsClickComplete"] = 0   

rwtTask[tShiLuoQunDaoTask[2]] = {}
rwtTask[tShiLuoQunDaoTask[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20408]
rwtTask[tShiLuoQunDaoTask[2]]["PreTaskId"] = tShiLuoQunDaoTask[1]
rwtTask[tShiLuoQunDaoTask[2]]["NextTaskId"] = tShiLuoQunDaoTask[3]
rwtTask[tShiLuoQunDaoTask[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tShiLuoQunDaoTask[2]]["DialogId"] = nDialog_2
rwtTask[tShiLuoQunDaoTask[2]]["TaskNpc"] = nNpc_HeLi              
rwtTask[tShiLuoQunDaoTask[2]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[2]]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_2
rwtTask[tShiLuoQunDaoTask[2]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_3
rwtTask[tShiLuoQunDaoTask[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tShiLuoQunDaoTask[2]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[2]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[2]]["StartAutoWay"]["FindWayMapId"] = nMapId_3
rwtTask[tShiLuoQunDaoTask[2]]["StartAutoWay"]["FindWayGroupId"] = nNpc_2
rwtTask[tShiLuoQunDaoTask[2]]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_2
rwtTask[tShiLuoQunDaoTask[2]]["Awards"] = {}
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_1
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tShiLuoQunDaoTask[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[2]
rwtTask[tShiLuoQunDaoTask[2]]["IsClickComplete"] = 0

rwtTask[tShiLuoQunDaoTask[3]] = {}
rwtTask[tShiLuoQunDaoTask[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20409]
rwtTask[tShiLuoQunDaoTask[3]]["PreTaskId"] = tShiLuoQunDaoTask[2]
rwtTask[tShiLuoQunDaoTask[3]]["NextTaskId"] = tShiLuoQunDaoTask[4]
rwtTask[tShiLuoQunDaoTask[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tShiLuoQunDaoTask[3]]["NeedLevel"] = 46
rwtTask[tShiLuoQunDaoTask[3]]["LackDialogId"] = 12110
rwtTask[tShiLuoQunDaoTask[3]]["DialogId"] = 12111
--rwtTask[tShiLuoQunDaoTask[3]]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10040]
rwtTask[tShiLuoQunDaoTask[3]]["IsClickComplete"] = 0

rwtTask[tShiLuoQunDaoTask[4]] = {}
rwtTask[tShiLuoQunDaoTask[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20410]
rwtTask[tShiLuoQunDaoTask[4]]["PreTaskId"] = tShiLuoQunDaoTask[3]               
rwtTask[tShiLuoQunDaoTask[4]]["NextTaskId"] = tShiLuoQunDaoTask[5]
rwtTask[tShiLuoQunDaoTask[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tShiLuoQunDaoTask[4]]["AutoTaskDialog"] = nDialog_3
rwtTask[tShiLuoQunDaoTask[4]]["DialogId"] = nDialog_3
rwtTask[tShiLuoQunDaoTask[4]]["CloseDialog"] = 1 
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tShiLuoQunDaoTask[4]]["Awards"] = {}
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_2
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tShiLuoQunDaoTask[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[4]
rwtTask[tShiLuoQunDaoTask[4]]["IsClickComplete"] = 0


rwtTask[tShiLuoQunDaoTask[5]] = {}
rwtTask[tShiLuoQunDaoTask[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20411]
rwtTask[tShiLuoQunDaoTask[5]]["PreTaskId"] = tShiLuoQunDaoTask[4]
rwtTask[tShiLuoQunDaoTask[5]]["NextTaskId"] = tShiLuoQunDaoTask[6]
rwtTask[tShiLuoQunDaoTask[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tShiLuoQunDaoTask[5]]["ReqTrap1"] = nTrap_1
rwtTask[tShiLuoQunDaoTask[5]]["DialogId"] = nDialog_4
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][2] = {}
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][2]["GenId"] = nCollect_GenId_2
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][2]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tShiLuoQunDaoTask[5]]["IsClickComplete"] = 0


rwtTask[tShiLuoQunDaoTask[6]] = {}
rwtTask[tShiLuoQunDaoTask[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20412]
rwtTask[tShiLuoQunDaoTask[6]]["PreTaskId"] = tShiLuoQunDaoTask[5]
rwtTask[tShiLuoQunDaoTask[6]]["NextTaskId"] = tShiLuoQunDaoTask[7]
rwtTask[tShiLuoQunDaoTask[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tShiLuoQunDaoTask[6]]["ReqCollectId1"] = nCollect_1                                                  
rwtTask[tShiLuoQunDaoTask[6]]["ReqCollectCount1"] = 1 
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayMapId"] = nMapId_1               
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[tShiLuoQunDaoTask[6]]["IsClickComplete"] = 0
rwtTask[tShiLuoQunDaoTask[6]]["UnlockCopyMap1"] = 3087

rwtTask[tShiLuoQunDaoTask[7]] = {}
rwtTask[tShiLuoQunDaoTask[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20413]
rwtTask[tShiLuoQunDaoTask[7]]["PreTaskId"] = tShiLuoQunDaoTask[6]
rwtTask[tShiLuoQunDaoTask[7]]["NextTaskId"] = tShiLuoQunDaoTask[8]
rwtTask[tShiLuoQunDaoTask[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tShiLuoQunDaoTask[7]]["PassCopyMap1"] = {3087}
rwtTask[tShiLuoQunDaoTask[7]]["PassCopyMapCount1"] = 1
rwtTask[tShiLuoQunDaoTask[7]]["OpenCopyMap"] = 3087
--rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"] = {}
--rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["GenId"] = nBuild_GenId_1
--rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_1
--rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["GenId"] = nCopyNpc_ShiShiFeiChuan_GenId 
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


rwtTask[tShiLuoQunDaoTask[7]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[7]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[7]]["StartAutoWay"]["FindWayMapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[7]]["StartAutoWay"]["FindWayGroupId"] = nCopyNpc_ShiShiFeiChuan
rwtTask[tShiLuoQunDaoTask[7]]["StartAutoWay"]["FindWayGenId"] = nCopyNpc_ShiShiFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[7]]["Awards"] = {}
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_3
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tShiLuoQunDaoTask[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[7]
rwtTask[tShiLuoQunDaoTask[7]]["IsClickComplete"] = 1


rwtTask[tShiLuoQunDaoTask[8]] = {}
rwtTask[tShiLuoQunDaoTask[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20414]
rwtTask[tShiLuoQunDaoTask[8]]["PreTaskId"] = tShiLuoQunDaoTask[7]
rwtTask[tShiLuoQunDaoTask[8]]["NextTaskId"] = tShiLuoQunDaoTask[9]
rwtTask[tShiLuoQunDaoTask[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tShiLuoQunDaoTask[8]]["DialogId"] = nDialog_6
rwtTask[tShiLuoQunDaoTask[8]]["ReqTrap1"] = nTrap_2
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tShiLuoQunDaoTask[8]]["IsClickComplete"] = 0

rwtTask[tShiLuoQunDaoTask[9]] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20415]
rwtTask[tShiLuoQunDaoTask[9]]["PreTaskId"] = tShiLuoQunDaoTask[8]
rwtTask[tShiLuoQunDaoTask[9]]["NextTaskId"] = tShiLuoQunDaoTask[13]
rwtTask[tShiLuoQunDaoTask[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tShiLuoQunDaoTask[9]]["TaskNpc"] = nNpc_TeLuoDe 
rwtTask[tShiLuoQunDaoTask[9]]["DialogId"] = nDialog_7
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayMapId"] = nMapId_4
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_3
rwtTask[tShiLuoQunDaoTask[9]]["IsClickComplete"] = 0
--rwtTask[tShiLuoQunDaoTask[9]]["DialogueEndFunc"] = function()
--    if rwHasGenEvent(nBuild_GenId_1) then 
--       rwDelGenEvent(nBuild_GenId_1)
--    end
--end
rwtTask[tShiLuoQunDaoTask[9]]["Awards"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_4
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[9]

rwtTask[tShiLuoQunDaoTask[13]] = {}
rwtTask[tShiLuoQunDaoTask[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][21539]
rwtTask[tShiLuoQunDaoTask[13]]["PreTaskId"] = tShiLuoQunDaoTask[9]
rwtTask[tShiLuoQunDaoTask[13]]["NextTaskId"] = tShiLuoQunDaoTask[14]
rwtTask[tShiLuoQunDaoTask[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tShiLuoQunDaoTask[13]]["NeedLevel"] = 47
--rwtTask[tShiLuoQunDaoTask[13]]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10180]
rwtTask[tShiLuoQunDaoTask[13]]["LackDialogId"] = 12112
rwtTask[tShiLuoQunDaoTask[13]]["DialogId"] = 12113

rwtTask[tShiLuoQunDaoTask[14]] = {}
rwtTask[tShiLuoQunDaoTask[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][21539]
rwtTask[tShiLuoQunDaoTask[14]]["PreTaskId"] = tShiLuoQunDaoTask[13]
rwtTask[tShiLuoQunDaoTask[14]]["NextTaskId"] = tShiLuoQunDaoTask[10]
rwtTask[tShiLuoQunDaoTask[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tShiLuoQunDaoTask[14]]["AcceptDialogId"] = nDialog_12
rwtTask[tShiLuoQunDaoTask[14]]["DialogId"] = nDialog_12



rwtTask[tShiLuoQunDaoTask[10]] = {}
rwtTask[tShiLuoQunDaoTask[10]]["Title"] = tLuaText[LANGUAGE_CONFIG][21539]
rwtTask[tShiLuoQunDaoTask[10]]["PreTaskId"] = tShiLuoQunDaoTask[14]
rwtTask[tShiLuoQunDaoTask[10]]["NextTaskId"] = 10449--tShiLuoQunDaoTask[12]
rwtTask[tShiLuoQunDaoTask[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tShiLuoQunDaoTask[10]]["DialogId"] = nDialog_8
rwtTask[tShiLuoQunDaoTask[10]]["ReqTrap1"] = nTrap_3
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_3
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_4
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"]["FindWayMapId"] = nMapId_4
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_3
rwtTask[tShiLuoQunDaoTask[10]]["IsClickComplete"] = 0


rwtTask[tShiLuoQunDaoTask[10]]["DialogueEndFunc"] = function()
    rwEnterMap(2005,"31.44,2.51,7.90")
end
rwtTask[tShiLuoQunDaoTask[10]]["IsClickComplete"] = 0
rwtTask[tShiLuoQunDaoTask[10]]["Awards"] = {}
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_5
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tShiLuoQunDaoTask[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[10]


--rwtTask[tShiLuoQunDaoTask[15]] = {}
--rwtTask[tShiLuoQunDaoTask[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20416]
--rwtTask[tShiLuoQunDaoTask[15]]["PreTaskId"] = tShiLuoQunDaoTask[10]
--rwtTask[tShiLuoQunDaoTask[15]]["NextTaskId"] = tShiLuoQunDaoTask[12]
--rwtTask[tShiLuoQunDaoTask[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
--rwtTask[tShiLuoQunDaoTask[15]]["AcceptDialogId"] = nDialog_13
--rwtTask[tShiLuoQunDaoTask[15]]["DialogId"] = nDialog_13


--rwtTask[tShiLuoQunDaoTask[12]] = {}
--rwtTask[tShiLuoQunDaoTask[12]]["Title"] = tLuaText[LANGUAGE_CONFIG][20416]
--rwtTask[tShiLuoQunDaoTask[12]]["PreTaskId"] = tShiLuoQunDaoTask[10]       
--rwtTask[tShiLuoQunDaoTask[12]]["NextTaskId"] = 10449
--rwtTask[tShiLuoQunDaoTask[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
--rwtTask[tShiLuoQunDaoTask[12]]["AcceptDialogId"] = nDialog_11
--rwtTask[tShiLuoQunDaoTask[12]]["DialogId"] = nDialog_11
--rwtTask[tShiLuoQunDaoTask[12]]["DialogueEndFunc"] = function()
--    rwEnterMap(2005,"31.44,2.51,7.90")
--end
--rwtTask[tShiLuoQunDaoTask[12]]["IsClickComplete"] = 0
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"] = {}
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"] = {}
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"][1] = {}
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_5
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
--rwtTask[tShiLuoQunDaoTask[12]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[12]



