--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--湖畔镇巡查任务
--HYQ
----***************************数据定义***************************
--巡查奖励配置：
--普通宝箱
local nNormal_Box_AwardId = 2000152

--任务	50066	50080
--新增支线任务  50190  50207 
local nHuPanZhenXunChaTask1 = 50066    --出发巡查
local nHuPanZhenXunChaTask2 = 50067    --开箱1
local nHuPanZhenXunChaTask3 = 50068    --回报联盟1
local nHuPanZhenXunChaTask4 = 50069    --开箱2
local nHuPanZhenXunChaTask5 = 50070    --回报联盟2
local nHuPanZhenXunChaTask6 = 50071    --开箱3
local nHuPanZhenXunChaTask7 = 50072    --回报联盟3
local nHuPanZhenXunChaTask8 = 50073    --查看探测器的信息 (6.25新增)
--新增支线任务1-------Start
local nHuPanZhenXunChaTask8_1 = 50190    --和吟游诗人了解情况
local nHuPanZhenXunChaTask8_2 = 50191    --去储物室寻找鱼网
local nHuPanZhenXunChaTask8_3 = 50192    --向湖中撒出鱼网
--新增支线任务1-------End
local nHuPanZhenXunChaTask9 = 50074    --湖边调查(战胜鱼妖)
local nHuPanZhenXunChaTask10 = 50075    --（6.25新增）封印本命
--local nHuPanZhenXunChaTask10 = 50075    --回复捷报 （6.25替换）
local nHuPanZhenXunChaTask11 = 50076    --回报联盟4
local nHuPanZhenXunChaTask12 = 50077    --镇民的愿望
--新增支线任务2-------Start
local nHuPanZhenXunChaTask12_1_1 = 50193    --和矮人小贩对话
local nHuPanZhenXunChaTask12_1_2 = 50194    --采集鹿茸（0/1）
local nHuPanZhenXunChaTask12_1_3 = 50195    --回复矮人小贩
local nHuPanZhenXunChaTask12_1_4 = 50196    --前往货篮子青湖贝（0/1）

local nHuPanZhenXunChaTask12_1_5 = 50197    --将货物打包装车
local nHuPanZhenXunChaTask12_1_6 = 50198    --运送货物
local nHuPanZhenXunChaTask12_1_7 = 50199    --回复矮人小贩
local nHuPanZhenXunChaTask12_1_8 = 50200    --前往货篮子青湖贝（0/1）
--新增支线任务2-------End
local nHuPanZhenXunChaTask12_2_1 = 50078    --捡拾贝壳 (采集青湖贝（0/1）)
--新增支线任务3-------Start
local nHuPanZhenXunChaTask12_2_2 = 50201    --抢回青湖贝
local nHuPanZhenXunChaTask12_2_3 = 50202    --和狐克斯对话
local nHuPanZhenXunChaTask12_2_4 = 50203    --送给狐克斯回复镇民
--新增支线任务3-------End
local nHuPanZhenXunChaTask14 = 50079    --不送给狐克斯回复镇民 带回贝壳
local nHuPanZhenXunChaTask15 = 50080    --回报联盟5



--新增巡查场景动画任务
local nHuPanZhenXunChaTask1_1 = 50165    
local nHuPanZhenXunChaTask1_2 = 50166  
local nHuPanZhenXunChaTask1_3 = 50167  
local nHuPanZhenXunChaTask1_4 = 50168  
local nHuPanZhenXunChaTask1_5 = 50169  
--对白
	--巡查任务-湖畔镇	10820	10835
local nDialog_1 = 10820  --那个闪闪发光的东西是什么？
local nDialog_2 = 10821  --巡查任务的意外收获！
local nDialog_3 = 10822  --看起来这是一次开心的巡查，
local nDialog_4 = 10823  --巡查员的工作就是帮助解决镇上的困难。
local nDialog_5 = 10824  --不不不……<br>这一定不是真的……一定不是真的……,,,
local nDialog_6 = 10825  --探测到有附近有异常能量反应，本命出现的概率为93%。
local nDialog_7 = 10826  --找到你了！ 该死，是谁把我抓上来了？！
local nDialog_8 = 10827  --封印成功了！
local nDialog_9 = 10828  --做得不错！真正的勇者就是需要不断地历练。<br>年轻人，快领取你的任务奖励吧！,,
local nDialog_10 = 10829 --要是今天再不去，就真的要忍受不了了！！！,,,
local nDialog_11 = 10830 --我是联盟巡查员，请问，有什么需要帮助的吗？,,,
local nDialog_12 = 10831 --这是你要的青湖贝，这下你可以吃到美味啦！,,,
local nDialog_13 = 10832 --这次的巡查地点是湖畔镇，,,,

--对白补充   11171  11190 
local nDialog_14 =  11171    --你看起来很慌张，发生了什么事情？
local nDialog_15 =  11172 --拿到渔网了，<br>现在我们可以回去把鱼妖捞出来了！（找渔网）
local nDialog_16 =  11173 -- 一只狐克斯迅速地抢走了青湖贝。
local nDialog_17 =  11174 --快把青湖贝还给我！
local nDialog_18 =  11175 --现在知道我的厉害了吧。  镇民最近加强了警卫，害得我不敢出来找东西吃……<br>我已经好几天没吃饭了……我饿……
local nDialog_19 =  11176  --这……我真是没脸见人了……<br>人族竟然饶恕了我的恶行，我再也不会这样了。
local nDialog_20 =  11177 --大叔，我找到了青湖贝，可我把它送给了饥饿的狐克斯。你等着，我再去帮你找找看！
local nDialog_21 =  11178 --请问可以给我点青湖贝吗？<br>呃……可是我身上没带钱……
local nDialog_22 =  11179 --嗯，不错，新鲜的鹿茸。<br>青湖贝就在后面，你自己去拿吧，多拿几个也没关系！
local nDialog_23 =  11180 --货物要送往罗兰镇，<br>不过在此之前，要到后面先把货物打包整齐。
local nDialog_24 =  11181 --我劝你最好把东西交过来，否则你别想从这里过去！
local nDialog_25 =  11182 --俺很谢谢你，俺要为你高歌一曲。
local nDialog_26 =  11183 --货物已经送到，怎么样，是不是很快！ 今天的青湖贝不多了，剩下的都送给你吧！<br>你去后面自己拿吧！

