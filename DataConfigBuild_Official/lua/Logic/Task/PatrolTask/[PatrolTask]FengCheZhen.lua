--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--第一片区自律联盟佣兵巡查任务-风车镇
--By:Syl

--endregion


----***************************数据定义***************************----
--巡查奖励配置：
--普通宝箱
local nNormal_Box_AwardId = 2000152
----------任务ID------

local tPatrolFengChe = {}
tPatrolFengChe.XunCha = 50083
--巡查线一：神秘宝箱
tPatrolFengChe.Task_1 = 50159
tPatrolFengChe.Task_2 = 50050			--开启宝箱
tPatrolFengChe.Task_3 = 50051         --回报联盟
--巡查线二：神秘宝箱
tPatrolFengChe.Task_4 = 50160
tPatrolFengChe.Task_5 = 50052			--开启宝箱
tPatrolFengChe.Task_6 = 50053         --回报联盟
--巡查线三：追击偷宝贼
tPatrolFengChe.Task_7 = 50161
tPatrolFengChe.Task_8 = 50054			--追击偷宝贼
tPatrolFengChe.Task_9 = 50055         --回报联盟
--巡查线四：追击偷宝贼
tPatrolFengChe.Task_10 = 50162
tPatrolFengChe.Task_11 = 50056		--追击偷宝贼
tPatrolFengChe.Task_12 = 50057        --回报联盟
--巡查线五：神龛里的小树灵
tPatrolFengChe.Task_13 = 50163
tPatrolFengChe.Task_14 = 50058		--找到镇民比尔
tPatrolFengChe.Task_15 = 50059        --调查神龛
-- tPatrolFengChe.Task_37 = 50059        --调查神龛
	--选项1
tPatrolFengChe.Task_16 = 50251		--沿着脚印调查真相[新]
tPatrolFengChe.Task_17 = 50252		--辨认地上的脚印
tPatrolFengChe.Task_18 = 50060		--沿着脚印调查真相
tPatrolFengChe.Task_19 = 50061		--返回联盟交接任务
	--选项2
tPatrolFengChe.Task_20 = 50253		--找镇民拿点贡品
tPatrolFengChe.Task_21 = 50254		--将贡品摆放在神龛
tPatrolFengChe.Task_22 = 50255		--躲在附近守株待兔
tPatrolFengChe.Task_23 = 50256		--窃贼出现
		--选项1
tPatrolFengChe.Task_24 = 50257		--捉住窃贼
tPatrolFengChe.Task_25 = 50258		--护送女孩回到镇上
tPatrolFengChe.Task_26 = 50259		--返回联盟交接任务	
		--选项2
tPatrolFengChe.Task_27 = 50260		--观察情况
tPatrolFengChe.Task_28 = 50261		--窃贼现身
tPatrolFengChe.Task_29 = 50262		--返回联盟交接任务	
--巡查线六：援助大厨
tPatrolFengChe.Task_30 = 50164
tPatrolFengChe.Task_31 = 50062		--击败滚石怪（0/1）
tPatrolFengChe.Task_32 = 50063        --和罗切特对话
tPatrolFengChe.Task_33 = 50263        --护送罗切特回镇上
tPatrolFengChe.Task_34 = 50264        --采集食材（0/2）
tPatrolFengChe.Task_35 = 50265		--将食材带回给罗切特
tPatrolFengChe.Task_36 = 50065        --返回联盟交接任务
                                    
----------对白ID------              

local nDialog_Task_XunCha = 10772							--出发巡查

--巡查线一：神秘宝箱
local nDialog_Task_new_11 = 10858									--动画
local nDialog_Task_new_1 = 10843									--动画
local nDialog_Task1 = 10773									--开启宝箱
local nDialog_Task2 = 10774                                 --回报联盟
                                                            
--巡查线二：神秘宝箱	
local nDialog_Task_new_12 = 10859									--动画
local nDialog_Task_new_2 = 10844									--动画                                    
local nDialog_Task3 = 10775                                 --开启宝箱
local nDialog_Task4 = 10776                                 --回报联盟
                                                            
--巡查线三：追击偷宝贼  
local nDialog_Task_new_13 = 10860									--动画   
local nDialog_Task_new_3 = 10845								--动画                                       
local nDialog_Task5 = 10777                                 --追击偷宝贼
local nDialog_Task6 = 10778                                 --回报联盟
                                                            
--巡查线四：追击偷宝贼  
local nDialog_Task_new_14 = 10861									--动画  
local nDialog_Task_new_4 = 10846								--动画                                      
local nDialog_Task7 = 10779                                 --追击偷宝贼
local nDialog_Task8 = 10780                                 --回报联盟 
                                                            
--巡查线五：神龛里的小树灵      
local nDialog_Task_new_5 = 10847								--动画   
local nDialog_Task_new_6 = 10848								--动画                                 
local nDialog_Task9 = 10781                                --找到镇民比尔
local nDialog_Task10 = 10782                                --调查神龛  
	--选项1	
local nDialog_Task17 = 11244										--沿着脚印调查真相
local nDialog_Task18 = 11245										--辨认地上的脚印
local nDialog_Task11 = 10783       							--沿着脚印调查真相
local nDialog_TaskNew11 = 10784       							--沿着脚印调查真相 战后
local nDialog_Task12 = 10785       							--回报联盟
	--选项2
local nDialog_Task19 = 11246										--找镇民拿点贡品
local nDialog_Task20 = 11247										--将贡品摆放在神龛
local nDialog_Task21 = 11248										--躲在附近守株待兔
local nDialog_Task22 = 11249										--窃贼出现  11333胜利对白  100114战斗组
		--选项1
