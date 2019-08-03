--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion


----***************************数据定义***************************--
--迷雾森林
--taskid 10369-10408
--npcid 3251-3257
--npcgroup 20294-20313
--collock   60102 - 60106 
--trap 30292  30306 
--taskindex 
--monster 9000119  9000128   +  9000197  9000205 
--monstergroup   900230  900239 
--gen_event 20030173  20030212  + 20030338  20030347 +20030385  20030386 
--Dialog   10641  10675 A
local tMiWuTask = {}

--任务
--被困的冒险小队
--讨论	对白
tMiWuTask.nMiWuSenLinTask1 = 10369
--前往呼救声处	对白
tMiWuTask.nMiWuSenLinTask2 = 10370
--出动，救援小分队	
--前往冒险者之家	护送
tMiWuTask.nMiWuSenLinTask3 = 10371
--击败怪物	战斗
tMiWuTask.nMiWuSenLinTask4 = 10372
--好奇心旺盛的冒险队	
--与埃尔文交谈	对白
tMiWuTask.nMiWuSenLinTask5 = 10373
--寻找被掳的队员	对白
tMiWuTask.nMiWuSenLinTask6 = 10374
--救出被掳的队员	战斗
tMiWuTask.nMiWuSenLinTask7 = 10375
--失踪的队员	
--和被掳的队员交谈	对白
tMiWuTask.nMiWuSenLinTask8 = 10376
--返回冒险者之家	护送
tMiWuTask.nMiWuSenLinTask9 = 10377
--寻问队长	对白
tMiWuTask.nMiWuSenLinTask10 = 10378
--失踪的杰诺	
--寻找杰诺	对白
tMiWuTask.nMiWuSenLinTask11 = 10379
--采集雾影草	采集
tMiWuTask.nMiWuSenLinTask12 = 10380
--获得鹿角茸	战斗
tMiWuTask.nMiWuSenLinTask13 = 10381
--真相	
--治疗杰诺	"采集
tMiWuTask.nMiWuSenLinTask14 = 10382
--清醒的杰诺	对白
tMiWuTask.nMiWuSenLinTask15 = 10383
--遗落的手记	
--发现日记本	战斗
tMiWuTask.nMiWuSenLinTask16 = 10384
--发现日记本	采集
tMiWuTask.nMiWuSenLinTask17 = 10385
--阅读笔记本	解密
tMiWuTask.nMiWuSenLinTask18 = 10386
--激战石像鬼	
--了解真相	对白
tMiWuTask.nMiWuSenLinTask19 = 10387
--打败石像鬼	战斗
tMiWuTask.nMiWuSenLinTask20 = 10388
--奇怪的留言	对白
tMiWuTask.nMiWuSenLinTask21 = 10389
--卡等级	
--tMiWuTask.nMiWuSenLinTask21_1 = 10407


--意外再次降临	
--寻找精灵宝珠	对白
tMiWuTask.nMiWuSenLinTask22 = 10390
--处理突发的意外	战斗
tMiWuTask.nMiWuSenLinTask23 = 10391
--与阿德琳交谈	对白
tMiWuTask.nMiWuSenLinTask24 = 10392
--意想不到的重逢	
--找到精灵宝珠	采集
tMiWuTask.nMiWuSenLinTask25 = 10393
--重遇“老朋友”	对白
tMiWuTask.nMiWuSenLinTask26 = 10394
--击败贝拉	战斗
tMiWuTask.nMiWuSenLinTask27 = 10395
--贝拉的怒火	对白
tMiWuTask.nMiWuSenLinTask28 = 10396
--宝珠历险记	
--感应精灵宝珠的位置	对白
tMiWuTask.nMiWuSenLinTask29 = 10397
--与巨熊对话	对白
tMiWuTask.nMiWuSenLinTask30 = 10398
--刺人的玫瑰	
--寻找下一颗精灵宝珠	对白
tMiWuTask.nMiWuSenLinTask31 = 10399
--上前帮助	战斗
tMiWuTask.nMiWuSenLinTask32 = 10400
--玫瑰团苦衷	
--上前询问伤势	对白
tMiWuTask.nMiWuSenLinTask33 = 10401
--解封树心城	
--下一步计划	对白
tMiWuTask.nMiWuSenLinTask34 = 10402
--解决魔物	战斗
tMiWuTask.nMiWuSenLinTask35 = 10403
--再次尝试	场景表现
tMiWuTask.nMiWuSenLinTask36 = 10404
--解封树心城	解封树心城动画
tMiWuTask.nMiWuSenLinTask37 = 10405
--杰诺脚印
tMiWuTask.nMiWuSenLinTask11_Before = 10406

                                 
--Dialog   10641  10675 
local nDialog_Task1 = 10641
local nDialog_Task2 = 10642
--local nDialog_Task3 = 10642
local nDialog_Task4 = 10643
local nDialog_Task5 = 10644
local nDialog_Task6 = 10645
local nDialog_Task7 = 10646
local nDialog_Task8 = 10647
--local nDialog_Task9 = 10643
local nDialog_Task10 = 10648
local nDialog_Task11 = 10649
--local nDialog_Task12 = 10643
local nDialog_Task13 = 10650
local nDialog_Task14 = 10651
local nDialog_Task15 = 10652
local nDialog_Task16 = 10653
----local nDialog_Task17 = 10643
local nDialog_Task18 = 10654
local nDialog_Task19 = 10656
local nDialog_Task20 = 10657
local nDialog_Task21 = 10658
--local nDialog_Task21_1 = 11439 --卡等级任务删除
--local nDialog_Task21_2 = 11440 --卡等级任务删除

local nDialog_Task22 = 10659
local nDialog_Task23 = 10660
local nDialog_Task24 = 10661
local nDialog_Task25 = 10662
local nDialog_Task26 = 10663
local nDialog_Task27 = 10664
local nDialog_Task28 = 10665
local nDialog_Task29 = 10666
local nDialog_Task30 = 10667
local nDialog_Task31 = 10668
--local nDialog_Task31_1 = 10655  --这个对白可以加爱琪冲上去之后的对白加在动画3404里头


local nDialog_Task32 = 10669
local nDialog_Task33 = 10670
local nDialog_Task34 = 10671
local nDialog_Task35 = 10672
local nDialog_Task36 = 10673
local nDialog_Task37 = 10674  --暂时替代动画的对白
local nDialog_Task31_New = 10867--刺人的玫瑰触发动画
local nDialog_Task11_Before = 10675


--NPC   3251-3257
--npcgroup 20294-20313
--gen_event 20030173  20030212 