-----
--genid  2001863	2001872
--永久NPC
local nNpc_BiDuoMao = 3080      --比多猫
local nNpcGroupId_BiDuoMao = 20115   --比多猫

local nNpc_HaiLi = 3036 -- 海莉大妈
local nNpcGroupId_HaiLi = 20047   --海莉大妈

local nNpc_ZhenMin = 3037   -- 镇民
local nNpcGroupId_ZhenMin = 20048   --镇民

local nNpc_XiaoFan = 3357   -- 小贩
local nNpcGroupId_XiaoFan  = 20382   --小贩
local nNpcGroupGenId_XiaoFan  = 1000112   --小贩

local nNpc_BanShiYuan = 3052   -- 联盟办事员
local nNpcGroupId_BanShiYuan  = 20066   --联盟办事员
local nNpcGroupGenId_BanShiYuan  = 2001441   --联盟办事员

--临时npc
local nNpc_TanCeCi = 3801   -- 探测器
local nNpcGroupId_TanCeCi  =   20926    --探测器
local nNpcGroupGenId_TanCeCi  = 20010250   --探测器

rwtNpc[nNpc_TanCeCi] = rwtNpc[nNpc_TanCeCi] or {}
rwtNpcGroup[nNpcGroupId_TanCeCi] = rwtNpcGroup[nNpcGroupId_TanCeCi] or {}    --杰基
rwtNpcGroup[nNpcGroupId_TanCeCi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroupId_TanCeCi]["NpcId"]= nNpc_TanCeCi

--宝箱	40075	40077
local nTreasureBox_1 = 40075
local nTreasureBox_2 = 40076
local nTreasureBox_3 = 40077
local nNpcGroup_GenId_nTreasureBox_1 = 2001863
local nNpcGroup_GenId_nTreasureBox_2 = 2001864
local nNpcGroup_GenId_nTreasureBox_3 = 2001865
rwtNpcGroup[nTreasureBox_1] = rwtNpcGroup[nTreasureBox_1] or {} 
rwtNpcGroup[nTreasureBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasureBox_1]["Dialog"] = nDialog_2
rwtNpcGroup[nTreasureBox_1]["Awards"] = {}
--rwtNpcGroup[nTreasureBox_1]["Awards"]["AwardId"] = nNormal_Box_AwardId  --5000218
--rwtNpcGroup[nTreasureBox_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBox_1
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

rwtNpcGroup[nTreasureBox_2] = rwtNpcGroup[nTreasureBox_2] or {} 
rwtNpcGroup[nTreasureBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasureBox_2]["Dialog"] = nDialog_2
rwtNpcGroup[nTreasureBox_2]["Awards"] = {}
--rwtNpcGroup[nTreasureBox_2]["Awards"]["AwardId"] = nNormal_Box_AwardId  --5000219
--rwtNpcGroup[nTreasureBox_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBox_2
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

rwtNpcGroup[nTreasureBox_3] = rwtNpcGroup[nTreasureBox_3] or {} 
rwtNpcGroup[nTreasureBox_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[nTreasureBox_3]["Dialog"] = nDialog_2
rwtNpcGroup[nTreasureBox_3]["Awards"] = {}
--rwtNpcGroup[nTreasureBox_3]["Awards"]["AwardId"] = nNormal_Box_AwardId  --5000220
--rwtNpcGroup[nTreasureBox_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"] = {}
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTreasureBox_3
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nNormal_Box_AwardId  

--采集物	60114	+ 60195 60197    Gen 2001970 2001979
--贝壳
local nCollect_BeiKe = 60114
local nCollect_GenId_BeiKe = 2001866

rwtNpcGroup[nCollect_BeiKe] = rwtNpcGroup[nCollect_BeiKe] or {}    
rwtNpcGroup[nCollect_BeiKe]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--撒网
local nCollect_SaWang = 60195
local nCollect_GenId_SaWang = 2001970

rwtNpcGroup[nCollect_SaWang] = rwtNpcGroup[nCollect_SaWang] or {}    
rwtNpcGroup[nCollect_SaWang]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--(6.25新增)半鱼人采集物 封印本命
local nCollect_BenMing = 60441
local nCollect_GenId_BenMing = 20010249
--GenId 20010249  20010250 
rwtNpcGroup[nCollect_BenMing] = rwtNpcGroup[nCollect_BenMing] or {}    
rwtNpcGroup[nCollect_BenMing]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[nCollect_BenMing]["Awards"] = {}
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"] = {}
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"] = {}
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"][1] = {}
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"][1]["EffectId"] = 2063
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"][1]["Pos"] = "32.65,0.10,-25.69"
rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"][1]["Angle"] = 0
--rwtNpcGroup[nCollect_BenMing]["Awards"]["Events"][1]["AddEffect"]["Scale"] = {}




--货蓝
local nCollect_HuoLan = 60196
local nCollect_GenId_HuoLan  = 2001971

rwtNpcGroup[nCollect_HuoLan] = rwtNpcGroup[nCollect_HuoLan] or {}    
rwtNpcGroup[nCollect_HuoLan]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--装货
local nCollect_ZhuangHuo = 60197
local nCollect_GenId_ZhuangHuo  = 2001972

rwtNpcGroup[nCollect_ZhuangHuo] = rwtNpcGroup[nCollect_ZhuangHuo] or {}    
rwtNpcGroup[nCollect_ZhuangHuo]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--怪物 半鱼人 	9000160	   900272
local nMonster_Yu =   9000160 --半鱼人
local nMonsterGroup_Yu = 900272
local nMonster_GenId_Yu = 2001867

--怪物    9000221  9000223 
--怪物组   900304  900306 
--怪物 狐克斯	触发范围需要为0
local nMonster_Hu =   9000221
local nMonsterGroup_Hu = 900304
local nMonster_GenId_Hu = 2001973

--怪物 鹿角兽	触发范围需要为0
local nMonster_Lu =   9000222
local nMonsterGroup_Lu = 900305
local nMonster_GenId_Lu = 2001974

--怪物 湖畔镇强盗	触发范围需要为0
local nMonster_QiangDao =   9000223
local nMonsterGroup_QiangDao = 900306
local nMonster_GenId_QiangDao = 2001975

--地图
local nMapId = 2001
local nMapZhuChengId = 1000

local ZaWuWu_Wai       = "-7.79,0.05,-15.66"   --杂物屋外

--怪物掉落奖励
local nTaskMonAward_1 = 6000056
--陷阱	30335	30336 + 30415 30419
local nTrap_1 = 30335    --触发场景动画巡查陷阱
local nTrap_2 = 30336    --触发与鱼妖战斗陷阱
local nTrap_3 = 30415    --触发与狐克斯战斗陷阱
local nTrap_4 = 30416    --触发打鹿角怪陷阱
local nTrap_5 = 30417    --触发打强盗陷阱
local nTrap_GenId_1 = 2001868
local nTrap_GenId_2 = 2001869
local nTrap_GenId_3 = 2001976      --狐克斯怪身边陷阱
local nTrap_GenId_4 = 2001977      --触发打鹿角怪陷阱
local nTrap_GenId_5 = 2001978      --触发打强盗陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {} 
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {} 
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {} 
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {} 
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {} 
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_5]["EscortMonsterGroupGen"] = nMonster_GenId_QiangDao
rwtNpcGroup[nTrap_5]["EscortDialog"] = nDialog_24

rwtDialog[nDialog_24] = rwtDialog[nDialog_24] or {}
rwtDialog[nDialog_24]["DialogEndInit"] = {}
rwtDialog[nDialog_24]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_24]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_24]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[nDialog_24]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true

rwtTask[nHuPanZhenXunChaTask1] = {}
rwtTask[nHuPanZhenXunChaTask1]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[nHuPanZhenXunChaTask1]["AcceptDialogId"] = nDialog_13
rwtTask[nHuPanZhenXunChaTask1]["ReqTrap1" ]= nTrap_1
rwtTask[nHuPanZhenXunChaTask1]["PatrolFirstTask"] = 1
--rwtTask[nHuPanZhenXunChaTask1]["PatrolAfterTask"] ={nHuPanZhenXunChaTask1_4}
rwtTask[nHuPanZhenXunChaTask1]["PatrolAfterTask"] ={nHuPanZhenXunChaTask1_1,nHuPanZhenXunChaTask1_2,nHuPanZhenXunChaTask1_3,nHuPanZhenXunChaTask1_4,nHuPanZhenXunChaTask1_5}
rwtTask[nHuPanZhenXunChaTask1]["PatrolTaskAreaId"] = 2001
rwtTask[nHuPanZhenXunChaTask1]["PatrolTaskTownId"] = 200101
rwtTask[nHuPanZhenXunChaTask1]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask1]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[nHuPanZhenXunChaTask1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[nHuPanZhenXunChaTask1]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask1]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[nHuPanZhenXunChaTask1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask1]["StartAutoWay"]["FindWayPos"] = "12.46,0.10,15.54"

