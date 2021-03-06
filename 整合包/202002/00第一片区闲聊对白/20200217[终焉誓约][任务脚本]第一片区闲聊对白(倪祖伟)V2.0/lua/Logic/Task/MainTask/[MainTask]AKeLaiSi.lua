--region [MainTask]AKeLaiSi.lua
--Purpose:		主线阿克莱斯
--Creator: 		林多娜
--Created:		2018-08-21
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-02-22 $
--RCS-ID:		$Revision: 10 $
--endregion

----***************************数据定义***************************----
-------------------任务ID-----------------
local tAKeLaiSi = {}
--阿克莱斯之荒
tAKeLaiSi.nAKeLaiSiTask_1 = 10061   --向阿克莱斯进发
tAKeLaiSi.nAKeLaiSiTask_3 = 10063   --商讨避难之所													
--奇怪的管家												
tAKeLaiSi.nAKeLaiSiTask_4 = 10064	--寡言的管家
--深情的左相
tAKeLaiSi.nAKeLaiSiTask_36 = 10217 	--安抚大姐头               
tAKeLaiSi.nAKeLaiSiTask_37 = 10218  --向镇民打听              
tAKeLaiSi.nAKeLaiSiTask_5 = 10065   --向镇民打听
tAKeLaiSi.nAKeLaiSiTask_6 = 10066   --头号粉丝										
--奇怪的物件													   	  
tAKeLaiSi.nAKeLaiSiTask_8 = 10068   --调查阴森森的墓地										
tAKeLaiSi.nAKeLaiSiTask_9 = 10069   --推理碎纸线索													
--残缺的魔法阵痕迹												    
tAKeLaiSi.nAKeLaiSiTask_10 = 10070   --向着雕像出发								
tAKeLaiSi.nAKeLaiSiTask_11 = 10071   --尝试解读魔法阵	   
tAKeLaiSi.nAKeLaiSiTask_13 = 10073   --令人不安的魔法阵
-- 密探藏书室
tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel = 10682 --卡等级
tAKeLaiSi.nAKeLaiSiTask_38 = 10067   --调查左相的藏书室
--左相的秘密
tAKeLaiSi.nAKeLaiSiTask_31 = 10091   --管家的自诉
--露西蒂尼之墓
tAKeLaiSi.nAKeLaiSiTask_32 = 10092   --查清真相

--上个片区最后一个任务
tAKeLaiSi.nPreAreaTask = 10429
--接哀嚎神殿第一个任务
tAKeLaiSi.nNextAreaTask = 10173

