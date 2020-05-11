--region [MainTask]LuoLanZhen.lua
--Purpose:		罗兰镇主线
--Creator: 		孟志远
--Created:		2017-11-21
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-02-22 $
--RCS-ID:		$Revision: 21 $
--endregion

--======================================================= 数据 =========================================================--

--任务ID

local tLuoLanZhen = {}
tLuoLanZhen.PreTask = 10224
tLuoLanZhen.NextTask = 10151
tLuoLanZhen.Task_1 = 10126				--目标，罗兰镇			别拦路，奇怪家伙
tLuoLanZhen.Task_2 = 10227				--传说中的罗兰镇		前往罗兰镇
tLuoLanZhen.Task_3 = 10127				--传说中的罗兰镇		抵达罗兰镇
tLuoLanZhen.Task_4 = 10128				--传说中的罗兰镇		了解镇上的事情
tLuoLanZhen.Task_5 = 10129				--传说中的罗兰镇		采集血霜草
tLuoLanZhen.Task_6 = 10228				--传说中的罗兰镇		走，去找小姐姐
tLuoLanZhen.Task_7 = 10130				--传说中的罗兰镇		救助伤员
tLuoLanZhen.Task_8 = 10131				--传说中的罗兰镇		提醒西蒙
tLuoLanZhen.Task_11 = 10134             --名侦探镇长大卫		解读《罗兰颂歌》
tLuoLanZhen.Task_9 = 10132				--赏金猎人出击			取回资料
tLuoLanZhen.Task_10 = 10133             --赏金猎人出击			“大姐头”登场
tLuoLanZhen.Task_17 = 10139             --赏金猎人出击			前往玫瑰团驻地
tLuoLanZhen.Task_18 = 10140        		--勇闯玫瑰团驻地		解救镇民    
tLuoLanZhen.Task_19 = 10141      		--凯旋而归				返回罗兰镇      
tLuoLanZhen.Task_22 = 10144   			--失之交臂				向大卫询问线索          
tLuoLanZhen.Task_25 = 10148             --右相的双重身份		向诺尔大人汇报
tLuoLanZhen.Task_26 = 10149    			--水晶球里的人			讨论下一步计划        
tLuoLanZhen.Task_30 = 10270         	--今天开始当保镖		去自律联盟打听消息  
tLuoLanZhen.Task_32 = 10216         	--出发，最强组合		爱琳娜的决定



--对白ID

local nDialog_Task1 = 10131    			 		--目标，罗兰镇			前往罗兰镇
local nDialog_Task_NewAdd1 = 10492       		--传说中的罗兰镇		继续前往罗兰镇
local nDialog_Task2 = 10132    			 		--传说中的罗兰镇		抵达罗兰镇
local nDialog_Task3 = 10133    			 		--传说中的罗兰镇		了解镇上的事情
local nDialog_Task4 = 10154    			 		--传说中的罗兰镇		采集雪霜草
local nDialog_Task_NewAdd2 = 10493       		--传说中的罗兰镇		去找少女
local nDialog_Task5 = 12618     		 		--传说中的罗兰镇		救助伤员
local nDialog_Task6 = 10134     		 		--传说中的罗兰镇		提醒西蒙
local nDialog_Task9 = 10136     		 		--名侦探镇长大卫		解读《罗兰颂歌》
local nDialog_Task7 = 10135				 		--赏金猎人出击			取回资料
local nDialog_Task10 = 10137             		--赏金猎人出击			“大姐头”登场
local nDialog_Task14 = 10141     		 		--赏金猎人出击		前往玫瑰团驻地
local nDialog_Task16 = 10142     		 		--凯旋而归		护送镇民回家
local nDialog_Task19 = 10144     		 		--失之交臂		向大卫询问线索
local nDialog_Task23 = 10148             		--右相的双重身份		向诺尔大人汇报
local nDialog_Task24 = 10149     		 		--水晶球里的人		讨论下一步计划
local nDialog_Task_NewAdd8 = 10540   	 		--今天开始当保镖		去自律联盟打听消息对白
local nDialog_Task28 = 10153     		 		--出发，最强组合		爱琳娜的决定


--陷阱
local nTrap_1 = 30089   				--任务1
local nTrap_GenId_1 = 2001391	
local nTrap_2 = 30090   				--任务2对白
local nTrap_GenId_2 = 2001392	
local nTrap_7 = 30095   				--任务14/16陷阱
local nTrap_GenId_7 = 2001397	
local nTrap_8 = 30096   				--任务17护送目标点
local nTrap_GenId_8 = 2001398	
local nTrap_9 = 30097   				--任务22陷阱
local nTrap_GenId_9 = 2001400	
local nTrap_10 = 30098   				--任务26陷阱
local nTrap_GenId_10 = 2001538	
local nTrap_14 = 30580   				--击退哈蒙
local nTrap_GenId_14 = 20010202	
local nTrap_15 = 30584   				--救助伤员
local nTrap_GenId_15 = 20010206	

--NPC
local nNpcmap_HeiLi = 20049 --赫丽
local nNpcmap_HeiLi_GenId = 2001381