--新增 场景动画1
rwtTask[nHuPanZhenXunChaTask1_1] = {}
rwtTask[nHuPanZhenXunChaTask1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nHuPanZhenXunChaTask1_1]["NextTaskId" ]= nHuPanZhenXunChaTask2
rwtTask[nHuPanZhenXunChaTask1_1]["DialogId"] = 11117
rwtTask[nHuPanZhenXunChaTask1_1]["ReqTrap1" ]= nTrap_1
rwtTask[nHuPanZhenXunChaTask1_1]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask1_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[nHuPanZhenXunChaTask1_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nHuPanZhenXunChaTask1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask1_1]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask1_1]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[nHuPanZhenXunChaTask1_1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask1_1]["StartAutoWay"]["FindWayPos"] = "12.46,0.10,15.54"

rwtTask[nHuPanZhenXunChaTask2] = {}
rwtTask[nHuPanZhenXunChaTask2]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
--rwtTask[nHuPanZhenXunChaTask2]["PatrolCg"] = 2104
rwtTask[nHuPanZhenXunChaTask2]["DialogId"] = nDialog_2
rwtTask[nHuPanZhenXunChaTask2]["ReqTreasureBox" ]= nTreasureBox_1
rwtTask[nHuPanZhenXunChaTask2]["NextTaskId" ]= nHuPanZhenXunChaTask3
rwtTask[nHuPanZhenXunChaTask2]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask2]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_nTreasureBox_1
rwtTask[nHuPanZhenXunChaTask2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask2]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask2]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask2]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask2]["StartAutoWay"]["FindWayGroupId"] =nTreasureBox_1
rwtTask[nHuPanZhenXunChaTask2]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_nTreasureBox_1
rwtTask[nHuPanZhenXunChaTask2]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask3] = {}
rwtTask[nHuPanZhenXunChaTask3]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask3]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[nHuPanZhenXunChaTask3]["DialogId"] = nDialog_3
rwtTask[nHuPanZhenXunChaTask3]["PatrolLastTask"] = 1
rwtTask[nHuPanZhenXunChaTask3]["IsClickComplete"] = 0
rwtTask[nHuPanZhenXunChaTask3]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask3]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[nHuPanZhenXunChaTask3]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[nHuPanZhenXunChaTask3]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[nHuPanZhenXunChaTask3]["AwardId"] = 1000071

--新增 场景动画2
rwtTask[nHuPanZhenXunChaTask1_2] = {}
rwtTask[nHuPanZhenXunChaTask1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nHuPanZhenXunChaTask1_2]["NextTaskId" ]= nHuPanZhenXunChaTask4
rwtTask[nHuPanZhenXunChaTask1_2]["DialogId"] = 11118
rwtTask[nHuPanZhenXunChaTask1_2]["ReqTrap1" ]= nTrap_1
rwtTask[nHuPanZhenXunChaTask1_2]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask1_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[nHuPanZhenXunChaTask1_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nHuPanZhenXunChaTask1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask1_2]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask1_2]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[nHuPanZhenXunChaTask1_2]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask1_2]["StartAutoWay"]["FindWayPos"] = "12.46,0.10,15.54"

