--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

local tJingJiDaoTask = {}

--任务
--向上吧！少年
tJingJiDaoTask.nJingJiDao1 = 10615
tJingJiDaoTask.nJingJiDao1_1 = 10509
--编号2154事件·一
tJingJiDaoTask.nJingJiDao2_1 = 10510
tJingJiDaoTask.nJingJiDao2_2 = 10511
tJingJiDaoTask.nJingJiDao2_3 = 10512
tJingJiDaoTask.nJingJiDao2_4 = 10513
tJingJiDaoTask.nJingJiDao2_5 = 10514
tJingJiDaoTask.nJingJiDao2_6 = 10515
tJingJiDaoTask.nJingJiDao2_7 = 10516
--编号2154事件·二             
tJingJiDaoTask.nJingJiDao3_1 = 10517
tJingJiDaoTask.nJingJiDao3_2 = 10518
tJingJiDaoTask.nJingJiDao3_3 = 10519
tJingJiDaoTask.nJingJiDao3_4 = 10520
tJingJiDaoTask.nJingJiDao3_5 = 10521
tJingJiDaoTask.nJingJiDao3_6 = 10522
tJingJiDaoTask.nJingJiDao3_7 = 10523
--眼前的真相，不是真相            
tJingJiDaoTask.nJingJiDao4_1 = 10524
tJingJiDaoTask.nJingJiDao4_2 = 10525
--凯旋而归                        
tJingJiDaoTask.nJingJiDao5_1 = 10526
tJingJiDaoTask.nJingJiDao5_2 = 10527
tJingJiDaoTask.nJingJiDao5 = 10616  --卡等级
tJingJiDaoTask.nJingJiDao5_3 = 10528
--特殊的跟踪技巧           
tJingJiDaoTask.nJingJiDao6_1 = 10529
tJingJiDaoTask.nJingJiDao6_2 = 10530
--圣界的秘密         
tJingJiDaoTask.nJingJiDao7_1 = 10531
tJingJiDaoTask.nJingJiDao7_2 = 10532
tJingJiDaoTask.nJingJiDao7_3 = 10533
tJingJiDaoTask.nJingJiDao7_4 = 10534
--为美食而战                      
tJingJiDaoTask.nJingJiDao8_1 = 10535
--下面的任务屏蔽
--[[
tJingJiDaoTask.nJingJiDao8_2 = 10536
tJingJiDaoTask.nJingJiDao8_3 = 10537
tJingJiDaoTask.nJingJiDao8_4 = 10538
tJingJiDaoTask.nJingJiDao8_5 = 10539
tJingJiDaoTask.nJingJiDao8_6 = 10540
--]]

local tDialog = {}

--对白
--11393  11424 
--向上吧！少年
tDialog.nDialog1_1 = 11393
--编号2154事件·一
tDialog.nDialog2_1 = 11394
tDialog.nDialog2_2 = 11395
tDialog.nDialog2_3 = 11396
tDialog.nDialog2_4 = 11397
tDialog.nDialog2_5 = 11398
tDialog.nDialog2_6 = 11399
tDialog.nDialog2_7 = 11400
--编号2154事件·二
tDialog.nDialog3_1 = 11401
tDialog.nDialog3_2 = 11402
tDialog.nDialog3_3 = 11403
tDialog.nDialog3_4 = 11404
tDialog.nDialog3_5 = 11405
tDialog.nDialog3_6 = 11406  --护送冒泡
tDialog.nDialog3_7 = 11407
--眼前的真相，不是真相
tDialog.nDialog4_1 = 11408
--tDialog.nDialog4_2 = 1
--凯旋而归
tDialog.nDialog5_1 = 11409
tDialog.nDialog5_2 = 11410
tDialog.nDialog5_3 = 11411
--特殊的跟踪技巧
tDialog.nDialog6_1 = 11412
tDialog.nDialog6_2 = 11413
--圣界的秘密
tDialog.nDialog7_1 = 11414
tDialog.nDialog7_2 = 11423 --别想走，把话说清楚！
tDialog.nDialog7_3 = 11607
tDialog.nDialog7_3_1 = 11416
tDialog.nDialog7_3_2 = 11415
tDialog.nDialog7_4 = 11417
--为美食而战
tDialog.nDialog8_1 = 11418
tDialog.nDialog8_2 = 11419
tDialog.nDialog8_3 = 11420
tDialog.nDialog8_4 = 11421
--tDialog.nDialog8_5 = 1
tDialog.nDialog8_6 = 11422

