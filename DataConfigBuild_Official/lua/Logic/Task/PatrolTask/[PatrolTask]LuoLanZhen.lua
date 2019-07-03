--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--第一片区自律联盟佣兵巡查任务-罗兰镇
--By:Syl

--endregion


----***************************数据定义***************************----
--巡查奖励配置：
--普通宝箱
local nNormal_Box_AwardId = 2000152
----------任务ID------

local tLuoLanZhen = {}
tLuoLanZhen.XunCha = 50081
--巡查线一：神秘宝箱
tLuoLanZhen.Task_1 = 50170			
tLuoLanZhen.Task_2 = 50036			--开启宝箱
tLuoLanZhen.Task_3 = 50037          --回报联盟
--巡查线二：神秘宝箱
tLuoLanZhen.Task_4 = 50171
tLuoLanZhen.Task_5 = 50038			--开启宝箱
tLuoLanZhen.Task_6 = 50039          --回报联盟
----巡查线三：神秘宝箱
tLuoLanZhen.Task_7 = 50172
tLuoLanZhen.Task_8 = 50040			--开启宝箱
tLuoLanZhen.Task_9 = 50041          --回报联盟
--巡查线四：调查蜂乱
tLuoLanZhen.Task_10 = 50173
tLuoLanZhen.Task_11 = 50042			--和镇民麦提对话
tLuoLanZhen.Task_27 = 50243         --去拿防蜂用具【新】
tLuoLanZhen.Task_12 = 50043         --前往附近林子调查
tLuoLanZhen.Task_13 = 50044         --调查蜂灾的原因0
tLuoLanZhen.Task_14 = 50045         --告知麦提调查结果   
tLuoLanZhen.Task_15 = 50046         --回报联盟    
--巡查线五：迷路的小男孩 选项1
tLuoLanZhen.Task_16 = 50174
tLuoLanZhen.Task_17 = 50047			--对话小男孩   
	--选项1
tLuoLanZhen.Task_18 = 50244         --送小男孩回家
tLuoLanZhen.Task_19 = 50048         --护送小男孩到镇上【有】
tLuoLanZhen.Task_20 = 50245         --出现误会 
tLuoLanZhen.Task_21 = 50246         --解释缘由 
tLuoLanZhen.Task_22 = 50049         --回报联盟 【有】
	--选项2  
tLuoLanZhen.Task_28 = 50266         --和小男孩对话 
tLuoLanZhen.Task_23 = 50247         --给小男孩盛些水喝 
tLuoLanZhen.Task_24 = 50248         --拯救小男孩 
tLuoLanZhen.Task_25 = 50249         --和小男孩对话 
tLuoLanZhen.Task_26 = 50250         --回报联盟 
                              
----------对白ID------
local nDialog_Task_XunCha = 10757							--出发巡查

--巡查线一：神秘宝箱
local nDialog_Task_NEW_11 = 10853									--动画  
local nDialog_Task_NEW_1 = 10836									--动画
local nDialog_Task1 = 10758									--开启宝箱
local nDialog_Task2 = 10759                                 --回报联盟
                                                            
--巡查线二：神秘宝箱	 
local nDialog_Task_NEW_12 = 10854									--动画  
local nDialog_Task_NEW_2 = 10837									--动画                                 
local nDialog_Task3 = 10760                                 --开启宝箱
local nDialog_Task4 = 10761                                 --回报联盟
                                                            
--巡查线三：神秘宝箱   
local nDialog_Task_NEW_13 = 10855									--动画  
local nDialog_Task_NEW_3 = 10838                                --动画	                                     
local nDialog_Task5 = 10762                                 --开启宝箱
local nDialog_Task6 = 10763                                 --回报联盟
                                                            
--巡查线四：调查蜂乱 
local nDialog_Task_NEW_4 = 10839                                --动画	
local nDialog_Task_NEW_5 = 10840                                --动画	                                       
local nDialog_Task7 = 10764                                 --了解原因 (和镇民麦提对话)
local nDialog_Task15 = 11236								--去拿防蜂用具
local nDialog_Task8 = 10765                                 --前往林子 (击败虎斑蜂（0/1）)
local nDialog_Task9 = 10766                                 --调查原因 (调查蜂灾的原因)
local nDialog_Task10 = 10767                                --回复情况  (返回告知巡查结果)
local nDialog_Task11 = 10768                                --回报联盟  
                                                            