rwtTask[nHuPanZhenXunChaTask4] = {}
rwtTask[nHuPanZhenXunChaTask4]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
--rwtTask[nHuPanZhenXunChaTask4]["PatrolCg"] = 2105
rwtTask[nHuPanZhenXunChaTask4]["DialogId"] = nDialog_2
rwtTask[nHuPanZhenXunChaTask4]["ReqTreasureBox" ]= nTreasureBox_2
rwtTask[nHuPanZhenXunChaTask4]["NextTaskId" ]= nHuPanZhenXunChaTask5
rwtTask[nHuPanZhenXunChaTask4]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask4]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask4]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_nTreasureBox_2
rwtTask[nHuPanZhenXunChaTask4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask4]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask4]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask4]["StartAutoWay"]["FindWayGroupId"] =nTreasureBox_2
rwtTask[nHuPanZhenXunChaTask4]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_nTreasureBox_2
rwtTask[nHuPanZhenXunChaTask4]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask5] = {}
rwtTask[nHuPanZhenXunChaTask5]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask5]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[nHuPanZhenXunChaTask5]["DialogId"] = nDialog_3
rwtTask[nHuPanZhenXunChaTask5]["PatrolLastTask"] = 1
rwtTask[nHuPanZhenXunChaTask5]["IsClickComplete"] = 0
rwtTask[nHuPanZhenXunChaTask5]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask5]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[nHuPanZhenXunChaTask5]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[nHuPanZhenXunChaTask5]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[nHuPanZhenXunChaTask5]["AwardId"] = 2000137

--新增 场景动画3
rwtTask[nHuPanZhenXunChaTask1_3] = {}
rwtTask[nHuPanZhenXunChaTask1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nHuPanZhenXunChaTask1_3]["NextTaskId" ]= nHuPanZhenXunChaTask6
rwtTask[nHuPanZhenXunChaTask1_3]["DialogId"] = 11119
rwtTask[nHuPanZhenXunChaTask1_3]["ReqTrap1" ]= nTrap_1
rwtTask[nHuPanZhenXunChaTask1_3]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask1_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[nHuPanZhenXunChaTask1_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nHuPanZhenXunChaTask1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask1_3]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask1_3]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[nHuPanZhenXunChaTask1_3]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask1_3]["StartAutoWay"]["FindWayPos"] = "12.46,0.10,15.54"

rwtTask[nHuPanZhenXunChaTask6] = {}
rwtTask[nHuPanZhenXunChaTask6]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.OPEN_TREASUREBOX
--rwtTask[nHuPanZhenXunChaTask6]["PatrolCg"] = 2106
--rwtTask[nHuPanZhenXunChaTask6]["DialogId"] = 10821
rwtTask[nHuPanZhenXunChaTask6]["ReqTreasureBox" ]= nTreasureBox_3
rwtTask[nHuPanZhenXunChaTask6]["DialogId"] = nDialog_2
rwtTask[nHuPanZhenXunChaTask6]["NextTaskId" ]= nHuPanZhenXunChaTask7
rwtTask[nHuPanZhenXunChaTask6]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask6]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask6]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_nTreasureBox_3
rwtTask[nHuPanZhenXunChaTask6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask6]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask6]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask6]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask6]["StartAutoWay"]["FindWayGroupId"] =nTreasureBox_3
rwtTask[nHuPanZhenXunChaTask6]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GenId_nTreasureBox_3
rwtTask[nHuPanZhenXunChaTask6]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask7] = {}
rwtTask[nHuPanZhenXunChaTask7]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask7]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[nHuPanZhenXunChaTask7]["DialogId"] = nDialog_3
rwtTask[nHuPanZhenXunChaTask7]["PatrolLastTask"] = 1
rwtTask[nHuPanZhenXunChaTask7]["IsClickComplete"] = 0
rwtTask[nHuPanZhenXunChaTask7]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask7]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask7]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[nHuPanZhenXunChaTask7]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[nHuPanZhenXunChaTask7]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[nHuPanZhenXunChaTask7]["AwardId"] = 2000138

--新增 场景动画4
rwtTask[nHuPanZhenXunChaTask1_4] = {}
rwtTask[nHuPanZhenXunChaTask1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nHuPanZhenXunChaTask1_4]["NextTaskId" ]= nHuPanZhenXunChaTask8
rwtTask[nHuPanZhenXunChaTask1_4]["DialogId"] = 11120
rwtTask[nHuPanZhenXunChaTask1_4]["ReqTrap1" ]= nTrap_1
rwtTask[nHuPanZhenXunChaTask1_4]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask1_4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[nHuPanZhenXunChaTask1_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nHuPanZhenXunChaTask1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask1_4]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask1_4]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[nHuPanZhenXunChaTask1_4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask1_4]["StartAutoWay"]["FindWayPos"] = "12.46,0.10,15.54"

--查看探测器情况
rwtTask[nHuPanZhenXunChaTask8] = {}
rwtTask[nHuPanZhenXunChaTask8]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask8]["NextTaskId" ]= nHuPanZhenXunChaTask8_1
rwtTask[nHuPanZhenXunChaTask8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask8]["TaskNpc"] = nNpc_TanCeCi 
rwtTask[nHuPanZhenXunChaTask8]["DialogId"] = nDialog_6
rwtTask[nHuPanZhenXunChaTask8]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask8]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask8]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroupGenId_TanCeCi
rwtTask[nHuPanZhenXunChaTask8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask8]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask8]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask8]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask8]["StartAutoWay"]["FindWayGroupId"] =nNpcGroupId_TanCeCi  
rwtTask[nHuPanZhenXunChaTask8]["StartAutoWay"]["FindWayGenId"] =nNpcGroupGenId_TanCeCi
rwtTask[nHuPanZhenXunChaTask8]["IsClickComplete"] = 0