--冒险队员马尼奥
local nNpc_MaoXianDuiYuan         = 3251
local nNpcGroup_MaoXianDuiYuan    = 20294
local nGenId_NpcGroup_MaoXianDuiYuan= 20030173
--埃尔文队长（已有）
local nNpc_AiErWen          = 3256--3217
local nNpcGroup_AiErWen     = 20295
local nGenId_NpcGroup_AiErWen = 20030174
--冒险队员拉多克（被俘虏的队员）
local nNpc_LaDuoKe          = 3252
local nNpcGroup_LaDuoKe     = 20296
local nGenId_NpcGroup_LaDuoKe = 20030175
--杰诺
local nNpc_JieNuo          = 3253
local nNpcGroup_JieNuo     = 20297
local nGenId_NpcGroup_JieNuo  = 20030176
--阿德琳（已有）
local nNpc_ADeLin                 = 3157
local nNpcGroup_ADeLin            = 20298
local nGenId_NpcGroup_ADeLin        = 20030177
--强盗贝拉1（已有） XX待处理 贝拉合并成一个npc
local nNpc_BeiLa_1          = 3003
local nNpcGroup_BeiLa_1     = 20299
local nGenId_NpcGroup_BeiLa_1   = 20030178
--强盗贝拉2（已有）
local nNpc_BeiLa_2          = 3003
local nNpcGroup_BeiLa_2     = 20300
local nGenId_NpcGroup_BeiLa_2   = 20030179
--巨骨熊哈维特
local nNpc_HaWeiTe          = 3254
local nNpcGroup_HaWeiTe     = 20301
local nGenId_NpcGroup_HaWeiTe   = 20030180
--爱琪1（已有）
local nNpc_AiQi          = 302
local nNpcGroup_AiQi_1      = 20303
local nGenId_NpcGroup_AiQi_1    = 20030208
--爱琪2（已有）
--local nNpc_AiQi          = 302
local nNpcGroup_AiQi_2      = 20302
local nGenId_NpcGroup_AiQi_2    = 20030181
--黑色荆棘[上前帮助]
local nNpcGroup_HeiSeJingJi      = 20310
local nGenId_NpcGroup_HeiSeJingJi    = 20030210




--NPC闲聊对白配置 	1484	1504

--石像鬼塔比瑟（这是有对话的怪）
--local nNpc_TaBiSa  = 3255

--npc、npc组初始化
--冒险队员马尼奥
rwtNpc[nNpc_MaoXianDuiYuan] = rwtNpc[nNpc_MaoXianDuiYuan] or {}
rwtNpc[nNpc_MaoXianDuiYuan]["DialogId"] = {1484,1485,1486}
rwtNpcGroup[nNpcGroup_MaoXianDuiYuan] = rwtNpcGroup[nNpcGroup_MaoXianDuiYuan] or {}
rwtNpcGroup[nNpcGroup_MaoXianDuiYuan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_MaoXianDuiYuan]["NpcId"]= nNpc_MaoXianDuiYuan
--埃尔文队长
rwtNpc[nNpc_AiErWen] = rwtNpc[nNpc_AiErWen] or {}
rwtNpc[nNpc_AiErWen]["DialogId"] = {1487,1488,1489}
rwtNpc[nNpc_AiErWen]["SceneNpcChk"] = function()
	local tDialogEnd = {1487,1488,1489,1659}
	if rwHeroIsHas(201) then 
		local nRandom = math.random(1,#tDialogEnd)
		rwOpenNpcChatDialog(tDialogEnd[nRandom],CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end
rwtNpcGroup[nNpcGroup_AiErWen] = rwtNpcGroup[nNpcGroup_AiErWen] or {}
rwtNpcGroup[nNpcGroup_AiErWen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_AiErWen]["NpcId"]= nNpc_AiErWen

--废弃对白Id 1660

--冒险队员拉多克（被俘虏的队员）  无闲聊对白
rwtNpc[nNpc_LaDuoKe] = rwtNpc[nNpc_LaDuoKe] or {}
rwtNpcGroup[nNpcGroup_LaDuoKe] = rwtNpcGroup[nNpcGroup_LaDuoKe] or {}
rwtNpcGroup[nNpcGroup_LaDuoKe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_LaDuoKe]["NpcId"]= nNpc_LaDuoKe
--杰诺
rwtNpc[nNpc_JieNuo] = rwtNpc[nNpc_JieNuo] or {}
rwtNpc[nNpc_JieNuo]["DialogId"] = {1490,1491,1492}
rwtNpcGroup[nNpcGroup_JieNuo] = rwtNpcGroup[nNpcGroup_JieNuo] or {}
rwtNpcGroup[nNpcGroup_JieNuo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_JieNuo]["NpcId"]= nNpc_JieNuo
--阿德琳（已有）
rwtNpc[nNpc_ADeLin] = rwtNpc[nNpc_ADeLin] or {}
rwtNpc[nNpc_ADeLin]["DialogId"] = {1493,1494,1495}
rwtNpcGroup[nNpcGroup_ADeLin] = rwtNpcGroup[nNpcGroup_ADeLin] or {}
rwtNpcGroup[nNpcGroup_ADeLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ADeLin]["NpcId"]= nNpc_ADeLin
--强盗贝拉1（已有）
rwtNpc[nNpc_BeiLa_1] = rwtNpc[nNpc_BeiLa_1] or {}
rwtNpc[nNpc_BeiLa_1]["DialogId"] = {1496,1497,1498}
rwtNpcGroup[nNpcGroup_BeiLa_1] = rwtNpcGroup[nNpcGroup_BeiLa_1] or {}
rwtNpcGroup[nNpcGroup_BeiLa_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_BeiLa_1]["NpcId"]= nNpc_BeiLa_1
--强盗贝拉2（已有）
rwtNpc[nNpc_BeiLa_2] = rwtNpc[nNpc_BeiLa_2] or {}
rwtNpcGroup[nNpcGroup_BeiLa_2] = rwtNpcGroup[nNpcGroup_BeiLa_2] or {}
rwtNpcGroup[nNpcGroup_BeiLa_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_BeiLa_2]["NpcId"]= nNpc_BeiLa_2
--巨骨熊哈维特
rwtNpc[nNpc_HaWeiTe] = rwtNpc[nNpc_HaWeiTe] or {}
rwtNpc[nNpc_HaWeiTe]["DialogId"] = {1499,1500,1501}
rwtNpcGroup[nNpcGroup_HaWeiTe] = rwtNpcGroup[nNpcGroup_HaWeiTe] or {}
rwtNpcGroup[nNpcGroup_HaWeiTe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_HaWeiTe]["NpcId"]= nNpc_HaWeiTe
--爱琪1（已有）
rwtNpc[nNpc_AiQi] = rwtNpc[nNpc_AiQi] or {}
rwtNpc[nNpc_AiQi]["DialogId"] = {1502,1503,1504}
rwtNpcGroup[nNpcGroup_AiQi_1] = rwtNpcGroup[nNpcGroup_AiQi_1] or {}
rwtNpcGroup[nNpcGroup_AiQi_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_AiQi_1]["NpcId"]= nNpc_AiQi
rwtNpc[nNpc_AiQi] = rwtNpc[nNpc_AiQi] or {}
--爱琪2
rwtNpcGroup[nNpcGroup_AiQi_2] = rwtNpcGroup[nNpcGroup_AiQi_2] or {}
rwtNpcGroup[nNpcGroup_AiQi_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_AiQi_2]["NpcId"]= nNpc_AiQi
--monster 9000119  9000129   
--monstergroup   900230  900239 
--gen_event 20030173  20030212 

--采集物 60102 - 60106 
--雾影草
local nCollect_WuYingCao = 60102
local nCollect_GenId_WuYingCao = 20030182
--日记本
local nCollect_RiJiBen = 60103
local nCollect_GenId_RiJiBen = 20030183
--精灵宝珠感应点
local nCollect_BaoZhu = 60104
local nCollect_GenId_BaoZhu = 20030184
--治疗杰诺
local nCollect_ZhiLiao = 60105
local nCollect_GenId_ZhiLiao= 20030194
----杰诺的脚印
--local nCollect_JiaoYin = 60106
--local nCollect_GenId_JiaoYin= 20030211

rwtNpcGroup[nCollect_WuYingCao] = rwtNpcGroup[nCollect_WuYingCao] or {}    
rwtNpcGroup[nCollect_WuYingCao]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_RiJiBen] = rwtNpcGroup[nCollect_RiJiBen] or {}    
rwtNpcGroup[nCollect_RiJiBen]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nCollect_BaoZhu] = rwtNpcGroup[nCollect_BaoZhu] or {}    
rwtNpcGroup[nCollect_BaoZhu]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[nCollect_BaoZhu]["DialogId"] = nDialog_Task25