tAKeLaiSi.nBranchTask_1 = 70208   --温丽梦境支线引导
tAKeLaiSi.nBranchTask_2 = 70209   --讨伐领主支线引导
--rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
--table.insert(rwtSceneLoad_Func[2001],MainTask_CopyMapNpcCreat_Luximudi)    --插入切图函数
------------------------
--副本ID
local nCopyMap_LuXiMuDi = 3035
local nCopyMap_CangShu = 3084
local nCopyMap_CangShu_NorMal = 3139
------------------------
--对白
local nDialog_LockLev = 13290       --未达到等级对白
local nDialog_UnLockLev = 13291     --达成等级对白
-----------npc----------
--管家约瑞克
local nNpcId_Butler = 3021
rwtNpc[nNpcId_Butler] = rwtNpc[nNpcId_Butler] or {}
rwtNpc[nNpcId_Butler]["DialogId"] = {1095,1096,1097,2353,2354,2355}
--花店老板 
local nNpcId_Florist = 3022
rwtNpc[nNpcId_Florist] = rwtNpc[nNpcId_Florist] or {}
rwtNpc[nNpcId_Florist]["DialogId"] = {1139,1140,1141,2350}
--公会办事员
local nNpcId_GongHuiBanShiYuan = 3061
rwtNpc[nNpcId_GongHuiBanShiYuan] = {}
rwtNpc[nNpcId_GongHuiBanShiYuan]["DialogId"] = {1049,1050,1051,2356}
---------------------邦妮
local nNpcId_Bonnie = 3082     
rwtNpc[nNpcId_Bonnie] = rwtNpc[nNpcId_Bonnie] or {}
rwtNpc[nNpcId_Bonnie]["DialogId"] = {1145,1146,1147,2352}
----------------------肖恩
local nNpcId_Sean = 3083
rwtNpc[nNpcId_Sean] = rwtNpc[nNpcId_Sean] or {}
rwtNpc[nNpcId_Sean]["DialogId"] = {1142,1143,1144,2351}
--安道夫
local nNpcId_Tiebi = 3005
local nNpcId_YiShi = 3275
rwtNpc[nNpcId_YiShi] = rwtNpc[nNpcId_YiShi] or {}
--透明
rwtNpc[3653] = rwtNpc[3653] or {}
-------------NPC群组------------
--陷阱
--local nTrap_1 = 30021   --任务1
--local nTrap_GenId_1 = 2001330 
local nTrap_2 = 30022   --向阿克莱斯进发 商讨避难之所
local nTrap_GenId_2 = 2001331
local nTrap_3 = 30023   --(左相府门口)安抚大姐头
local nTrap_GenId_3 = 2001332 
local nTrap_4 = 30024   --调查阴森森的墓地 推理碎纸线索
local nTrap_GenId_4 = 2001333 
local nTrap_5 = 30025   --尝试解读魔法阵、令人不安的法阵				  `
local nTrap_GenId_5 = 2001334  
--local nTrap_6 = 30028   --任务10、24
--local nTrap_GenId_6 = 2001337
--local nTrap_7 = 30029   --任务2
--local nTrap_GenId_7 = 2001338 

--建筑
local nNpcGroup_1 = 12001    --左相府
local nNpcGroup_1_gen = 2001343    --左相府
local nNpcGroup_3 = 10027     --花店
local nNpcGroup_3_gen = 20010239 --花店gen
--NPC
--local nNpc_1 = 20025 --花店老板
--local nNpc_GenId_1 = 2001345  
local nNpc_2 = 20086 --公会办事员
local nNpc_GenId_2 = 2001466
local nNpc_3 = 20126 --邦妮
local nNpc_GenId_3 = 2001335 
local nNpc_4 = 20127 --肖恩
local nNpc_GenId_4 = 2001336 
--local nNpc_Yishi = 20318
--local nNpc_GenId_Yishi = 2001836

--采集物
local nCollect_1 = 60016    --碎纸		--物件
local nCollect_GenId_1 = 2001371
local nCollect_2 = 60017    --查看法阵	 --残缺的法阵
local nCollect_GenId_2 = 2001372


--副本
rwtNpcGroup[50008] = rwtNpcGroup[50008] or {}
rwtNpcGroup[50008]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50008]["CopyMapList"] = {nCopyMap_CangShu}

-------------Monster-------------
--丧尸怪1
local nMonsterGroupId_SangShi = 900111
local nMonster_GenId_SangShi = 2001360  


-------------------寻路坐标点----------------
local sPos_Task2 = "57.80,0.07,-125.09" --任务2自动寻路
local sPos_ZuoXiangFu = "78.16,0.11,-148.94" --左相府
local sPos_Dajietou = "74.63,0.10,-146.24" --大姐头
local sPos_HuaDian = "68.02,0.02,-146.62" --花店老板
local sPos_SuiZhi = "-50.01,0.10,-186.35"  --碎纸	  --物件
local sPos_DiaoXiang = "57.80,0.07,-125.09" --路西蒂尼雕像 --打完丧尸的陷阱
local sPos_Fazhen = "52.97,0.05,-149.24" --法阵
local sPos_Bonnie = "55.12,0.05,-153.78" --邦妮
local sPos_Sean = "68.89,0.07,-135.44" --肖恩
local sPos_AutoTask1 = "52.88,0.11,-116.55"
local sPos_AutoTask8 = "-50.01,0.10,-186.35"

--local sPos_AutoTask1 = "54.64,0.10,-120"


----******************************引导支线***************************
-------------------------------数据定义------------------------
--任务id
local tGuideBranchTask = {}

--公会引导支线
tGuideBranchTask.Guild = 70217

--对白id
local tGuideBranchDialogId = {}

--公会
tGuideBranchDialogId.Guild = 11969

--*****************************逻辑****************************
------陷阱
--rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}   --奇怪的味道
--rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}   --向阿克莱斯进发 商讨避难之所
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}	--(左相府门口)安抚大姐头
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}  --调查阴森森的墓地 推理碎纸线索
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}  --尝试解读魔法阵、令人不安的法阵
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap

--rwtNpcGroup[nTrap_7] = rwtNpcGroup[nTrap_7] or {} 
--rwtNpcGroup[nTrap_7]["Type"] = CONST_NPCGROUP_TYPE.Trap

-----建筑
--左相府
rwtNpcGroup[nNpcGroup_1] = rwtNpcGroup[nNpcGroup_1] or {}
rwtNpcGroup[nNpcGroup_1]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcGroup_1]["NpcId1"]= nNpcId_Butler
rwtNpcGroup[nNpcGroup_3] = rwtNpcGroup[nNpcGroup_3] or {}  --花店老板移入建筑
rwtNpcGroup[nNpcGroup_3]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcGroup_3]["NpcId1"]= nNpcId_Florist
---------NPC
--rwtNpcGroup[nNpc_1] = rwtNpcGroup[nNpc_1] or {}  --花店老板移入建筑
--rwtNpcGroup[nNpc_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[nNpc_1]["NpcId"]= nNpcId_Florist
rwtNpcGroup[nNpc_2] = rwtNpcGroup[nNpc_2] or {}
rwtNpcGroup[nNpc_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_2]["NpcId"]= nNpcId_GongHuiBanShiYuan
--------------------------------------------------------------------------------------------
rwtNpcGroup[nNpc_3] = rwtNpcGroup[nNpc_3] or {}
rwtNpcGroup[nNpc_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_3]["NpcId"]= nNpcId_Bonnie
rwtNpcGroup[nNpc_4] = rwtNpcGroup[nNpc_4] or {}
rwtNpcGroup[nNpc_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_4]["NpcId"]= nNpcId_Sean
----------------------------------------------------------------------------------------------

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}	   --残缺的法阵
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["DialogId"] = 10081


--任务未完成播放光效1，任务已完成播放光效2
function MainTask_AKeLaiSi_AddEffect()
	if rwTaskIsSuccess(tAKeLaiSi.nAKeLaiSiTask_11) then
		rwSpecialStatus_RemoveEffect(7,0,2027)
		rwSpecialStatus_RemoveEffect(7,0,2029)
		rwSpecialStatus_AddEffect(7,0,2029,'52.97,0.05,-149.24',0)
	else
		rwSpecialStatus_RemoveEffect(7,0,2027)
		rwSpecialStatus_AddEffect(7,0,2027,'52.97,0.05,-149.24',0)
	end
end

--切图后触发
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001]or {}
table.insert(rwtSceneLoad_Func[2001],MainTask_AKeLaiSi_AddEffect)

----***************************任务***************************----
---------阿克莱斯之荒----------
--向阿克莱斯进发
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["PreTaskId"] = tAKeLaiSi.nPreAreaTask
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DialogId"]= 10071
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["OpenTransfer"] = CONST_TRANSFER_INDEX.AKELAISI	 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10029]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Title"]= tLuaText[LANGUAGE_CONFIG][20150]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DialogId"]= 10071
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["ReqTrap1"] = nTrap_2
--rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["TaskNpc"] = 3653
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][1]["GenId"] = nMonster_GenId_SangShi
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["IsClickComplete"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["MonsterGroupGenId"] = nMonster_GenId_SangShi
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["KillMonsterGroup1"]= nMonsterGroupId_SangShi
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000004
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_2
--完成后接取 				   1
--rwtTask[tAKeLaiSi.nAKeLaiSiTask_1]["AcceptExtraTaskId"] = 70150  --支线任务 自律联盟-下酒小菜

--商讨避难之所
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["Title"]= tLuaText[LANGUAGE_CONFIG][20150]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["DialogId"] = 10073
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["ReqTrap1"] = nTrap_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2

---------奇怪的管家----------	

--寡言的管家
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Title"]= tLuaText[LANGUAGE_CONFIG][20158]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_36
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["TaskNpc"] = nNpcId_Butler
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["DialogId"]= 10074
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_1_gen

rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000005
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_4


--------------深情的左相------------

--安抚大姐头 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["Title"]= tLuaText[LANGUAGE_CONFIG][20159]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_37
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["DialogId"]= 10075	  
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["ReqTrap1"] = nTrap_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_36]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_3


--向镇民打听
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["Title"]= tLuaText[LANGUAGE_CONFIG][20159]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_36
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["DialogId"]= 10076	   ----------
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["TaskNpc"] = nNpcId_Bonnie ---------	邦妮
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_37]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_3

----向镇民打听
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["Title"]= tLuaText[LANGUAGE_CONFIG][20159]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_37
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_6
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["DialogId"]= 10077
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["TaskNpc"] = nNpcId_Sean  ---------	 肖恩
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["StartAutoWay"]["FindWayGroupId"] = nNpc_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_5]["StartAutoWay"]["FindWayGenId"] = nNpc_GenId_4

--头号粉丝
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6] = {} 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Title"]= tLuaText[LANGUAGE_CONFIG][20159]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_8
--rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["AcceptExtraTaskId"] = 70208
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["DialogId"]= 10078
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["TaskNpc"] = nNpcId_Florist
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_3
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_3_gen
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000006
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_6

rwtTask[tAKeLaiSi.nBranchTask_1] = {} 
rwtTask[tAKeLaiSi.nBranchTask_1]["Title"]= tLuaText[LANGUAGE_CONFIG][20159]
rwtTask[tAKeLaiSi.nBranchTask_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tAKeLaiSi.nBranchTask_1]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_6
rwtTask[tAKeLaiSi.nBranchTask_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tAKeLaiSi.nBranchTask_1]["DialogId"]= 11958
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"] = {}
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000268
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nBranchTask_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nBranchTask_1


--------------奇怪的物件------------
--调查阴森森的墓地    
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8] = {} 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["Title"]= tLuaText[LANGUAGE_CONFIG][20163]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_6
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_9
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DialogId"]= 10079
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["ReqTrap1"] = nTrap_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][2]["GenId"] = nCollect_GenId_1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["StartAutoWay"]["FindWayGroupId"] = nTrap_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_8]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_4

--推理碎纸线索
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9] = {} 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Title"]= tLuaText[LANGUAGE_CONFIG][20163]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_8
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_10
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["DialogId"]= 10080
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["ReqTrap1"] = nTrap_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["StartAutoWay"]["FindWayGroupId"] = nTrap_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_4
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000007
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_9

-----------残缺的魔法阵痕迹---------------
--向着雕像出发
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10] = {} 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["Title"]= tLuaText[LANGUAGE_CONFIG][20165]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_9
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_11
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["DialogId"]= 10081
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["ReqCollectId1"] = nCollect_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["ReqCollectCount1"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
rwtTask[tAKeLaiSi.nAKeLaiSiTask_10]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_2

--尝试解读魔法阵	  ----10081--------
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11] = {}   
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["Title"]= tLuaText[LANGUAGE_CONFIG][20165]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_10
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_13
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DialogId"]= 10082
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["ReqTrap1"] = nTrap_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["DialogueEndFunc"] = function ()
	rwSpecialStatus_AddEffect(7,0,2028,'52.97,0.05,-149.24',0)
	rwSpecialStatus_RemoveEffect(7,0,2027)
end
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["StartAutoWay"]["FindWayGroupId"] = nTrap_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_11]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_5

--令人不安的魔法阵
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13] = {}   
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Title"]= tLuaText[LANGUAGE_CONFIG][20165]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_11
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["DialogId"]= 10084
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["ReqTrap1"] = nTrap_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["DynaNpcGroupGen"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["DynaNpcGroupGen"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["StartAutoWay"]["FindWayGroupId"] = nTrap_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_5
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000008
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_13
--rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["AcceptExtraTaskId"] = 70209


rwtTask[tAKeLaiSi.nAKeLaiSiTask_13]["UnlockCopyMap1"] = nCopyMap_CangShu

---------------------------------------------------------------------------------------------
rwtTask[tAKeLaiSi.nBranchTask_2] = {} 
rwtTask[tAKeLaiSi.nBranchTask_2]["Title"]= tLuaText[LANGUAGE_CONFIG][21458]
rwtTask[tAKeLaiSi.nBranchTask_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tAKeLaiSi.nBranchTask_2]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_13
rwtTask[tAKeLaiSi.nBranchTask_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tAKeLaiSi.nBranchTask_2]["DialogId"]= 11959
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"] = {}
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000269
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nBranchTask_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nBranchTask_2
-----------------卡等级---------------

rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["Title"] = tLuaText[LANGUAGE_CONFIG][20168]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_13
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["NextTaskId"] = tAKeLaiSi.nAKeLaiSiTask_38
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["NeedLevel"] = 24
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogId"] = nDialog_LockLev
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"]["Events"][1]["AutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayTypeId"] = 0
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayMapId"] = 1000
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayPos"] = "-27.83,555.04,109.71"
rwtTask[tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel]["DialogId"] = nDialog_UnLockLev
----------------左相的藏书室----------
local sPos_AutoTask38 = "75.18,0.04,-151.43"
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38] = {} 
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Title"] = tLuaText[LANGUAGE_CONFIG][20168]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_Add_UpLevel
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_31
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["OpenCopyMap"] = nCopyMap_CangShu
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["PassCopyMap1"] = {nCopyMap_CangShu}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["PassCopyMapCount1"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["IsClickComplete"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["StartAutoWay"]["FindWayGroupId"] = 50008
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["StartAutoWay"]["FindWayGenId"] = 2001344
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000009
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_38
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["UnlockCopyMap1"] = nCopyMap_CangShu_NorMal
rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["UnLockZhouHui"] = 3139


--rwtTask[tAKeLaiSi.nAKeLaiSiTask_38]["AcceptExtraTaskId"] = 70216  --引导支线

---------------------------------------------------
rwtTask[70216] = {}
rwtTask[70216]["Title"] = tLuaText[LANGUAGE_CONFIG][21468] 
rwtTask[70216]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_38
rwtTask[70216]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[70216]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[70216]["DialogId"] = 11967
-- rwtTask[70216]["TaskNpc"] = 3028 --特罗德
rwtTask[70216]["Awards"] = {}
rwtTask[70216]["Awards"]["Events"] = {}
rwtTask[70216]["Awards"]["Events"][1] = {}
rwtTask[70216]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[70216]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[70216]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000272
rwtTask[70216]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[70216]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 70216
-----------------------------------------------------------

--------------左相的秘密----------
--管家的自诉
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31] = {}   
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Title"]= tLuaText[LANGUAGE_CONFIG][20169]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_38
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["NextTaskId"]= tAKeLaiSi.nAKeLaiSiTask_32
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["DialogId"]= 10086
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["TaskNpc"] = nNpcId_Butler
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["UnlockCopyMap1"] = 3035
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["UnlockCopyMap2"] = 3028
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_1_gen
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000010
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_31]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_31


-------------露西蒂尼之墓------------
--查清真相
local sPos_AutoTask32 = "-40.13,0.05,-192.73"
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32] = {}   
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Title"]= tLuaText[LANGUAGE_CONFIG][20170]
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["PreTaskId"] = tAKeLaiSi.nAKeLaiSiTask_31
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["NextTaskId"]= tAKeLaiSi.nNextAreaTask
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["PassCopyMap1"] = {nCopyMap_LuXiMuDi}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["PassCopyMapCount1"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["OpenCopyMap"] = 3035
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["IsClickComplete"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["OpenMercenaryTask"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["OpenMercenaryTask"]["TownId"] = 200104
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["StartAutoWay"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["StartAutoWay"]["FindWayGroupId"] = 50005
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["StartAutoWay"]["FindWayGenId"] = 2001121
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"][1] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000011
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tAKeLaiSi.nAKeLaiSiTask_32
rwtTask[tAKeLaiSi.nAKeLaiSiTask_32]["UnLockZhouHui"] = 3028

-------------------------------支线引导任务------------------------

--你是我的同伴
rwtTask[tGuideBranchTask.Guild] = {}
rwtTask[tGuideBranchTask.Guild]["Title"] = tLuaText[LANGUAGE_CONFIG][21469]
rwtTask[tGuideBranchTask.Guild]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.Guild]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tGuideBranchTask.Guild]["DialogId"] = tGuideBranchDialogId.Guild
rwtTask[tGuideBranchTask.Guild]["Awards"] = {}
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"] = {}
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"][1] = {}
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000267
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tGuideBranchTask.Guild]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tGuideBranchTask.Guild