local nNpcmap_TuoMaSi = 21037 --托马斯
local nNpcmap_TuoMaSi_GenId = 1000252

local nNpcmap_ZhenMin2 = 20138 --镇民2（永久）
local nNpcmap_ZhenMin2_GenId = 2001543

local nNpcmap_BeiFangBaoJun = 21055 --哈蒙
local nNpcmap_BeiFangBaoJun_GenId = 2001390

local nNpcmap_MaiTi = 20051 --镇民麦提
local nNpcmap_MaiTi_GenId = 2001383

local nNpcmap_Nuoer = 20225 --诺尔
local nNpcmap_Nuoer_GenId = 1000044


--佣兵任务NPC
local nNpcGroup_Clerk = 20066         --公会办事员(永久)
local nNpcGroup_Clerk_GenId = 2001441        
local nNpcGroup_Girl = 20067         --小女孩
local nNpcGroup_Girl_GenId = 2001442
local nNpcGroup_YouEr = 20071  --芙妮
local nNpcGroup_YouEr_GenId = 2001449  
local nNpcGroup_Conquest = 20072         --康奎斯特
local nNpcGroup_Conquest_GenId = 2001450    

--闲聊NPC

local nNpcGroup_AiDeMeng = 20142        --艾德蒙
local nNpcGroup_ChaLi = 20144           --老乞丐查理

--采集物
local nCollect_1 = 60041    --血霜草
local nCollect_GenId_1 = 2001385    

--建筑
local nNpcBuild_Office = 10010  --罗兰镇政务厅
local nNpcBuild_Office_GenId = 2001537


--NPC
local nNPC_HeLi = 3001    --赫丽
local nNPC_DaWei = 3004    --大卫
local nNPC_MaiTi = 3002    --麦提
local nNPC_AiLinNa = 301   --爱琳娜
local nNPC_Noel = 1000       --诺尔
local nNPC_Miller = 3081   --占星师米勒
local nNPC_ZhenMin = 3087   --镇民
local nNPC_GaiYin = 3010    --该隐
local nNPC_BeiLa = 3003      --贝拉
local nNPC_ZhenMin1 = 3092   --镇民1
local nNPC_ZhenMin2 = 3093   --镇民2


--佣兵NPC
local nNPC_TuoMaSi = 3005        --托马斯
local nNpc_Clerk = 3052          --公会办事员(永久)
local nNpc_Conquest = 3058       --康奎斯特(永久)
local nNpc_Girl  = 3053        --小女孩
local nNpc_YouEr  = 3057        --芙妮 
local nNpc_Conquest = 3058    --康奎斯特

--闲聊NPC

local nNpc_AiDeMeng = 3098      --艾德蒙
local nNpc_ChaLi = 3242         --老乞丐查理


--其他数据

--副本id，玫瑰驻地
local nCopyMap_Rose = 3021
--使用传送阵任务掩码
local nTransferMask = 1001
--英雄id，爱琳娜
local nHero_Elena = 301
--玫瑰驻地副本BOSS
local nCopyMap_Rose_BOSS = 200067



--支线数据

--任务id
local tGuideBranchTask = {}

--符文镶嵌
tGuideBranchTask.RuneMosaic = 70072
--PVP引导支线
tGuideBranchTask.PVP = 70218

--好友宝箱引导支线
tGuideBranchTask.FirendBox_1 = 70212
tGuideBranchTask.FirendBox_2 = 70330

--对白id
local tGuideBranchDialogId = {}

--符文镶嵌
tGuideBranchDialogId.RuneMosaic = 11968
--PVP
tGuideBranchDialogId.PVP = 11970
--好友宝箱
tGuideBranchDialogId.FirendBox_2 = 11962

--陷阱
local tGuideBranchTrap = {}
local tGuideBranchTrapGen = {}

--好友宝箱
tGuideBranchTrap.FirendBox_2 = 30704
tGuideBranchTrapGen.FirendBox_2 = 20010282

--monstergroup id
local tGuideBranchMonsterGroup = {}
local tGuideBranchMonsterGroupGenId = {}

--好友宝箱
tGuideBranchMonsterGroup.FirendBox_1 = 900600
tGuideBranchMonsterGroupGenId.FirendBox_1 = 20010283

--monsterid
local tGuideBranchMonster = {}

--好友宝箱
tGuideBranchMonster.FirendBox_1 = 9000674


--支线任务ID
local tBranchTask = {}
	tBranchTask.PreTask1 = 10216			 --爱琳娜的决定
	tBranchTask.Task1   = 70205   			 --谢礼
	tBranchTask.PreTask2 = 10144			 --向大卫询问线索
	tBranchTask.Task2   = 70206   			 --叮，新的好友请求
    tBranchTask.JiuWeiBiShi = 70204    		 -- 久违的比试

local nGenIdCopyMapPlot = 3021004
local nGenIdCopyMapNormal = 3029008



--支线对白ID
local nDialog_1 = 11955	   --谢礼
local nDialog_2 = 11956	   --叮，新的好友请求