--巡查线五：迷路的小男孩        
local nDialog_Task_NEW_6 = 10841                            --动画	
local nDialog_Task_NEW_7 = 10842                            --动画	                 
local nDialog_Task12 = 10769                                --对话小男孩
	--选项1
local nDialog_Task16 = 11237										--送小男孩回家
--local nDialog_Task13 = 10770                                --护送小男孩到镇上  
local nDialog_Task17 = 11238										--出现误会  
local nDialog_Task18 = 11239										--解释缘由
local nDialog_Task18_1 = 10770										--回到镇上
local nDialog_Task14 = 10771                                --回报联盟  
	--选项2
local nDialog_Task19 = 11240										--解释缘由
local nDialog_Task20 = 11241										--拯救小男孩
local nDialog_Task21 = 11242										--和小男孩对话
local nDialog_Task22 = 11243										--返回联盟

----陷阱怪对白
--local nDialog_TrapMonsterDialog = 10770
                               
----------场景ID------

local nCgCutscene_Task1 = 2120				--巡查线一：神秘宝箱
local nCgCutscene_Task2 = 2121				--巡查线二：神秘宝箱
local nCgCutscene_Task3 = 2122				--巡查线三：神秘宝箱
local nCgCutscene_Task4 = 2123				--巡查线四：调查蜂乱
local nCgCutscene_Task5 = 2124				--巡查线五：迷路的小男孩

-----------------------NPC群组ID-----------------

--宝箱
local nNpcGroup_Box1 = 40068
local nNpcGroup_GenId_Box1 = 2001842
local nNpcGroup_Box2 = 40069
local nNpcGroup_GenId_Box2 = 2001843
local nNpcGroup_Box3 = 40070
local nNpcGroup_GenId_Box3 = 2001889

--陷阱
local nNpcGroup_Trap1 = 30321						--出发巡查
local nNpcGroup_GenId_Trap1 = 2001844
local nNpcGroup_Trap2 = 30322						--巡查线四：前往林子
local nNpcGroup_GenId_Trap2 = 2001845
local nNpcGroup_Trap3 = 30323						--巡查线四：调查原因
local nNpcGroup_GenId_Trap3 = 2001846
--local nNpcGroup_Trap4 = 30324						--巡查线五：送回镇上 怪物
--local nNpcGroup_GenId_Trap4 = 2001847
local nNpcGroup_Trap5 = 30337						--巡查线五：送回镇上 护送
local nNpcGroup_GenId_Trap5 = 2001848
local nNpcGroup_Trap6 = 30422						--巡查线四
local nNpcGroup_GenId_Trap6 = 20010024
local nNpcGroup_Trap7 = 30423						--巡查线五:送小男孩回家
local nNpcGroup_GenId_Trap7 = 20010025
local nNpcGroup_Trap8 = 30424						--巡查线五
local nNpcGroup_GenId_Trap8 = 20010026
local nNpcGroup_Trap9 = 30454						--巡查线五:出现误会
local nNpcGroup_GenId_Trap9 = 20010030
--NPC
local nNpcGroup_MaiTi = 20051				--麦提
local nNpcGroup_GenId_MaiTi = 2001383

local nNpcGroup_XiaoNanhai = 20322				--小男孩
local nNpcGroup_GenId_XiaoNanhai = 2001851

local nNpcGroup_BiDuoMao = 20115				--比多猫
local nNpcGroup_GenId_BiDuoMao = 2001658

local nNpcGroup_NaiNai = 20419				--男孩奶奶
local nNpcGroup_GenId_NaiNai = 20010029

--采集
local nNpcGroup_HuBanHua = 60115				--虎斑花
local nNpcGroup_GenId_HuBanHua = 2001890

local nNpcGroup_FangFeng = 60210			--防蜂用具
local nNpcGroup_GenId_FangFeng = 20010027

local nNpcGroup_ChengShui = 60211				--盛水
local nNpcGroup_GenId_ChengShui = 20010028

-----------------------NPCID-----------------

local nNPC_XiaoNanhai = 3285   			 --小男孩
local nNPC_HuBanFeng = 3286   			 --虎斑蜂
local nNPC_MGTZuiSui = 3287   			 --玫瑰团追随者
local nNPC_BiDuoMao = 3080   			 --比多猫
local nNPC_MaiTi = 3002   			 --麦提
local nNPC_NaiNai = 3394 			 --男孩奶奶
local nNPC_BaBa = 3395   			 --男孩爸爸
local nNPC_LangRen = 3406   			 --狼人战士