--rwtTask[nHuPanZhenXunChaTask8_1] = {}
--rwtTask[nHuPanZhenXunChaTask8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
--rwtTask[nHuPanZhenXunChaTask8_1]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[nHuPanZhenXunChaTask8_1]["NextTaskId"] = nHuPanZhenXunChaTask8_2
--rwtTask[nHuPanZhenXunChaTask8_1]["DialogId"] = nDialog_14
--rwtTask[nHuPanZhenXunChaTask8_1]["ReqTrap1"] = nTrap_2
--rwtTask[nHuPanZhenXunChaTask8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[nHuPanZhenXunChaTask8_1]["DynaNpcGroupGen"] = {}
--rwtTask[nHuPanZhenXunChaTask8_1]["DynaNpcGroupGen"][1] = {}
--rwtTask[nHuPanZhenXunChaTask8_1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
--rwtTask[nHuPanZhenXunChaTask8_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[nHuPanZhenXunChaTask8_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"] = {}
--rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayMapId"] = nMapId
--rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
--rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2
--rwtTask[nHuPanZhenXunChaTask8_1]["IsClickComplete"] = 0
--和吟游诗人了解情况
rwtTask[nHuPanZhenXunChaTask8_1] = {}
rwtTask[nHuPanZhenXunChaTask8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask8_1]["NextTaskId" ]= nHuPanZhenXunChaTask8_2
rwtTask[nHuPanZhenXunChaTask8_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask8_1]["TaskNpc"] = 3448 --吟游诗人达达 
rwtTask[nHuPanZhenXunChaTask8_1]["DialogId"] = nDialog_14
rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayGroupId"] = 20449  
rwtTask[nHuPanZhenXunChaTask8_1]["StartAutoWay"]["FindWayGenId"] =20010131
rwtTask[nHuPanZhenXunChaTask8_1]["IsClickComplete"] = 0


--rwtTask[tTask_HuPanZhen[9]] = {}
--rwtTask[tTask_HuPanZhen[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
--rwtTask[tTask_HuPanZhen[9]]["PreTaskId"] = tTask_HuPanZhen[8]
--rwtTask[tTask_HuPanZhen[9]]["NextTaskId"] = tTask_HuPanZhen[10]
--rwtTask[tTask_HuPanZhen[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[nHuPanZhenXunChaTask8_2] = {}
rwtTask[nHuPanZhenXunChaTask8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20868]
--rwtTask[nHuPanZhenXunChaTask8_2]["PuzzleTitle"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask8_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask8_2]["NextTaskId"] = nHuPanZhenXunChaTask8_3
rwtTask[nHuPanZhenXunChaTask8_2]["ReqPuzzleId"] = 101
rwtTask[nHuPanZhenXunChaTask8_2]["ReqPuzzleObj"] = 101007 --渔网
--rwtTask[nHuPanZhenXunChaTask8_2]["ReqPuzzleEnterDialog"] = 12021
rwtTask[nHuPanZhenXunChaTask8_2]["ReqPuzzleEndDialog"] = nDialog_15
rwtTask[nHuPanZhenXunChaTask8_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE  --待修改
--rwtTask[nHuPanZhenXunChaTask8_2]["DynaNpcGroupGen"] = {}
--rwtTask[nHuPanZhenXunChaTask8_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[nHuPanZhenXunChaTask8_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
--rwtTask[nHuPanZhenXunChaTask8_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[nHuPanZhenXunChaTask8_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask8_2]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask8_2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[nHuPanZhenXunChaTask8_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nHuPanZhenXunChaTask8_2]["StartAutoWay"]["FindWayPos"] = ZaWuWu_Wai
rwtTask[nHuPanZhenXunChaTask8_2]["IsClickComplete"] = 1



rwtTask[nHuPanZhenXunChaTask8_3] = {}
rwtTask[nHuPanZhenXunChaTask8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20854] 
rwtTask[nHuPanZhenXunChaTask8_3]["NextTaskId"] = nHuPanZhenXunChaTask9
--rwtTask[nHuPanZhenXunChaTask8_3]["DialogId"] = nDialog_7
rwtTask[nHuPanZhenXunChaTask8_3]["ReqCollectId1"] = nCollect_SaWang  
rwtTask[nHuPanZhenXunChaTask8_3]["ReqCollectCount1"] = 1 
rwtTask[nHuPanZhenXunChaTask8_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask8_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nHuPanZhenXunChaTask8_3]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask8_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask8_3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_SaWang
rwtTask[nHuPanZhenXunChaTask8_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask8_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask8_3]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask8_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nHuPanZhenXunChaTask8_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask8_3]["StartAutoWay"]["FindWayGroupId"] = nCollect_SaWang
rwtTask[nHuPanZhenXunChaTask8_3]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_SaWang
rwtTask[nHuPanZhenXunChaTask8_3]["IsClickComplete"] = 0


rwtTask[nHuPanZhenXunChaTask9] = {}
rwtTask[nHuPanZhenXunChaTask9]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask9]["NextTaskId"] = nHuPanZhenXunChaTask10
rwtTask[nHuPanZhenXunChaTask9]["DialogId"] = nDialog_7
rwtTask[nHuPanZhenXunChaTask9]["AutoTaskDialog"] = nDialog_7
rwtTask[nHuPanZhenXunChaTask9]["ReqTrap1"] = nTrap_2
rwtTask[nHuPanZhenXunChaTask9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][2] = {}
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Yu
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask9]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nHuPanZhenXunChaTask9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask9]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Yu
rwtTask[nHuPanZhenXunChaTask9]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Yu
rwtTask[nHuPanZhenXunChaTask9]["KillMonsterGroup1" ]= nMonsterGroup_Yu
rwtTask[nHuPanZhenXunChaTask9]["MonsterGroupGenId"] = nMonster_GenId_Yu
rwtTask[nHuPanZhenXunChaTask9]["IsClickComplete"] = 0

--rwtTask[nHuPanZhenXunChaTask10] = {}
--rwtTask[nHuPanZhenXunChaTask10]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
--rwtTask[nHuPanZhenXunChaTask10]["NextTaskId" ]= nHuPanZhenXunChaTask11
--rwtTask[nHuPanZhenXunChaTask10]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[nHuPanZhenXunChaTask10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nHuPanZhenXunChaTask10]["TaskNpc"] = nNpc_HaiLi 
--rwtTask[nHuPanZhenXunChaTask10]["DialogId"] = nDialog_8
--rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"] = {}
--rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayTypeId"]=1
--rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayMapId"] =2001
--rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayGroupId"] =20047
--rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayGenId"] =2001104
--rwtTask[nHuPanZhenXunChaTask10]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask10] = {}
rwtTask[nHuPanZhenXunChaTask10]["Title"] = tLuaText[LANGUAGE_CONFIG][20854] 
rwtTask[nHuPanZhenXunChaTask10]["NextTaskId"] = nHuPanZhenXunChaTask11
rwtTask[nHuPanZhenXunChaTask10]["AutoTaskDialog"] = 12642
rwtTask[nHuPanZhenXunChaTask10]["DialogId"] = nDialog_8
rwtTask[nHuPanZhenXunChaTask10]["ReqCollectId1"] = nCollect_BenMing
rwtTask[nHuPanZhenXunChaTask10]["ReqCollectCount1"] = 1 
rwtTask[nHuPanZhenXunChaTask10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nHuPanZhenXunChaTask10]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask10]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask10]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_BenMing
rwtTask[nHuPanZhenXunChaTask10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayGroupId"] = nCollect_BenMing
rwtTask[nHuPanZhenXunChaTask10]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_BenMing
rwtTask[nHuPanZhenXunChaTask10]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask11] = {}
rwtTask[nHuPanZhenXunChaTask11]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask11]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[nHuPanZhenXunChaTask11]["DialogId"] =  12643 
rwtTask[nHuPanZhenXunChaTask11]["PatrolLastTask"] = 1
rwtTask[nHuPanZhenXunChaTask11]["IsClickComplete"] = 0
rwtTask[nHuPanZhenXunChaTask11]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask11]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask11]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[nHuPanZhenXunChaTask11]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[nHuPanZhenXunChaTask11]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[nHuPanZhenXunChaTask11]["AwardId"] = 2000139

--新增 场景动画5
rwtTask[nHuPanZhenXunChaTask1_5] = {}
rwtTask[nHuPanZhenXunChaTask1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nHuPanZhenXunChaTask1_5]["NextTaskId" ]= nHuPanZhenXunChaTask12
rwtTask[nHuPanZhenXunChaTask1_5]["DialogId"] = 11121
rwtTask[nHuPanZhenXunChaTask1_5]["ReqTrap1" ]= nTrap_1
rwtTask[nHuPanZhenXunChaTask1_5]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask1_5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[nHuPanZhenXunChaTask1_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nHuPanZhenXunChaTask1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask1_5]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask1_5]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[nHuPanZhenXunChaTask1_5]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask1_5]["StartAutoWay"]["FindWayPos"] = "12.46,0.10,15.54"

rwtTask[nHuPanZhenXunChaTask12] = {}
rwtTask[nHuPanZhenXunChaTask12]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
--rwtTask[nHuPanZhenXunChaTask12]["NextTaskId" ]= nHuPanZhenXunChaTask12_2_1
rwtTask[nHuPanZhenXunChaTask12]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[nHuPanZhenXunChaTask12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nHuPanZhenXunChaTask12]["OptionTask1"] = nHuPanZhenXunChaTask12_2_1
rwtTask[nHuPanZhenXunChaTask12]["OptionTask2"] = nHuPanZhenXunChaTask12_1_1
--rwtTask[nHuPanZhenXunChaTask12]["PatrolCg"] = 2107
rwtTask[nHuPanZhenXunChaTask12]["TaskNpc"] = nNpc_ZhenMin 
rwtTask[nHuPanZhenXunChaTask12]["DialogId"] = nDialog_11
rwtTask[nHuPanZhenXunChaTask12]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask12]["StartAutoWay"]["FindWayGroupId"] =20048
rwtTask[nHuPanZhenXunChaTask12]["StartAutoWay"]["FindWayGenId"] =2001105
rwtTask[nHuPanZhenXunChaTask12]["IsClickComplete"] = 0