--======================================================= 逻辑 =========================================================--

--进入探索层时动态创建赫丽
function MainTask_LuoLanZhenMainTask_CreatNpc()
    --寻找大卫任务前创建赫丽
    if not rwTaskIsSuccess(tLuoLanZhen.Task_11) then
        if not rwHasGenEvent(nNpcmap_HeiLi_GenId) then
            rwAddGenEvent(nNpcmap_HeiLi_GenId)
        end
    end
end
--切图后触发
rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],MainTask_LuoLanZhenMainTask_CreatNpc)


--======================================================= 配置 =========================================================--


--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_7] = rwtNpcGroup[nTrap_7] or {}
rwtNpcGroup[nTrap_7]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_8] = rwtNpcGroup[nTrap_8] or {}
rwtNpcGroup[nTrap_8]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_9] = rwtNpcGroup[nTrap_9] or {}
rwtNpcGroup[nTrap_9]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_10] = rwtNpcGroup[nTrap_10] or {}
rwtNpcGroup[nTrap_10]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_14] = rwtNpcGroup[nTrap_14] or {}
rwtNpcGroup[nTrap_14]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_15] = rwtNpcGroup[nTrap_15] or {}
rwtNpcGroup[nTrap_15]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tGuideBranchTrap.FirendBox_2] = rwtNpcGroup[tGuideBranchTrap.FirendBox_2] or {}
rwtNpcGroup[tGuideBranchTrap.FirendBox_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
--NPC
rwtNpcGroup[nNpcmap_HeiLi] = {}     --赫丽
rwtNpcGroup[nNpcmap_HeiLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_HeiLi]["NpcId"]= nNPC_HeLi

rwtNpcGroup[nNpcmap_MaiTi] = {}     --麦提
rwtNpcGroup[nNpcmap_MaiTi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_MaiTi]["NpcId"]= nNPC_MaiTi

rwtNpcGroup[nNpcmap_ZhenMin2] = {}     --镇民2
rwtNpcGroup[nNpcmap_ZhenMin2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_ZhenMin2]["NpcId"]= nNPC_ZhenMin2

--铁臂安道夫（任务NPC）
rwtNpcGroup[nNpcmap_TuoMaSi] = rwtNpcGroup[nNpcmap_TuoMaSi] or {}
rwtNpcGroup[nNpcmap_TuoMaSi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_TuoMaSi]["NpcId"]= nNPC_TuoMaSi
--采集物
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}     --血霜草
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = nDialog_Task4

--佣兵任务NPC
--公会办事员
rwtNpcGroup[nNpcGroup_Clerk] = rwtNpcGroup[nNpcGroup_Clerk] or {}
rwtNpcGroup[nNpcGroup_Clerk]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Clerk]["NpcId"]= nNpc_Clerk
--小女孩
rwtNpcGroup[nNpcGroup_Girl] = rwtNpcGroup[nNpcGroup_Girl] or {}
rwtNpcGroup[nNpcGroup_Girl]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Girl]["NpcId"]= nNpc_Girl
--尤儿
rwtNpcGroup[nNpcGroup_YouEr] = rwtNpcGroup[nNpcGroup_YouEr] or {}
rwtNpcGroup[nNpcGroup_YouEr]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_YouEr]["NpcId"]= nNpc_YouEr
--康奎斯特
rwtNpcGroup[nNpcGroup_Conquest] = rwtNpcGroup[nNpcGroup_Conquest] or {}
rwtNpcGroup[nNpcGroup_Conquest]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Conquest]["NpcId"]= nNpc_Conquest

-----闲聊NPC
--艾德蒙
rwtNpcGroup[nNpcGroup_AiDeMeng] = rwtNpcGroup[nNpcGroup_AiDeMeng] or {}
rwtNpcGroup[nNpcGroup_AiDeMeng]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_AiDeMeng]["NpcId"]= nNpc_AiDeMeng
--老乞丐查理
rwtNpcGroup[nNpcGroup_ChaLi] = rwtNpcGroup[nNpcGroup_ChaLi] or {}
rwtNpcGroup[nNpcGroup_ChaLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ChaLi]["NpcId"]= nNpc_ChaLi
---------建筑
rwtNpcGroup[nNpcBuild_Office] = rwtNpcGroup[nNpcBuild_Office] or {}     --罗兰镇政务厅
rwtNpcGroup[nNpcBuild_Office]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcBuild_Office]["NpcId1"] = nNPC_DaWei