---------------MonsterGroup----------

--虎斑蜂
local nMonsterGroup_1 = 900267
local nMonsterGroup_GenId_1 = 2001849

--暗雷怪物
local nMonsterGroup_2 = 900268
local nMonsterGroup_GenId_2 = 2001850

--白银盾战
local nMonsterGroup_3 = 900311
local nMonsterGroup_GenId_3 = 20010022

--狼人战士
local nMonsterGroup_4 = 900312
local nMonsterGroup_GenId_4 = 20010023
----------------Monster-------------

local nMonster_1 = 1000242
local nMonster_2 = 1000243
local nMonster_3 = 9000235
local nMonster_4 = 9000236

-----------------奖励id---------------
--------奖励id------------

--任务
local nTaskAward_1 = 2000099                                 --巡查线一：神秘宝箱
local nTaskAward_2 = 2000100                                 --巡查线二：神秘宝箱
local nTaskAward_3 = 2000101                                 --巡查线三：神秘宝箱
local nTaskAward_4 = 2000102                                 --巡查线四：调查蜂乱
local nTaskAward_5 = 2000103                                 --巡查线五：迷路的小男孩
local nTaskAward_51 = 2000191                                --巡查线五：迷路的小男孩

--宝箱
local nTaskBoxAward_1 = 5000105                                 --巡查线一：神秘宝箱
local nTaskBoxAward_2 = 5000106                                 --巡查线二：神秘宝箱
local nTaskBoxAward_3 = 5000107                                 --巡查线三：神秘宝箱

--怪物
local nTaskMonAward_1 = 6000057
local nTaskMonAward_2 = 6000058
local nTaskMonAward_3 = 6000156
local nTaskMonAward_4 = 6000157

--------NPC组----------
--陷阱
rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nNpcGroup_Trap1] or {}
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap2] = rwtNpcGroup[nNpcGroup_Trap2] or {}
rwtNpcGroup[nNpcGroup_Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap3] = rwtNpcGroup[nNpcGroup_Trap3] or {}
rwtNpcGroup[nNpcGroup_Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap

--rwtNpcGroup[nNpcGroup_Trap4] = rwtNpcGroup[nNpcGroup_Trap4] or {}
--rwtNpcGroup[nNpcGroup_Trap4]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nNpcGroup_Trap4]["EscortMonsterGroupGen"] = nMonsterGroup_GenId_2
--rwtNpcGroup[nNpcGroup_Trap4]["EscortDialog"] = nDialog_TrapMonsterDialog

rwtNpcGroup[nNpcGroup_Trap5] = rwtNpcGroup[nNpcGroup_Trap5] or {}
rwtNpcGroup[nNpcGroup_Trap5]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap6] = rwtNpcGroup[nNpcGroup_Trap6] or {}
rwtNpcGroup[nNpcGroup_Trap6]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap7] = rwtNpcGroup[nNpcGroup_Trap7] or {}
rwtNpcGroup[nNpcGroup_Trap7]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap8] = rwtNpcGroup[nNpcGroup_Trap8] or {}
rwtNpcGroup[nNpcGroup_Trap8]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap9] = rwtNpcGroup[nNpcGroup_Trap9] or {}
rwtNpcGroup[nNpcGroup_Trap9]["Type"] = CONST_NPCGROUP_TYPE.Trap

--rwtDialog[nDialog_TrapMonsterDialog] = rwtDialog[nDialog_TrapMonsterDialog] or {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true

--NPC
rwtNpcGroup[nNpcGroup_XiaoNanhai] = {}     --小男孩
rwtNpcGroup[nNpcGroup_XiaoNanhai]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_XiaoNanhai]["NpcId"]= nNPC_XiaoNanhai

rwtNpc[nNPC_XiaoNanhai] = rwtNpc[nNPC_XiaoNanhai] or {}
rwtNpc[nNPC_XiaoNanhai]["DialogId"] = 1589

rwtNpcGroup[nNpcGroup_NaiNai] = {}     --男孩奶奶
rwtNpcGroup[nNpcGroup_NaiNai]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_NaiNai]["NpcId"]= nNPC_NaiNai

rwtNpc[nNPC_NaiNai] = rwtNpc[nNPC_NaiNai] or {}
rwtNpc[nNPC_NaiNai]["DialogId"] = nDialog_Task17