rwtNpcGroup[nCollect_ZhiLiao] = rwtNpcGroup[nCollect_ZhiLiao] or {}    
rwtNpcGroup[nCollect_ZhiLiao]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[nCollect_ZhiLiao]["DialogId"] = nDialog_Task14

--rwtNpcGroup[nCollect_JiaoYin] = rwtNpcGroup[nCollect_JiaoYin] or {}    
--rwtNpcGroup[nCollect_JiaoYin]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[nCollect_JiaoYin]["DialogId"] = nDialog_Task38

--9000127, '暗黑战魂' -拿盾牌
--9000128, '嗜血战魂' -怂
--9000129, '武装狼人'

--monster 9000119  9000128   +  9000197  9000205 
--Monster + Monster Group

--【击败怪物】两只 魔脊半鱼人 
--10047	魔脊半鱼人
--local nMonster_Task4_1 =  9000119 
--local nMonster_Task4_2 =   9000124
local nMonsterGroup_Task4 = 900230
local nMonster_GenId_Task4 = 20030185
local nMonster_GenId_Task4_2 = 20030212  --模型鱼人
--【救出被掳的队员】 白眼独狼
--10044	白眼独狼
--local nMonster_Task7 = 9000120
local nMonsterGroup_Task7 = 900231
local nMonster_GenId_Task7 = 20030186
--【获得鹿角茸】 巫袍鹿角兽
--10024	巫袍鹿角兽
--local nMonster_Task13 = 9000121
local nMonsterGroup_Task13 = 900232
local nMonster_GenId_Task13 = 20030187
--【发现日记本】 巫袍鹿角兽2号
--10024	巫袍鹿角兽
--local nMonster_Task16 = 9000126
local nMonsterGroup_Task16 = 900233
local nMonster_GenId_Task16 = 20030188
--【打败石像鬼】 石像鬼
--石像鬼		10036
--local nMonster_Task20 = 9000122
local nMonsterGroup_Task20 = 900234
local nMonster_GenId_Task20 = 20030189
--【处理突发的意外】 荆棘花妖 + 战魂之殇 + 魔脊半鱼人
--local nMonster_Task23_1 = 9000123		--荆棘花妖
--local nMonster_Task23_2 = 9000128		--战魂之殇（嗜血战魂）
--local nMonster_Task23_3 = 9000197		--半鱼人
local nMonsterGroup_Task23 = 900235		--荆棘花妖
local nMonsterGroup_Task23_2 = 20304	--战魂之殇模型
local nMonsterGroup_Task23_3 = 20305	--半鱼人模型
local nMonster_GenId_Task23 = 20030190
local nMonster_GenId_Task23_2 = 20030202
local nMonster_GenId_Task23_3 = 20030338
--【击败贝拉】 贝拉
--10021	贝拉
--local nMonster_Task27 = 9000125
local nMonsterGroup_Task27 = 900236
local nMonster_GenId_Task27 = 20030191
--【上前帮助】 暗黑战魂（52008）+武装狼人（10026）+巫袍鹿角兽
--local nMonster_Task32_1 = 9000129		--武装狼人
--local nMonster_Task32_2 = 9000127		--暗黑战魂
--local nMonster_Task32_3 = 9000198		--巫袍鹿角兽
local nMonsterGroup_Task32 = 900237	--武装狼人
local nMonsterGroup_Task32_2 = 20308	--暗黑战魂 模型
local nMonsterGroup_Task32_3 = 20309	--巫袍鹿角兽 模型
local nMonster_GenId_Task32 = 20030192	--武装狼人
local nMonster_GenId_Task32_2 = 20030339	--暗黑战魂
local nMonster_GenId_Task32_3 = 20030340	--巫袍鹿角兽
--【解决魔物】 暗黑战魂（52008）+嗜血战魂（52003）
--local nMonster_Task32_1 = 9000199			--暗黑战魂
--local nMonster_Task32_2 = 9000200			--嗜血战魂
local nMonsterGroup_Task35 = 900238			--暗黑战魂
local nMonsterGroup_Task35_2 = 20306		--嗜血战魂模型
local nMonster_GenId_Task35 = 20030193		--暗黑战魂
local nMonster_GenId_Task35_2 = 20030209	--嗜血战魂


--陷阱 30292  30306    30401  30402 
local	nTrap_Task1 = 30401
local	nTrap_Task3 = 30292
local	nTrap_Task4 = 30293
local	nTrap_Task6= 30294
local	nTrap_Task7= 30295
local	nTrap_Task9= 30296
local	nTrap_Task13= 30297
local	nTrap_Task16= 30298
local	nTrap_Task19= 30299
local	nTrap_Task20= 30300
local	nTrap_Task23= 30301
local	nTrap_Task26= 30402
local	nTrap_Task27= 30304
local   nTrap_Task31= 30306 -- 刺人的玫瑰陷阱
local	nTrap_Task32= 30302
local	nTrap_Task35= 30303
local	nTrap_Task11_Before = 30305

local	nTrap_gen_Task1= 20030385
local	nTrap_gen_Task3= 20030195
local	nTrap_gen_Task4= 20030196
local	nTrap_gen_Task6= 20030197
local	nTrap_gen_Task7= 20030198
local	nTrap_gen_Task9= 20030199
local	nTrap_gen_Task13= 20030200
local	nTrap_gen_Task16= 20030201
local	nTrap_gen_Task19= 20030202
local	nTrap_gen_Task20= 20030203
local	nTrap_gen_Task23= 20030204
local	nTrap_gen_Task26= 20030386
local	nTrap_gen_Task27= 20030207
local   nTrap_gen_Task31= 20030342 -- 刺人的玫瑰陷阱
local	nTrap_gen_Task32= 20030205
local	nTrap_gen_Task35= 20030206
local	nTrap_gen_Task11_Before=20030341

rwtNpcGroup[nTrap_Task1] = rwtNpcGroup[nTrap_Task1] or {} 
rwtNpcGroup[nTrap_Task1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task3] = rwtNpcGroup[nTrap_Task3] or {} 
rwtNpcGroup[nTrap_Task3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task4] = rwtNpcGroup[nTrap_Task4] or {}   
rwtNpcGroup[nTrap_Task4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task6] = rwtNpcGroup[nTrap_Task6] or {}   
rwtNpcGroup[nTrap_Task6]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task7] = rwtNpcGroup[nTrap_Task7] or {}  
rwtNpcGroup[nTrap_Task7]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task9] = rwtNpcGroup[nTrap_Task9] or {}  
rwtNpcGroup[nTrap_Task9]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task13] = rwtNpcGroup[nTrap_Task13] or {}  
rwtNpcGroup[nTrap_Task13]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task16] = rwtNpcGroup[nTrap_Task16] or {}   
rwtNpcGroup[nTrap_Task16]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task19] = rwtNpcGroup[nTrap_Task19] or {}   
rwtNpcGroup[nTrap_Task19]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task20] = rwtNpcGroup[nTrap_Task20] or {}  
rwtNpcGroup[nTrap_Task20]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task23] = rwtNpcGroup[nTrap_Task23] or {}   
rwtNpcGroup[nTrap_Task23]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task26] = rwtNpcGroup[nTrap_Task1] or {} 
rwtNpcGroup[nTrap_Task26]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task27] = rwtNpcGroup[nTrap_Task27] or {}   
rwtNpcGroup[nTrap_Task27]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task31] = rwtNpcGroup[nTrap_Task31] or {}   
rwtNpcGroup[nTrap_Task31]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task32] = rwtNpcGroup[nTrap_Task32] or {}   
rwtNpcGroup[nTrap_Task32]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task35] = rwtNpcGroup[nTrap_Task35] or {}   
rwtNpcGroup[nTrap_Task35]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Task11_Before] = rwtNpcGroup[nTrap_Task11_Before] or {}   
rwtNpcGroup[nTrap_Task11_Before]["Type"] = CONST_NPCGROUP_TYPE.Trap