local nDialog_Task23 = 11250										--捉住窃贼
local nDialog_Task24 = 11251										--护送女孩回到镇上
local nDialog_Task24_1 = 11975										--护送女孩回到镇上 你家应该就在这镇上吧，快回家吧，以后别再一个人到处乱跑啦。
local nDialog_Task25 = 11252										--返回联盟交接任务
		--选项2
local nDialog_Task26 = 11253								--观察情况
local nDialog_Task27 = 11254								--窃贼现身
local nDialog_Task28 = 11255								--返回联盟交接任务

--巡查线六：援助大厨
local nDialog_Task_new_7 = 10849								--动画   
local nDialog_Task_new_8 = 10850								--动画    
local nDialog_Task13 = 10786                                --拯救罗切特
-- local nDialog_Tasknew13 = 10787                                --拯救罗切特  战斗胜利后
local nDialog_Task14 = 10788                                --和罗切特对话  
local nDialog_Task15 = 10789       							--护送罗切特回镇上
local nDialog_Task29 = 11256      							--采集食材（0/2）
local nDialog_Task30 = 11257      							--将食材带回给罗切特
local nDialog_Task16 = 10790       							--回报联盟 

----------场景ID------

local nCgCutscene_Task1 = 2125				--巡查线一：神秘宝箱
local nCgCutscene_Task2 = 2126				--巡查线二：神秘宝箱
local nCgCutscene_Task3 = 2127				--巡查线三：追击偷宝贼
local nCgCutscene_Task4 = 2128				--巡查线四：追击偷宝贼
local nCgCutscene_Task5 = 2129				--巡查线五：神龛里的小树灵
local nCgCutscene_Task6 = 2130				--巡查线六：援助大厨

-----------------------NPC群组ID-----------------

--宝箱
local nNpcGroup_Box1 = 40071
local nNpcGroup_GenId_Box1 = 2001852
local nNpcGroup_Box2 = 40072
local nNpcGroup_GenId_Box2 = 2001853

--陷阱
local nNpcGroup_Trap1 = 30325						--出发巡查
local nNpcGroup_GenId_Trap1 = 2001854
local nNpcGroup_Trap2 = 30326						--巡查线六：援助大厨。护送罗切特
local nNpcGroup_GenId_Trap2 = 2001855
local nNpcGroup_Trap3 = 30360						--巡查线三：追击偷宝贼
local nNpcGroup_GenId_Trap3 = 2001918
local nNpcGroup_Trap4 = 30361						--巡查线四：追击偷宝贼
local nNpcGroup_GenId_Trap4 = 2001919
local nNpcGroup_Trap5 = 30362						--巡查线五：先驱者57号
local nNpcGroup_GenId_Trap5 = 2001920
local nNpcGroup_Trap6 = 30363						--巡查线六：滚石怪
local nNpcGroup_GenId_Trap6 = 2001921
local nNpcGroup_Trap7 = 30431						--巡查线五：沿着脚印调查真相
local nNpcGroup_GenId_Trap7 = 20010033
local nNpcGroup_Trap8 = 30432						--巡查线五：窃贼出现
local nNpcGroup_GenId_Trap8 = 20010034
local nNpcGroup_Trap9 = 30433						--巡查线五：捉住窃贼
local nNpcGroup_GenId_Trap9 = 20010035
local nNpcGroup_Trap10 = 30434						--巡查线五：护送女孩回到镇上
local nNpcGroup_GenId_Trap10 = 20010036
local nNpcGroup_Trap11 = 30435						--巡查线五：窃贼现身
local nNpcGroup_GenId_Trap11 = 20010032

--NPC
local nNpcGroup_BiEr = 20323				--比尔
local nNpcGroup_GenId_BiEr = 2001856

local nNpcGroup_XiaoShuLing = 20324				--小树灵
local nNpcGroup_GenId_XiaoShuLing = 2001857

local nNpcGroup_BiDuoMao = 20115				--比多猫
local nNpcGroup_GenId_BiDuoMao = 2001658

local nNpcGroup_LuoQieTe = 20325				--罗切特
local nNpcGroup_GenId_LuoQieTe = 2001858

local nNpcGroup_ZuoYi = 20140				--佐伊
local nNpcGroup_GenId_ZuoYi = 2001717

--小女孩   20428

--采集
local nNpcGroup_ShenKan = 60116				--神龛
local nNpcGroup_GenId_ShenKan = 2001859

local nNpcGroup_JiaoYin = 60215				--调查脚印
local nNpcGroup_GenId_JiaoYin = 20010037

local nNpcGroup_GongPin = 60216				--摆放贡品
local nNpcGroup_GenId_GongPin = 20010038

local nNpcGroup_DuoCang = 60217				--躲藏
local nNpcGroup_GenId_DuoCang = 20010039

local nNpcGroup_ShiWu = 60218				--采集食材
local nNpcGroup_GenId_ShiWu1 = 20010040
local nNpcGroup_GenId_ShiWu2 = 20010041
-----------------------NPCID-----------------

local nNPC_BiEr = 3290   			 --镇民比尔
local nNPC_XiaoShuLing = 3291   			 --小树灵朗多
local nNPC_LuoQieTe = 3292   			 --大厨罗切特
local nNPC_BiDuoMao = 3080   			 --比多猫
local nNPC_XiaoLuoLi = 3396   			 --农村小萝莉
local nNPC_ZuoYi = 3099  			 		--佐伊
local nNPC_ShenMiShou = 3407  			 		--供品窃贼

local nNPC_GBuli_LeiFu = 3302   			 --哥布林雷夫
local nNPC_GBuli_SiPiEr = 3303   			 --哥布林斯皮尔
local nNPC_XianQuZhe = 3304   			 --先驱者57号
local nNPC_GunShiGuai = 3305   			 --滚石怪塔基