--宝箱
rwtNpcGroup[nNpcGroup_Box1] = rwtNpcGroup[nNpcGroup_Box1] or {} 
rwtNpcGroup[nNpcGroup_Box1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box1
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

rwtNpcGroup[nNpcGroup_Box2] = rwtNpcGroup[nNpcGroup_Box2] or {} 
rwtNpcGroup[nNpcGroup_Box2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box2]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box2
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

rwtNpcGroup[nNpcGroup_Box3] = rwtNpcGroup[nNpcGroup_Box3] or {} 
rwtNpcGroup[nNpcGroup_Box3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box3]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box3
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

--采集物
rwtNpcGroup[nNpcGroup_HuBanHua] = rwtNpcGroup[nNpcGroup_HuBanHua] or {}    
rwtNpcGroup[nNpcGroup_HuBanHua]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nNpcGroup_FangFeng] = rwtNpcGroup[nNpcGroup_FangFeng] or {}    
rwtNpcGroup[nNpcGroup_FangFeng]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nNpcGroup_ChengShui] = rwtNpcGroup[nNpcGroup_ChengShui] or {}    
rwtNpcGroup[nNpcGroup_ChengShui]["Type"] = CONST_NPCGROUP_TYPE.Collect

-----------------------------------------接取巡查任务---------------------------------
--出发巡查
rwtTask[tLuoLanZhen.XunCha] = {}
rwtTask[tLuoLanZhen.XunCha]["Title"] = tLuaText[LANGUAGE_CONFIG][20889]
rwtTask[tLuoLanZhen.XunCha]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.XunCha]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tLuoLanZhen.XunCha]["ReqTrap1"] = nNpcGroup_Trap1
rwtTask[tLuoLanZhen.XunCha]["AcceptDialogId"] = nDialog_Task_XunCha
rwtTask[tLuoLanZhen.XunCha]["PatrolFirstTask"] = 1
rwtTask[tLuoLanZhen.XunCha]["PatrolAfterTask"] = {tLuoLanZhen.Task_1,tLuoLanZhen.Task_4,tLuoLanZhen.Task_7,tLuoLanZhen.Task_10,tLuoLanZhen.Task_16}
rwtTask[tLuoLanZhen.XunCha]["PatrolTaskAreaId"] = 2001
rwtTask[tLuoLanZhen.XunCha]["PatrolTaskTownId"] = 200101

rwtTask[tLuoLanZhen.XunCha]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.XunCha]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.XunCha]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tLuoLanZhen.XunCha]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.XunCha]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel  
rwtTask[tLuoLanZhen.XunCha]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.XunCha]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.XunCha]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.XunCha]["StartAutoWay"]["FindWayPos"] = "-28.22,0.10,23.28"

-----------------------------------------巡查线一：神秘宝箱---------------------------------
--新增 场景动画1
rwtTask[tLuoLanZhen.Task_1] = {}
rwtTask[tLuoLanZhen.Task_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20890]
rwtTask[tLuoLanZhen.Task_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_1]["NextTaskId" ]= tLuoLanZhen.Task_2
rwtTask[tLuoLanZhen.Task_1]["DialogId"] = 11122
rwtTask[tLuoLanZhen.Task_1]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_1]["StartAutoWay"]["FindWayPos"] = "-28.22,0.10,23.28"

--开启宝箱 
rwtTask[tLuoLanZhen.Task_2] = {}
rwtTask[tLuoLanZhen.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20891]
rwtTask[tLuoLanZhen.Task_2]["NextTaskId"] = tLuoLanZhen.Task_3
rwtTask[tLuoLanZhen.Task_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tLuoLanZhen.Task_2]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_2]["ReqTreasureBox" ]= nNpcGroup_Box1
rwtTask[tLuoLanZhen.Task_2]["DialogId"] = nDialog_Task1

rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Box1
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_Box1
rwtTask[tLuoLanZhen.Task_2]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_Box1 

--回报联盟
rwtTask[tLuoLanZhen.Task_3] = {}
rwtTask[tLuoLanZhen.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20892]
rwtTask[tLuoLanZhen.Task_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_3]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_3]["PatrolLastTask"] = 1
rwtTask[tLuoLanZhen.Task_3]["DialogId"] = nDialog_Task2 
rwtTask[tLuoLanZhen.Task_3]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tLuoLanZhen.Task_3]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线二：神秘宝箱---------------------------------
--新增 场景动画1
rwtTask[tLuoLanZhen.Task_4] = {}
rwtTask[tLuoLanZhen.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20893]
rwtTask[tLuoLanZhen.Task_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_4]["NextTaskId" ]= tLuoLanZhen.Task_5
rwtTask[tLuoLanZhen.Task_4]["DialogId"] = 11123
rwtTask[tLuoLanZhen.Task_4]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tLuoLanZhen.Task_4]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_4]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tLuoLanZhen.Task_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_4]["StartAutoWay"]["FindWayPos"] = "-28.22,0.10,23.28"