-------------------------------------------------捡贝壳线---------start-----------------------------------------
rwtTask[nHuPanZhenXunChaTask12_2_1] = {}                                                                     
rwtTask[nHuPanZhenXunChaTask12_2_1]["Title"]= tLuaText[LANGUAGE_CONFIG][20854]       
rwtTask[nHuPanZhenXunChaTask12_2_1]["TaskType"] = CONST_TASK_TYPE.PATROL                                                                       
rwtTask[nHuPanZhenXunChaTask12_2_1]["NextTaskId"]= nHuPanZhenXunChaTask12_2_2                                     
rwtTask[nHuPanZhenXunChaTask12_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT   
--rwtTask[nHuPanZhenXunChaTask12_2_1]["DialogId"] = nDialog_16                     
rwtTask[nHuPanZhenXunChaTask12_2_1]["ReqCollectId1"] = nCollect_BeiKe                                                  
rwtTask[nHuPanZhenXunChaTask12_2_1]["ReqCollectCount1"] = 1 
rwtTask[nHuPanZhenXunChaTask12_2_1]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_2_1]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_BeiKe
rwtTask[nHuPanZhenXunChaTask12_2_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_2_1]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_1]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_2_1]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask12_2_1]["StartAutoWay"]["FindWayGroupId"] =nCollect_BeiKe
rwtTask[nHuPanZhenXunChaTask12_2_1]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId_BeiKe
rwtTask[nHuPanZhenXunChaTask12_2_1]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_2_2] = {}
rwtTask[nHuPanZhenXunChaTask12_2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_2_2]["TaskType"] = CONST_TASK_TYPE.PATROL       
rwtTask[nHuPanZhenXunChaTask12_2_2]["AcceptDialogId"] = nDialog_16   
rwtTask[nHuPanZhenXunChaTask12_2_2]["NextTaskId"] = nHuPanZhenXunChaTask12_2_3
rwtTask[nHuPanZhenXunChaTask12_2_2]["DialogId"] = nDialog_17
rwtTask[nHuPanZhenXunChaTask12_2_2]["ReqTrap1"] = nTrap_3
rwtTask[nHuPanZhenXunChaTask12_2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_3
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][2] = {}
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Hu
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_2_2]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nHuPanZhenXunChaTask12_2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Hu
rwtTask[nHuPanZhenXunChaTask12_2_2]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Hu
rwtTask[nHuPanZhenXunChaTask12_2_2]["KillMonsterGroup1" ]= nMonsterGroup_Hu
rwtTask[nHuPanZhenXunChaTask12_2_2]["MonsterGroupGenId"] = nMonster_GenId_Hu
rwtTask[nHuPanZhenXunChaTask12_2_2]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_2_3] = {}
rwtTask[nHuPanZhenXunChaTask12_2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_2_3]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[nHuPanZhenXunChaTask12_2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nHuPanZhenXunChaTask12_2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nHuPanZhenXunChaTask12_2_3]["OptionTask1"] = nHuPanZhenXunChaTask12_2_4
rwtTask[nHuPanZhenXunChaTask12_2_3]["OptionTask2"] = nHuPanZhenXunChaTask14
rwtTask[nHuPanZhenXunChaTask12_2_3]["ReqTrap1"] = nTrap_3
rwtTask[nHuPanZhenXunChaTask12_2_3]["DialogId"] = nDialog_18
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_3
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][2] = {}
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Hu
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[nHuPanZhenXunChaTask12_2_3]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nHuPanZhenXunChaTask12_2_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_2_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[nHuPanZhenXunChaTask12_2_3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_3
rwtTask[nHuPanZhenXunChaTask12_2_3]["IsClickComplete"] = 0


rwtTask[nHuPanZhenXunChaTask12_2_4] = {}
rwtTask[nHuPanZhenXunChaTask12_2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_2_4]["NextTaskId" ]= nHuPanZhenXunChaTask15
rwtTask[nHuPanZhenXunChaTask12_2_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask12_2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask12_2_4]["TaskNpc"] = nNpc_ZhenMin 
rwtTask[nHuPanZhenXunChaTask12_2_4]["AcceptDialogId"] = nDialog_19
rwtTask[nHuPanZhenXunChaTask12_2_4]["DialogId"] = nDialog_20
rwtTask[nHuPanZhenXunChaTask12_2_4]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_2_4]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_2_4]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask12_2_4]["StartAutoWay"]["FindWayGroupId"] =nNpcGroupId_ZhenMin
rwtTask[nHuPanZhenXunChaTask12_2_4]["StartAutoWay"]["FindWayGenId"] =2001105
rwtTask[nHuPanZhenXunChaTask12_2_4]["IsClickComplete"] = 0