---------------MonsterGroup----------
--金钱哥布林  任务3
local nMonsterGroup_1 = 900269
local nMonsterGroup_GenId_1 = 2001860

--金钱哥布林  任务4
local nMonsterGroup_2 = 900270
local nMonsterGroup_GenId_2 = 2001861

--先驱者1号
local nMonsterGroup_3 = 900271
local nMonsterGroup_GenId_3 = 2001862

--滚石怪
local nMonsterGroup_4 = 900273
local nMonsterGroup_GenId_4 = 2001904

--神秘兽
local nMonsterGroup_5 = 900316
local nMonsterGroup_GenId_5 = 20010031
----------------Monster-------------

local nMonster_1 = 9000163
local nMonster_2 = 9000164
local nMonster_3 = 9000165
local nMonster_4 = 9000166
local nMonster_5 = 9000231
--10053
-----------------奖励id---------------
--------奖励id------------

--任务
local nTaskAward_1 = 2000104                                 --巡查线一：神秘宝箱
local nTaskAward_2 = 2000105                                 --巡查线二：神秘宝箱
local nTaskAward_3 = 2000106                                 --巡查线三：追击偷宝贼
local nTaskAward_4 = 2000107                                 --巡查线四：追击偷宝贼
local nTaskAward_5 = 2000108                                 --巡查线五：神龛里的小树灵
local nTaskAward_6 = 2000109                                 --巡查线六：援助大厨

--宝箱
local nTaskBoxAward_1 = 5000108                                 --巡查线一：神秘宝箱
local nTaskBoxAward_2 = 5000109                                 --巡查线二：神秘宝箱

--怪物
local nTaskMonAward_1 = 6000054                                 --巡查线三：追击偷宝贼
local nTaskMonAward_2 = 6000055                                 --巡查线四：追击偷宝贼
local nTaskMonAward_3 = 6000059
local nTaskMonAward_4 = 6000060

--------NPC组----------
--陷阱
rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nNpcGroup_Trap1] or {}
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap2] = rwtNpcGroup[nNpcGroup_Trap2] or {}
rwtNpcGroup[nNpcGroup_Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap3] = rwtNpcGroup[nNpcGroup_Trap3] or {}
rwtNpcGroup[nNpcGroup_Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap4] = rwtNpcGroup[nNpcGroup_Trap4] or {}
rwtNpcGroup[nNpcGroup_Trap4]["Type"] = CONST_NPCGROUP_TYPE.Trap

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

rwtNpcGroup[nNpcGroup_Trap10] = rwtNpcGroup[nNpcGroup_Trap10] or {}
rwtNpcGroup[nNpcGroup_Trap10]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap11] = rwtNpcGroup[nNpcGroup_Trap11] or {}
rwtNpcGroup[nNpcGroup_Trap11]["Type"] = CONST_NPCGROUP_TYPE.Trap

--NPC
rwtNpcGroup[nNpcGroup_BiEr] = {}     --比尔
rwtNpcGroup[nNpcGroup_BiEr]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_BiEr]["NpcId"]= nNPC_BiEr

rwtNpc[nNPC_BiEr] = rwtNpc[nNPC_BiEr] or {}
rwtNpc[nNPC_BiEr]["DialogId"] = nDialog_Task12

rwtNpcGroup[nNpcGroup_XiaoShuLing] = {}     --小树灵
rwtNpcGroup[nNpcGroup_XiaoShuLing]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_XiaoShuLing]["NpcId"]= nNPC_XiaoShuLing

rwtNpc[nNPC_XiaoShuLing] = rwtNpc[nNPC_XiaoShuLing] or {}
rwtNpc[nNPC_XiaoShuLing]["DialogId"] = nDialog_Task12

rwtNpcGroup[nNpcGroup_LuoQieTe] = {}     --罗切特
rwtNpcGroup[nNpcGroup_LuoQieTe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_LuoQieTe]["NpcId"]= nNPC_LuoQieTe

rwtNpc[nNPC_LuoQieTe] = rwtNpc[nNPC_LuoQieTe] or {}
rwtNpc[nNPC_LuoQieTe]["DialogId"] = 11303

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

--采集物
rwtNpcGroup[nNpcGroup_ShenKan] = rwtNpcGroup[nNpcGroup_ShenKan] or {}    
rwtNpcGroup[nNpcGroup_ShenKan]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nNpcGroup_JiaoYin] = rwtNpcGroup[nNpcGroup_JiaoYin] or {}    
rwtNpcGroup[nNpcGroup_JiaoYin]["Type"] = CONST_NPCGROUP_TYPE.Collect


rwtNpcGroup[nNpcGroup_GongPin] = rwtNpcGroup[nNpcGroup_GongPin] or {}    
rwtNpcGroup[nNpcGroup_GongPin]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nNpcGroup_DuoCang] = rwtNpcGroup[nNpcGroup_DuoCang] or {}    
rwtNpcGroup[nNpcGroup_DuoCang]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nNpcGroup_ShiWu] = rwtNpcGroup[nNpcGroup_ShiWu] or {}    
rwtNpcGroup[nNpcGroup_ShiWu]["Type"] = CONST_NPCGROUP_TYPE.Collect