--开启宝箱
rwtTask[tLuoLanZhen.Task_5] = {}
rwtTask[tLuoLanZhen.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20894]
rwtTask[tLuoLanZhen.Task_5]["NextTaskId"] = tLuoLanZhen.Task_6
rwtTask[tLuoLanZhen.Task_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tLuoLanZhen.Task_5]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_5]["ReqTreasureBox" ]= nNpcGroup_Box2
rwtTask[tLuoLanZhen.Task_5]["DialogId"] = nDialog_Task3

rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Box2
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_Box2
rwtTask[tLuoLanZhen.Task_5]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_Box2

--回报联盟
rwtTask[tLuoLanZhen.Task_6] = {}
rwtTask[tLuoLanZhen.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20895]
rwtTask[tLuoLanZhen.Task_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_6]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_6]["PatrolLastTask"] = 1
rwtTask[tLuoLanZhen.Task_6]["DialogId"] = nDialog_Task4 
rwtTask[tLuoLanZhen.Task_6]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tLuoLanZhen.Task_6]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线三：神秘宝箱---------------------------------
--新增 场景动画3
rwtTask[tLuoLanZhen.Task_7] = {}
rwtTask[tLuoLanZhen.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20896]
rwtTask[tLuoLanZhen.Task_7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_7]["NextTaskId" ]= tLuoLanZhen.Task_8
rwtTask[tLuoLanZhen.Task_7]["DialogId"] = 11124
rwtTask[tLuoLanZhen.Task_7]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_7]["StartAutoWay"]["FindWayPos"] = "-28.22,0.10,23.28"

--开启宝箱
rwtTask[tLuoLanZhen.Task_8] = {}
rwtTask[tLuoLanZhen.Task_8]["Title"] = tLuaText[LANGUAGE_CONFIG][20897]
rwtTask[tLuoLanZhen.Task_8]["NextTaskId"] = tLuoLanZhen.Task_9
rwtTask[tLuoLanZhen.Task_8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tLuoLanZhen.Task_8]["ReqTreasureBox" ]= nNpcGroup_Box3
rwtTask[tLuoLanZhen.Task_8]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_8]["DialogId"] = nDialog_Task5

rwtTask[tLuoLanZhen.Task_8]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_8]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Box3
rwtTask[tLuoLanZhen.Task_8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tLuoLanZhen.Task_8]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_8]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_8]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_8]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_Box3
rwtTask[tLuoLanZhen.Task_8]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_Box3

--回报联盟
rwtTask[tLuoLanZhen.Task_9] = {}
rwtTask[tLuoLanZhen.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20898]
rwtTask[tLuoLanZhen.Task_9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_9]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_9]["PatrolLastTask"] = 1
rwtTask[tLuoLanZhen.Task_9]["DialogId"] = nDialog_Task6 
rwtTask[tLuoLanZhen.Task_9]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tLuoLanZhen.Task_9]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线四：调查蜂乱---------------------------------
--新增 场景动画4
rwtTask[tLuoLanZhen.Task_10] = {}
rwtTask[tLuoLanZhen.Task_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20899]
rwtTask[tLuoLanZhen.Task_10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_10]["NextTaskId" ]= tLuoLanZhen.Task_11
rwtTask[tLuoLanZhen.Task_10]["DialogId"] = 11125
rwtTask[tLuoLanZhen.Task_10]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tLuoLanZhen.Task_10]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_10]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tLuoLanZhen.Task_10]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_10]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_10]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.Task_10]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_10]["StartAutoWay"]["FindWayPos"] = "-28.22,0.10,23.28"