--位置
--冒险者营地（-67.05,0.11,-245.87）
local sPos_YingDi = "-67.05,0.11,-245.87"
--寻找被虏队员（-59.52,0.08,-246.68）
local sPos_DuiYuan = "-59.52,0.08,-246.68"
--治疗杰诺
local sPos_ZhiLiao = "-80.12,0.14,-204.08"
--副本入口
local sPos_CopyMap = "15.59,0.14,-286.83"


local nMapId = 2003


--奖励
--2000156  2000170 
--------------奖励id--------------
local nAwardId_Task4  = 2000156      --总有以外会发生
local nAwardId_Task7  = 2000157      --好奇心旺盛的冒险队
local nAwardId_Task9  = 2000158      --失踪的队员
local nAwardId_Task11 = 2000159      --失踪的杰诺
local nAwardId_Task14 = 2000160      --恢复神智
local nAwardId_Task18 = 2000161      --迷雾重重
local nAwardId_Task21 = 2000162      --击败石像鬼
local nAwardId_Task24 = 2000163      --意外再次降临
local nAwardId_Task28 = 2000164      --意想不到的重逢
local nAwardId_Task30 = 2000165      --宝珠历险记
local nAwardId_Task32 = 2000166      --刺人的玫瑰
local nAwardId_Task33 = 2000167      --玫瑰团苦衷
local nAwardId_Task36 = 2000168      --解封树心城
local nAwardId_Task37 = 2000169      --树心城副本

-----------------------------------副本数据-----------
--副本id，树心城
local nCopyMap_ShuXinCheng = 3044   
--树心城普通副本
local nCopyMap_ShuXinCheng_NorMal = 3048  
--剧情副本genid
local nGenIdCopyMapPlot = 3044001
--普通副本genid
local nGenIdCopyMapNormal = 3048001
--------------------------------------------------------------------------------
--任务 
--总会有意外发
rwtTask[tMiWuTask.nMiWuSenLinTask1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask1]["Title"] = tLuaText[LANGUAGE_CONFIG][20312]
rwtTask[tMiWuTask.nMiWuSenLinTask1]["PreTaskId"] = 10367
rwtTask[tMiWuTask.nMiWuSenLinTask1]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask2
rwtTask[tMiWuTask.nMiWuSenLinTask1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask1]["DialogId"] = nDialog_Task1
rwtTask[tMiWuTask.nMiWuSenLinTask1]["ReqTrap1"] = nTrap_Task1
rwtTask[tMiWuTask.nMiWuSenLinTask1]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask1]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task1
rwtTask[tMiWuTask.nMiWuSenLinTask1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask1]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask1]["OpenTransfer"] = CONST_TRANSFER_INDEX.MIWUSENLIN
rwtTask[tMiWuTask.nMiWuSenLinTask1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10035]
rwtTask[tMiWuTask.nMiWuSenLinTask1]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask1]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task1
rwtTask[tMiWuTask.nMiWuSenLinTask1]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task1


rwtTask[tMiWuTask.nMiWuSenLinTask2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask2]["Title"] = tLuaText[LANGUAGE_CONFIG][20313]
rwtTask[tMiWuTask.nMiWuSenLinTask2]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask1
rwtTask[tMiWuTask.nMiWuSenLinTask2]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask4
rwtTask[tMiWuTask.nMiWuSenLinTask2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask2]["TaskNpc"] = nNpc_MaoXianDuiYuan  
rwtTask[tMiWuTask.nMiWuSenLinTask2]["DialogId"] = nDialog_Task2
rwtTask[tMiWuTask.nMiWuSenLinTask2]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask2]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MaoXianDuiYuan
rwtTask[tMiWuTask.nMiWuSenLinTask2]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_MaoXianDuiYuan

--出动，救援小分队
--rwtTask[tMiWuTask.nMiWuSenLinTask3] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["Title"] = "前往冒险者之家"
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask2
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask4
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["ReqTrap1"] = nTrap_Task3
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["IsClickComplete"] = 0
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["DynaNpcGroupGen"] = {nTrap_gen_Task3,nMonster_GenId_Yu}
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["DynaNpcGroupMapId"] = 2003
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["StartAutoWay"] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["StartAutoWay"]["MapId"] = 2003
--rwtTask[tMiWuTask.nMiWuSenLinTask3]["StartAutoWay"]["Pos"] = sPos_YingDi



--(两种方案，陷阱触发，对战战前对白)
rwtTask[tMiWuTask.nMiWuSenLinTask4] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Title"] = tLuaText[LANGUAGE_CONFIG][20315]
rwtTask[tMiWuTask.nMiWuSenLinTask4]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask2
rwtTask[tMiWuTask.nMiWuSenLinTask4]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask5
rwtTask[tMiWuTask.nMiWuSenLinTask4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask4]["KillMonsterGroup1" ]= nMonsterGroup_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["MonsterGroupGenId"] = nMonster_GenId_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["ReqTrap1"] = nTrap_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_Task4_2
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask4]["DialogId"] = nDialog_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask4]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuTask.nMiWuSenLinTask4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task4
--rwtTask[tMiWuTask.nMiWuSenLinTask4]["AwardId"] = nAwardId_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task4
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask4


--好奇心旺盛的冒险队
rwtTask[tMiWuTask.nMiWuSenLinTask5] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask5]["Title"] = tLuaText[LANGUAGE_CONFIG][20316]
rwtTask[tMiWuTask.nMiWuSenLinTask5]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask4
rwtTask[tMiWuTask.nMiWuSenLinTask5]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask6
rwtTask[tMiWuTask.nMiWuSenLinTask5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask5]["TaskNpc"] = nNpc_AiErWen  
rwtTask[tMiWuTask.nMiWuSenLinTask5]["DialogId"] = nDialog_Task5
rwtTask[tMiWuTask.nMiWuSenLinTask5]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask5]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask5]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuTask.nMiWuSenLinTask5]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_AiErWen

rwtTask[tMiWuTask.nMiWuSenLinTask6] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask6]["Title"] = tLuaText[LANGUAGE_CONFIG][20317]
rwtTask[tMiWuTask.nMiWuSenLinTask6]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask5
rwtTask[tMiWuTask.nMiWuSenLinTask6]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask7
rwtTask[tMiWuTask.nMiWuSenLinTask6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask6]["DialogId"] = nDialog_Task6
rwtTask[tMiWuTask.nMiWuSenLinTask6]["ReqTrap1"] = nTrap_Task6
rwtTask[tMiWuTask.nMiWuSenLinTask6]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask6]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask6]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task6
rwtTask[tMiWuTask.nMiWuSenLinTask6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask6]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask6]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask6]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask6]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask6]["StartAutoWay"]["FindWayPos"] = sPos_DuiYuan