--------NPC----------
--赫丽
rwtNpc[nNPC_HeLi] = rwtNpc[nNPC_HeLi] or {}
rwtNpc[nNPC_HeLi]["DialogId"] = {1108,1109,1110,2341}
--大卫
rwtNpc[nNPC_DaWei] = rwtNpc[nNPC_DaWei] or {}
rwtNpc[nNPC_DaWei]["DialogId"] = {1092,1093,1094,2343}
--麦提
rwtNpc[nNPC_MaiTi] = rwtNpc[nNPC_MaiTi] or {}
rwtNpc[nNPC_MaiTi]["DialogId"] = {1114,1115,1116,2342}
--镇民
rwtNpc[nNPC_ZhenMin] = rwtNpc[nNPC_ZhenMin] or {}
rwtNpc[nNPC_ZhenMin]["DialogId"] = {1111,1112,1113}
--爱琳娜
rwtNpc[nNPC_AiLinNa] = rwtNpc[nNPC_AiLinNa] or {}
rwtNpc[nNPC_AiLinNa]["DialogId"] = {1117,1118,1119}
--该隐
rwtNpc[nNPC_GaiYin] = rwtNpc[nNPC_GaiYin] or {}
rwtNpc[nNPC_GaiYin]["DialogId"] = 1138
--贝拉
rwtNpc[nNPC_BeiLa] = rwtNpc[nNPC_BeiLa] or {}
rwtNpc[nNPC_BeiLa]["DialogId"] = 1155


-------佣兵任务NPC---------
--公会办事员
rwtNpc[nNpc_Clerk] = rwtNpc[nNpc_Clerk] or {}
rwtNpc[nNpc_Clerk]["DialogId"] = {1043,1044,1045,2340}
--小女孩
rwtNpc[nNpc_Girl] = rwtNpc[nNpc_Girl] or {}

--尤儿
rwtNpc[nNpc_YouEr] = rwtNpc[nNpc_YouEr] or {}

--康奎斯特
rwtNpc[nNpc_Conquest] = rwtNpc[nNpc_Conquest] or {} 

--------闲聊NPC-------
--艾德蒙
rwtNpc[nNpc_AiDeMeng] = rwtNpc[nNpc_AiDeMeng] or {}
rwtNpc[nNpc_AiDeMeng]["DialogId"] = {1067,1068,1069,2338}
--老乞丐查理
rwtNpc[nNpc_ChaLi] = rwtNpc[nNpc_ChaLi] or {} 
rwtNpc[nNpc_ChaLi]["DialogId"] = {1073,1074,1075,2339}

--======================================================= 主线任务 =========================================================--

-----------------------------------------罗兰镇在哭泣---------------------------------
--击退怪家伙
rwtTask[tLuoLanZhen.Task_1] = {}
rwtTask[tLuoLanZhen.Task_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20243]
rwtTask[tLuoLanZhen.Task_1]["PreTaskId"] = tLuoLanZhen.PreTask
rwtTask[tLuoLanZhen.Task_1]["NextTaskId"] = tLuoLanZhen.Task_2
rwtTask[tLuoLanZhen.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_1]["DialogId"] = nDialog_Task1
rwtTask[tLuoLanZhen.Task_1]["ReqTrap1"] = nTrap_1
rwtTask[tLuoLanZhen.Task_1]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"] = {}
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"][1]["HeadIconId"] = 10158 --夜崎隐趣味头像解锁
rwtTask[tLuoLanZhen.Task_1]["UnlockHeadIcon"][1]["RecordId"] = 11
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1
rwtTask[tLuoLanZhen.Task_1]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000035
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_1
rwtTask[tLuoLanZhen.Task_1]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.PLAYER_TRAINING,CONST_SYSTEM_FUNCTION.HERO_TRAINING}  --玩家训练(战技研习) 英雄特训


-----------------------------------------紧急救援---------------------------------
--**（新增任务）继续前往罗兰镇
rwtTask[tLuoLanZhen.Task_2] = {}
rwtTask[tLuoLanZhen.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20244]
rwtTask[tLuoLanZhen.Task_2]["PreTaskId"] = tLuoLanZhen.Task_1
rwtTask[tLuoLanZhen.Task_2]["NextTaskId"] = tLuoLanZhen.Task_3
rwtTask[tLuoLanZhen.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_2]["DialogId"] = nDialog_Task_NewAdd1
rwtTask[tLuoLanZhen.Task_2]["AcceptExtraTaskId"] = tGuideBranchTask.FirendBox_1  --好友宝箱支线任务
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_2]["ReqTrap1"] = nTrap_1
rwtTask[tLuoLanZhen.Task_2]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.FRIEND_BOX}  --好友宝箱功能解锁
rwtTask[tLuoLanZhen.Task_2]["OpenTransfer"] = CONST_TRANSFER_INDEX.LUOLANZHEN
rwtTask[tLuoLanZhen.Task_2]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10027]


--了解镇上的事情
rwtTask[tLuoLanZhen.Task_3] = {}
rwtTask[tLuoLanZhen.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20245]
rwtTask[tLuoLanZhen.Task_3]["PreTaskId"] = tLuoLanZhen.Task_2
rwtTask[tLuoLanZhen.Task_3]["NextTaskId"] = tLuoLanZhen.Task_4
rwtTask[tLuoLanZhen.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_3]["DialogId"] = nDialog_Task2
rwtTask[tLuoLanZhen.Task_3]["ReqTrap1"] = nTrap_2
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete


--了解镇上的事情
rwtTask[tLuoLanZhen.Task_4] = {}
rwtTask[tLuoLanZhen.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20246]
rwtTask[tLuoLanZhen.Task_4]["PreTaskId"] = tLuoLanZhen.Task_3
rwtTask[tLuoLanZhen.Task_4]["NextTaskId"] = tLuoLanZhen.Task_5
rwtTask[tLuoLanZhen.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_4]["DialogId"] = nDialog_Task3
rwtTask[tLuoLanZhen.Task_4]["TaskNpc"] = nNPC_HeLi
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_HeiLi
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayGenId"] = nNpcmap_HeiLi_GenId

--采集血霜草（0/10）
rwtTask[tLuoLanZhen.Task_5] = {}
rwtTask[tLuoLanZhen.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20247]
rwtTask[tLuoLanZhen.Task_5]["PreTaskId"] = tLuoLanZhen.Task_4
rwtTask[tLuoLanZhen.Task_5]["NextTaskId"] = tLuoLanZhen.Task_6
rwtTask[tLuoLanZhen.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_5]["ReqCollectId1"] = nCollect_1
rwtTask[tLuoLanZhen.Task_5]["ReqCollectCount1"] = 3
rwtTask[tLuoLanZhen.Task_5]["ReqCollectOnceNum"] = 3
rwtTask[tLuoLanZhen.Task_5]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10010]
rwtTask[tLuoLanZhen.Task_5]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1

--**（新增任务）去找少女
rwtTask[tLuoLanZhen.Task_6] = {}
rwtTask[tLuoLanZhen.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20248]
rwtTask[tLuoLanZhen.Task_6]["PreTaskId"] = tLuoLanZhen.Task_5
rwtTask[tLuoLanZhen.Task_6]["NextTaskId"] = tLuoLanZhen.Task_7
rwtTask[tLuoLanZhen.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_6]["DialogId"] = nDialog_Task_NewAdd2
rwtTask[tLuoLanZhen.Task_6]["TaskNpc"] = nNPC_HeLi
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_HeiLi
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayGenId"] = nNpcmap_HeiLi_GenId
rwtTask[tLuoLanZhen.Task_6]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000612
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_6

--救助伤员（0/1）
rwtTask[tLuoLanZhen.Task_7] = {}
rwtTask[tLuoLanZhen.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20249]
rwtTask[tLuoLanZhen.Task_7]["PreTaskId"] = tLuoLanZhen.Task_6
rwtTask[tLuoLanZhen.Task_7]["NextTaskId"] = tLuoLanZhen.Task_8
rwtTask[tLuoLanZhen.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_7]["ReqTrap1"] = nTrap_15
rwtTask[tLuoLanZhen.Task_7]["DialogId"] = nDialog_Task5
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayGroupId"] = nTrap_15
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_15
rwtTask[tLuoLanZhen.Task_7]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.STRENGTH_EQUIP,CONST_SYSTEM_FUNCTION.UP_STAR_EQUIP} -- 装备强化 装备升星
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_15
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

--提醒西蒙
rwtTask[tLuoLanZhen.Task_8] = {}
rwtTask[tLuoLanZhen.Task_8]["Title"]= tLuaText[LANGUAGE_CONFIG][21136]
rwtTask[tLuoLanZhen.Task_8]["PreTaskId"] = tLuoLanZhen.Task_7
rwtTask[tLuoLanZhen.Task_8]["NextTaskId"] = tLuoLanZhen.Task_11
rwtTask[tLuoLanZhen.Task_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tLuoLanZhen.Task_8]["DialogId"]= nDialog_Task6
rwtTask[tLuoLanZhen.Task_8]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000036
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_8

 --玩家经验
-------------------------------------------名侦探镇长大卫---------------------------------

--解读《罗兰颂歌》
rwtTask[tLuoLanZhen.Task_11] = {}
rwtTask[tLuoLanZhen.Task_11]["Title"] = tLuaText[LANGUAGE_CONFIG][20251]
rwtTask[tLuoLanZhen.Task_11]["PreTaskId"] = tLuoLanZhen.Task_8
rwtTask[tLuoLanZhen.Task_11]["NextTaskId"] = tLuoLanZhen.Task_9
rwtTask[tLuoLanZhen.Task_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_11]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_11]["DialogId"] = nDialog_Task9
rwtTask[tLuoLanZhen.Task_11]["TaskNpc"] = nNPC_DaWei
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayGroupId"] = nNpcBuild_Office
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayGenId"] = nNpcBuild_Office_GenId
rwtTask[tLuoLanZhen.Task_11]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["DynDelete"] = {nNpcmap_HeiLi_GenId}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000037
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_11
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][2] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 2000613
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_11]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_11

----------------------------------------赏金猎人出击---------------------------------
--取回资料
rwtTask[tLuoLanZhen.Task_9] = {}
rwtTask[tLuoLanZhen.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20250]
rwtTask[tLuoLanZhen.Task_9]["PreTaskId"] = tLuoLanZhen.Task_11
rwtTask[tLuoLanZhen.Task_9]["NextTaskId"] = tLuoLanZhen.Task_10
rwtTask[tLuoLanZhen.Task_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_9]["DialogId"] = nDialog_Task7
rwtTask[tLuoLanZhen.Task_9]["ReqTrap1"] = nTrap_8
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_8
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayGroupId"] = nTrap_8
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_8
rwtTask[tLuoLanZhen.Task_9]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.SHOP,CONST_SYSTEM_FUNCTION.HERO_LOTTERY} --商城，抽卡