tDialog.nDialog_KaDengJi_1 = 12098
tDialog.nDialog_KaDengJi_2 = 12099
tDialog.nDialog_KaDengJi_3 = 12100
tDialog.nDialog_KaDengJi_4 = 12101

--地图id
local nMapId = 2005
--[npc]
--扬博士
local nNpc_YangBoShi = 3432
local nNpcGroup_YangBoShi = 20435  --20435  20442 
local nGenId_YangBoShi = 20050049
--长老罗希
local nNpc_LuoXi = 3433
local nNpcGroup_LuoXi = 20436
local nGenId_LuoXi = 20050050
--镇民弗萨
local nNpc_FuSa = 3434
local nNpcGroup_FuSa = 20437
local nGenId_FuSa = 20050051
--镇民维斯
local nNpc_WeiSi = 3435
local nNpcGroup_WeiSi = 20438
local nGenId_WeiSi = 20050052
--雷茵
local nNpc_LeiYin = 3436
local nNpcGroup_LeiYin_1 = 20440
local nGenId_LeiYin_1 = 20050054
--该隐
local nNpc_GaiYin = 3010
local nNpcGroup_GaiYin = 20441
local nGenId_GaiYin = 20050055
--蚀魔兽
local nNpc_ShiMoShou = 3437
--尼格斯
local nNpc_NiGeSi = 3238
--默希娅
local nNpc_MoXiYa = 3234

--龟长
local nNpc_GuiZhang = 3554 


--建筑
local nNpcBuild_XiaoWu = 20439  --乌龟村小屋
local nNpcBuild_GenId_XiaoWu = 20050053

local nNpcBuild_GuiZhang =  30478 --   龟长家 
local nNpcBuild_GenId_GuiZhang = 20050063 



--副本数据
--深海实验室


--[CopyMap]
local nCopyMap_ShenHaiShiYanShi = 3073
--local nCopyMap_ShenHaiShiYanShi_NorMal = 1
local nGenId_CopyMapPlot = 3073013       --剧情

--[Trap] 30471  30482 
local nTrap_Task2_2 =  30471
local nTrap_GenId_Task2_2 =  20050056

local nTrap_Task2_6 =  30472
local nTrap_GenId_Task2_6 =  20050057

local nTrap_Task3_2 =  30473
local nTrap_GenId_Task3_2 =  20050058

local nTrap_Task3_4 =  30474
local nTrap_GenId_Task3_4 =  20050059

local nTrap_Task3_6 =  30475
local nTrap_GenId_Task3_6 =  20050060

local nTrap_Task5_1 =  30476
local nTrap_GenId_Task5_1 =  20050061

local nTrap_Task5_2 =  30477
local nTrap_GenId_Task5_2 =  20050062

local nTrap_Task6_1 =  30493
local nTrap_GenId_Task6_1 =  20050079

local nTrap_Task6_2 =  30479
local nTrap_GenId_Task6_2 =  20050064

local nTrap_Task7_2 =  30480
local nTrap_GenId_Task7_2 =  20050065

local nTrap_Task8_6 =  30481
local nTrap_GenId_Task8_6 =  20050066


--[Collect] 60240  60243 
--鳞片
local nCollect_LinPian_1 = 60240
local nCollect_GenId_LinPian_1 = 20050067
local nCollect_LinPian_2 = 60241
local nCollect_GenId_LinPian_2 = 20050068
--龟纹叶
local nCollect_GuiWenYe = 60242
local nCollect_GenId_GuiWenYe = 20050069
--棕尾熊肉
local nCollect_Rou = 60243
local nCollect_GenId_Rou = 20050070

