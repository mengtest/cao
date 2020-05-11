--region [MainTask]ShiLuoQunDao.lua
--Purpose:		失落群岛主线
--Creator: 		胡青
--Created:		2018-08-07
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-12-06 $
--RCS-ID:		$Revision: 10 $
--endregion



local nMapId_1 = 2001
local nMapId_2 = 2003
local nMapId_3 = 1000


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
local nFeiChuan_GenId = 20010293

--副本入口NPC
local nCopyNpc_ShiShiFeiChuan = 50057
local nCopyNpc_ShiShiFeiChuan_GenId = 3087001

--对白
local nDialog_1 = 10949        --与葛莱蒂丝告别
local nDialog_2 = 10950        --向赫丽复命
local nDialog_3 = 10951        --接听意外来电
local nDialog_4 = 10952        --调查震动原因
local nDialog_5 = 10953        --调查坠落的船只
local nDialog_6 = 10954        --研究奇怪的仪器
local nDialog_7 = 10955        --寻找特罗德求助
local nDialog_8 = 10956        --前往废弃的飞船


--npc
local nNpc_GeLaiDiSi =  3132   -- 葛莱蒂丝 (已有)
local nNpc_HeLi = 3314         -- 赫丽$加冕 （已有）
local nNpc_TeLuoDe = 3028      -- 特罗德    （已有）

  
--task   
local tShiLuoQunDaoTask   = {}                
tShiLuoQunDaoTask[1]  = 10437        --与葛莱蒂丝告别
tShiLuoQunDaoTask[2]  = 10438        --向赫丽复命
tShiLuoQunDaoTask[15] = 10678        --卡时间
tShiLuoQunDaoTask[4]  = 10440        --接听意外来电
tShiLuoQunDaoTask[5]  = 10441        --调查震动原因
tShiLuoQunDaoTask[6]  = 10442        --调查坠落的船只
tShiLuoQunDaoTask[7]  = 10443        --进入船舱
tShiLuoQunDaoTask[8]  = 10444        --研究奇怪的仪器
tShiLuoQunDaoTask[9]  = 10445        --寻找特罗德求助
tShiLuoQunDaoTask[14] = 10623        --前往飞船停靠点
tShiLuoQunDaoTask[10] = 10446        --登上飞船
tShiLuoQunDaoTask[11] = 10541        --寻找特罗德求助
tShiLuoQunDaoTask[12] = 10609        --前往纳雅天空城

--奖励
local nRewardId_1 = 2000305
local nRewardId_2 = 2000306
local nRewardId_3 = 2000307
local nRewardId_4 = 2000308
local nRewardId_5 = 2000309
local nRewardId_6 = 2000618

-------------物品id---------------
local tCountDownItem = {}
--倒计时相关
--倒计时加速物品id
tCountDownItem.Shiluo_1 = 7000290
tCountDownItem.Shiluo_2 = 7000300
--卡点任务无道具提示
local tLackTips = {}
tLackTips.Shiluo_1 = tLuaText[LANGUAGE_CONFIG][10225]
tLackTips.Shiluo_2 = tLuaText[LANGUAGE_CONFIG][10226]
--提交道具对白
local tSpeedDialog = {}
tSpeedDialog.Shiluo_1 = 12958
tSpeedDialog.Shiluo_2 = 12959
-- --副本掉落奖励
-- local tSpeedAwardId = {}
-- tSpeedAwardId.Shiluo_1 = 1000819
-- tSpeedAwardId.Shiluo_2 = 1000820
-- --次要副本掉落奖励
-- tSpeedAwardId.Shiluo_2_SecAward = 1000967


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
rwtTask[tShiLuoQunDaoTask[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20407]
rwtTask[tShiLuoQunDaoTask[2]]["PreTaskId"] = tShiLuoQunDaoTask[1]
rwtTask[tShiLuoQunDaoTask[2]]["NextTaskId"] = tShiLuoQunDaoTask[15]
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

rwtTask[tShiLuoQunDaoTask[15]] = {}
rwtTask[tShiLuoQunDaoTask[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20409]
rwtTask[tShiLuoQunDaoTask[15]]["PreTaskId"] = tShiLuoQunDaoTask[2]
rwtTask[tShiLuoQunDaoTask[15]]["NextTaskId"] = tShiLuoQunDaoTask[4]
rwtTask[tShiLuoQunDaoTask[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tShiLuoQunDaoTask[15]]["NeedLevel"] = 40
rwtTask[tShiLuoQunDaoTask[15]]["IsClickComplete"] = 1
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogId"] = 12110
rwtTask[tShiLuoQunDaoTask[15]]["DialogId"] = 12111
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"] = {}
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"]["Events"][1]["AutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayTypeId"] = 0
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayMapId"] = 1000
rwtTask[tShiLuoQunDaoTask[15]]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayPos"] = "-27.83,555.04,109.71"

rwtTask[tShiLuoQunDaoTask[4]] = {}
rwtTask[tShiLuoQunDaoTask[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20409]
rwtTask[tShiLuoQunDaoTask[4]]["PreTaskId"] = tShiLuoQunDaoTask[15]               
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
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][2] = {}
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][2]["GenId"] = nFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][2]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[4]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

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
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][3] = {}
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][3]["GenId"] = nFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][3]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[5]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tShiLuoQunDaoTask[5]]["IsClickComplete"] = 0