--了解原因
rwtTask[tLuoLanZhen.Task_11] = {}
rwtTask[tLuoLanZhen.Task_11]["Title"] = tLuaText[LANGUAGE_CONFIG][20900]
rwtTask[tLuoLanZhen.Task_11]["NextTaskId"] = tLuoLanZhen.Task_27
rwtTask[tLuoLanZhen.Task_11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_11]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_11]["DialogId"] = nDialog_Task7 
rwtTask[tLuoLanZhen.Task_11]["TaskNpc"] = nNPC_MaiTi
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayGroupId"] =20051
rwtTask[tLuoLanZhen.Task_11]["StartAutoWay"]["FindWayGenId"] =2001383 

--去拿防蜂用具
rwtTask[tLuoLanZhen.Task_27] = {}
rwtTask[tLuoLanZhen.Task_27]["Title"] = tLuaText[LANGUAGE_CONFIG][20901]
rwtTask[tLuoLanZhen.Task_27]["NextTaskId"] = tLuoLanZhen.Task_12
rwtTask[tLuoLanZhen.Task_27]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhen.Task_27]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_27]["ReqCollectId1"] = nNpcGroup_FangFeng
rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_FangFeng
rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_FangFeng
rwtTask[tLuoLanZhen.Task_27]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_FangFeng 

--前往林子
rwtTask[tLuoLanZhen.Task_12] = {}
rwtTask[tLuoLanZhen.Task_12]["Title" ]= tLuaText[LANGUAGE_CONFIG][20902]
rwtTask[tLuoLanZhen.Task_12]["NextTaskId" ]= tLuoLanZhen.Task_13
rwtTask[tLuoLanZhen.Task_12]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhen.Task_12]["ReqTrap1"] = nNpcGroup_Trap2

rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap2
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_1
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete    
rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_1
rwtTask[tLuoLanZhen.Task_12]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_1
rwtTask[tLuoLanZhen.Task_12]["DialogId"] = nDialog_Task8
rwtTask[tLuoLanZhen.Task_12]["KillMonsterGroup1" ]= nMonsterGroup_1
rwtTask[tLuoLanZhen.Task_12]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_12]["MonsterGroupGenId"] = nMonsterGroup_GenId_1


--调查原因
rwtTask[tLuoLanZhen.Task_13] = {}
rwtTask[tLuoLanZhen.Task_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20903]
rwtTask[tLuoLanZhen.Task_13]["NextTaskId"] = tLuoLanZhen.Task_14
rwtTask[tLuoLanZhen.Task_13]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tLuoLanZhen.Task_13]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_13]["ReqCollectId1"] = nNpcGroup_HuBanHua
rwtTask[tLuoLanZhen.Task_13]["DialogId"] = nDialog_Task9
rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_HuBanHua
rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_HuBanHua
rwtTask[tLuoLanZhen.Task_13]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_HuBanHua 

--回复情况
rwtTask[tLuoLanZhen.Task_14] = {}
rwtTask[tLuoLanZhen.Task_14]["Title"] = tLuaText[LANGUAGE_CONFIG][20904]
rwtTask[tLuoLanZhen.Task_14]["NextTaskId"] = tLuoLanZhen.Task_15
rwtTask[tLuoLanZhen.Task_14]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_14]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_14]["DialogId"] = nDialog_Task10 
rwtTask[tLuoLanZhen.Task_14]["TaskNpc"] = nNPC_MaiTi
rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayGroupId"] =20051
rwtTask[tLuoLanZhen.Task_14]["StartAutoWay"]["FindWayGenId"] =2001383

--回报联盟
rwtTask[tLuoLanZhen.Task_15] = {}
rwtTask[tLuoLanZhen.Task_15]["Title"] = tLuaText[LANGUAGE_CONFIG][20905]
rwtTask[tLuoLanZhen.Task_15]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_15]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_15]["PatrolLastTask"] = 1
rwtTask[tLuoLanZhen.Task_15]["DialogId"] = nDialog_Task11 
rwtTask[tLuoLanZhen.Task_15]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tLuoLanZhen.Task_15]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线五：迷路的小男孩---------------------------------
--新增 场景动画5
rwtTask[tLuoLanZhen.Task_16] = {}
rwtTask[tLuoLanZhen.Task_16]["Title"] = tLuaText[LANGUAGE_CONFIG][20906]
rwtTask[tLuoLanZhen.Task_16]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_16]["NextTaskId" ]= tLuoLanZhen.Task_17
rwtTask[tLuoLanZhen.Task_16]["DialogId"] = 11126
rwtTask[tLuoLanZhen.Task_16]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_XiaoNanhai
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_16]["StartAutoWay"]["FindWayPos"] = "-28.22,0.10,23.28"