----******************************任务***************************----
-----------------------------------------接取巡查任务---------------------------------
--出发巡查
rwtTask[tPatrolFengChe.XunCha] = {}
rwtTask[tPatrolFengChe.XunCha]["Title"] = tLuaText[LANGUAGE_CONFIG][20831]
rwtTask[tPatrolFengChe.XunCha]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.XunCha]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tPatrolFengChe.XunCha]["ReqTrap1"] = nNpcGroup_Trap1
rwtTask[tPatrolFengChe.XunCha]["AcceptDialogId"] = nDialog_Task_XunCha
rwtTask[tPatrolFengChe.XunCha]["PatrolFirstTask"] = 1
rwtTask[tPatrolFengChe.XunCha]["PatrolAfterTask"] = {tPatrolFengChe.Task_1,tPatrolFengChe.Task_4,tPatrolFengChe.Task_7,tPatrolFengChe.Task_10,tPatrolFengChe.Task_13,tPatrolFengChe.Task_30}
rwtTask[tPatrolFengChe.XunCha]["PatrolTaskAreaId"] = 2001
rwtTask[tPatrolFengChe.XunCha]["PatrolTaskTownId"] = 200101

rwtTask[tPatrolFengChe.XunCha]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.XunCha]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.XunCha]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.XunCha]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.XunCha]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel   
rwtTask[tPatrolFengChe.XunCha]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.XunCha]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.XunCha]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.XunCha]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"


-----------------------------------------巡查线一：神秘宝箱---------------------------------
--新增巡查动画任务1
rwtTask[tPatrolFengChe.Task_1] = {}
rwtTask[tPatrolFengChe.Task_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20832]
rwtTask[tPatrolFengChe.Task_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_1]["NextTaskId" ]= tPatrolFengChe.Task_2
rwtTask[tPatrolFengChe.Task_1]["DialogId"] = 11111
rwtTask[tPatrolFengChe.Task_1]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tPatrolFengChe.Task_1]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_1]["DynaNpcGroupGen"][1]["GenId"] =nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.Task_1]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tPatrolFengChe.Task_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_1]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_1]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.Task_1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_1]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"

--开启宝箱 
rwtTask[tPatrolFengChe.Task_2] = {}
rwtTask[tPatrolFengChe.Task_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20833]
rwtTask[tPatrolFengChe.Task_2]["NextTaskId"] = tPatrolFengChe.Task_3
rwtTask[tPatrolFengChe.Task_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tPatrolFengChe.Task_2]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_2]["ReqTreasureBox" ]= nNpcGroup_Box1
rwtTask[tPatrolFengChe.Task_2]["DialogId"] = nDialog_Task1

rwtTask[tPatrolFengChe.Task_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Box1
rwtTask[tPatrolFengChe.Task_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_2]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_2]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_2]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_2]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_Box1
rwtTask[tPatrolFengChe.Task_2]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_Box1 


--回报联盟
rwtTask[tPatrolFengChe.Task_3] = {}
rwtTask[tPatrolFengChe.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20834]
rwtTask[tPatrolFengChe.Task_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_3]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_3]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_3]["DialogId"] = nDialog_Task2 
rwtTask[tPatrolFengChe.Task_3]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_3]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_3]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_3]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_3]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线二：神秘宝箱---------------------------------
--新增巡查动画任务2
rwtTask[tPatrolFengChe.Task_4] = {}
rwtTask[tPatrolFengChe.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20835]
rwtTask[tPatrolFengChe.Task_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_4]["NextTaskId" ]= tPatrolFengChe.Task_5
rwtTask[tPatrolFengChe.Task_4]["DialogId"] = 11112
rwtTask[tPatrolFengChe.Task_4]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tPatrolFengChe.Task_4]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_4]["DynaNpcGroupGen"][1]["GenId"] =nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.Task_4]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tPatrolFengChe.Task_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_4]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_4]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.Task_4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_4]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"

--开启宝箱
rwtTask[tPatrolFengChe.Task_5] = {}
rwtTask[tPatrolFengChe.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20836]
rwtTask[tPatrolFengChe.Task_5]["NextTaskId"] = tPatrolFengChe.Task_6
rwtTask[tPatrolFengChe.Task_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
rwtTask[tPatrolFengChe.Task_5]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_5]["ReqTreasureBox" ]= nNpcGroup_Box2
rwtTask[tPatrolFengChe.Task_5]["DialogId"] = nDialog_Task3

rwtTask[tPatrolFengChe.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_5]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Box2
rwtTask[tPatrolFengChe.Task_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_5]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_5]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_5]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_Box2
rwtTask[tPatrolFengChe.Task_5]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_Box2

--回报联盟
rwtTask[tPatrolFengChe.Task_6] = {}
rwtTask[tPatrolFengChe.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20837]
rwtTask[tPatrolFengChe.Task_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_6]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_6]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_6]["DialogId"] = nDialog_Task4 
rwtTask[tPatrolFengChe.Task_6]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_6]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_6]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_6]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_6]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_6]["StartAutoWay"]["FindWayGenId"] =2001658


-----------------------------------------巡查线三：追击偷宝贼---------------------------------

--新增巡查动画任务3
rwtTask[tPatrolFengChe.Task_7] = {}
rwtTask[tPatrolFengChe.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20838]
rwtTask[tPatrolFengChe.Task_7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_7]["NextTaskId" ]= tPatrolFengChe.Task_8
rwtTask[tPatrolFengChe.Task_7]["DialogId"] = 11113
rwtTask[tPatrolFengChe.Task_7]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][1]["GenId"] =nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_1
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_7]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_7]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.Task_7]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_7]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"

--追击偷宝贼
rwtTask[tPatrolFengChe.Task_8] = {}
rwtTask[tPatrolFengChe.Task_8]["Title" ]= tLuaText[LANGUAGE_CONFIG][20839]
rwtTask[tPatrolFengChe.Task_8]["NextTaskId" ]= tPatrolFengChe.Task_9
rwtTask[tPatrolFengChe.Task_8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolFengChe.Task_8]["ReqTrap1"] = nNpcGroup_Trap3

rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_1
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap3
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_8]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tPatrolFengChe.Task_8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_8]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_1
rwtTask[tPatrolFengChe.Task_8]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_1
rwtTask[tPatrolFengChe.Task_8]["DialogId"] = nDialog_Task5 
rwtTask[tPatrolFengChe.Task_8]["KillMonsterGroup1" ]= nMonsterGroup_1
rwtTask[tPatrolFengChe.Task_8]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_8]["MonsterGroupGenId"] = nMonsterGroup_GenId_1

--回报联盟
rwtTask[tPatrolFengChe.Task_9] = {}
rwtTask[tPatrolFengChe.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20840]
rwtTask[tPatrolFengChe.Task_9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_9]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_9]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_9]["DialogId"] = nDialog_Task6
rwtTask[tPatrolFengChe.Task_9]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_9]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_9]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_9]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_9]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_9]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线四：追击偷宝贼---------------------------------
--新增巡查动画任务4
rwtTask[tPatrolFengChe.Task_10] = {}
rwtTask[tPatrolFengChe.Task_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20841]
rwtTask[tPatrolFengChe.Task_10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_10]["NextTaskId" ]= tPatrolFengChe.Task_11
rwtTask[tPatrolFengChe.Task_10]["DialogId"] = 11114
rwtTask[tPatrolFengChe.Task_10]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][1]["GenId"] =nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_2
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_10]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_10]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_10]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.Task_10]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_10]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"

--追击偷宝贼
rwtTask[tPatrolFengChe.Task_11] = {}
rwtTask[tPatrolFengChe.Task_11]["Title" ]= tLuaText[LANGUAGE_CONFIG][20842]
rwtTask[tPatrolFengChe.Task_11]["NextTaskId" ]= tPatrolFengChe.Task_12
rwtTask[tPatrolFengChe.Task_11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER

rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_2
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap4
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_11]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_11]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_11]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tPatrolFengChe.Task_11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_11]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_2
rwtTask[tPatrolFengChe.Task_11]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_2
rwtTask[tPatrolFengChe.Task_11]["ReqTrap1"] = nNpcGroup_Trap4
rwtTask[tPatrolFengChe.Task_11]["KillMonsterGroup1" ]= nMonsterGroup_2
rwtTask[tPatrolFengChe.Task_11]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_11]["DialogId"] = nDialog_Task7 
rwtTask[tPatrolFengChe.Task_11]["MonsterGroupGenId"] = nMonsterGroup_GenId_2


--回报联盟
rwtTask[tPatrolFengChe.Task_12] = {}
rwtTask[tPatrolFengChe.Task_12]["Title"] = tLuaText[LANGUAGE_CONFIG][20843]
rwtTask[tPatrolFengChe.Task_12]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_12]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_12]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_12]["DialogId"] = nDialog_Task8
rwtTask[tPatrolFengChe.Task_12]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_12]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_12]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_12]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_12]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_12]["StartAutoWay"]["FindWayGenId"] =2001658

-----------------------------------------巡查线五：神龛里的小树灵---------------------------------
--新增巡查动画任务5
rwtTask[tPatrolFengChe.Task_13] = {}
rwtTask[tPatrolFengChe.Task_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20844]
rwtTask[tPatrolFengChe.Task_13]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_13]["NextTaskId" ]= tPatrolFengChe.Task_14
rwtTask[tPatrolFengChe.Task_13]["DialogId"] = 11115
rwtTask[tPatrolFengChe.Task_13]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][1]["GenId"] =nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_BiEr
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_13]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_13]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.Task_13]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_13]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"

--找到镇民比尔
rwtTask[tPatrolFengChe.Task_14] = {}
rwtTask[tPatrolFengChe.Task_14]["Title"] = tLuaText[LANGUAGE_CONFIG][20845]
rwtTask[tPatrolFengChe.Task_14]["NextTaskId"] = tPatrolFengChe.Task_15
rwtTask[tPatrolFengChe.Task_14]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_14]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_14]["DialogId"] = nDialog_Task9 
rwtTask[tPatrolFengChe.Task_14]["TaskNpc"] = nNPC_BiEr

rwtTask[tPatrolFengChe.Task_14]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_14]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_14]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_BiEr
rwtTask[tPatrolFengChe.Task_14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_14]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_14]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_14]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_14]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_BiEr
rwtTask[tPatrolFengChe.Task_14]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_BiEr

--调查神龛
rwtTask[tPatrolFengChe.Task_15] = {}
rwtTask[tPatrolFengChe.Task_15]["Title"] = tLuaText[LANGUAGE_CONFIG][20846]
rwtTask[tPatrolFengChe.Task_15]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tPatrolFengChe.Task_15]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_15]["ReqCollectId1"] = nNpcGroup_ShenKan
rwtTask[tPatrolFengChe.Task_15]["DialogId"] = nDialog_Task10

rwtTask[tPatrolFengChe.Task_15]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_15]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_15]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_ShenKan
rwtTask[tPatrolFengChe.Task_15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_15]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_15]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_15]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_15]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShenKan
rwtTask[tPatrolFengChe.Task_15]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_ShenKan
rwtTask[tPatrolFengChe.Task_15]["OptionTask1"] = tPatrolFengChe.Task_16  --选项1任务
rwtTask[tPatrolFengChe.Task_15]["OptionTask2"] = tPatrolFengChe.Task_20  --选项2任务
  
--沿着脚印调查真相
rwtTask[tPatrolFengChe.Task_16] = {}
rwtTask[tPatrolFengChe.Task_16]["Title"] = tLuaText[LANGUAGE_CONFIG][21050]
rwtTask[tPatrolFengChe.Task_16]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_16]["NextTaskId"]= tPatrolFengChe.Task_17
rwtTask[tPatrolFengChe.Task_16]["DialogId"] = nDialog_Task17
rwtTask[tPatrolFengChe.Task_16]["ReqTrap1"]= nNpcGroup_Trap7
rwtTask[tPatrolFengChe.Task_16]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_16]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_16]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap7
rwtTask[tPatrolFengChe.Task_16]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_16]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_16]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_16]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap7
rwtTask[tPatrolFengChe.Task_16]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap7