rwtTask[tMiWuTask.nMiWuSenLinTask7] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Title"] = tLuaText[LANGUAGE_CONFIG][20318]
rwtTask[tMiWuTask.nMiWuSenLinTask7]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask6
rwtTask[tMiWuTask.nMiWuSenLinTask7]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask8
rwtTask[tMiWuTask.nMiWuSenLinTask7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask7]["KillMonsterGroup1" ]= nMonsterGroup_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["MonsterGroupGenId"] = nMonster_GenId_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["ReqTrap1"] = nTrap_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][3]["GenId"] = nGenId_NpcGroup_LaDuoKe
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask7]["DialogId"] = nDialog_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask7]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuTask.nMiWuSenLinTask7]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask7]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task7
--rwtTask[tMiWuTask.nMiWuSenLinTask7]["AwardId"] = nAwardId_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task7
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask7


--失踪的队员
rwtTask[tMiWuTask.nMiWuSenLinTask8] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask8]["Title"] = tLuaText[LANGUAGE_CONFIG][20319]
rwtTask[tMiWuTask.nMiWuSenLinTask8]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask7
rwtTask[tMiWuTask.nMiWuSenLinTask8]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask9
rwtTask[tMiWuTask.nMiWuSenLinTask8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask8]["DialogId"] = nDialog_Task8
rwtTask[tMiWuTask.nMiWuSenLinTask8]["TaskNpc"] = nNpc_LaDuoKe  
rwtTask[tMiWuTask.nMiWuSenLinTask8]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask8]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask8]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_LaDuoKe
rwtTask[tMiWuTask.nMiWuSenLinTask8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMiWuTask.nMiWuSenLinTask8]["IsClickComplete"] = 0        
rwtTask[tMiWuTask.nMiWuSenLinTask8]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask8]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask8]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_LaDuoKe
rwtTask[tMiWuTask.nMiWuSenLinTask8]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_LaDuoKe               

rwtTask[tMiWuTask.nMiWuSenLinTask9] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Title"] = tLuaText[LANGUAGE_CONFIG][20320]
rwtTask[tMiWuTask.nMiWuSenLinTask9]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask8
rwtTask[tMiWuTask.nMiWuSenLinTask9]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask11_Before
rwtTask[tMiWuTask.nMiWuSenLinTask9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tMiWuTask.nMiWuSenLinTask9]["TaskNpc"] = nNpc_AiErWen
rwtTask[tMiWuTask.nMiWuSenLinTask9]["DialogId" ]= nDialog_Task10
rwtTask[tMiWuTask.nMiWuSenLinTask9]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask9]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask9]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
rwtTask[tMiWuTask.nMiWuSenLinTask9]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_AiErWen
--rwtTask[tMiWuTask.nMiWuSenLinTask9]["AwardId"] = nAwardId_Task9
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task9
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask9

--rwtTask[tMiWuTask.nMiWuSenLinTask10] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["Title"] = tLuaText[LANGUAGE_CONFIG][20321]
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask9
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask11_Before
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["DialogId"] = nDialog_Task10
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["TaskNpc"] = nNpc_AiErWen
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["IsClickComplete"] = 0
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["StartAutoWay"] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["StartAutoWay"]["FindWayMapId"] = 2003
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiErWen
--rwtTask[tMiWuTask.nMiWuSenLinTask10]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_AiErWen

--失踪的杰诺

rwtTask[tMiWuTask.nMiWuSenLinTask11_Before] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["Title"] = tLuaText[LANGUAGE_CONFIG][20322]
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask9
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask11
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["DialogId"] = nDialog_Task11_Before
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["ReqTrap1"] = nTrap_Task11_Before
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task11_Before
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task11_Before
rwtTask[tMiWuTask.nMiWuSenLinTask11_Before]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task11_Before    

rwtTask[tMiWuTask.nMiWuSenLinTask11] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Title"] = tLuaText[LANGUAGE_CONFIG][20323]
rwtTask[tMiWuTask.nMiWuSenLinTask11]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask11_Before
rwtTask[tMiWuTask.nMiWuSenLinTask11]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask12
rwtTask[tMiWuTask.nMiWuSenLinTask11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask11]["DialogId"] = nDialog_Task11
rwtTask[tMiWuTask.nMiWuSenLinTask11]["TaskNpc"] = nNpc_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask11]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask11]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask11]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask11]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask11]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask11]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask11]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_JieNuo
--rwtTask[tMiWuTask.nMiWuSenLinTask11]["AwardId"] = nAwardId_Task11
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task11
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask11

--恢复神智
rwtTask[tMiWuTask.nMiWuSenLinTask12] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask12]["Title"] = tLuaText[LANGUAGE_CONFIG][20324]
rwtTask[tMiWuTask.nMiWuSenLinTask12]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask11
rwtTask[tMiWuTask.nMiWuSenLinTask12]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask13
rwtTask[tMiWuTask.nMiWuSenLinTask12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_WuYingCao
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask12]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask12]["ReqCollectId1"] = nCollect_WuYingCao
rwtTask[tMiWuTask.nMiWuSenLinTask12]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask12]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask12]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask12]["StartAutoWay"]["FindWayGroupId"] = nCollect_WuYingCao
rwtTask[tMiWuTask.nMiWuSenLinTask12]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_WuYingCao


rwtTask[tMiWuTask.nMiWuSenLinTask13] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask13]["Title"] = tLuaText[LANGUAGE_CONFIG][20325]
rwtTask[tMiWuTask.nMiWuSenLinTask13]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask12
rwtTask[tMiWuTask.nMiWuSenLinTask13]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask14
rwtTask[tMiWuTask.nMiWuSenLinTask13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask13]["KillMonsterGroup1" ]= nMonsterGroup_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["MonsterGroupGenId"] = nMonster_GenId_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["ReqTrap1"] = nTrap_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask13]["DialogId"] = nDialog_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask13]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask13]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuTask.nMiWuSenLinTask13]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask13]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task13
rwtTask[tMiWuTask.nMiWuSenLinTask13]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task13

rwtTask[tMiWuTask.nMiWuSenLinTask14] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Title"] = tLuaText[LANGUAGE_CONFIG][20326]
rwtTask[tMiWuTask.nMiWuSenLinTask14]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask13
rwtTask[tMiWuTask.nMiWuSenLinTask14]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask15
rwtTask[tMiWuTask.nMiWuSenLinTask14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMiWuTask.nMiWuSenLinTask14]["ReqCollectId1"] = nCollect_ZhiLiao
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_ZhiLiao
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask14]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask14]["IsClickComplete"] = 0
--rwtTask[tMiWuTask.nMiWuSenLinTask14]["AwardId"] = nAwardId_Task14
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task14
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask14
rwtTask[tMiWuTask.nMiWuSenLinTask14]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask14]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask14]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask14]["StartAutoWay"]["FindWayPos"] = sPos_ZhiLiao