------------------------------------------------捡贝壳线---------end--------------------------------------------------------

------------------------------------------------找小贩线---------start--------------------------------------------------------
rwtTask[nHuPanZhenXunChaTask12_1_1] = {}
rwtTask[nHuPanZhenXunChaTask12_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[nHuPanZhenXunChaTask12_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask12_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nHuPanZhenXunChaTask12_1_1]["OptionTask1"] = nHuPanZhenXunChaTask12_1_2
rwtTask[nHuPanZhenXunChaTask12_1_1]["OptionTask2"] = nHuPanZhenXunChaTask12_1_5
rwtTask[nHuPanZhenXunChaTask12_1_1]["TaskNpc"] = nNpc_XiaoFan 
rwtTask[nHuPanZhenXunChaTask12_1_1]["DialogId"] = nDialog_21
rwtTask[nHuPanZhenXunChaTask12_1_1]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_1]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_1_1]["StartAutoWay"]["FindWayMapId"] =nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_1]["StartAutoWay"]["FindWayGroupId"] =nNpcGroupId_XiaoFan
rwtTask[nHuPanZhenXunChaTask12_1_1]["StartAutoWay"]["FindWayGenId"] =nNpcGroupGenId_XiaoFan
rwtTask[nHuPanZhenXunChaTask12_1_1]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_1_2] = {}
rwtTask[nHuPanZhenXunChaTask12_1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_1_2]["NextTaskId"] = nHuPanZhenXunChaTask12_1_3
rwtTask[nHuPanZhenXunChaTask12_1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
--rwtTask[nHuPanZhenXunChaTask12_1_2]["ReqTrap1"] = nTrap_2
rwtTask[nHuPanZhenXunChaTask12_1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"] = {}
--rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1] = {}
--rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_4
--rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1]["GenId"] = nMonster_GenId_Lu
rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_1_2]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nHuPanZhenXunChaTask12_1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_1_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Lu
rwtTask[nHuPanZhenXunChaTask12_1_2]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Lu
rwtTask[nHuPanZhenXunChaTask12_1_2]["KillMonsterGroup1" ]= nMonsterGroup_Lu
rwtTask[nHuPanZhenXunChaTask12_1_2]["MonsterGroupGenId"] = nMonster_GenId_Lu
rwtTask[nHuPanZhenXunChaTask12_1_2]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_1_3] = {}
rwtTask[nHuPanZhenXunChaTask12_1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_1_3]["NextTaskId" ]= nHuPanZhenXunChaTask12_1_4
rwtTask[nHuPanZhenXunChaTask12_1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask12_1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask12_1_3]["TaskNpc"] = nNpc_XiaoFan 
rwtTask[nHuPanZhenXunChaTask12_1_3]["DialogId"] = nDialog_22
rwtTask[nHuPanZhenXunChaTask12_1_3]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_3]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_1_3]["StartAutoWay"]["FindWayMapId"] =nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_3]["StartAutoWay"]["FindWayGroupId"] =nNpcGroupId_XiaoFan
rwtTask[nHuPanZhenXunChaTask12_1_3]["StartAutoWay"]["FindWayGenId"] =nNpcGroupGenId_XiaoFan
rwtTask[nHuPanZhenXunChaTask12_1_3]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_1_4] = {}                                                                     
rwtTask[nHuPanZhenXunChaTask12_1_4]["Title"]= tLuaText[LANGUAGE_CONFIG][20854]                 
rwtTask[nHuPanZhenXunChaTask12_1_4]["TaskType"] = CONST_TASK_TYPE.PATROL                                                            
rwtTask[nHuPanZhenXunChaTask12_1_4]["NextTaskId"]= nHuPanZhenXunChaTask14                                     
rwtTask[nHuPanZhenXunChaTask12_1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT                        
rwtTask[nHuPanZhenXunChaTask12_1_4]["ReqCollectId1"] = nCollect_HuoLan                                                  
rwtTask[nHuPanZhenXunChaTask12_1_4]["ReqCollectCount1"] = 1 
rwtTask[nHuPanZhenXunChaTask12_1_4]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_1_4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_HuoLan
rwtTask[nHuPanZhenXunChaTask12_1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_1_4]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_4]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_1_4]["StartAutoWay"]["FindWayMapId"] =nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_4]["StartAutoWay"]["FindWayGroupId"] =nCollect_HuoLan
rwtTask[nHuPanZhenXunChaTask12_1_4]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId_HuoLan
rwtTask[nHuPanZhenXunChaTask12_1_4]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_1_5] = {}                                                                     
rwtTask[nHuPanZhenXunChaTask12_1_5]["Title"]= tLuaText[LANGUAGE_CONFIG][20854]                                                                            
rwtTask[nHuPanZhenXunChaTask12_1_5]["NextTaskId"]= nHuPanZhenXunChaTask12_1_6     
rwtTask[nHuPanZhenXunChaTask12_1_5]["TaskType"] = CONST_TASK_TYPE.PATROL                                   
rwtTask[nHuPanZhenXunChaTask12_1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT 
rwtTask[nHuPanZhenXunChaTask12_1_5]["AcceptDialogId"] = nDialog_23                      
rwtTask[nHuPanZhenXunChaTask12_1_5]["ReqCollectId1"] = nCollect_ZhuangHuo                                                  
rwtTask[nHuPanZhenXunChaTask12_1_5]["ReqCollectCount1"] = 1 
rwtTask[nHuPanZhenXunChaTask12_1_5]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_1_5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ZhuangHuo
rwtTask[nHuPanZhenXunChaTask12_1_5]["DynaNpcGroupGen"][1]["MapId"] = nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_1_5]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_5]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_1_5]["StartAutoWay"]["FindWayMapId"] =nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_5]["StartAutoWay"]["FindWayGroupId"] =nCollect_ZhuangHuo
rwtTask[nHuPanZhenXunChaTask12_1_5]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId_ZhuangHuo