--“大姐头”登场
rwtTask[tLuoLanZhen.Task_10] = {}
rwtTask[tLuoLanZhen.Task_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20250]
rwtTask[tLuoLanZhen.Task_10]["PreTaskId"] = tLuoLanZhen.Task_9
rwtTask[tLuoLanZhen.Task_10]["NextTaskId"] = tLuoLanZhen.Task_17
rwtTask[tLuoLanZhen.Task_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tLuoLanZhen.Task_10]["DialogId"] = nDialog_Task10
rwtTask[tLuoLanZhen.Task_10]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.HRO_UP_CLASS} --英雄突破


--击退哈蒙
rwtTask[tLuoLanZhen.Task_17] = {}
rwtTask[tLuoLanZhen.Task_17]["Title"] = tLuaText[LANGUAGE_CONFIG][20257]
rwtTask[tLuoLanZhen.Task_17]["PreTaskId"] = tLuoLanZhen.Task_10
rwtTask[tLuoLanZhen.Task_17]["NextTaskId"] = tLuoLanZhen.Task_18
rwtTask[tLuoLanZhen.Task_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_17]["DialogId"] = nDialog_Task14
rwtTask[tLuoLanZhen.Task_17]["ReqTrap1"] = nTrap_14
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_14
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2]["GenId"] = nNpcmap_BeiFangBaoJun_GenId
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tLuoLanZhen.Task_17]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_17]["UnlockCopyMap1"] = 3021
rwtTask[tLuoLanZhen.Task_17]["UnlockCopyMap2"] = 3029
rwtTask[tLuoLanZhen.Task_17]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000040
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_17

---------------------------------------勇闯盗贼营地---------------------------------
--解救镇民
rwtTask[tLuoLanZhen.Task_18] = {}
rwtTask[tLuoLanZhen.Task_18]["Title"] = tLuaText[LANGUAGE_CONFIG][20258]
rwtTask[tLuoLanZhen.Task_18]["PreTaskId"] = tLuoLanZhen.Task_17
rwtTask[tLuoLanZhen.Task_18]["NextTaskId"] = tLuoLanZhen.Task_19
rwtTask[tLuoLanZhen.Task_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tLuoLanZhen.Task_18]["OpenCopyMap"] = 3021
rwtTask[tLuoLanZhen.Task_18]["IsClickComplete"] = 1
rwtTask[tLuoLanZhen.Task_18]["PassCopyMap1"] = nCopyMap_Rose
rwtTask[tLuoLanZhen.Task_18]["PassCopyMapCount1"] = 1
rwtTask[tLuoLanZhen.Task_18]["UnLockZhouHui"] = 3029
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayGroupId"] = 50001
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayGenId"] = 3021004
rwtTask[tLuoLanZhen.Task_18]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000041
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_18
rwtTask[tLuoLanZhen.Task_18]["AwardFunc"] = function ()

	rwUnlockTrain(4)

end

---------------------------------------凯旋而归---------------------------------
--护送居民回家
rwtTask[tLuoLanZhen.Task_19] = {}
rwtTask[tLuoLanZhen.Task_19]["Title"] = tLuaText[LANGUAGE_CONFIG][20259]
rwtTask[tLuoLanZhen.Task_19]["PreTaskId"] = tLuoLanZhen.Task_18
rwtTask[tLuoLanZhen.Task_19]["NextTaskId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_19]["DialogId"] = nDialog_Task16
rwtTask[tLuoLanZhen.Task_19]["ReqTrap1"] = nTrap_7
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayGroupId"] = nTrap_7
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_7
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_7
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhen.Task_19]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000614
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_19
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][2] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 2000049
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_19]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_19


---------------------------------------失之交臂---------------------------------
--向大卫询问线索
rwtTask[tLuoLanZhen.Task_22] = {}
rwtTask[tLuoLanZhen.Task_22]["Title"] = tLuaText[LANGUAGE_CONFIG][20262]
rwtTask[tLuoLanZhen.Task_22]["PreTaskId"] = tLuoLanZhen.Task_19
rwtTask[tLuoLanZhen.Task_22]["NextTaskId"] = tLuoLanZhen.Task_25
rwtTask[tLuoLanZhen.Task_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_22]["DialogId"] = nDialog_Task19
rwtTask[tLuoLanZhen.Task_22]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_22]["TaskNpc"] = nNPC_DaWei
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayGroupId"] = nNpcBuild_Office
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayGenId"] = nNpcBuild_Office_GenId
rwtTask[tLuoLanZhen.Task_22]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000043
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_22]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.UP_ORDER_EQUIP} -- 装备进阶


