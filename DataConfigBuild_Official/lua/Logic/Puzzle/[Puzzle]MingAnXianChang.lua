--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion
--副本
local nCopyMapId = 3077

--入口
rwtNpcGroup[50048] = rwtNpcGroup[50048] or {}
rwtNpcGroup[50048]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50048]["CopyMapList"] = {3077}


--机关
local nValve_1 = 1064
local nGenId_Valve_1 = 3077011

--对白
local nDialogId_1 = 6218	--起点
local nDialogId_2 = 6219	--粮食仓
local nDialogId_3 = 6220	--爪印1
local nDialogId_4 = 6221	--爪印2
local nDialogId_5 = 6222	--爪印3
local nDialogId_6 = 6223	--尸体
local nDialogId_7 = 6224	--日记本（记账本）
--机关
local nGenId_Valve_1 = 3077008
--采集
local nCollect_1 = 60305   --日记本1
local nGenId_Collect_1 = 3077002
 
local nCollect_2 = 60306   --粮仓
local nGenId_Collect_2 = 3077003

local nCollect_3 = 60307   --尸体
local nGenId_Collect_3 = 3077004

local nCollect_4 = 60308  --爪印1
local nGenId_Collect_4 = 3077005

local nCollect_5= 60309   --爪印2
local nGenId_Collect_5 = 3077006

local nCollect_6 = 60310   --爪印3
local nGenId_Collect_6 = 3077007

--判断组
local tAwardGenId = {nGenId_Collect_2,nGenId_Collect_3,nGenId_Collect_4,nGenId_Collect_5,nGenId_Collect_6}
--副本目标
local nTarget_1 = 60141     -- 调查鸟食仓
local nTarget_2 = 60142     -- 调查爪印1
local nTarget_3 = 60143     -- 调查爪印2
local nTarget_4 = 60144     -- 调查爪印3
local nTarget_5 = 60145     -- 检查尸体
local nTarget_6 = 60146     -- 调查线索

rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21394]
rwtTarget[nTarget_1]["ReqCollectId"] = nCollect_2
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21395]
rwtTarget[nTarget_2]["ReqCollectId"] = nCollect_4
rwtTarget[nTarget_2]["ReqCount"] = 1

rwtTarget[nTarget_3] = {}
rwtTarget[nTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21396]
rwtTarget[nTarget_3]["ReqCollectId"] = nCollect_5
rwtTarget[nTarget_3]["ReqCount"] = 1

rwtTarget[nTarget_4] = {}
rwtTarget[nTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21397]
rwtTarget[nTarget_4]["ReqCollectId"] = nCollect_6
rwtTarget[nTarget_4]["ReqCount"] = 1

rwtTarget[nTarget_5] = {}
rwtTarget[nTarget_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21398]
rwtTarget[nTarget_5]["ReqCollectId"] = nCollect_3
rwtTarget[nTarget_5]["ReqCount"] = 1

rwtTarget[nTarget_6] = {}
rwtTarget[nTarget_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21399]
rwtTarget[nTarget_6]["ReqCollectId"] = nCollect_1
rwtTarget[nTarget_6]["ReqCount"] = 1



--采集日记本
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = nDialogId_7
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_7 
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_1}
rwtNpcGroup[nCollect_1]["CollectTime"] = 1 

--采集粮仓
rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = nDialogId_2
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_2
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_1}
rwtNpcGroup[nCollect_2]["CollectTime"] = 1

--采集尸体
rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["Awards"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = nDialogId_6
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_6
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_1}
rwtNpcGroup[nCollect_3]["CollectTime"] = 1

--爪印1
rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_4]["Awards"] = {}  
rwtNpcGroup[nCollect_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_3
rwtNpcGroup[nCollect_4]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_5}
rwtNpcGroup[nCollect_4]["CollectTime"] = 1 

--爪印2
rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_4
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_6}
rwtNpcGroup[nCollect_5]["CollectTime"] = 1 

--爪印3
rwtNpcGroup[nCollect_6] = rwtNpcGroup[nCollect_6] or {}
rwtNpcGroup[nCollect_6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_6]["Awards"] = {}  
rwtNpcGroup[nCollect_6]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = nDialogId_5
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_5
rwtNpcGroup[nCollect_6]["Awards"]["Events"][1]["DynCreate"]= {nGenId_Collect_1}
rwtNpcGroup[nCollect_6]["CollectTime"] = 1 
rwtNpcGroup[nCollect_6]["Awards"]["Events"][2] = {}      
rwtNpcGroup[nCollect_6]["Awards"]["Events"][2]["OpenVavle"] = {}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][2]["OpenVavle"][1] ={}
rwtNpcGroup[nCollect_6]["Awards"]["Events"][2]["OpenVavle"][1]["nGenId"] = nGenId_Valve_1
rwtNpcGroup[nCollect_6]["Awards"]["Events"][2]["OpenVavle"][1]["nStatus"] = 1


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 4 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_2,nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_3}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nTarget_5,nTarget_4}
rwtCopyMapMission[nCopyMapId]["Target4"] = {nTarget_6}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nGenId_Collect_2,nGenId_Collect_4,nGenId_Collect_3,nGenId_Valve_1}