--[Monster]  9000271  9000275  group 900354  900358 
--怪物
local nMonsterGroup_Task2_6 = 900354
local nMonster_GenId_Task2_6 = 20050071
--蚀魔兽
local nMonsterGroup_Task3_2 = 900355
local nMonster_GenId_Task3_2  = 20050072
--默希娅
local nMonsterGroup_Task6_2 = 900356
local nMonster_GenId_Task6_2  = 20050073
local nMonsterGroup_Task7_2 = 900357
local nMonster_GenId_Task7_2  = 20050074
--棕尾熊
local nMonsterGroup_Task8_4 = 900358
local nMonster_GenId_Task8_4  = 20050075
--genid 20050049  20050078 
--[Pos]
local sPos_CopyMap = "488.74,-2.17,100.15"
local sPos_GuiZhang = "380.89,2.72,103.66"


--初始化
--扬博士
rwtNpc[nNpc_YangBoShi] = rwtNpc[nNpc_YangBoShi] or {}
rwtNpc[nNpc_YangBoShi]["DialogId"] = {1698,1699,1700}
rwtNpcGroup[nNpcGroup_YangBoShi] = rwtNpcGroup[nNpcGroup_YangBoShi] or {}
rwtNpcGroup[nNpcGroup_YangBoShi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_YangBoShi]["NpcId"]= nNpc_YangBoShi
--长老罗希
rwtNpc[nNpc_LuoXi] = rwtNpc[nNpc_LuoXi] or {}
rwtNpc[nNpc_LuoXi]["DialogId"] = {1776,1777,1701,1702,1703}
rwtNpcGroup[nNpcGroup_LuoXi] = rwtNpcGroup[nNpcGroup_LuoXi] or {}
rwtNpcGroup[nNpcGroup_LuoXi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_LuoXi]["NpcId"]= nNpc_LuoXi
--镇民弗萨
rwtNpc[nNpc_FuSa] = rwtNpc[nNpc_FuSa] or {}
rwtNpc[nNpc_FuSa]["DialogId"] = {1704,1705,1706}
rwtNpcGroup[nNpcGroup_FuSa] = rwtNpcGroup[nNpcGroup_FuSa] or {}
rwtNpcGroup[nNpcGroup_FuSa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_FuSa]["NpcId"]= nNpc_FuSa
--镇民维斯
rwtNpc[nNpc_WeiSi] = rwtNpc[nNpc_WeiSi] or {}
rwtNpc[nNpc_WeiSi]["DialogId"] = {1773,1774,1707,1708,1709}
rwtNpcGroup[nNpcGroup_WeiSi] = rwtNpcGroup[nNpcGroup_WeiSi] or {}
rwtNpcGroup[nNpcGroup_WeiSi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_WeiSi]["NpcId"]= nNpc_WeiSi
--雷茵
rwtNpc[nNpc_LeiYin] = rwtNpc[nNpc_LeiYin] or {}
rwtNpc[nNpc_LeiYin]["DialogId"] = {1710,1711,1712}
rwtNpcGroup[nNpcGroup_LeiYin_1] = rwtNpcGroup[nNpcGroup_LeiYin_1] or {}
rwtNpcGroup[nNpcGroup_LeiYin_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_LeiYin_1]["NpcId"]= nNpc_LeiYin
--该隐
rwtNpc[nNpc_GaiYin] = rwtNpc[nNpc_GaiYin] or {}
rwtNpcGroup[nNpcGroup_GaiYin] = rwtNpcGroup[nNpcGroup_GaiYin] or {}
rwtNpcGroup[nNpcGroup_GaiYin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_GaiYin]["NpcId"]= nNpc_GaiYin

---------建筑
rwtNpcGroup[nNpcBuild_XiaoWu] = rwtNpcGroup[nNpcBuild_XiaoWu] or {}     --乌龟村小屋
rwtNpcGroup[nNpcBuild_XiaoWu]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcBuild_XiaoWu]["NpcId1"] = nNpc_LeiYin

--龟长家
rwtNpc[nNpc_GuiZhang] = rwtNpc[nNpc_GuiZhang] or {}
rwtNpcGroup[nNpcBuild_GuiZhang] = rwtNpcGroup[nNpcBuild_GuiZhang] or {}     --龟长
rwtNpcGroup[nNpcBuild_GuiZhang]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcBuild_GuiZhang]["NpcId1"] = nNpc_GuiZhang