rwtTask[nHuPanZhenXunChaTask12_1_6] = {}
rwtTask[nHuPanZhenXunChaTask12_1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_1_6]["TaskType"] = CONST_TASK_TYPE.PATROL 
rwtTask[nHuPanZhenXunChaTask12_1_6]["NextTaskId"] = nHuPanZhenXunChaTask12_1_7
rwtTask[nHuPanZhenXunChaTask12_1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask12_1_6]["TaskNpc"] = nNpc_BanShiYuan
rwtTask[nHuPanZhenXunChaTask12_1_6]["DialogId" ]= nDialog_25
rwtTask[nHuPanZhenXunChaTask12_1_6]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nHuPanZhenXunChaTask12_1_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nHuPanZhenXunChaTask12_1_6]["StartAutoWay"]["FindWayGroupId"] = nNpcGroupId_BanShiYuan
rwtTask[nHuPanZhenXunChaTask12_1_6]["StartAutoWay"]["FindWayGenId"] = nNpcGroupGenId_BanShiYuan
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"] = {}
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][1] = {}
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_5
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][2] = {}
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_QiangDao
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][2]["MapId"] = nMapId
--rwtTask[nHuPanZhenXunChaTask12_1_6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_1_6]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_1_7] = {}
rwtTask[nHuPanZhenXunChaTask12_1_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask12_1_7]["NextTaskId" ]= nHuPanZhenXunChaTask12_1_8
rwtTask[nHuPanZhenXunChaTask12_1_7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask12_1_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask12_1_7]["TaskNpc"] = nNpc_XiaoFan 
rwtTask[nHuPanZhenXunChaTask12_1_7]["DialogId"] = nDialog_26
rwtTask[nHuPanZhenXunChaTask12_1_7]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_7]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_1_7]["StartAutoWay"]["FindWayMapId"] =nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_7]["StartAutoWay"]["FindWayGroupId"] =nNpcGroupId_XiaoFan
rwtTask[nHuPanZhenXunChaTask12_1_7]["StartAutoWay"]["FindWayGenId"] =nNpcGroupGenId_XiaoFan
rwtTask[nHuPanZhenXunChaTask12_1_7]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask12_1_8] = {}                                                                     
rwtTask[nHuPanZhenXunChaTask12_1_8]["Title"]= tLuaText[LANGUAGE_CONFIG][20854]     
rwtTask[nHuPanZhenXunChaTask12_1_8]["TaskType"] = CONST_TASK_TYPE.PATROL                                                                         
rwtTask[nHuPanZhenXunChaTask12_1_8]["NextTaskId"]= nHuPanZhenXunChaTask14                                     
rwtTask[nHuPanZhenXunChaTask12_1_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT                        
rwtTask[nHuPanZhenXunChaTask12_1_8]["ReqCollectId1"] = nCollect_HuoLan                                                  
rwtTask[nHuPanZhenXunChaTask12_1_8]["ReqCollectCount1"] = 1 
rwtTask[nHuPanZhenXunChaTask12_1_8]["DynaNpcGroupGen"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_8]["DynaNpcGroupGen"][1] = {}
rwtTask[nHuPanZhenXunChaTask12_1_8]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_HuoLan
rwtTask[nHuPanZhenXunChaTask12_1_8]["DynaNpcGroupGen"][1]["MapId"] = nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nHuPanZhenXunChaTask12_1_8]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask12_1_8]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask12_1_8]["StartAutoWay"]["FindWayMapId"] =nMapZhuChengId
rwtTask[nHuPanZhenXunChaTask12_1_8]["StartAutoWay"]["FindWayGroupId"] = nCollect_HuoLan
rwtTask[nHuPanZhenXunChaTask12_1_8]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_HuoLan
rwtTask[nHuPanZhenXunChaTask12_1_8]["IsClickComplete"] = 0

------------------------------------------------找小贩线---------end--------------------------------------------------------

rwtTask[nHuPanZhenXunChaTask14] = {}
rwtTask[nHuPanZhenXunChaTask14]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask14]["NextTaskId" ]= nHuPanZhenXunChaTask15
rwtTask[nHuPanZhenXunChaTask14]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask14]["TaskNpc"] = nNpc_ZhenMin 
rwtTask[nHuPanZhenXunChaTask14]["DialogId"] = nDialog_12
rwtTask[nHuPanZhenXunChaTask14]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask14]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask14]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[nHuPanZhenXunChaTask14]["StartAutoWay"]["FindWayGroupId"] =20048
rwtTask[nHuPanZhenXunChaTask14]["StartAutoWay"]["FindWayGenId"] =2001105
rwtTask[nHuPanZhenXunChaTask14]["IsClickComplete"] = 0

rwtTask[nHuPanZhenXunChaTask15] = {}
rwtTask[nHuPanZhenXunChaTask15]["Title"] = tLuaText[LANGUAGE_CONFIG][20854]
rwtTask[nHuPanZhenXunChaTask15]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nHuPanZhenXunChaTask15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nHuPanZhenXunChaTask15]["TaskNpc"] = nNpc_BiDuoMao 
rwtTask[nHuPanZhenXunChaTask15]["DialogId"] = 10828
rwtTask[nHuPanZhenXunChaTask15]["PatrolLastTask"] = 1
rwtTask[nHuPanZhenXunChaTask15]["IsClickComplete"] = 0
rwtTask[nHuPanZhenXunChaTask15]["StartAutoWay"] = {}
rwtTask[nHuPanZhenXunChaTask15]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[nHuPanZhenXunChaTask15]["StartAutoWay"]["FindWayMapId"] =1001
rwtTask[nHuPanZhenXunChaTask15]["StartAutoWay"]["FindWayGroupId"] =20115
rwtTask[nHuPanZhenXunChaTask15]["StartAutoWay"]["FindWayGenId"] =2001658
--rwtTask[nHuPanZhenXunChaTask15]["AwardId"] = 2000140