--------------------------------------右相的鼓励---------------------------------


--向诺尔大人汇报
rwtTask[tLuoLanZhen.Task_25] = {}
rwtTask[tLuoLanZhen.Task_25]["Title"] = tLuaText[LANGUAGE_CONFIG][20265]
rwtTask[tLuoLanZhen.Task_25]["PreTaskId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_25]["NextTaskId"] = tLuoLanZhen.Task_26
rwtTask[tLuoLanZhen.Task_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_25]["DialogId"] = nDialog_Task23
rwtTask[tLuoLanZhen.Task_25]["TaskNpc"] = nNPC_Noel
rwtTask[tLuoLanZhen.Task_25]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000045
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_25

--------------------------------------水晶球里的人---------------------------------
--讨论下一步计划
rwtTask[tLuoLanZhen.Task_26] = {}
rwtTask[tLuoLanZhen.Task_26]["Title"] = tLuaText[LANGUAGE_CONFIG][20266]
rwtTask[tLuoLanZhen.Task_26]["PreTaskId"] = tLuoLanZhen.Task_25
rwtTask[tLuoLanZhen.Task_26]["NextTaskId"] = tLuoLanZhen.Task_30
rwtTask[tLuoLanZhen.Task_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_26]["AcceptExtraTaskId"] = 70421
rwtTask[tLuoLanZhen.Task_26]["DialogId"] = nDialog_Task24
rwtTask[tLuoLanZhen.Task_26]["ReqTrap1"] = nTrap_9
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayGroupId"] = nTrap_9
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_9
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_9
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tLuoLanZhen.Task_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  
rwtTask[tLuoLanZhen.Task_26]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_26]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000050
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_26]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_26


--------------------------------------今天开始当保镖---------------------------------

--去自律联盟打听消息
rwtTask[tLuoLanZhen.Task_30] = {}
rwtTask[tLuoLanZhen.Task_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20270]
rwtTask[tLuoLanZhen.Task_30]["PreTaskId"] = tLuoLanZhen.Task_26
rwtTask[tLuoLanZhen.Task_30]["NextTaskId"] = tLuoLanZhen.Task_32
rwtTask[tLuoLanZhen.Task_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_30]["DialogId"] = nDialog_Task_NewAdd8
rwtTask[tLuoLanZhen.Task_30]["TaskNpc"] = nNPC_TuoMaSi
rwtTask[tLuoLanZhen.Task_30]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_30]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_30]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_TuoMaSi_GenId
rwtTask[tLuoLanZhen.Task_30]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tLuoLanZhen.Task_30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel  
rwtTask[tLuoLanZhen.Task_30]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_30]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000255
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_30
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][2] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 2000615
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_30]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_30
rwtTask[tLuoLanZhen.Task_30]["AwardFunc"] = function ()
    local nFoodTaskWeek
    local nFoodTaskTime = 0
    nFoodTaskWeek,nFoodTaskTime = rwFoodTask_GetNowTimePart() --获取对应星期 和 餐点
    --判断是否在用餐时间（在）
    if nFoodTaskTime ~= 0 then 
        rwFoodTask_OnTimer_Start()  --美食任务图标处理
    end
end
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[tLuoLanZhen.Task_30]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId
rwtTask[tLuoLanZhen.Task_30]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.DAILY_TASK,CONST_SYSTEM_FUNCTION.DAILY_COPY_MAP,CONST_SYSTEM_FUNCTION.ACTIVITY}  --自律联盟,每日副本,每日课程
rwtTask[tLuoLanZhen.Task_30]["OpenMercenaryTask"] = {}   --罗兰镇最后一个任务开启佣兵
rwtTask[tLuoLanZhen.Task_30]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tLuoLanZhen.Task_30]["OpenMercenaryTask"]["TownId"] = 200102
rwtTask[tLuoLanZhen.Task_30]["AcceptExtraTaskId"] = {70105,70293}  --支线任务 自律联盟-自律联盟万事通（tGuideBranchTask.RuneMosaic,去除符文镶嵌引导引支线）



--------------------------------------出发，最强组合---------------------------------
--爱琳娜的决定
rwtTask[tLuoLanZhen.Task_32] = {}
rwtTask[tLuoLanZhen.Task_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20271]
rwtTask[tLuoLanZhen.Task_32]["PreTaskId"] = tLuoLanZhen.Task_30
rwtTask[tLuoLanZhen.Task_32]["NextTaskId"] = tLuoLanZhen.NextTask
rwtTask[tLuoLanZhen.Task_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_32]["DialogId"] = nDialog_Task28
rwtTask[tLuoLanZhen.Task_32]["ReqTrap1"] = nTrap_10
rwtTask[tLuoLanZhen.Task_32]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.IMPRESSION} --羁绊
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_10
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success  
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][2]["GenId"] = nNpcmap_TuoMaSi_GenId
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tLuoLanZhen.Task_32]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tLuoLanZhen.Task_32]["Awards"] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000048
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tLuoLanZhen.Task_32]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tLuoLanZhen.Task_32


--======================================================= 支线任务 =========================================================--