--辨认地上的脚印
rwtTask[tPatrolFengChe.Task_17] = {}
rwtTask[tPatrolFengChe.Task_17]["Title"] = tLuaText[LANGUAGE_CONFIG][21051]
rwtTask[tPatrolFengChe.Task_17]["NextTaskId"] = tPatrolFengChe.Task_18
rwtTask[tPatrolFengChe.Task_17]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrolFengChe.Task_17]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_17]["ReqCollectId1"] = nNpcGroup_JiaoYin
rwtTask[tPatrolFengChe.Task_17]["DialogId"] = nDialog_Task18

rwtTask[tPatrolFengChe.Task_17]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_17]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_17]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_JiaoYin
rwtTask[tPatrolFengChe.Task_17]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_17]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_17]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_17]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_17]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_JiaoYin
rwtTask[tPatrolFengChe.Task_17]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_JiaoYin

--寻找失踪米糕
rwtTask[tPatrolFengChe.Task_18] = {}
rwtTask[tPatrolFengChe.Task_18]["Title" ]= tLuaText[LANGUAGE_CONFIG][20847]
rwtTask[tPatrolFengChe.Task_18]["NextTaskId" ]= tPatrolFengChe.Task_19
rwtTask[tPatrolFengChe.Task_18]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolFengChe.Task_18]["ReqTrap1"] = nNpcGroup_Trap5
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_XiaoShuLing
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap5
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_18]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_18]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_18]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_18]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_XiaoShuLing
rwtTask[tPatrolFengChe.Task_18]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_XiaoShuLing
rwtTask[tPatrolFengChe.Task_18]["DialogId"] = nDialog_Task11
rwtTask[tPatrolFengChe.Task_18]["KillMonsterGroup1" ]= nMonsterGroup_3
rwtTask[tPatrolFengChe.Task_18]["TaskNpc"] = nNPC_XiaoShuLing
rwtTask[tPatrolFengChe.Task_18]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_18]["MonsterGroupGenId"] = nMonsterGroup_GenId_3


--回报联盟
rwtTask[tPatrolFengChe.Task_19] = {}
rwtTask[tPatrolFengChe.Task_19]["Title"] = tLuaText[LANGUAGE_CONFIG][20848]
rwtTask[tPatrolFengChe.Task_19]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_19]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_19]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_19]["DialogId"] = nDialog_Task12 
rwtTask[tPatrolFengChe.Task_19]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_19]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_19]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_19]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_19]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_19]["StartAutoWay"]["FindWayGenId"] =2001658
--选项2
--找镇民拿点贡品
rwtTask[tPatrolFengChe.Task_20] = {}
rwtTask[tPatrolFengChe.Task_20]["Title"] = tLuaText[LANGUAGE_CONFIG][21052]
rwtTask[tPatrolFengChe.Task_20]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_20]["NextTaskId" ]= tPatrolFengChe.Task_21
rwtTask[tPatrolFengChe.Task_20]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_20]["DialogId"] = nDialog_Task19 
rwtTask[tPatrolFengChe.Task_20]["TaskNpc"] = nNPC_ZuoYi
rwtTask[tPatrolFengChe.Task_20]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_20]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_20]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_20]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ZuoYi
rwtTask[tPatrolFengChe.Task_20]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_ZuoYi

--将贡品摆放在神龛
rwtTask[tPatrolFengChe.Task_21] = {}
rwtTask[tPatrolFengChe.Task_21]["Title"] = tLuaText[LANGUAGE_CONFIG][21053]
rwtTask[tPatrolFengChe.Task_21]["NextTaskId"] = tPatrolFengChe.Task_22
rwtTask[tPatrolFengChe.Task_21]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tPatrolFengChe.Task_21]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_21]["ReqCollectId1"] = nNpcGroup_GongPin

rwtTask[tPatrolFengChe.Task_21]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_21]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_21]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_GongPin
rwtTask[tPatrolFengChe.Task_21]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_21]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_21]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_21]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_21]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GongPin
rwtTask[tPatrolFengChe.Task_21]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_GongPin

--躲在附近守株待兔
rwtTask[tPatrolFengChe.Task_22] = {}
rwtTask[tPatrolFengChe.Task_22]["Title"] = tLuaText[LANGUAGE_CONFIG][21054]
rwtTask[tPatrolFengChe.Task_22]["NextTaskId"] = tPatrolFengChe.Task_23
rwtTask[tPatrolFengChe.Task_22]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrolFengChe.Task_22]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_22]["ReqCollectId1"] = nNpcGroup_DuoCang
rwtTask[tPatrolFengChe.Task_22]["DialogId"] = nDialog_Task21
rwtTask[tPatrolFengChe.Task_22]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_22]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_22]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_DuoCang
rwtTask[tPatrolFengChe.Task_22]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_22]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_22]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_22]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_22]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_DuoCang
rwtTask[tPatrolFengChe.Task_22]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_DuoCang


