--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--【解谜】博士的家
--syl

--endregion
--===========================副本配置====================================--
--副本
local nCopyMapId = 3090

--采集
local nCollect_1 = 60331   --被尘封的废机械
local nGenId_Collect_1 = 3090001 
 
local nCollect_2 = 60332   --被尘封的机器人
local nGenId_Collect_2 = 3090002

local nCollect_3 = 60333   --书架
local nGenId_Collect_3 = 3090003

local nCollect_4 = 60334  --椅子
local nGenId_Collect_4 = 3090004

local nCollect_5= 60335   --柜子
local nGenId_Collect_5 = 3090005

local nCollect_6 = 60336   --手稿
local nGenId_Collect_6 = 3090006


--机关
local nValve_1 = 1080
local nGenId_Valve_1 = 3090007

local nValve_2 = 1081
local nGenId_Valve_2 = 3090008

--陷阱
local nTrap_1 = 30596 					--光墙1
local nGenId_Trap_1 = 3090009

local nTrap_2 = 30597  					--光墙2
local nGenId_Trap_2 = 3090010


--对白
local nDialogId_1 = 6313	--进入解谜副本对白
local nDialogId_2 = 6314	--被尘封的废机械
local nDialogId_3 = 6315	--被尘封的机器人
local nDialogId_4 = 6316	--书架
local nDialogId_5 = 6317	--椅子  后：6613
local nDialogId_6 = 6318	--光墙1
local nDialogId_7 = 6319	--柜子	后：6614
local nDialogId_8 = 6320	--光墙2
local nDialogId_9 = 6321	--手稿



--任务目标
local nTarget_1 = 60167     --查找线索

--副本入口
rwtNpcGroup[50060] = {}
rwtNpcGroup[50060]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50060]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1




--副本目标
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21571]
rwtTarget[nTarget_1]["ReqCollectId"] = nCollect_6
rwtTarget[nTarget_1]["ReqCount"] = 1


--被尘封的废机械
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_2 
rwtNpcGroup[nCollect_1]["CollectTime"] = 1 


--被尘封的机器人
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_3
rwtNpcGroup[nCollect_2]["CollectTime"] = 1

--书架
rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 1
rwtNpcGroup[nCollect_3]["Awards"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_4

       

--椅子
rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_4]["Awards"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_5
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenVavle"] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenVavle"][1] ={}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Trap_1
rwtNpcGroup[nCollect_4]["CollectTime"] = 1

--柜子
rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_7
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenVavle"] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenVavle"][1] ={}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenVavle"][1]["nGenId"] = nGenId_Valve_2
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenVavle"][1]["nStatus"] = 1
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Trap_2
rwtNpcGroup[nCollect_5]["CollectTime"] = 1

--手稿
rwtNpcGroup[nCollect_6] = rwtNpcGroup[nCollect_6] or {}
rwtNpcGroup[nCollect_6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_6]["Awards"] = {}  
rwtNpcGroup[nCollect_6]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_9
rwtNpcGroup[nCollect_6]["CollectTime"] = 1

    
--光墙1
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["Awards"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Trap_1
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_6


--光墙2
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["Awards"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_8
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["DynDelete"][1] = nGenId_Trap_2