--采集物
--鳞片
rwtNpcGroup[nCollect_LinPian_1] = rwtNpcGroup[nCollect_LinPian_1] or {}    
rwtNpcGroup[nCollect_LinPian_1]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_LinPian_2] = rwtNpcGroup[nCollect_LinPian_2] or {}    
rwtNpcGroup[nCollect_LinPian_2]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[nCollect_LinPian_2]["DialogId"] = tDialog.nDialog2_5
--龟纹叶
rwtNpcGroup[nCollect_GuiWenYe] = rwtNpcGroup[nCollect_GuiWenYe] or {}    
rwtNpcGroup[nCollect_GuiWenYe]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--棕尾熊肉
rwtNpcGroup[nCollect_Rou] = rwtNpcGroup[nCollect_Rou] or {}    
rwtNpcGroup[nCollect_Rou]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[nCollect_Rou]["NotDel"] = 1

--陷阱

rwtNpcGroup[nTrap_Task2_2] = rwtNpcGroup[nTrap_Task2_2] or {} 
rwtNpcGroup[nTrap_Task2_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task2_6] = rwtNpcGroup[nTrap_Task2_6] or {} 
rwtNpcGroup[nTrap_Task2_6]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task3_2] = rwtNpcGroup[nTrap_Task3_2] or {} 
rwtNpcGroup[nTrap_Task3_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task3_4] = rwtNpcGroup[nTrap_Task3_4] or {} 
rwtNpcGroup[nTrap_Task3_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task3_6] = rwtNpcGroup[nTrap_Task3_6] or {} 
rwtNpcGroup[nTrap_Task3_6]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task5_1] = rwtNpcGroup[nTrap_Task5_1] or {} 
rwtNpcGroup[nTrap_Task5_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task5_2] = rwtNpcGroup[nTrap_Task5_2] or {} 
rwtNpcGroup[nTrap_Task5_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

--rwtNpcGroup[nTrap_Task5_3] = rwtNpcGroup[nTrap_Task5_3] or {} 
--rwtNpcGroup[nTrap_Task5_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task6_1] = rwtNpcGroup[nTrap_Task6_1] or {} 
rwtNpcGroup[nTrap_Task6_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task6_2] = rwtNpcGroup[nTrap_Task6_2] or {} 
rwtNpcGroup[nTrap_Task6_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task7_2] = rwtNpcGroup[nTrap_Task7_2] or {} 
rwtNpcGroup[nTrap_Task7_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Task8_6] = rwtNpcGroup[nTrap_Task8_6] or {} 
rwtNpcGroup[nTrap_Task8_6]["Type"] = CONST_NPCGROUP_TYPE.Trap

--奖励
local tAwardId = {}
tAwardId.Award1 = 2000290
tAwardId.Award2 = 2000291
tAwardId.Award3 = 2000292
tAwardId.Award4 = 2000293
tAwardId.Award5 = 2000294
tAwardId.Award6 = 2000295
tAwardId.Award7 = 2000296
tAwardId.Award8 = 2000297



----[向上吧！少年]
--卡等级
--到达XX级   卡等级
rwtTask[tJingJiDaoTask.nJingJiDao1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1]["Title"] = tLuaText[LANGUAGE_CONFIG][21220]
rwtTask[tJingJiDaoTask.nJingJiDao1]["PreTaskId"] = 10496 --上一主线最后一个任务
rwtTask[tJingJiDaoTask.nJingJiDao1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao1_1
rwtTask[tJingJiDaoTask.nJingJiDao1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tJingJiDaoTask.nJingJiDao1]["NeedLevel"] = 50
rwtTask[tJingJiDaoTask.nJingJiDao1]["LackDialogId"] = tDialog.nDialog_KaDengJi_1
rwtTask[tJingJiDaoTask.nJingJiDao1]["DialogId"] = tDialog.nDialog_KaDengJi_2

rwtTask[tJingJiDaoTask.nJingJiDao1_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21220]
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao1
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_1
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["TaskNpc"] =   nNpc_YangBoShi
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["DialogId"] = tDialog.nDialog1_1
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YangBoShi
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_YangBoShi
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["StartAutoWay"]["FindWayGenId"] = nGenId_YangBoShi
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["OpenTransfer"] = CONST_TRANSFER_INDEX.JINGJIDAO
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10061]
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award1
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao1_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao1_1

--[编号2154事件·一]  帮忙扬博士打听
rwtTask[tJingJiDaoTask.nJingJiDao2_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao1_1
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_2
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["TaskNpc"] =   nNpc_LuoXi
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["DialogId"] = tDialog.nDialog2_1
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YangBoShi
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_LuoXi
rwtTask[tJingJiDaoTask.nJingJiDao2_1]["StartAutoWay"]["FindWayGenId"] = nGenId_LuoXi

rwtTask[tJingJiDaoTask.nJingJiDao2_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_1
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_3
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["DialogId"] = tDialog.nDialog2_2
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["ReqTrap1"] = nTrap_Task2_2
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task2_2
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task2_2
rwtTask[tJingJiDaoTask.nJingJiDao2_2]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task2_2

rwtTask[tJingJiDaoTask.nJingJiDao2_3] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_2
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_4
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["TaskNpc"] =  nNpc_FuSa
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["DialogId"] = tDialog.nDialog2_3
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_FuSa
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_FuSa
rwtTask[tJingJiDaoTask.nJingJiDao2_3]["StartAutoWay"]["FindWayGenId"] = nGenId_FuSa
--看，地上有东西
rwtTask[tJingJiDaoTask.nJingJiDao2_4] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_3
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_5
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_LinPian_1
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][2]["GenId"] = nGenId_FuSa
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["DialogId"] = tDialog.nDialog2_4
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["ReqCollectId1"] = nCollect_LinPian_1
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["StartAutoWay"]["FindWayGroupId"] = nCollect_LinPian_1
rwtTask[tJingJiDaoTask.nJingJiDao2_4]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_LinPian_1
--跟着线索走
rwtTask[tJingJiDaoTask.nJingJiDao2_5] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_4
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["DialogId"] = tDialog.nDialog2_5
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_LinPian_2
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["ReqCollectId1"] = nCollect_LinPian_2
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["StartAutoWay"]["FindWayGroupId"] = nCollect_LinPian_2
rwtTask[tJingJiDaoTask.nJingJiDao2_5]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_LinPian_2
--转头，后面有。。。
rwtTask[tJingJiDaoTask.nJingJiDao2_6] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_5
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["NextTaskId"] = tJingJiDaoTask.nJingJiDao2_7
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["KillMonsterGroup1" ]= nMonsterGroup_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["MonsterGroupGenId"] = nMonster_GenId_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["ReqTrap1"] = nTrap_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DialogId"] = tDialog.nDialog2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_6]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task2_6
--思考下一步计划
rwtTask[tJingJiDaoTask.nJingJiDao2_7] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21221]
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_1
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["DialogId"] = tDialog.nDialog2_7
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["ReqTrap1"] = nTrap_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task2_6
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award2
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao2_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao2_7
--[编号2154事件·二]
--回头找小乌龟
rwtTask[tJingJiDaoTask.nJingJiDao3_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao2_7
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["TaskNpc"] =  nNpc_WeiSi
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["DialogId"] = tDialog.nDialog3_1
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_WeiSi
rwtTask[tJingJiDaoTask.nJingJiDao3_1]["StartAutoWay"]["FindWayGenId"] = nGenId_WeiSi
--追查雷茵的下落
rwtTask[tJingJiDaoTask.nJingJiDao3_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_1
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_3
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["KillMonsterGroup1" ]= nMonsterGroup_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["MonsterGroupGenId"] = nMonster_GenId_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["ReqTrap1"] = nTrap_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DialogId"] = tDialog.nDialog3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_2]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task3_2
--走炖乌龟去
rwtTask[tJingJiDaoTask.nJingJiDao3_3] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_4
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["DialogId"] = tDialog.nDialog3_3
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["ReqTrap1"] = nTrap_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task3_2
rwtTask[tJingJiDaoTask.nJingJiDao3_3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task3_2
--寻找雷茵
rwtTask[tJingJiDaoTask.nJingJiDao3_4] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_3
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_5
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["DialogId"] = tDialog.nDialog3_4
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["ReqTrap1"] = nTrap_Task3_4
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task3_4
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task3_4
rwtTask[tJingJiDaoTask.nJingJiDao3_4]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task3_4
--了解事情始末
rwtTask[tJingJiDaoTask.nJingJiDao3_5] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_4
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_6
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["TaskNpc"] =  nNpc_LeiYin
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["DialogId"] = tDialog.nDialog3_5
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["StartAutoWay"]["FindWayGroupId"] = nNpcBuild_XiaoWu
rwtTask[tJingJiDaoTask.nJingJiDao3_5]["StartAutoWay"]["FindWayGenId"] = nNpcBuild_GenId_XiaoWu
--返回深海实验室
rwtTask[tJingJiDaoTask.nJingJiDao3_6] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_5
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["NextTaskId"] = tJingJiDaoTask.nJingJiDao3_7
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
--rwtTask[tJingJiDaoTask.nJingJiDao3_6]["DialogId"] = tDialog.nDialog3_6
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["ReqTrap1"] = nTrap_Task3_6
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task3_6
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task3_6
rwtTask[tJingJiDaoTask.nJingJiDao3_6]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task3_6
--告别蕾茵
rwtTask[tJingJiDaoTask.nJingJiDao3_7] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21222]
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_6
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["NextTaskId"] = tJingJiDaoTask.nJingJiDao4_1
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["TaskNpc"] =  nNpc_LeiYin
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["DialogId"] = tDialog.nDialog3_7
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["DynaNpcGroupGen"][1]["GenId"] = nGenId_LeiYin_1
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_LeiYin_1
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["StartAutoWay"]["FindWayGenId"] = nGenId_LeiYin_1
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award3
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao3_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao3_7
--[眼前的真相，不是真相]
--前往阿诺特岛
rwtTask[tJingJiDaoTask.nJingJiDao4_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21223]
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao3_7
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao4_2
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["TaskNpc"] =   nNpc_LuoXi
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["DialogId"] = tDialog.nDialog4_1
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["UnlockCopyMap1"] = nCopyMap_ShenHaiShiYanShi
--rwtTask[tJingJiDaoTask.nJingJiDao4_1]["UnlockCopyMap2"] = nCopyMap_ShenHaiShiYanShi_NorMal
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_LuoXi
rwtTask[tJingJiDaoTask.nJingJiDao4_1]["StartAutoWay"]["FindWayGenId"] = nGenId_LuoXi
--调查深海实验室
rwtTask[tJingJiDaoTask.nJingJiDao4_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21223]
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao4_1
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao5_1
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["IsClickComplete"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["OpenCopyMap"] = nCopyMap_ShenHaiShiYanShi
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["PassCopyMap1"] = nCopyMap_ShenHaiShiYanShi
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["PassCopyMapCount1"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["StartAutoWay"]["FindWayPos"] = sPos_CopyMap
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award4
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao4_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao4_2

--[凯旋而归]
--返回龟村
rwtTask[tJingJiDaoTask.nJingJiDao5_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21224]
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao4_2
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao5_2
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["DialogId"] = tDialog.nDialog5_1
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["ReqTrap1"] = nTrap_Task5_1
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task5_1
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task5_1
rwtTask[tJingJiDaoTask.nJingJiDao5_1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task5_1

rwtTask[tJingJiDaoTask.nJingJiDao5_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21224]
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao5_1
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao5
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["DialogId"] = tDialog.nDialog5_2
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["ReqTrap1"] = nTrap_Task5_2
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task5_2
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task5_2
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task5_2
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award5
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao5_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao5_2

--卡等级
--到达XX级   卡等级
rwtTask[tJingJiDaoTask.nJingJiDao5] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5]["Title"] = tLuaText[LANGUAGE_CONFIG][21224]
rwtTask[tJingJiDaoTask.nJingJiDao5]["PreTaskId"] = tJingJiDaoTask.nJingJiDao5_2 
rwtTask[tJingJiDaoTask.nJingJiDao5]["NextTaskId"] = tJingJiDaoTask.nJingJiDao5_3
rwtTask[tJingJiDaoTask.nJingJiDao5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tJingJiDaoTask.nJingJiDao5]["NeedLevel"] = 51
rwtTask[tJingJiDaoTask.nJingJiDao5]["LackDialogId"] = tDialog.nDialog_KaDengJi_3
rwtTask[tJingJiDaoTask.nJingJiDao5]["DialogId"] = tDialog.nDialog_KaDengJi_4


--休息很重要
rwtTask[tJingJiDaoTask.nJingJiDao5_3] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21224]
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["PreTaskId"] = tJingJiDaoTask.nJingJiDao5
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["NextTaskId"] = tJingJiDaoTask.nJingJiDao6_1
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["DialogId"] = tDialog.nDialog5_3
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["TaskNpc"] =  nNpc_GuiZhang
--rwtTask[tJingJiDaoTask.nJingJiDao5_3]["ReqTrap1"] = nTrap_Task5_3
--rwtTask[tJingJiDaoTask.nJingJiDao5_3]["DynaNpcGroupGen"] = {}
--rwtTask[tJingJiDaoTask.nJingJiDao5_3]["DynaNpcGroupGen"][1] = {}
--rwtTask[tJingJiDaoTask.nJingJiDao5_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task5_3
--rwtTask[tJingJiDaoTask.nJingJiDao5_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tJingJiDaoTask.nJingJiDao5_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao5_3]["StartAutoWay"]["FindWayPos"] = sPos_GuiZhang

--[特殊的跟踪技巧]
--一探究竟
rwtTask[tJingJiDaoTask.nJingJiDao6_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21225]
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao5_3
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["DialogId"] = tDialog.nDialog6_1
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["ReqTrap1"] = nTrap_Task6_1
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task6_1
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task6_1
rwtTask[tJingJiDaoTask.nJingJiDao6_1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task6_1
--跟踪默希娅
rwtTask[tJingJiDaoTask.nJingJiDao6_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21225]
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao6_1
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao7_1
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["KillMonsterGroup1" ]= nMonsterGroup_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["MonsterGroupGenId"] = nMonster_GenId_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["ReqTrap1"] = nTrap_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DialogId"] = tDialog.nDialog6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award6
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao6_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao6_2

--[圣界的秘密]
--追击默希娅
rwtTask[tJingJiDaoTask.nJingJiDao7_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21226]
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao6_2
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["NextTaskId"] = tJingJiDaoTask.nJingJiDao7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["DialogId"] = tDialog.nDialog7_1
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["ReqTrap1"] = nTrap_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task6_2
rwtTask[tJingJiDaoTask.nJingJiDao7_1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task6_2
--拦住默希娅
rwtTask[tJingJiDaoTask.nJingJiDao7_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21226]
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao7_1
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao7_3
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["KillMonsterGroup1" ]= nMonsterGroup_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["MonsterGroupGenId"] = nMonster_GenId_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["ReqTrap1"] = nTrap_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DialogId"] = tDialog.nDialog7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_2]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task7_2

--逼问默希娅
rwtTask[tJingJiDaoTask.nJingJiDao7_3] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21226]
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["PreTaskId"] = tJingJiDaoTask.nJingJiDao7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["NextTaskId"] = tJingJiDaoTask.nJingJiDao7_4
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DialogId"] = tDialog.nDialog7_3
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["ReqTrap1"] = nTrap_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"] = {}
--rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1] = {}
--rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1]["GenId"] = nMonster_GenId_Task7_2
--rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task7_2
rwtTask[tJingJiDaoTask.nJingJiDao7_3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task7_2
--遇见意外的人
rwtTask[tJingJiDaoTask.nJingJiDao7_4] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21226]
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["PreTaskId"] = tJingJiDaoTask.nJingJiDao7_3
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["NextTaskId"] = tJingJiDaoTask.nJingJiDao8_1
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["TaskNpc"] =   nNpc_GaiYin
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["DialogId"] = tDialog.nDialog7_4
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["DynaNpcGroupGen"][1]["GenId"] = nGenId_GaiYin
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_GaiYin
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["StartAutoWay"]["FindWayGenId"] = nGenId_GaiYin
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award7
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao7_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao7_4

--[为美食而战]
--赶回龟村
rwtTask[tJingJiDaoTask.nJingJiDao8_1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21227]
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["PreTaskId"] = tJingJiDaoTask.nJingJiDao7_4
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["NextTaskId"] = 10552
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["TaskNpc"] =   nNpc_LeiYin
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["DialogId"] = tDialog.nDialog8_1
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["StartAutoWay"]["FindWayGroupId"] = nNpcBuild_XiaoWu
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["StartAutoWay"]["FindWayGenId"] = nNpcBuild_GenId_XiaoWu
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Award8
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tJingJiDaoTask.nJingJiDao8_1
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["OpenMercenaryTask"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["OpenMercenaryTask"]["AreaId"] = 2005
rwtTask[tJingJiDaoTask.nJingJiDao8_1]["OpenMercenaryTask"]["TownId"] = 200503

--[[
---与主线断开这一段
--向长老打听消息
rwtTask[tJingJiDaoTask.nJingJiDao8_2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21227]
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["PreTaskId"] = tJingJiDaoTask.nJingJiDao8_1
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["NextTaskId"] = tJingJiDaoTask.nJingJiDao8_3
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["TaskNpc"] =   nNpc_LuoXi
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["DialogId"] = tDialog.nDialog8_2
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_LuoXi
rwtTask[tJingJiDaoTask.nJingJiDao8_2]["StartAutoWay"]["FindWayGenId"] = nGenId_LuoXi
--收集龟纹叶
rwtTask[tJingJiDaoTask.nJingJiDao8_3] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21227]
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["PreTaskId"] = tJingJiDaoTask.nJingJiDao8_2
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["NextTaskId"] = tJingJiDaoTask.nJingJiDao8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["DialogId"] = tDialog.nDialog8_3
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_GuiWenYe
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["ReqCollectId1"] = nCollect_GuiWenYe
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["ReqCollectOnceNum"] = 3
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["ReqCollectCount1"] = 3
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["StartAutoWay"]["FindWayGroupId"] = nCollect_GuiWenYe
rwtTask[tJingJiDaoTask.nJingJiDao8_3]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_GuiWenYe
--狩猎棕尾熊
rwtTask[tJingJiDaoTask.nJingJiDao8_4] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21227]
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["PreTaskId"] = tJingJiDaoTask.nJingJiDao8_3
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["NextTaskId"] = tJingJiDaoTask.nJingJiDao8_5
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["KillMonsterGroup1" ]= nMonsterGroup_Task8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["MonsterGroupGenId"] = nMonster_GenId_Task8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["ReqTrap1"] = nTrap_Task8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DialogId"] = tDialog.nDialog8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_4]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task8_4
--采集棕尾熊肉
rwtTask[tJingJiDaoTask.nJingJiDao8_5] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21227]
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["PreTaskId"] = tJingJiDaoTask.nJingJiDao8_4
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["NextTaskId"] = tJingJiDaoTask.nJingJiDao8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_Rou
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["ReqCollectId1"] = nCollect_Rou
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["ReqCollectCount1"] = 3
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["ReqCollectOnceNum"] = 3
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["StartAutoWay"]["FindWayGroupId"] = nCollect_Rou
rwtTask[tJingJiDaoTask.nJingJiDao8_5]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_Rou
--前往阿诺特岛
rwtTask[tJingJiDaoTask.nJingJiDao8_6] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21227]
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["PreTaskId"] = tJingJiDaoTask.nJingJiDao8_5
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["NextTaskId"] = 10546
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["DialogId"] = tDialog.nDialog8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["AutoTaskDialog"] = tDialog.nDialog8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["ReqTrap1"] = nTrap_Task8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Task8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["IsClickComplete"] = 0
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["StartAutoWay"] = {}
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task8_6
rwtTask[tJingJiDaoTask.nJingJiDao8_6]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Task8_6
--]]