--对话小男孩
rwtTask[tLuoLanZhen.Task_17] = {}
rwtTask[tLuoLanZhen.Task_17]["Title"] = tLuaText[LANGUAGE_CONFIG][20907]
rwtTask[tLuoLanZhen.Task_17]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tLuoLanZhen.Task_17]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_XiaoNanhai
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_XiaoNanhai
rwtTask[tLuoLanZhen.Task_17]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_XiaoNanhai
rwtTask[tLuoLanZhen.Task_17]["DialogId"] = nDialog_Task12 
rwtTask[tLuoLanZhen.Task_17]["TaskNpc"] = nNPC_XiaoNanhai
rwtTask[tLuoLanZhen.Task_17]["OptionTask1"] = tLuoLanZhen.Task_18  --选项1任务
rwtTask[tLuoLanZhen.Task_17]["OptionTask2"] = tLuoLanZhen.Task_28  --选项2任务

--送小男孩回家
rwtTask[tLuoLanZhen.Task_18] = {}
rwtTask[tLuoLanZhen.Task_18]["Title"] = tLuaText[LANGUAGE_CONFIG][20908]
rwtTask[tLuoLanZhen.Task_18]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_18]["NextTaskId" ]= tLuoLanZhen.Task_19
rwtTask[tLuoLanZhen.Task_18]["DialogId"] = nDialog_Task16
rwtTask[tLuoLanZhen.Task_18]["ReqTrap1" ]= nNpcGroup_Trap7
rwtTask[tLuoLanZhen.Task_18]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_18]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_18]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap7
rwtTask[tLuoLanZhen.Task_18]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap7
rwtTask[tLuoLanZhen.Task_18]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap7


--送回镇上  护送
rwtTask[tLuoLanZhen.Task_19] = {}
rwtTask[tLuoLanZhen.Task_19]["Title"] = tLuaText[LANGUAGE_CONFIG][20909] 
rwtTask[tLuoLanZhen.Task_19]["NextTaskId"] = tLuoLanZhen.Task_20
rwtTask[tLuoLanZhen.Task_19]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tLuoLanZhen.Task_19]["DialogId"] = nDialog_Task18_1
rwtTask[tLuoLanZhen.Task_19]["ReqTrap1"] = nNpcGroup_Trap5
rwtTask[tLuoLanZhen.Task_19]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap5
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap4
--rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhen.Task_19]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_19]["StartAutoWay"]["FindWayPos"] = "-73.53,0.70,30.12"

--出现误会
rwtTask[tLuoLanZhen.Task_20] = {}
rwtTask[tLuoLanZhen.Task_20]["Title" ]=tLuaText[LANGUAGE_CONFIG][20910]
rwtTask[tLuoLanZhen.Task_20]["NextTaskId" ]= tLuoLanZhen.Task_21
rwtTask[tLuoLanZhen.Task_20]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhen.Task_20]["ReqTrap1"] = nNpcGroup_Trap9
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_NaiNai
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap9
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_20]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_NaiNai
rwtTask[tLuoLanZhen.Task_20]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_NaiNai

rwtTask[tLuoLanZhen.Task_20]["DialogId"] = nDialog_Task17
rwtTask[tLuoLanZhen.Task_20]["KillMonsterGroup1" ]= nMonsterGroup_3
rwtTask[tLuoLanZhen.Task_20]["TaskNpc"] = nNPC_NaiNai
rwtTask[tLuoLanZhen.Task_20]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_20]["MonsterGroupGenId"] = nMonsterGroup_GenId_3

--解释缘由
rwtTask[tLuoLanZhen.Task_21] = {}
rwtTask[tLuoLanZhen.Task_21]["Title"]= tLuaText[LANGUAGE_CONFIG][20911]
rwtTask[tLuoLanZhen.Task_21]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tLuoLanZhen.Task_21]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_21]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_21]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_NaiNai
rwtTask[tLuoLanZhen.Task_21]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhen.Task_21]["NextTaskId"] = tLuoLanZhen.Task_22
rwtTask[tLuoLanZhen.Task_21]["AutoTaskDialog" ]= nDialog_Task18
rwtTask[tLuoLanZhen.Task_21]["DialogId" ]= nDialog_Task18