rwtTask[tShiLuoQunDaoTask[6]] = {}
rwtTask[tShiLuoQunDaoTask[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20411]
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
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][2] = {}
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][2]["GenId"] = nFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][2]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[6]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayMapId"] = nMapId_1               
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[tShiLuoQunDaoTask[6]]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[tShiLuoQunDaoTask[6]]["IsClickComplete"] = 0
rwtTask[tShiLuoQunDaoTask[6]]["UnlockCopyMap1"] = 3087
rwtTask[tShiLuoQunDaoTask[6]]["UnlockCopyMap2"] = 3143

rwtTask[tShiLuoQunDaoTask[7]] = {}
rwtTask[tShiLuoQunDaoTask[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20411]
rwtTask[tShiLuoQunDaoTask[7]]["PreTaskId"] = tShiLuoQunDaoTask[6]
rwtTask[tShiLuoQunDaoTask[7]]["NextTaskId"] = tShiLuoQunDaoTask[8]
rwtTask[tShiLuoQunDaoTask[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tShiLuoQunDaoTask[7]]["PassCopyMap1"] = {3087}
rwtTask[tShiLuoQunDaoTask[7]]["PassCopyMapCount1"] = 1
rwtTask[tShiLuoQunDaoTask[7]]["OpenCopyMap"] = 3087
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["GenId"] = nCopyNpc_ShiShiFeiChuan_GenId 
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][2] = {}
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][2]["GenId"] = nFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][2]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[7]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

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
rwtTask[tShiLuoQunDaoTask[7]]["UnLockZhouHui"] = 3143


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
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][2] = {}
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][2]["GenId"] = nFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][2]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[8]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tShiLuoQunDaoTask[8]]["IsClickComplete"] = 0

rwtTask[tShiLuoQunDaoTask[9]] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20414]
rwtTask[tShiLuoQunDaoTask[9]]["PreTaskId"] = tShiLuoQunDaoTask[8]
rwtTask[tShiLuoQunDaoTask[9]]["NextTaskId"] = tShiLuoQunDaoTask[14]
rwtTask[tShiLuoQunDaoTask[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tShiLuoQunDaoTask[9]]["TaskNpc"] = nNpc_TeLuoDe 
rwtTask[tShiLuoQunDaoTask[9]]["DialogId"] = nDialog_7
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayMapId"] = nMapId_3
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[tShiLuoQunDaoTask[9]]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_3
rwtTask[tShiLuoQunDaoTask[9]]["IsClickComplete"] = 0
rwtTask[tShiLuoQunDaoTask[9]]["DynaNpcGroupGen"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["DynaNpcGroupGen"][1] = {}
rwtTask[tShiLuoQunDaoTask[9]]["DynaNpcGroupGen"][1]["GenId"] = nFeiChuan_GenId
rwtTask[tShiLuoQunDaoTask[9]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_1
rwtTask[tShiLuoQunDaoTask[9]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tShiLuoQunDaoTask[9]]["Awards"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_4
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tShiLuoQunDaoTask[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tShiLuoQunDaoTask[9]


rwtTask[tShiLuoQunDaoTask[14]] = {}
rwtTask[tShiLuoQunDaoTask[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][21539]
rwtTask[tShiLuoQunDaoTask[14]]["PreTaskId"] = tShiLuoQunDaoTask[9]
rwtTask[tShiLuoQunDaoTask[14]]["NextTaskId"] = tShiLuoQunDaoTask[10]
rwtTask[tShiLuoQunDaoTask[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tShiLuoQunDaoTask[14]]["AcceptDialogId"] = 12748
rwtTask[tShiLuoQunDaoTask[14]]["DialogId"] = 12748



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
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"][1]["MapId"] = nMapId_3
rwtTask[tShiLuoQunDaoTask[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"] = {}
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tShiLuoQunDaoTask[10]]["StartAutoWay"]["FindWayMapId"] = nMapId_3
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