--迷雾重重
rwtTask[tMiWuTask.nMiWuSenLinTask15] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask15]["Title"] = tLuaText[LANGUAGE_CONFIG][20327]
rwtTask[tMiWuTask.nMiWuSenLinTask15]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask14
rwtTask[tMiWuTask.nMiWuSenLinTask15]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask16
rwtTask[tMiWuTask.nMiWuSenLinTask15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask15]["DialogId"] = nDialog_Task15
rwtTask[tMiWuTask.nMiWuSenLinTask15]["TaskNpc"] = nNpc_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask15]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask15]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask15]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask15]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMiWuTask.nMiWuSenLinTask15]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask15]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask15]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask15]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask15]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_JieNuo
rwtTask[tMiWuTask.nMiWuSenLinTask15]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_JieNuo


--遗落的手记
rwtTask[tMiWuTask.nMiWuSenLinTask16] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask16]["Title"] = tLuaText[LANGUAGE_CONFIG][20328]
rwtTask[tMiWuTask.nMiWuSenLinTask16]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask15
rwtTask[tMiWuTask.nMiWuSenLinTask16]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask17
rwtTask[tMiWuTask.nMiWuSenLinTask16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask16]["KillMonsterGroup1" ]= nMonsterGroup_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["MonsterGroupGenId"] = nMonster_GenId_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["ReqTrap1"] = nTrap_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][3]["GenId"] = nCollect_GenId_RiJiBen
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask16]["DialogId"] = nDialog_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask16]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask16]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask16]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask16]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task16


---XXX
rwtTask[tMiWuTask.nMiWuSenLinTask17] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask17]["Title"] = tLuaText[LANGUAGE_CONFIG][20329]
rwtTask[tMiWuTask.nMiWuSenLinTask17]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask16
rwtTask[tMiWuTask.nMiWuSenLinTask17]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask18
rwtTask[tMiWuTask.nMiWuSenLinTask17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMiWuTask.nMiWuSenLinTask17]["ReqCollectId1"] = nCollect_RiJiBen
rwtTask[tMiWuTask.nMiWuSenLinTask17]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask17]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask17]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_RiJiBen
rwtTask[tMiWuTask.nMiWuSenLinTask17]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask17]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask17]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask17]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask17]["StartAutoWay"]["FindWayGroupId"] = nCollect_RiJiBen
rwtTask[tMiWuTask.nMiWuSenLinTask17]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_RiJiBen

rwtTask[tMiWuTask.nMiWuSenLinTask18] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Title"] = tLuaText[LANGUAGE_CONFIG][20330]
rwtTask[tMiWuTask.nMiWuSenLinTask18]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask17
rwtTask[tMiWuTask.nMiWuSenLinTask18]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask20
rwtTask[tMiWuTask.nMiWuSenLinTask18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask18]["DialogId"] = nDialog_Task18
rwtTask[tMiWuTask.nMiWuSenLinTask18]["ReqTrap1"] = nTrap_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask18]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask18]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask18]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask18]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask18]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask18]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task16
rwtTask[tMiWuTask.nMiWuSenLinTask18]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task16
--rwtTask[tMiWuTask.nMiWuSenLinTask18]["AwardId"] = nAwardId_Task18
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task18
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask18


--激战石像鬼
--rwtTask[tMiWuTask.nMiWuSenLinTask19] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["Title"] = tLuaText[LANGUAGE_CONFIG][20331]
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask18
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask20
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["DialogId"] = nDialog_Task19
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["ReqTrap1"] = nTrap_Task19
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["DynaNpcGroupGen"] = {nTrap_gen_Task19,nMonster_GenId_Gui}
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["DynaNpcGroupMapId"] = 2003
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["IsClickComplete"] = 0
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["StartAutoWay"] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["StartAutoWay"]["MapId"] = 2003
--rwtTask[tMiWuTask.nMiWuSenLinTask19]["StartAutoWay"]["Pos"] = sPos_ZhenXiang

rwtTask[tMiWuTask.nMiWuSenLinTask20] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask20]["Title"] = tLuaText[LANGUAGE_CONFIG][20332]
rwtTask[tMiWuTask.nMiWuSenLinTask20]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask18
rwtTask[tMiWuTask.nMiWuSenLinTask20]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask21
rwtTask[tMiWuTask.nMiWuSenLinTask20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask20]["KillMonsterGroup1" ]= nMonsterGroup_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask20]["MonsterGroupGenId"] = nMonster_GenId_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask20]["ReqTrap1"] = nTrap_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask20]["DialogId"] = nDialog_Task19
rwtTask[tMiWuTask.nMiWuSenLinTask20]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask20]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask20]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask20]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask20]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task20



rwtTask[tMiWuTask.nMiWuSenLinTask21] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Title"] = tLuaText[LANGUAGE_CONFIG][20333]
rwtTask[tMiWuTask.nMiWuSenLinTask21]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask20
rwtTask[tMiWuTask.nMiWuSenLinTask21]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask22
rwtTask[tMiWuTask.nMiWuSenLinTask21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask21]["ReqTrap1"] = nTrap_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask21]["DialogId"] = nDialog_Task21
rwtTask[tMiWuTask.nMiWuSenLinTask21]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask21]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask21]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask21]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask21]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask21]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask21]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task20
--rwtTask[tMiWuTask.nMiWuSenLinTask21]["AwardId"] = nAwardId_Task21
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task21
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask21


----到达XX级   卡等级
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20340]
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask21
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask22
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1]["NeedLevel"] = 44
--rwtTask[tMiWuTask.nMiWuSenLinTask21_1]["LackDialogId"] = nDialog_Task21_1

--意外再次降临
rwtTask[tMiWuTask.nMiWuSenLinTask22] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask22]["Title"] = tLuaText[LANGUAGE_CONFIG][20334]
rwtTask[tMiWuTask.nMiWuSenLinTask22]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask21
rwtTask[tMiWuTask.nMiWuSenLinTask22]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask23
rwtTask[tMiWuTask.nMiWuSenLinTask22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask22]["ReqTrap1"] = nTrap_Task20
--rwtTask[tMiWuTask.nMiWuSenLinTask22]["AcceptDialogId"] = nDialog_Task21_2
rwtTask[tMiWuTask.nMiWuSenLinTask22]["DialogId"] = nDialog_Task22
rwtTask[tMiWuTask.nMiWuSenLinTask22]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask22]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask22]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask22]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask22]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask22]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask22]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask22]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task20
rwtTask[tMiWuTask.nMiWuSenLinTask22]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task20

rwtTask[tMiWuTask.nMiWuSenLinTask23] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["Title"] = tLuaText[LANGUAGE_CONFIG][20335]
rwtTask[tMiWuTask.nMiWuSenLinTask23]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask22
rwtTask[tMiWuTask.nMiWuSenLinTask23]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask24
rwtTask[tMiWuTask.nMiWuSenLinTask23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask23]["KillMonsterGroup1" ]= nMonsterGroup_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["MonsterGroupGenId"] = nMonster_GenId_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["ReqTrap1"] = nTrap_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_Task23_2
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][4] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][4]["GenId"] = nMonster_GenId_Task23_3
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][5] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][5]["GenId"] = nGenId_NpcGroup_ADeLin
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][5]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask23]["DialogId"] = nDialog_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask23]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask23]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuTask.nMiWuSenLinTask23]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask23]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task23
rwtTask[tMiWuTask.nMiWuSenLinTask23]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task23