--失败是成功之母
rwtTask[tGuideBranchTask.RuneMosaic] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Title"] = tLuaText[LANGUAGE_CONFIG][21464]
rwtTask[tGuideBranchTask.RuneMosaic]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.RuneMosaic]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tGuideBranchTask.RuneMosaic]["DialogId"] = tGuideBranchDialogId.RuneMosaic
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000263
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tGuideBranchTask.RuneMosaic]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tGuideBranchTask.RuneMosaic


 -- 久违的比试
rwtTask[tBranchTask.JiuWeiBiShi] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Title"] = tLuaText[LANGUAGE_CONFIG][21472]
rwtTask[tBranchTask.JiuWeiBiShi]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.JiuWeiBiShi]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.JiuWeiBiShi]["IsClickComplete"] = 0
rwtTask[tBranchTask.JiuWeiBiShi]["DialogId"] = 11932
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000259
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.JiuWeiBiShi]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.JiuWeiBiShi

--少年的傲气
rwtTask[tGuideBranchTask.PVP] = {}
rwtTask[tGuideBranchTask.PVP]["Title"] = tLuaText[LANGUAGE_CONFIG][21470]
rwtTask[tGuideBranchTask.PVP]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.PVP]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tGuideBranchTask.PVP]["DialogId"] = tGuideBranchDialogId.PVP
rwtTask[tGuideBranchTask.PVP]["Awards"] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000261
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tGuideBranchTask.PVP]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tGuideBranchTask.PVP

--好友宝箱引导支线(魔族的遗留物)
--战胜魔脊半鱼人
rwtTask[tGuideBranchTask.FirendBox_1] = {}
rwtTask[tGuideBranchTask.FirendBox_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21461] 
rwtTask[tGuideBranchTask.FirendBox_1]["PreTaskId"] = tLuoLanZhen.Task_2
rwtTask[tGuideBranchTask.FirendBox_1]["NextTaskId"] = tGuideBranchTask.FirendBox_2
rwtTask[tGuideBranchTask.FirendBox_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.FirendBox_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tGuideBranchTask.FirendBox_1]["KillMonsterGroup1" ]= tGuideBranchMonsterGroup.FirendBox_1
rwtTask[tGuideBranchTask.FirendBox_1]["MonsterGroupGenId"] = tGuideBranchMonsterGroupGenId.FirendBox_1
rwtTask[tGuideBranchTask.FirendBox_1]["DynaNpcGroupGen"] = {}
rwtTask[tGuideBranchTask.FirendBox_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tGuideBranchTask.FirendBox_1]["DynaNpcGroupGen"][1]["GenId"] = tGuideBranchMonsterGroupGenId.FirendBox_1
rwtTask[tGuideBranchTask.FirendBox_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tGuideBranchTask.FirendBox_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--获得宝箱
rwtTask[tGuideBranchTask.FirendBox_2] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["Title"]= tLuaText[LANGUAGE_CONFIG][21461]
rwtTask[tGuideBranchTask.FirendBox_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tGuideBranchTask.FirendBox_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tGuideBranchTask.FirendBox_2]["PreTaskId"] = tGuideBranchTask.FirendBox_1
rwtTask[tGuideBranchTask.FirendBox_2]["AutoTaskDialog"]= tGuideBranchDialogId.FirendBox_2
rwtTask[tGuideBranchTask.FirendBox_2]["DialogId"]= tGuideBranchDialogId.FirendBox_2
rwtTask[tGuideBranchTask.FirendBox_2]["ReqTrap1"] = tGuideBranchTrap.FirendBox_2
rwtTask[tGuideBranchTask.FirendBox_2]["CompleteGuide"] = 306
rwtTask[tGuideBranchTask.FirendBox_2]["CompleteGuideType"] = 1
rwtTask[tGuideBranchTask.FirendBox_2]["DynaNpcGroupGen"] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["DynaNpcGroupGen"][1]["GenId"] = tGuideBranchTrapGen.FirendBox_2
rwtTask[tGuideBranchTask.FirendBox_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tGuideBranchTask.FirendBox_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"][1] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000266
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tGuideBranchTask.FirendBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tGuideBranchTask.FirendBox_2

--好友引导支线
rwtTask[tBranchTask.Task2] = {}
rwtTask[tBranchTask.Task2]["Title"]= tLuaText[LANGUAGE_CONFIG][21466]
rwtTask[tBranchTask.Task2]["PreTaskId"] = tLuoLanZhen.Task_22
rwtTask[tBranchTask.Task2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.Task2]["DialogId" ]= nDialog_2
rwtTask[tBranchTask.Task2]["Awards"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000262
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task2


rwtTask[tBranchTask.Task1] = {}
rwtTask[tBranchTask.Task1]["Title"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][21465]
rwtTask[tBranchTask.Task1]["PreTaskId"] = tBranchTask.PreTask1
rwtTask[tBranchTask.Task1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.Task1]["DialogId"] = nDialog_1
rwtTask[tBranchTask.Task1]["Awards"] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000260
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Task1