--窃贼出现
rwtTask[tPatrolFengChe.Task_23] = {}
rwtTask[tPatrolFengChe.Task_23]["Title"] = tLuaText[LANGUAGE_CONFIG][21055]
rwtTask[tPatrolFengChe.Task_23]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tPatrolFengChe.Task_23]["DialogId"] = nDialog_Task22
rwtTask[tPatrolFengChe.Task_23]["ReqTrap1" ]= nNpcGroup_Trap8
rwtTask[tPatrolFengChe.Task_23]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_23]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_23]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap8
rwtTask[tPatrolFengChe.Task_23]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_23]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_23]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_23]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap8
rwtTask[tPatrolFengChe.Task_23]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap8
rwtTask[tPatrolFengChe.Task_23]["OptionTask1"] = tPatrolFengChe.Task_24  --选项1任务
rwtTask[tPatrolFengChe.Task_23]["OptionTask2"] = tPatrolFengChe.Task_27  --选项2任务


--选项1
rwtTask[tPatrolFengChe.Task_24] = {}
rwtTask[tPatrolFengChe.Task_24]["Title"] = tLuaText[LANGUAGE_CONFIG][21056]
rwtTask[tPatrolFengChe.Task_24]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_24]["NextTaskId" ]= tPatrolFengChe.Task_25
rwtTask[tPatrolFengChe.Task_24]["DialogId"] = nDialog_Task23
rwtTask[tPatrolFengChe.Task_24]["ReqTrap1" ]= nNpcGroup_Trap9
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap9
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][2]["GenId"] = 20010058
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_24]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_24]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_24]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_24]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_24]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap9
rwtTask[tPatrolFengChe.Task_24]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap9

rwtTask[tPatrolFengChe.Task_25] = {}
rwtTask[tPatrolFengChe.Task_25]["Title"] = tLuaText[LANGUAGE_CONFIG][21057]
rwtTask[tPatrolFengChe.Task_25]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_25]["NextTaskId" ]= tPatrolFengChe.Task_26
rwtTask[tPatrolFengChe.Task_25]["AutoTaskDialog"] = nDialog_Task24
rwtTask[tPatrolFengChe.Task_25]["DialogId"] = nDialog_Task24_1
rwtTask[tPatrolFengChe.Task_25]["ReqTrap1" ]= nNpcGroup_Trap10
rwtTask[tPatrolFengChe.Task_25]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_25]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_25]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap10
rwtTask[tPatrolFengChe.Task_25]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_25]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_25]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_25]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap10
rwtTask[tPatrolFengChe.Task_25]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap10

rwtTask[tPatrolFengChe.Task_26] = {}
rwtTask[tPatrolFengChe.Task_26]["Title"] = tLuaText[LANGUAGE_CONFIG][21058]
rwtTask[tPatrolFengChe.Task_26]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_26]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_26]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_26]["DialogId"] = nDialog_Task25 
rwtTask[tPatrolFengChe.Task_26]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_26]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_26]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_26]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_26]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_26]["StartAutoWay"]["FindWayGenId"] =2001658

--选项2
rwtTask[tPatrolFengChe.Task_27] = {}
rwtTask[tPatrolFengChe.Task_27]["Title"]= tLuaText[LANGUAGE_CONFIG][21059]
rwtTask[tPatrolFengChe.Task_27]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tPatrolFengChe.Task_27]["NextTaskId" ]= tPatrolFengChe.Task_28
rwtTask[tPatrolFengChe.Task_27]["AutoTaskDialog" ]= nDialog_Task26
rwtTask[tPatrolFengChe.Task_27]["DialogId" ]= nDialog_Task26

--窃贼现身
rwtTask[tPatrolFengChe.Task_28] = {}
rwtTask[tPatrolFengChe.Task_28]["Title" ]= tLuaText[LANGUAGE_CONFIG][21060]
rwtTask[tPatrolFengChe.Task_28]["NextTaskId" ]= tPatrolFengChe.Task_29
rwtTask[tPatrolFengChe.Task_28]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolFengChe.Task_28]["ReqTrap1"] = nNpcGroup_Trap11
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_5
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap11
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_28]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_28]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_28]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_28]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap11
rwtTask[tPatrolFengChe.Task_28]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap11
rwtTask[tPatrolFengChe.Task_28]["DialogId"] = nDialog_Task27
rwtTask[tPatrolFengChe.Task_28]["KillMonsterGroup1" ]= nMonsterGroup_5
rwtTask[tPatrolFengChe.Task_28]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_28]["MonsterGroupGenId"] = nMonsterGroup_GenId_5


rwtTask[tPatrolFengChe.Task_29] = {}
rwtTask[tPatrolFengChe.Task_29]["Title"] = tLuaText[LANGUAGE_CONFIG][21061]
rwtTask[tPatrolFengChe.Task_29]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_29]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_29]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_29]["DialogId"] = nDialog_Task28 
rwtTask[tPatrolFengChe.Task_29]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_29]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_29]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_29]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_29]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_29]["StartAutoWay"]["FindWayGenId"] =2001658


-----------------------------------------巡查线六：援助大厨---------------------------------
--新增巡查动画任务6
rwtTask[tPatrolFengChe.Task_30] = {}
rwtTask[tPatrolFengChe.Task_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20849]
rwtTask[tPatrolFengChe.Task_30]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolFengChe.Task_30]["NextTaskId" ]= tPatrolFengChe.Task_31
rwtTask[tPatrolFengChe.Task_30]["DialogId"] = 11116
rwtTask[tPatrolFengChe.Task_30]["ReqTrap1" ]= nNpcGroup_Trap1
rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][1]["GenId"] =nNpcGroup_GenId_Trap1
rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][1]["MapId"] =2001
rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][2] = {}
--rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_LuoQieTe
--rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tPatrolFengChe.Task_30]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_30]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_30]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tPatrolFengChe.Task_30]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_30]["StartAutoWay"]["FindWayPos"] = "-24.27,0.10,-29.43"

