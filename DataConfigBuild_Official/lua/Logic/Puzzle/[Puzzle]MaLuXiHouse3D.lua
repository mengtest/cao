--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--【解谜】玛露茜的家3D版本
--Hq

--endregion
--===========================副本配置====================================--
--副本
local nCopyMapId = 3069

--采集
local nCollect_1 = 60189   --纳雅记叙残页1
local nGenId_Collect_1 = 3069001 
 
local nCollect_2 = 60190   --不知名线索（纳雅记叙残页2）
local nGenId_Collect_2 = 3069002

local nCollect_3 = 60191   --书房钥匙
local nGenId_Collect_3 = 3069003

local nCollect_4 = 60192  --工作日志1
local nGenId_Collect_4 = 3069004

local nCollect_5= 60193   --工作日志2
local nGenId_Collect_5 = 3069005

local nCollect_6 = 60194   --工作日志3
local nGenId_Collect_6 = 3069006

local nCollect_7 = 60247   --不知名线索（纳雅记叙残页3 ）
local nGenId_Collect_7 = 3069008

--宝箱
local nTreasureBoxId_1 =  40136      --小宝箱1
local nGenId_TongGuanBox_1 =  3069007

--local nTreasureBoxId_2 =  40137      --小宝箱2
--local nGenId_TongGuanBox_2 =  3069008

local nTreasureBoxId_3 =  40138      --干扰宝箱
local nGenId_TongGuanBox_3 =  3069009

local nTreasureBoxId_4 =  40139      --大宝箱
local nGenId_TongGuanBox_4 =  3069010

--机关
local nValve_1 = 1054
local nGenId_Valve_1 = 3069011

--陷阱
local nTrap_1 = 30405  
local nGenId_Trap_1 = 3069012

local nTrap_2 = 30421  
local nGenId_Trap_2 = 3069014


--怪物
local nMonsterGroupId_1 = 200325
local nGenId_nMonster_1  = 3069013

--对白
local nDialogId_1 = 5397	--进入解谜副本对白
local nDialogId_2 = 5398	--采集纳雅记叙残页1对白
local nDialogId_3 = 5399	--采集罐子对白
local nDialogId_4 = 5400	--开启小宝箱2对白
local nDialogId_5 = 5401	--没有钥匙陷阱对白
local nDialogId_6 = 5402	--有钥匙陷阱对白
local nDialogId_7 = 5403	--采集工作日志1对白
local nDialogId_8 = 5404	--采集工作日志2对白
local nDialogId_9 = 5405	--采集工作日志3对白
local nDialogId_10 = 5413	--进入副本动画播完对白


--奖励id
local nRewardId_1 = 1000203      --开启小宝箱1奖励
local nRewardId_2 = 1000204      --开启小宝箱2奖励
local nRewardId_3 = 1000205      --开启大宝箱奖励

--任务目标
local nTarget_1 = 60113     -- 收集纳雅记叙残页1
local nTarget_2 = 60114     -- 收集纳雅记叙残页2
local nTarget_3 = 60115     -- 收集纳雅记叙残页3 
local nTarget_4 = 60116     -- 收集工作日志1
local nTarget_5 = 60117     -- 收集工作日志2     
local nTarget_6 = 60118     -- 收集工作日志3   


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1,nTarget_2,nTarget_3,nTarget_4,nTarget_5,nTarget_6}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_Trap_1,nGenId_Valve_1}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Id"]= 16401
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--副本目标
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21204]
rwtTarget[nTarget_1]["ReqCollectId"] = nCollect_1
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21205]
rwtTarget[nTarget_2]["ReqCollectId"] = nCollect_2
rwtTarget[nTarget_2]["ReqCount"] = 1

rwtTarget[nTarget_3] = {}
rwtTarget[nTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21206]
rwtTarget[nTarget_3]["ReqCollectId"] = nCollect_7
rwtTarget[nTarget_3]["ReqCount"] = 1

rwtTarget[nTarget_4] = {}
rwtTarget[nTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21207]
rwtTarget[nTarget_4]["ReqCollectId"] = nCollect_4
rwtTarget[nTarget_4]["ReqCount"] = 1

rwtTarget[nTarget_5] = {}
rwtTarget[nTarget_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21208]
rwtTarget[nTarget_5]["ReqCollectId"] = nCollect_5
rwtTarget[nTarget_5]["ReqCount"] = 1

rwtTarget[nTarget_6] = {}
rwtTarget[nTarget_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21209]
rwtTarget[nTarget_6]["ReqCollectId"] = nCollect_6
rwtTarget[nTarget_6]["ReqCount"] = 1


--采集纳雅记叙残页1
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_2 
rwtNpcGroup[nCollect_1]["CollectTime"] = 1 


--采集纳雅记叙残页2
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_3
rwtNpcGroup[nCollect_2]["CollectTime"] = 1

--采集书房钥匙
rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 1
rwtNpcGroup[nCollect_3]["Awards"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenVavle"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenVavle"][1] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Trap_2}
       

--工作日志1
rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_4]["Awards"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_7
rwtNpcGroup[nCollect_4]["CollectTime"] = 1

--工作日志2
rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_8
rwtNpcGroup[nCollect_5]["CollectTime"] = 1

--工作日志3
rwtNpcGroup[nCollect_6] = rwtNpcGroup[nCollect_6] or {}
rwtNpcGroup[nCollect_6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_6]["Awards"] = {}  
rwtNpcGroup[nCollect_6]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_9
rwtNpcGroup[nCollect_6]["CollectTime"] = 1

--采集纳雅记叙残页3
rwtNpcGroup[nCollect_7] = rwtNpcGroup[nCollect_7] or {} 
rwtNpcGroup[nCollect_7]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_7]["Awards"] = {}
rwtNpcGroup[nCollect_7]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_7]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_4
rwtNpcGroup[nCollect_7]["CollectTime"] = 1


--开启小宝箱1
rwtNpcGroup[nTreasureBoxId_1] = rwtNpcGroup[nTreasureBoxId_1] or {} 
rwtNpcGroup[nTreasureBoxId_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBoxId_1]["Awards"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["DynDelete"][1] = nTreasureBoxId_1
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBoxId_3
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureBoxId_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_1


--开启干扰宝箱
rwtNpcGroup[nTreasureBoxId_3] = rwtNpcGroup[nTreasureBoxId_3] or {} 
rwtNpcGroup[nTreasureBoxId_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBoxId_3]["Awards"] = {}
rwtNpcGroup[nTreasureBoxId_3]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBoxId_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBoxId_3]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasureBoxId_3]["Awards"]["Events"][1]["DynDelete"][1] = nTreasureBoxId_3
rwtNpcGroup[nTreasureBoxId_3]["Awards"]["Events"][1]["DynCreate"]= {}
rwtNpcGroup[nTreasureBoxId_3]["Awards"]["Events"][1]["DynCreate"][1] = nGenId_nMonster_1

--开启大宝箱
rwtNpcGroup[nTreasureBoxId_4] = rwtNpcGroup[nTreasureBoxId_4] or {} 
rwtNpcGroup[nTreasureBoxId_4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nTreasureBoxId_4]["Awards"] = {}
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["DynDelete"][1] = nTreasureBoxId_4
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBoxId_4
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nTreasureBoxId_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nRewardId_3



        
--开关陷阱1
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["Awards"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 16402
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Trap_1
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_3}

--开关陷阱2
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["Awards"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_6
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Trap_2