rwtTask[tMiWuTask.nMiWuSenLinTask24] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Title"] = tLuaText[LANGUAGE_CONFIG][20336]
rwtTask[tMiWuTask.nMiWuSenLinTask24]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask23
rwtTask[tMiWuTask.nMiWuSenLinTask24]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask25
rwtTask[tMiWuTask.nMiWuSenLinTask24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask24]["DialogId"] = nDialog_Task24
rwtTask[tMiWuTask.nMiWuSenLinTask24]["TaskNpc"] =  nNpc_ADeLin
rwtTask[tMiWuTask.nMiWuSenLinTask24]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_ADeLin
rwtTask[tMiWuTask.nMiWuSenLinTask24]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMiWuTask.nMiWuSenLinTask24]["IsClickComplete"] = 0
--rwtTask[tMiWuTask.nMiWuSenLinTask24]["AwardId"] = nAwardId_Task24
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task24
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask24
rwtTask[tMiWuTask.nMiWuSenLinTask24]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask24]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask24]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask24]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ADeLin
rwtTask[tMiWuTask.nMiWuSenLinTask24]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_ADeLin


--意想不到的重逢
rwtTask[tMiWuTask.nMiWuSenLinTask25] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask25]["Title"] = tLuaText[LANGUAGE_CONFIG][20337]
rwtTask[tMiWuTask.nMiWuSenLinTask25]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask24
rwtTask[tMiWuTask.nMiWuSenLinTask25]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask26
rwtTask[tMiWuTask.nMiWuSenLinTask25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMiWuTask.nMiWuSenLinTask25]["ReqCollectId1"] = nCollect_BaoZhu
rwtTask[tMiWuTask.nMiWuSenLinTask25]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask25]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask25]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_BaoZhu
rwtTask[tMiWuTask.nMiWuSenLinTask25]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask25]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask25]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask25]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask25]["StartAutoWay"]["FindWayGroupId"] = nCollect_BaoZhu
rwtTask[tMiWuTask.nMiWuSenLinTask25]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_BaoZhu


rwtTask[tMiWuTask.nMiWuSenLinTask26] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask26]["Title"] = tLuaText[LANGUAGE_CONFIG][20338]
rwtTask[tMiWuTask.nMiWuSenLinTask26]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask25
rwtTask[tMiWuTask.nMiWuSenLinTask26]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask27
rwtTask[tMiWuTask.nMiWuSenLinTask26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DialogId"] = nDialog_Task26
rwtTask[tMiWuTask.nMiWuSenLinTask26]["ReqTrap1"] = nTrap_Task26
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_BeiLa_1
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_Task26
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask26]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask26]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask26]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask26]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask26]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task26
rwtTask[tMiWuTask.nMiWuSenLinTask26]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task26


rwtTask[tMiWuTask.nMiWuSenLinTask27] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask27]["Title"] = tLuaText[LANGUAGE_CONFIG][20339]
rwtTask[tMiWuTask.nMiWuSenLinTask27]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask26
rwtTask[tMiWuTask.nMiWuSenLinTask27]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask28
rwtTask[tMiWuTask.nMiWuSenLinTask27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask27]["KillMonsterGroup1" ]= nMonsterGroup_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask27]["MonsterGroupGenId"] = nMonster_GenId_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask27]["ReqTrap1"] = nTrap_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_BeiLa_1
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask27]["DialogId"] = nDialog_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask27]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask27]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask27]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask27]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask27]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_BeiLa_1
rwtTask[tMiWuTask.nMiWuSenLinTask27]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_BeiLa_1


rwtTask[tMiWuTask.nMiWuSenLinTask28] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Title"] = tLuaText[LANGUAGE_CONFIG][20340]
rwtTask[tMiWuTask.nMiWuSenLinTask28]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask27
rwtTask[tMiWuTask.nMiWuSenLinTask28]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask29
rwtTask[tMiWuTask.nMiWuSenLinTask28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask28]["ReqTrap1"] = nTrap_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DialogId"] = nDialog_Task28
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_BeiLa_1
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask28]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask28]["IsClickComplete"] = 0
--rwtTask[tMiWuTask.nMiWuSenLinTask28]["AwardId"] = nAwardId_Task28
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task28
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask28]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask28
rwtTask[tMiWuTask.nMiWuSenLinTask28]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask28]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask28]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask28]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task27


--宝珠历险记
rwtTask[tMiWuTask.nMiWuSenLinTask29] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask29]["Title"] = tLuaText[LANGUAGE_CONFIG][20341]
rwtTask[tMiWuTask.nMiWuSenLinTask29]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask28
rwtTask[tMiWuTask.nMiWuSenLinTask29]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask30
rwtTask[tMiWuTask.nMiWuSenLinTask29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask29]["DialogId"] = nDialog_Task29
rwtTask[tMiWuTask.nMiWuSenLinTask29]["ReqTrap1"] = nTrap_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask29]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask29]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask29]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask29]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask29]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask29]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask29]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask29]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask29]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask29]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task27
rwtTask[tMiWuTask.nMiWuSenLinTask29]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task27


rwtTask[tMiWuTask.nMiWuSenLinTask30] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Title"] = tLuaText[LANGUAGE_CONFIG][20342]
rwtTask[tMiWuTask.nMiWuSenLinTask30]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask29
rwtTask[tMiWuTask.nMiWuSenLinTask30]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask31
rwtTask[tMiWuTask.nMiWuSenLinTask30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask30]["DialogId"] = nDialog_Task30
rwtTask[tMiWuTask.nMiWuSenLinTask30]["TaskNpc"] = nNpc_HaWeiTe
rwtTask[tMiWuTask.nMiWuSenLinTask30]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_HaWeiTe
rwtTask[tMiWuTask.nMiWuSenLinTask30]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask30]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask30]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask30]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask30]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_HaWeiTe
rwtTask[tMiWuTask.nMiWuSenLinTask30]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_HaWeiTe
--rwtTask[tMiWuTask.nMiWuSenLinTask30]["AwardId"] = nAwardId_Task30
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task30
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask30

--刺人的玫瑰
rwtTask[tMiWuTask.nMiWuSenLinTask31] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask31]["Title"] = tLuaText[LANGUAGE_CONFIG][20343]
rwtTask[tMiWuTask.nMiWuSenLinTask31]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask30
rwtTask[tMiWuTask.nMiWuSenLinTask31]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask32
rwtTask[tMiWuTask.nMiWuSenLinTask31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask31]["ReqTrap1"] = nTrap_Task31
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DialogId"] =  nDialog_Task31_New --这句要放进动画中 nDialog_Task31  --需要触发超长场景动画
rwtTask[tMiWuTask.nMiWuSenLinTask31]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_BeiLa_2
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1]["MapId"] = nMapId
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2] = {}
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NpcGroup_AiQi_1
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2]["MapId"] = nMapId
--rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_HaWeiTe
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_Task31
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask31]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask31]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask31]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask31]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask31]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task31
rwtTask[tMiWuTask.nMiWuSenLinTask31]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task31