--拯救罗切特
rwtTask[tPatrolFengChe.Task_31] = {}
rwtTask[tPatrolFengChe.Task_31]["Title" ]= tLuaText[LANGUAGE_CONFIG][20850]
rwtTask[tPatrolFengChe.Task_31]["NextTaskId" ]= tPatrolFengChe.Task_32
rwtTask[tPatrolFengChe.Task_31]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolFengChe.Task_31]["ReqTrap1"] = nNpcGroup_Trap6

rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_LuoQieTe
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap6
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_31]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolFengChe.Task_31]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_31]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tPatrolFengChe.Task_31]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tPatrolFengChe.Task_31]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_LuoQieTe
rwtTask[tPatrolFengChe.Task_31]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_LuoQieTe

rwtTask[tPatrolFengChe.Task_31]["DialogId"] = nDialog_Task13
rwtTask[tPatrolFengChe.Task_31]["KillMonsterGroup1" ]= nMonsterGroup_4
rwtTask[tPatrolFengChe.Task_31]["TaskNpc"] = nNPC_LuoQieTe
rwtTask[tPatrolFengChe.Task_31]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_31]["MonsterGroupGenId"] = nMonsterGroup_GenId_4

--询问情况
rwtTask[tPatrolFengChe.Task_32] = {}
rwtTask[tPatrolFengChe.Task_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20851]
rwtTask[tPatrolFengChe.Task_32]["NextTaskId"] = tPatrolFengChe.Task_33
rwtTask[tPatrolFengChe.Task_32]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_32]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_32]["DialogId"] = nDialog_Task14
rwtTask[tPatrolFengChe.Task_32]["TaskNpc"] = nNPC_LuoQieTe

rwtTask[tPatrolFengChe.Task_32]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_32]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_32]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_LuoQieTe
rwtTask[tPatrolFengChe.Task_32]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_32]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_32]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_32]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_32]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_LuoQieTe
rwtTask[tPatrolFengChe.Task_32]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_LuoQieTe

--护送罗切特
rwtTask[tPatrolFengChe.Task_33] = {}
rwtTask[tPatrolFengChe.Task_33]["Title"] = tLuaText[LANGUAGE_CONFIG][20852]
rwtTask[tPatrolFengChe.Task_33]["NextTaskId"] = tPatrolFengChe.Task_34
rwtTask[tPatrolFengChe.Task_33]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tPatrolFengChe.Task_33]["ReqTrap1"] = nNpcGroup_Trap2
rwtTask[tPatrolFengChe.Task_33]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_33]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_33]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_33]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap2
rwtTask[tPatrolFengChe.Task_33]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_33]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_33]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_33]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_33]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_33]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_Trap2
rwtTask[tPatrolFengChe.Task_33]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_Trap2


--采集食材（0/2）
rwtTask[tPatrolFengChe.Task_34] = {}
rwtTask[tPatrolFengChe.Task_34]["Title"] = tLuaText[LANGUAGE_CONFIG][21062]
rwtTask[tPatrolFengChe.Task_34]["NextTaskId"] = tPatrolFengChe.Task_35
rwtTask[tPatrolFengChe.Task_34]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tPatrolFengChe.Task_34]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_34]["ReqCollectId1"] = nNpcGroup_ShiWu
rwtTask[tPatrolFengChe.Task_34]["ReqCollectCount1"] = 2
rwtTask[tPatrolFengChe.Task_34]["ReqCollectOnceNum"] = 1
rwtTask[tPatrolFengChe.Task_34]["AutoTaskDialog"] = nDialog_Task29
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_ShiWu1
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][2]["GenId"] = 20010057
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][3] = {}
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][3]["GenId"] = nNpcGroup_GenId_ShiWu2
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_34]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tPatrolFengChe.Task_34]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_34]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_34]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_34]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShiWu
rwtTask[tPatrolFengChe.Task_34]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_ShiWu1

rwtTask[tPatrolFengChe.Task_35] = {}
rwtTask[tPatrolFengChe.Task_35]["Title"] = tLuaText[LANGUAGE_CONFIG][21063]
rwtTask[tPatrolFengChe.Task_35]["NextTaskId"] = tPatrolFengChe.Task_36
rwtTask[tPatrolFengChe.Task_35]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_35]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_35]["DialogId"] = nDialog_Task30
rwtTask[tPatrolFengChe.Task_35]["TaskNpc"] = nNPC_LuoQieTe

rwtTask[tPatrolFengChe.Task_35]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolFengChe.Task_35]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolFengChe.Task_35]["DynaNpcGroupGen"][1]["GenId"] = 20010057
rwtTask[tPatrolFengChe.Task_35]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tPatrolFengChe.Task_35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tPatrolFengChe.Task_35]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_35]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_35]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tPatrolFengChe.Task_35]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_LuoQieTe
rwtTask[tPatrolFengChe.Task_35]["StartAutoWay"]["FindWayGenId"] =20010057

--回报联盟
rwtTask[tPatrolFengChe.Task_36] = {}
rwtTask[tPatrolFengChe.Task_36]["Title"] = tLuaText[LANGUAGE_CONFIG][20853]
rwtTask[tPatrolFengChe.Task_36]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolFengChe.Task_36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolFengChe.Task_36]["IsClickComplete"] = 0
rwtTask[tPatrolFengChe.Task_36]["PatrolLastTask"] = 1
rwtTask[tPatrolFengChe.Task_36]["DialogId"] = nDialog_Task16
rwtTask[tPatrolFengChe.Task_36]["TaskNpc"] = nNPC_BiDuoMao
rwtTask[tPatrolFengChe.Task_36]["StartAutoWay"] = {}
rwtTask[tPatrolFengChe.Task_36]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tPatrolFengChe.Task_36]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tPatrolFengChe.Task_36]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[tPatrolFengChe.Task_36]["StartAutoWay"]["FindWayGenId"] =2001658