--回报联盟  
rwtTask[tLuoLanZhen.Task_22] = {}
rwtTask[tLuoLanZhen.Task_22]["Title"] = tLuaText[LANGUAGE_CONFIG][20912]
rwtTask[tLuoLanZhen.Task_22]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_22]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_22]["PatrolLastTask"] = 1
rwtTask[tLuoLanZhen.Task_22]["DialogId"] = nDialog_Task14 
rwtTask[tLuoLanZhen.Task_22]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tLuoLanZhen.Task_22]["StartAutoWay"]["FindWayGenId"] =2001658



--选项2

--和小男孩对话
rwtTask[tLuoLanZhen.Task_28] = {}
rwtTask[tLuoLanZhen.Task_28]["Title"]= tLuaText[LANGUAGE_CONFIG][20913]
rwtTask[tLuoLanZhen.Task_28]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_28]["NextTaskId"] = tLuoLanZhen.Task_23
rwtTask[tLuoLanZhen.Task_28]["DialogId" ]=  nDialog_Task19	
rwtTask[tLuoLanZhen.Task_28]["TaskNpc"] = nNPC_XiaoNanhai
rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"] = {}	
rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_XiaoNanhai
rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel							--解释缘由
rwtTask[tLuoLanZhen.Task_28]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_28]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_28]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_28]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_XiaoNanhai
rwtTask[tLuoLanZhen.Task_28]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_XiaoNanhai

--给小男孩盛些水喝
rwtTask[tLuoLanZhen.Task_23] = {}
rwtTask[tLuoLanZhen.Task_23]["Title"] = tLuaText[LANGUAGE_CONFIG][20914]
rwtTask[tLuoLanZhen.Task_23]["NextTaskId"] = tLuoLanZhen.Task_24
rwtTask[tLuoLanZhen.Task_23]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhen.Task_23]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_23]["ReqCollectId1"] = nNpcGroup_ChengShui
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_ChengShui
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_XiaoNanhai
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_23]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ChengShui
rwtTask[tLuoLanZhen.Task_23]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_ChengShui

--拯救小男孩
rwtTask[tLuoLanZhen.Task_24] = {}
rwtTask[tLuoLanZhen.Task_24]["Title" ]= tLuaText[LANGUAGE_CONFIG][20915]
rwtTask[tLuoLanZhen.Task_24]["NextTaskId" ]= tLuoLanZhen.Task_25
rwtTask[tLuoLanZhen.Task_24]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhen.Task_24]["ReqTrap1"] = nNpcGroup_Trap8
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_4
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][2] = {}
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap8
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_24]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  

rwtTask[tLuoLanZhen.Task_24]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_24]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhen.Task_24]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhen.Task_24]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_4
rwtTask[tLuoLanZhen.Task_24]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_4
rwtTask[tLuoLanZhen.Task_24]["DialogId"] = nDialog_Task20 
rwtTask[tLuoLanZhen.Task_24]["KillMonsterGroup1" ]= nMonsterGroup_4
rwtTask[tLuoLanZhen.Task_24]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_24]["MonsterGroupGenId"] = nMonsterGroup_GenId_4

--和小男孩对话
rwtTask[tLuoLanZhen.Task_25] = {}
rwtTask[tLuoLanZhen.Task_25]["Title"]= tLuaText[LANGUAGE_CONFIG][20916]
rwtTask[tLuoLanZhen.Task_25]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tLuoLanZhen.Task_25]["NextTaskId"] = tLuoLanZhen.Task_26
rwtTask[tLuoLanZhen.Task_25]["AutoTaskDialog" ]= nDialog_Task21
rwtTask[tLuoLanZhen.Task_25]["DialogId" ]= nDialog_Task21
rwtTask[tLuoLanZhen.Task_25]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhen.Task_25]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhen.Task_25]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_XiaoNanhai
rwtTask[tLuoLanZhen.Task_25]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhen.Task_25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

--回报联盟  
rwtTask[tLuoLanZhen.Task_26] = {}
rwtTask[tLuoLanZhen.Task_26]["Title"] = tLuaText[LANGUAGE_CONFIG][20917]
rwtTask[tLuoLanZhen.Task_26]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tLuoLanZhen.Task_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhen.Task_26]["IsClickComplete"] = 0
rwtTask[tLuoLanZhen.Task_26]["PatrolLastTask"] = 1
rwtTask[tLuoLanZhen.Task_26]["DialogId"] = nDialog_Task22 
rwtTask[tLuoLanZhen.Task_26]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"] = {}
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tLuoLanZhen.Task_26]["StartAutoWay"]["FindWayGenId"] =2001658