rwtTask[tMiWuTask.nMiWuSenLinTask32] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Title"] = tLuaText[LANGUAGE_CONFIG][20344]
rwtTask[tMiWuTask.nMiWuSenLinTask32]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask31
rwtTask[tMiWuTask.nMiWuSenLinTask32]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask33
rwtTask[tMiWuTask.nMiWuSenLinTask32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask32]["KillMonsterGroup1" ]= nMonsterGroup_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["MonsterGroupGenId"] = nMonster_GenId_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["ReqTrap1"] = nTrap_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_Task32_2
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][4] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][4]["GenId"] = nMonster_GenId_Task32_3
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][4]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][5] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][5]["GenId"] = nGenId_NpcGroup_AiQi_2
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][5]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][6] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][6]["GenId"] = nGenId_NpcGroup_HeiSeJingJi
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][6]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask32]["DialogId"] = nDialog_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask32]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuTask.nMiWuSenLinTask32]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask32]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task32
--rwtTask[tMiWuTask.nMiWuSenLinTask32]["AwardId"] = nAwardId_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask32]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask32

--玫瑰团苦衷
rwtTask[tMiWuTask.nMiWuSenLinTask33] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Title"] = tLuaText[LANGUAGE_CONFIG][20345]
rwtTask[tMiWuTask.nMiWuSenLinTask33]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask32
rwtTask[tMiWuTask.nMiWuSenLinTask33]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask34
rwtTask[tMiWuTask.nMiWuSenLinTask33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMiWuTask.nMiWuSenLinTask33]["DialogId"] = nDialog_Task33
rwtTask[tMiWuTask.nMiWuSenLinTask33]["TaskNpc"] = nNpc_AiQi
rwtTask[tMiWuTask.nMiWuSenLinTask33]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask33]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_AiQi_2
rwtTask[tMiWuTask.nMiWuSenLinTask33]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask33]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
--rwtTask[tMiWuTask.nMiWuSenLinTask33]["AwardId"] = nAwardId_Task33
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task33
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask33]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask33
rwtTask[tMiWuTask.nMiWuSenLinTask33]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask33]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask33]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask33]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AiQi_2
rwtTask[tMiWuTask.nMiWuSenLinTask33]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_AiQi_2


--解封树心城
rwtTask[tMiWuTask.nMiWuSenLinTask34] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask34]["Title"] = tLuaText[LANGUAGE_CONFIG][20346]
rwtTask[tMiWuTask.nMiWuSenLinTask34]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask33
rwtTask[tMiWuTask.nMiWuSenLinTask34]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask35
rwtTask[tMiWuTask.nMiWuSenLinTask34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask34]["DialogId"] = nDialog_Task34
rwtTask[tMiWuTask.nMiWuSenLinTask34]["ReqTrap1"] = nTrap_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask34]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask34]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask34]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask34]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask34]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask34]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask34]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask34]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask34]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task32
rwtTask[tMiWuTask.nMiWuSenLinTask34]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task32

rwtTask[tMiWuTask.nMiWuSenLinTask35] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask35]["Title"] = tLuaText[LANGUAGE_CONFIG][20347]
rwtTask[tMiWuTask.nMiWuSenLinTask35]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask34
rwtTask[tMiWuTask.nMiWuSenLinTask35]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask36
rwtTask[tMiWuTask.nMiWuSenLinTask35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMiWuTask.nMiWuSenLinTask35]["KillMonsterGroup1" ]= nMonsterGroup_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["MonsterGroupGenId"] = nMonster_GenId_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["ReqTrap1"] = nTrap_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][1]["GenId"] = nMonster_GenId_Task35_2
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][2] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][3] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][3]["GenId"] = nTrap_gen_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask35]["DialogId"] = nDialog_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask35]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask35]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMiWuTask.nMiWuSenLinTask35]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask35]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask35]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_Task35


rwtTask[tMiWuTask.nMiWuSenLinTask36] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Title"] = tLuaText[LANGUAGE_CONFIG][20348]
rwtTask[tMiWuTask.nMiWuSenLinTask36]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask35
rwtTask[tMiWuTask.nMiWuSenLinTask36]["NextTaskId"] = tMiWuTask.nMiWuSenLinTask37
rwtTask[tMiWuTask.nMiWuSenLinTask36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMiWuTask.nMiWuSenLinTask36]["UnlockCopyMap1"] = nCopyMap_ShuXinCheng
rwtTask[tMiWuTask.nMiWuSenLinTask36]["UnlockCopyMap2"] = nCopyMap_ShuXinCheng_NorMal
rwtTask[tMiWuTask.nMiWuSenLinTask36]["ReqTrap1"] = nTrap_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask36]["DialogId"] = nDialog_Task37
rwtTask[tMiWuTask.nMiWuSenLinTask36]["DynaNpcGroupGen"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["DynaNpcGroupGen"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask36]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tMiWuTask.nMiWuSenLinTask36]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMiWuTask.nMiWuSenLinTask36]["IsClickComplete"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask36]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask36]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask36]["StartAutoWay"]["FindWayGroupId"] = nTrap_Task35
rwtTask[tMiWuTask.nMiWuSenLinTask36]["StartAutoWay"]["FindWayGenId"] = nTrap_gen_Task35
--rwtTask[tMiWuTask.nMiWuSenLinTask36]["AwardId"] = nAwardId_Task36
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task36
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask36]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask36

--通关树心城
rwtTask[tMiWuTask.nMiWuSenLinTask37] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Title"] = tLuaText[LANGUAGE_CONFIG][20349]
rwtTask[tMiWuTask.nMiWuSenLinTask37]["PreTaskId"] = tMiWuTask.nMiWuSenLinTask36
rwtTask[tMiWuTask.nMiWuSenLinTask37]["NextTaskId"] = 10437
rwtTask[tMiWuTask.nMiWuSenLinTask37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tMiWuTask.nMiWuSenLinTask37]["IsClickComplete"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask37]["OpenCopyMap"] = nCopyMap_ShuXinCheng
rwtTask[tMiWuTask.nMiWuSenLinTask37]["PassCopyMap1"] = nCopyMap_ShuXinCheng
rwtTask[tMiWuTask.nMiWuSenLinTask37]["PassCopyMapCount1"] = 1
rwtTask[tMiWuTask.nMiWuSenLinTask37]["OpenMercenaryTask"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["OpenMercenaryTask"]["AreaId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask37]["OpenMercenaryTask"]["TownId"] = 200305
--rwtTask[tMiWuTask.nMiWuSenLinTask37]["AwardId"] = nAwardId_Task37
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"][1] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Task37
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMiWuTask.nMiWuSenLinTask37]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMiWuTask.nMiWuSenLinTask37
rwtTask[tMiWuTask.nMiWuSenLinTask37]["StartAutoWay"] = {}
rwtTask[tMiWuTask.nMiWuSenLinTask37]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMiWuTask.nMiWuSenLinTask37]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMiWuTask.nMiWuSenLinTask37]["StartAutoWay"]["FindWayPos"] = sPos_CopyMap
--完成后接取 
rwtTask[tMiWuTask.nMiWuSenLinTask37]["AcceptExtraTaskId"] = 70167  --支线任务 自律联盟-老旧的赏金账单

--完成任务后刷新第三片区宝箱
rwtTask[tMiWuTask.nMiWuSenLinTask37]["OpenAreaBox"] = 2005


--------------------------------------------------------------------------------


