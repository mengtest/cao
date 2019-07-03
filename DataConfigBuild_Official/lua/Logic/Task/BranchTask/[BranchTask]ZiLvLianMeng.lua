--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--地图ID
local nMapId_LMDL = 2001
local nMapId_ZHUC = 1000
local nMapId_ZLLM = 1001
local nMapId_GJNE = 2003

--任务ID   70105  70194  
local tTask = {}
-----------------------------------------------自律联盟万事通-------------------------------------------
tTask.nZiLvLianMeng1_1 =  70105--自律联盟的万事通
tTask.nZiLvLianMeng1_2 =  70106--想知道的事
--独特的“纪念品”
tTask.nZiLvLianMeng2   =  70107--难以拒绝的推销
-----------------------------------------------阿米达铁律之认真-------------------------------------------
tTask.nZiLvLianMeng3_1 =  70108--铁的纪律
tTask.nZiLvLianMeng3_2 =  70109--魔化生物
tTask.nZiLvLianMeng3_3 =  70110--向安道夫汇报
tTask.nZiLvLianMeng3_4 =  70111--寻找不认真的莱斯
tTask.nZiLvLianMeng3_5 =  70112--带佣兵莱斯回联盟
--阿米达铁律之恪守-纠纷
tTask.nZiLvLianMeng4_1 =  70113--与自律联盟吉拉对话
tTask.nZiLvLianMeng4_2 =  70114--展开毫无头绪的调查
tTask.nZiLvLianMeng4_3 =  70115--寻找佣兵乌奇
tTask.nZiLvLianMeng4_3_1 = 70195  --寻找线索（解谜）
tTask.nZiLvLianMeng4_4 =  70116--严厉的处罚
--阿米达铁律之奉献
tTask.nZiLvLianMeng5_1 =  70117--听听镇民的赞赏
tTask.nZiLvLianMeng5_2 =  70118--找到特卡勒
tTask.nZiLvLianMeng5_3 =  70119--去大贝湾抓鱼
tTask.nZiLvLianMeng5_4 =  70120--返回特卡勒处
tTask.nZiLvLianMeng5_5 =  70121--回联盟领奖
-----------------------------------------------制服设计师-------------------------------------------
tTask.nZiLvLianMeng6_1 =  70122--找吉拉对话
tTask.nZiLvLianMeng6_2 =  70123--购买布料
tTask.nZiLvLianMeng6_3 =  70124--前往裁缝道奇处
tTask.nZiLvLianMeng6_4 =  70125--跟裁缝道奇对话
tTask.nZiLvLianMeng6_5 =  70126--前往风车镇特饮店
tTask.nZiLvLianMeng6_6 =  70127--返回裁缝道奇处
tTask.nZiLvLianMeng6_7 =  70128--找到熊皮
tTask.nZiLvLianMeng6_8 =  70129--将熊皮带给裁缝
tTask.nZiLvLianMeng6_9 =  70130--向吉拉询问
-----------------------------------------------自律联盟被盯上-------------------------------------------
tTask.nZiLvLianMeng7 = 70192 --（和老乞丐对话）
tTask.nZiLvLianMeng7_1 =  70131--突发紧急情况
tTask.nZiLvLianMeng7_2 =  70132--制止狼人
tTask.nZiLvLianMeng7_3 =  70133--前往湖畔镇寻找
tTask.nZiLvLianMeng7_4 =  70134--护送苏菲回联盟
-----------------------------------------------最后一个佣兵任务-------------------------------------------
tTask.nZiLvLianMeng8 = 70193 --（和吉拉对话）
tTask.nZiLvLianMeng8_1 =  70135--听老佣兵讲故事
tTask.nZiLvLianMeng8_2 =  70136--前往月神森林
tTask.nZiLvLianMeng8_3 =  70137--前往乔西处
tTask.nZiLvLianMeng8_4 =  70138--将信件带给杰克
tTask.nZiLvLianMeng8_5 =  70139--寻找紫鸢花小姐
tTask.nZiLvLianMeng8_6 =  70140--前往黄胡子特饮店
tTask.nZiLvLianMeng8_7 =  70141--战胜沙漠毒蝎
tTask.nZiLvLianMeng8_8 =  70142--返回黄胡子特饮店
tTask.nZiLvLianMeng8_9 =  70143--前往玛瑙街78号
tTask.nZiLvLianMeng8_10 = 70144 --返回杰克处
tTask.nZiLvLianMeng8_11 = 70145 --前往边陲沙漠
tTask.nZiLvLianMeng8_12 = 70146 --向杰克汇报
-----------------------------------------------学霸支招-------------------------------------------
tTask.nZiLvLianMeng9_1 =  70147--和詹尼佛大妈对话
tTask.nZiLvLianMeng9_2 =  70148--找吉拉解决难题
tTask.nZiLvLianMeng9_3 =  70149--告诉詹尼佛大妈
-----------------------------------------------搭配特饮的小菜-------------------------------------------
--下酒小菜
tTask.nZiLvLianMeng10_1 = 70150 --和安道夫对话
tTask.nZiLvLianMeng10_2 = 70151 --前往购买面包
tTask.nZiLvLianMeng10_3 = 70152 --回复铁臂大人
--徽章的意义：剑
tTask.nZiLvLianMeng11_1 = 70153 --徽章的意义：剑
tTask.nZiLvLianMeng11_2 = 70154 --和萨林对话
--徽章的意义：翅膀
tTask.nZiLvLianMeng12_1 = 70155 --和安道夫对话
tTask.nZiLvLianMeng12_2 = 70156 --寻找可以帮助的人
tTask.nZiLvLianMeng12_3 = 70157 --抓湖畔鲈鱼(前杀怪)
tTask.nZiLvLianMeng12_4 = 70158 --抓湖畔鲈鱼
tTask.nZiLvLianMeng12_5 = 70159 --购买烹饪佐料
tTask.nZiLvLianMeng12_6 = 70160 --准备晚餐
tTask.nZiLvLianMeng12_7 = 70161 --把晚餐送给纽曼克
--徽章的意义：爱心
tTask.nZiLvLianMeng13_1 = 70162 --和安道夫对话
tTask.nZiLvLianMeng13_2 = 70163 --和库伯拉长老对话
tTask.nZiLvLianMeng13_3 = 70164 --和麦提对话
tTask.nZiLvLianMeng13_4 = 70165 --和桑妮对话
tTask.nZiLvLianMeng13_5 = 70166 --返回自律联盟
-----------------------------------------------老旧的赏金账单-------------------------------------------
tTask.nZiLvLianMeng14_1 = 70167 --背包里的意外发现
tTask.nZiLvLianMeng14_2 = 70194 --讨论对策
tTask.nZiLvLianMeng14_3 = 70168 --前往罗兰镇
tTask.nZiLvLianMeng14_4 = 70169 --寻找小雷恩
tTask.nZiLvLianMeng14_5 = 70170 --和小雷恩对话
tTask.nZiLvLianMeng14_6 = 70171 --回到老雷恩处
tTask.nZiLvLianMeng14_7 = 70172 --铁臂安道夫
----全权负责人-----
tTask.nZiLvLianMeng15_1 = 70174 --寻找联盟负责人-1
tTask.nZiLvLianMeng15_2 = 70175 --寻找联盟负责人-2
tTask.nZiLvLianMeng15_3 = 70176 --寻找联盟负责人-3
tTask.nZiLvLianMeng15_4 = 70177 --寻找联盟负责人-4
----神秘人的委派---
tTask.nZiLvLianMeng16_1 = 70178 --安道夫有安排
tTask.nZiLvLianMeng16_2 = 70179 --寻找接头人
tTask.nZiLvLianMeng16_3 = 70180 --战胜暗黑战魂
tTask.nZiLvLianMeng16_4 = 70181 --回报安道夫
----被篡改的历史----
tTask.nZiLvLianMeng17_1 = 70182 --(和伦纳德说话)
tTask.nZiLvLianMeng17_2 = 70183 --镇长大卫的来信
tTask.nZiLvLianMeng17_3 = 70184 --询问铁臂安道夫
tTask.nZiLvLianMeng17_4 = 70185 --三个疑问
tTask.nZiLvLianMeng17_5 = 70186 --把答案告诉大卫
-----------------------------------------------比多猫的航海传奇-------------------------------------------
tTask.nZiLvLianMeng18_1 = 70187 --比多猫的额外任务
tTask.nZiLvLianMeng18_2 = 70188 --前往大贝湾调查
tTask.nZiLvLianMeng18_3 = 70189 --回复比多猫
--比多猫的恩人
tTask.nZiLvLianMeng19_1 = 70190 --和比多猫对话
tTask.nZiLvLianMeng19_2 = 70191 --把礼物送给加恩

--对话ID  11674  11793 
local tDialog = {}
tDialog.nTask1_1 =  11674  --  动画中
tDialog.nTask1_2 =  11845
tDialog.nTask2   =  11676
tDialog.nTask3_1 =  11677
tDialog.nTask3_2 =  11678
tDialog.nTask3_3 =  11679
tDialog.nTask3_4 =  11680
tDialog.nTask3_5 =  11681
tDialog.nTask4_1 =  11682
tDialog.nTask4_2 =  11683
tDialog.nTask4_3 =  11684 --有人吗！<br>似乎没有人在家……  --11761 --这里有一袋精细赤砂，我在魔法学校见过这种材料。
tDialog.nTask4_4 =  11685
tDialog.nTask5_1 =  11686
tDialog.nTask5_2 =  11687
tDialog.nTask5_3 =  11688 --采集，抓鱼，没有说话所以这个id还没被用
tDialog.nTask5_4 =  11689
tDialog.nTask5_5 =  11690
tDialog.nTask6_1 =  11691
tDialog.nTask6_2 =  11692
tDialog.nTask6_3 =  11693
tDialog.nTask6_4 =  11694
tDialog.nTask6_5 =  11695
tDialog.nTask6_6 =  11696 --动画里 呜呜呜，让人感动……我要再多送你们一些特饮……11762
tDialog.nTask6_7 =  11697
tDialog.nTask6_8 =  11698
tDialog.nTask6_9 =  11699
tDialog.nTask7   =  11771 ---是我眼花了，还是我眼花了？连狼人都能随意进城了。<br>也不知道自律联盟的佣兵可不可以对付得了他们……   11771
tDialog.nTask7_1 =  11700
tDialog.nTask7_2 =  11701  --战斗后对白  你们到底想干什么？竟敢闯进自律联盟闹事！-- 11763
tDialog.nTask7_3 =  11702
tDialog.nTask7_4 =  11703
tDialog.nTask8   =  11772  --吉拉，你手上拿的是什么？  11772
tDialog.nTask8_1 =  11704
tDialog.nTask8_2 =  11705
tDialog.nTask8_3 =  11706
tDialog.nTask8_4 =  11707
tDialog.nTask8_5 =  11708
tDialog.nTask8_6 =  11709
tDialog.nTask8_7 =  11710
tDialog.nTask8_8 =  11711
tDialog.nTask8_9 =  11712
tDialog.nTask8_10 = 11713
tDialog.nTask8_11 = 11714
tDialog.nTask8_12 = 11715
tDialog.nTask9_1 =  11716
tDialog.nTask9_2 =  11717
tDialog.nTask9_3 =  11718
tDialog.nTask10_1 = 11719
tDialog.nTask10_2 = 11720
tDialog.nTask10_3 = 11721
tDialog.nTask11_1 = 11722
tDialog.nTask11_2 = 11723  --战后对白做的不错嘛！你们通过了我的考核， 但一个好的佣兵是会不断提高自己的。 --11765
tDialog.nTask12_1 = 11724
tDialog.nTask12_2 = 11725
tDialog.nTask12_3 = 11726  --现在可以放心去抓鱼了！11767
tDialog.nTask12_4 = 11727
tDialog.nTask12_5 = 11728
tDialog.nTask12_6 = 11729 --那就开始吧！本大小姐的厨艺个人秀时间到了！11729 --鲈鱼饭配番薯冷汤，大功告成！  11766
tDialog.nTask12_7 = 11730
tDialog.nTask13_1 = 11731
tDialog.nTask13_2 = 11732
tDialog.nTask13_3 = 11733
tDialog.nTask13_4 = 11734
tDialog.nTask13_5 = 11735
tDialog.nTask14_1 = 11736 
tDialog.nTask14_2 = 11773		--（看来安道夫先生并不想提及这件事情，<br>我们还是不要勉强他了。 11773）
tDialog.nTask14_3 = 11737
tDialog.nTask14_4 = 11738
tDialog.nTask14_5 = 11739
tDialog.nTask14_6 = 11740
tDialog.nTask14_7 = 11741
--tDialog.nTask15_1 = 11742
tDialog.nTask15_1 = 11743
tDialog.nTask15_2 = 11744
tDialog.nTask15_3 = 11745
tDialog.nTask15_4 = 11746
tDialog.nTask16_1 = 11747
tDialog.nTask16_2 = 11748
tDialog.nTask16_3 = 11749   --战斗后对白  多帕密探，多帕密探？花蕊，花蕊，花蕊？  --11768
tDialog.nTask16_4 = 11750
tDialog.nTask17_1 = 11751
tDialog.nTask17_2 = 11752
tDialog.nTask17_3 = 11753
tDialog.nTask17_4 = 11754
tDialog.nTask17_5 = 11755
tDialog.nTask18_1 = 11756
tDialog.nTask18_2 = 11855   --时间过去太久，礁石把它覆盖住了，让我用爆裂魔法把这块礁石给击碎。-- 那边的礁石中间似乎有什么东西，我们过去看看！11769  --这是竟然是一块金属片？从形状上看，很像是船的碎片。但为什么这么久了都没有生锈？11770
tDialog.nTask18_3 = 11758
tDialog.nTask19_1 = 11759
tDialog.nTask19_2 = 11760

--GenId 99980001  99980040 
--陷阱ID  30531  30550 
local tTrap = {}    
tTrap.nTrap_Task3_2 = 30531
tTrap.nTrap_GenId_Task3_2 = 99980001
rwtNpcGroup[tTrap.nTrap_Task3_2] = rwtNpcGroup[tTrap.nTrap_Task3_2] or {} 
rwtNpcGroup[tTrap.nTrap_Task3_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task3_4 = 30532
tTrap.nTrap_GenId_Task3_4 = 99980002
rwtNpcGroup[tTrap.nTrap_Task3_4] = rwtNpcGroup[tTrap.nTrap_Task3_4] or {} 
rwtNpcGroup[tTrap.nTrap_Task3_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_ZLLMMenKou = 30533
tTrap.nTrap_GenId_ZLLMMenKou = 99980003
rwtNpcGroup[tTrap.nTrap_ZLLMMenKou] = rwtNpcGroup[tTrap.nTrap_ZLLMMenKou] or {} 
rwtNpcGroup[tTrap.nTrap_ZLLMMenKou]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task4_3 = 30534
tTrap.nTrap_GenId_Task4_3 = 99980004
rwtNpcGroup[tTrap.nTrap_Task4_3] = rwtNpcGroup[tTrap.nTrap_Task4_3] or {} 
rwtNpcGroup[tTrap.nTrap_Task4_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_DaoQiJia = 30535
tTrap.nTrap_GenId_DaoQiJia = 99980005
rwtNpcGroup[tTrap.nTrap_DaoQiJia] = rwtNpcGroup[tTrap.nTrap_DaoQiJia] or {} 
rwtNpcGroup[tTrap.nTrap_DaoQiJia]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task6_7 = 30536
tTrap.nTrap_GenId_Task6_7 = 99980006
rwtNpcGroup[tTrap.nTrap_Task6_7] = rwtNpcGroup[tTrap.nTrap_Task6_7] or {} 
rwtNpcGroup[tTrap.nTrap_Task6_7]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task7_1 = 30537
tTrap.nTrap_GenId_Task7_1 = 99980007
rwtNpcGroup[tTrap.nTrap_Task7_1] = rwtNpcGroup[tTrap.nTrap_Task7_1] or {} 
rwtNpcGroup[tTrap.nTrap_Task7_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task7_2 = 30538
tTrap.nTrap_GenId_Task7_2 = 99980008
rwtNpcGroup[tTrap.nTrap_Task7_2] = rwtNpcGroup[tTrap.nTrap_Task7_2] or {} 
rwtNpcGroup[tTrap.nTrap_Task7_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task8_3 = 30539
tTrap.nTrap_GenId_Task8_3 = 99980009
rwtNpcGroup[tTrap.nTrap_Task8_3] = rwtNpcGroup[tTrap.nTrap_Task8_3] or {} 
rwtNpcGroup[tTrap.nTrap_Task8_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task8_6 = 30540
tTrap.nTrap_GenId_Task8_6 = 99980010
rwtNpcGroup[tTrap.nTrap_Task8_6] = rwtNpcGroup[tTrap.nTrap_Task8_6] or {} 
rwtNpcGroup[tTrap.nTrap_Task8_6]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task8_9 = 30541
tTrap.nTrap_GenId_Task8_9 = 99980011
rwtNpcGroup[tTrap.nTrap_Task8_9] = rwtNpcGroup[tTrap.nTrap_Task8_9] or {} 
rwtNpcGroup[tTrap.nTrap_Task8_9]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task8_10 = 30542
tTrap.nTrap_GenId_Task8_10 = 99980012
rwtNpcGroup[tTrap.nTrap_Task8_10] = rwtNpcGroup[tTrap.nTrap_Task8_10] or {} 
rwtNpcGroup[tTrap.nTrap_Task8_10]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task12_3 = 30544
tTrap.nTrap_GenId_Task12_3 = 99980014
rwtNpcGroup[tTrap.nTrap_Task12_3] = rwtNpcGroup[tTrap.nTrap_Task12_3] or {} 
rwtNpcGroup[tTrap.nTrap_Task12_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_LaoLeiEnJia = 30545
tTrap.nTrap_GenId_LaoLeiEnJia = 99980015
rwtNpcGroup[tTrap.nTrap_LaoLeiEnJia] = rwtNpcGroup[tTrap.nTrap_LaoLeiEnJia] or {} 
rwtNpcGroup[tTrap.nTrap_LaoLeiEnJia]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_Task14_3 = 30546
tTrap.nTrap_GenId_Task14_3 = 99980016
rwtNpcGroup[tTrap.nTrap_Task14_3] = rwtNpcGroup[tTrap.nTrap_Task14_3] or {} 
rwtNpcGroup[tTrap.nTrap_Task14_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

tTrap.nTrap_JieTouChu = 30547
tTrap.nTrap_GenId_JieTouChu = 99980017
rwtNpcGroup[tTrap.nTrap_JieTouChu] = rwtNpcGroup[tTrap.nTrap_JieTouChu] or {} 
rwtNpcGroup[tTrap.nTrap_JieTouChu]["Type"] = CONST_NPCGROUP_TYPE.Trap

--采集物ID 60300  60304 
local tCollect= {}

tCollect.nCollect_YuQun = 60300
tCollect.nCollect_GenId_YuQun = 99980018
rwtNpcGroup[tCollect.nCollect_YuQun] = rwtNpcGroup[tCollect.nCollect_YuQun] or {} 
rwtNpcGroup[tCollect.nCollect_YuQun]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_HuZhongDeYu = 60301
tCollect.nCollect_GenId_HuZhongDeYu = 99980019
rwtNpcGroup[tCollect.nCollect_HuZhongDeYu] = rwtNpcGroup[tCollect.nCollect_HuZhongDeYu] or {} 
rwtNpcGroup[tCollect.nCollect_HuZhongDeYu]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_PengTiao = 60302
tCollect.nCollect_GenId_PengTiao = 99980020
rwtNpcGroup[tCollect.nCollect_PengTiao] = rwtNpcGroup[tCollect.nCollect_PengTiao] or {} 
rwtNpcGroup[tCollect.nCollect_PengTiao]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_JiaoShi = 60303
tCollect.nCollect_GenId_JiaoShi = 99980021
rwtNpcGroup[tCollect.nCollect_JiaoShi] = rwtNpcGroup[tCollect.nCollect_JiaoShi] or {} 
rwtNpcGroup[tCollect.nCollect_JiaoShi]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_JiaoShi]["DialogId"] = 11769


--怪物ID  monster 9000304  9000313  monstergroup 900385  900394 
local tMonster = {}
tMonster.nMonster_Task3_2 = 9000304  --魔化异兽     --阿米达铁律之认真
tMonster.nMonsterGroup_Task3_2 = 900385
tMonster.nMonsterGroup_GenId_Task3_2 = 99980022

tMonster.nMonster_Task6_7 = 9000305  --熊人战士     --丑丑的制服
tMonster.nMonsterGroup_Task6_7 = 900386
tMonster.nMonsterGroup_GenId_Task6_7 = 99980023

tMonster.nMonster_Task7_2 = 9000306--狼人战士       --自律联盟被盯上
tMonster.nMonsterGroup_Task7_2 = 900387
tMonster.nMonsterGroup_GenId_Task7_2 = 99980024

tMonster.nMonster_Task8_6 = 9000307--沙漠毒蝎       --最后一个佣兵任务
tMonster.nMonsterGroup_Task8_6 = 900388
tMonster.nMonsterGroup_GenId_Task8_6 = 99980025

tMonster.nMonster_Task8_10 = 9000308--枯叶蜂王      --最后一个佣兵任务
tMonster.nMonsterGroup_Task8_10 = 900389
tMonster.nMonsterGroup_GenId_Task8_10 = 99980026

tMonster.nMonster_Task11_2 = 9000309--禁卫军       --徽章的意义：剑
tMonster.nMonsterGroup_Task11_2 = 900390
tMonster.nMonsterGroup_GenId_Task11_2 = 99980027

tMonster.nMonster_Task12_3 = 9000310--熊人战士      --徽章的意义：翅膀
tMonster.nMonsterGroup_Task12_3 = 900391
tMonster.nMonsterGroup_GenId_Task12_3 = 99980028

tMonster.nMonster_Task14_3 = 9000311--草原哥布林     --老旧的赏金账单
tMonster.nMonsterGroup_Task14_3 = 900392
tMonster.nMonsterGroup_GenId_Task14_3 = 99980029

tMonster.nMonster_Task16_2 = 9000312--暗黑战魂      --统领的秘密委派
tMonster.nMonsterGroup_Task16_2 = 900393
tMonster.nMonsterGroup_GenId_Task16_2 = 99980030

--NPCID Npc (3564  3573)  (3577  3588)  NpcGroup 20518  20527 
local tSingleNpc = {}

tSingleNpc.nNpc_TouTiaoGeBuLin = 3182
tSingleNpc.nNpcGroup_TouTiaoGeBuLin = 20219
tSingleNpc.nNpcGroup_GenId_TouTiaoGeBuLin = 1001010

tSingleNpc.nNpc_AnDaoFu = 3005
tSingleNpc.nNpcGroup_AnDaoFu = 20112
tSingleNpc.nNpcGroup_GenId_AnDaoFu = 2001655

tSingleNpc.nNpc_JiLa = 3042
tSingleNpc.nNpcGroup_JiLa = 20114
tSingleNpc.nNpcGroup_GenId_JiLa = 2001657

tSingleNpc.nNpc_LunNaDe = 3043
tSingleNpc.nNpcGroup_LunNaDe = 20113
tSingleNpc.nNpcGroup_GenId_LunNaDe = 2001656

tSingleNpc.nNpc_TeKaLe = 3564
tSingleNpc.nNpcGroup_TeKaLe = 20518
tSingleNpc.nNpcGroup_GenId_TeKaLe = 99980031
rwtNpc[tSingleNpc.nNpc_TeKaLe] = rwtNpc[tSingleNpc.nNpc_TeKaLe] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_TeKaLe] = rwtNpcGroup[tSingleNpc.nNpcGroup_TeKaLe] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_TeKaLe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_TeKaLe]["NpcId"] = tSingleNpc.nNpc_TeKaLe

--tSingleNpc.nNpc_AiSaiEr = 3101
--tSingleNpc.nNpcGroup_AiSaiEr = 20116
--tSingleNpc.nNpcGroup_GenId_AiSaiEr = 2001659

tSingleNpc.nNpc_GeBuLinShangFan = 3211
tSingleNpc.nNpcGroup_GeBuLinShangFan = 20253
tSingleNpc.nNpcGroup_GenId_GeBuLinShangFan = 1000075

tSingleNpc.nNpc_JiuGuanLaoBanZuoYi = 3099
tSingleNpc.nNpcGroup_JiuGuanLaoBanZuoYi = 20140
tSingleNpc.nNpcGroup_GenId_JiuGuanLaoBanZuoYi = 2001717

tSingleNpc.nNpc_LaoQiGai = 3268
tSingleNpc.nNpcGroup_LaoQiGai = 20147
tSingleNpc.nNpcGroup_GenId_LaoQiGai = 1000013

tSingleNpc.nNpc_ShaoNvSuFei = 3565
tSingleNpc.nNpcGroup_ShaoNvSuFei = 20519
tSingleNpc.nNpcGroup_GenId_ShaoNvSuFei = 99980032
rwtNpc[tSingleNpc.nNpc_ShaoNvSuFei] = rwtNpc[tSingleNpc.nNpc_ShaoNvSuFei] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_ShaoNvSuFei] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShaoNvSuFei] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_ShaoNvSuFei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_ShaoNvSuFei]["NpcId"] = tSingleNpc.nNpc_ShaoNvSuFei

tSingleNpc.nNpc_LaoYongBing = 3566
tSingleNpc.nNpcGroup_LaoYongBing = 20520
tSingleNpc.nNpcGroup_GenId_LaoYongBing = 99980033
rwtNpc[tSingleNpc.nNpc_LaoYongBing] = rwtNpc[tSingleNpc.nNpc_LaoYongBing] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LaoYongBing] = rwtNpcGroup[tSingleNpc.nNpcGroup_LaoYongBing] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_LaoYongBing]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LaoYongBing]["NpcId"] = tSingleNpc.nNpc_LaoYongBing

tSingleNpc.nNpc_DeLuYiShouLing = 3156
tSingleNpc.nNpcGroup_DeLuYiShouLing = 20198
tSingleNpc.nNpcGroup_GenId_DeLuYiShouLing = 20030086

tSingleNpc.nNpc_ZhenZhangYiNuoKe = 3129
tSingleNpc.nNpcGroup_ZhenZhangYiNuoKe = 20165
tSingleNpc.nNpcGroup_GenId_ZhenZhangYiNuoKe = 20030023

tSingleNpc.nNpc_JiuGuanHuangHuZi = 3121
tSingleNpc.nNpcGroup_JiuGuanHuangHuZi = 10013
tSingleNpc.nNpcGroup_GenId_JiuGuanHuangHuZi = 20030015

tSingleNpc.nNpc_ZhanFuNiDaMa = 3201
tSingleNpc.nNpcGroup_ZhanFuNiDaMa = 20229
tSingleNpc.nNpcGroup_GenId_ZhanFuNiDaMa = 1000048

tSingleNpc.nNpc_MianBaoDaWangANuo = 3190
tSingleNpc.nNpcGroup_MianBaoDaWangANuo = 20231
tSingleNpc.nNpcGroup_GenId_MianBaoDaWangANuo = 1000050

tSingleNpc.nNpc_GeBuLinShangFanMaiKen = 3269
tSingleNpc.nNpcGroup_GeBuLinShangFanMaiKen = 20150
tSingleNpc.nNpcGroup_GenId_GeBuLinShangFanMaiKen = 1000016

tSingleNpc.nNpc_LaoNiuManKe = 3567
tSingleNpc.nNpcGroup_LaoNiuManKe = 20521
tSingleNpc.nNpcGroup_GenId_LaoNiuManKe = 99980034
rwtNpc[tSingleNpc.nNpc_LaoNiuManKe] = rwtNpc[tSingleNpc.nNpc_LaoNiuManKe] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LaoNiuManKe] = rwtNpcGroup[tSingleNpc.nNpcGroup_LaoNiuManKe] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_LaoNiuManKe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LaoNiuManKe]["NpcId"] = tSingleNpc.nNpc_LaoNiuManKe

tSingleNpc.nNpc_KuBoLaZhangLao = 3008
tSingleNpc.nNpcGroup_KuBoLaZhangLao = 20057
tSingleNpc.nNpcGroup_GenId_KuBoLaZhangLao = 2001412

tSingleNpc.nNpc_MaiTi = 3002
tSingleNpc.nNpcGroup_MaiTi = 20051
tSingleNpc.nNpcGroup_GenId_MaiTi = 2001383

tSingleNpc.nNpc_XiuNvSangNi = 2035
tSingleNpc.nNpcGroup_XiuNvSangNi = 10004
tSingleNpc.nNpcGroup_GenId_XiuNvSangNi = 2001112

tSingleNpc.nNpc_XiaoLeiEn = 3570
tSingleNpc.nNpcGroup_XiaoLeiEn = 20524
tSingleNpc.nNpcGroup_GenId_XiaoLeiEn = 99980035
rwtNpc[tSingleNpc.nNpc_XiaoLeiEn] = rwtNpc[tSingleNpc.nNpc_XiaoLeiEn] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_XiaoLeiEn] = rwtNpcGroup[tSingleNpc.nNpcGroup_XiaoLeiEn] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_XiaoLeiEn]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_XiaoLeiEn]["NpcId"] = tSingleNpc.nNpc_XiaoLeiEn

tSingleNpc.nNpc_BiDuoMao = 3080
tSingleNpc.nNpcGroup_BiDuoMao = 20115
tSingleNpc.nNpcGroup_GenId_BiDuoMao = 2001658

tSingleNpc.nNpc_DaWei = 3004
tSingleNpc.nNpcGroup_DaWei = 10010
tSingleNpc.nNpcGroup_GenId_DaWei = 2001537

--黛茜
tSingleNpc.nNpc_JiaEn = 3569
tSingleNpc.nNpcGroup_JiaEn = 20523
tSingleNpc.nNpcGroup_GenId_JiaEn = 99980037
rwtNpc[tSingleNpc.nNpc_JiaEn] = rwtNpc[tSingleNpc.nNpc_JiaEn] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_JiaEn] = rwtNpcGroup[tSingleNpc.nNpcGroup_JiaEn] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_JiaEn]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_JiaEn]["NpcId"] = tSingleNpc.nNpc_JiaEn

tSingleNpc.nNpc_Salin = 3138
tSingleNpc.nNpcGroup_Salin = 20525
tSingleNpc.nNpcGroup_GenId_Salin = 99980036
rwtNpc[tSingleNpc.nNpc_Salin] = rwtNpc[tSingleNpc.nNpc_Salin] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_Salin] = rwtNpcGroup[tSingleNpc.nNpcGroup_Salin] or {} 
rwtNpcGroup[tSingleNpc.nNpcGroup_Salin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_Salin]["NpcId"] = tSingleNpc.nNpc_Salin


--解谜
tSingleNpc.nNpcGroup_Build_WuQiHome = 10023
tSingleNpc.nGenId_Build_WuQiHome = 20010177

rwtNpcGroup[tSingleNpc.nNpcGroup_Build_WuQiHome] = rwtNpcGroup[tSingleNpc.nNpcGroup_Build_WuQiHome] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_Build_WuQiHome]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_Build_WuQiHome]["PuzzleId"] = 108


--3570,小雷恩,
--3571,魔化异兽,
--3572,佣兵莱斯,
--3573,冶炼大王德萨,
--3577,小魔法师阿兰杰,
--3578,镇民布姆,
--3579,镇民茨维舒,
--3580,裁缝道奇,
--3581,熊人战士,
--3582,联盟卫兵,
--3583,老德鲁伊乔西,
--3584,少女洛塔,
--3585,陶瓷匠老雷恩,
--3586,多帕密探,
----解谜
--rwtNpcGroup[10005] = rwtNpcGroup[10005] or {}  --杂货屋
--rwtNpcGroup[10005]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
--rwtNpcGroup[10005]["PuzzleId"] = 101

--奖励
--2000220  2000239 
local tZiLvLianMengAwardId = {}
tZiLvLianMengAwardId[1]  =	2000220
tZiLvLianMengAwardId[2]  =	2000221
tZiLvLianMengAwardId[3]  =	2000222
tZiLvLianMengAwardId[4]  =	2000223
tZiLvLianMengAwardId[5]  =	2000224
tZiLvLianMengAwardId[6]  =	2000225
tZiLvLianMengAwardId[7]  =	2000226
tZiLvLianMengAwardId[8]  =	2000227
tZiLvLianMengAwardId[9]  =	2000228
tZiLvLianMengAwardId[10] =	2000229
tZiLvLianMengAwardId[11] =	2000230
tZiLvLianMengAwardId[12] =	2000231
tZiLvLianMengAwardId[13] =	2000232
tZiLvLianMengAwardId[14] =	2000233
tZiLvLianMengAwardId[15] =	2000234
tZiLvLianMengAwardId[16] =	2000235
tZiLvLianMengAwardId[17] =	2000236
tZiLvLianMengAwardId[18] =	2000237
tZiLvLianMengAwardId[19] =	2000238
tZiLvLianMengAwardId[20] =	2000239
tZiLvLianMengAwardId[21] =	2000315


-----------------------------------------------自律联盟万事通-------------------------------------------
--自律联盟的万事通
rwtTask[tTask.nZiLvLianMeng1_1] = {}
rwtTask[tTask.nZiLvLianMeng1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21404]
rwtTask[tTask.nZiLvLianMeng1_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng1_1]["PreTaskId"] = start
rwtTask[tTask.nZiLvLianMeng1_1]["NextTaskId"] = tTask.nZiLvLianMeng1_2
rwtTask[tTask.nZiLvLianMeng1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_1]["TaskNpc"] = tSingleNpc.nNpc_TouTiaoGeBuLin
rwtTask[tTask.nZiLvLianMeng1_1]["DialogId"] = tDialog.nTask1_1
--rwtTask[tTask.nZiLvLianMeng1_1]["AutoTaskDialog"] =  tDialog.nTask1_1
--rwtTask[tTask.nZiLvLianMeng1_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng1_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng1_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng1_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TouTiaoGeBuLin
--rwtTask[tTask.nZiLvLianMeng1_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TouTiaoGeBuLin

--想知道的事
rwtTask[tTask.nZiLvLianMeng1_2] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21404]
rwtTask[tTask.nZiLvLianMeng1_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng1_2]["PreTaskId"] = tTask.nZiLvLianMeng1_1
rwtTask[tTask.nZiLvLianMeng1_2]["NextTaskId"] = tTask.nZiLvLianMeng2
rwtTask[tTask.nZiLvLianMeng1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng1_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng1_2]["TaskNpc"] = tSingleNpc.nNpc_TouTiaoGeBuLin
rwtTask[tTask.nZiLvLianMeng1_2]["AutoTaskDialog"] =  tDialog.nTask1_2
rwtTask[tTask.nZiLvLianMeng1_2]["DialogId"] = tDialog.nTask1_2
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TouTiaoGeBuLin
rwtTask[tTask.nZiLvLianMeng1_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TouTiaoGeBuLin
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[1]
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng1_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng1_2

--难以拒绝的推销
rwtTask[tTask.nZiLvLianMeng2] = {}
rwtTask[tTask.nZiLvLianMeng2]["Title"] = tLuaText[LANGUAGE_CONFIG][21405]
rwtTask[tTask.nZiLvLianMeng2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng2]["PreTaskId"] = tTask.nZiLvLianMeng1_2
--rwtTask[tTask.nZiLvLianMeng2]["NextTaskId"] = tTask.nZiLvLianMeng3_1
rwtTask[tTask.nZiLvLianMeng2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nZiLvLianMeng2]["AutoTaskDialog"] =  tDialog.nTask2
rwtTask[tTask.nZiLvLianMeng2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[2]
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng2
--完成后接取 
rwtTask[tTask.nZiLvLianMeng2]["AcceptExtraTaskId"] = {tTask.nZiLvLianMeng18_1}  --支线任务  --比多猫的航海传奇


-----------------------------------------------阿米达铁律之认真-------------------------------------------
--铁的纪律
rwtTask[tTask.nZiLvLianMeng3_1] = {}
rwtTask[tTask.nZiLvLianMeng3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21406]
rwtTask[tTask.nZiLvLianMeng3_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng3_1]["PreTaskId"] = tTask.nZiLvLianMeng2
rwtTask[tTask.nZiLvLianMeng3_1]["NextTaskId"] = tTask.nZiLvLianMeng3_2
rwtTask[tTask.nZiLvLianMeng3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng3_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng3_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng3_1]["DialogId"] = tDialog.nTask3_1
--rwtTask[tTask.nZiLvLianMeng3_1]["AutoTaskDialog"] =  tDialog.nTask3_1
--rwtTask[tTask.nZiLvLianMeng3_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng3_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng3_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng3_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
--rwtTask[tTask.nZiLvLianMeng3_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--魔化生物
rwtTask[tTask.nZiLvLianMeng3_2] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21406]
rwtTask[tTask.nZiLvLianMeng3_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng3_2]["PreTaskId"] = tTask.nZiLvLianMeng3_1
rwtTask[tTask.nZiLvLianMeng3_2]["NextTaskId"] = tTask.nZiLvLianMeng3_3
rwtTask[tTask.nZiLvLianMeng3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng3_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng3_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["ReqTrap1"] = tTrap.nTrap_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["DialogId"] = tDialog.nTask3_2
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng3_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng3_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng3_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng3_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task3_2
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[10]
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng3_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng3_2


--向安道夫汇报
rwtTask[tTask.nZiLvLianMeng3_3] = {}
rwtTask[tTask.nZiLvLianMeng3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21406]
rwtTask[tTask.nZiLvLianMeng3_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng3_3]["PreTaskId"] = tTask.nZiLvLianMeng3_2
rwtTask[tTask.nZiLvLianMeng3_3]["NextTaskId"] = tTask.nZiLvLianMeng3_4
rwtTask[tTask.nZiLvLianMeng3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng3_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng3_3]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng3_3]["DialogId"] = tDialog.nTask3_3
rwtTask[tTask.nZiLvLianMeng3_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng3_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng3_3]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng3_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng3_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--寻找不认真的莱斯
rwtTask[tTask.nZiLvLianMeng3_4] = {}
rwtTask[tTask.nZiLvLianMeng3_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21406]
rwtTask[tTask.nZiLvLianMeng3_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng3_4]["PreTaskId"] = tTask.nZiLvLianMeng3_3
rwtTask[tTask.nZiLvLianMeng3_4]["NextTaskId"] = tTask.nZiLvLianMeng3_5
rwtTask[tTask.nZiLvLianMeng3_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng3_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng3_4]["ReqTrap1"] = tTrap.nTrap_Task3_4
rwtTask[tTask.nZiLvLianMeng3_4]["DialogId"] = tDialog.nTask3_4
rwtTask[tTask.nZiLvLianMeng3_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng3_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng3_4]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task3_4
rwtTask[tTask.nZiLvLianMeng3_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng3_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng3_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng3_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng3_4]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng3_4]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task3_4
rwtTask[tTask.nZiLvLianMeng3_4]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task3_4

--带佣兵莱斯回联盟
rwtTask[tTask.nZiLvLianMeng3_5] = {}
rwtTask[tTask.nZiLvLianMeng3_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21406]
rwtTask[tTask.nZiLvLianMeng3_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng3_5]["PreTaskId"] = tTask.nZiLvLianMeng3_4
rwtTask[tTask.nZiLvLianMeng3_5]["NextTaskId"] = tTask.nZiLvLianMeng4_1
rwtTask[tTask.nZiLvLianMeng3_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng3_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng3_5]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng3_5]["DialogId"] = tDialog.nTask3_5
rwtTask[tTask.nZiLvLianMeng3_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng3_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng3_5]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng3_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng3_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[11]
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng3_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng3_5


--与自律联盟吉拉对话
rwtTask[tTask.nZiLvLianMeng4_1] = {}
rwtTask[tTask.nZiLvLianMeng4_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21407]
rwtTask[tTask.nZiLvLianMeng4_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng4_1]["PreTaskId"] = tTask.nZiLvLianMeng3_5
rwtTask[tTask.nZiLvLianMeng4_1]["NextTaskId"] = tTask.nZiLvLianMeng4_2
rwtTask[tTask.nZiLvLianMeng4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng4_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng4_1]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng4_1]["DialogId"] = tDialog.nTask4_1
rwtTask[tTask.nZiLvLianMeng4_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng4_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng4_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng4_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng4_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

--展开毫无头绪的调查
rwtTask[tTask.nZiLvLianMeng4_2] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21407]
rwtTask[tTask.nZiLvLianMeng4_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng4_2]["PreTaskId"] = tTask.nZiLvLianMeng4_1
rwtTask[tTask.nZiLvLianMeng4_2]["NextTaskId"] = tTask.nZiLvLianMeng4_3
rwtTask[tTask.nZiLvLianMeng4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng4_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng4_2]["ReqTrap1"] = tTrap.nTrap_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng4_2]["DialogId"] = tDialog.nTask4_2
rwtTask[tTask.nZiLvLianMeng4_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng4_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng4_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng4_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng4_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng4_2]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng4_2]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[12]
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng4_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng4_2

--寻找佣兵乌奇
rwtTask[tTask.nZiLvLianMeng4_3] = {}
rwtTask[tTask.nZiLvLianMeng4_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21407]
rwtTask[tTask.nZiLvLianMeng4_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng4_3]["PreTaskId"] = tTask.nZiLvLianMeng4_2
rwtTask[tTask.nZiLvLianMeng4_3]["NextTaskId"] = tTask.nZiLvLianMeng4_3_1
rwtTask[tTask.nZiLvLianMeng4_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng4_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng4_3]["ReqTrap1"] = tTrap.nTrap_Task4_3
rwtTask[tTask.nZiLvLianMeng4_3]["DialogId"] = tDialog.nTask4_3
rwtTask[tTask.nZiLvLianMeng4_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng4_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng4_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task4_3
rwtTask[tTask.nZiLvLianMeng4_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng4_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng4_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng4_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng4_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng4_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task4_3
rwtTask[tTask.nZiLvLianMeng4_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task4_3

--寻找佣兵乌奇(解谜)
rwtTask[tTask.nZiLvLianMeng4_3_1] = {}
rwtTask[tTask.nZiLvLianMeng4_3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21407]
rwtTask[tTask.nZiLvLianMeng4_3_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng4_3_1]["PreTaskId"] = tTask.nZiLvLianMeng4_3
rwtTask[tTask.nZiLvLianMeng4_3_1]["NextTaskId"] = tTask.nZiLvLianMeng4_4
rwtTask[tTask.nZiLvLianMeng4_3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tTask.nZiLvLianMeng4_3_1]["IsClickComplete"] = 1
rwtTask[tTask.nZiLvLianMeng4_3_1]["ReqPuzzleId"] = 108
rwtTask[tTask.nZiLvLianMeng4_3_1]["ReqPuzzleObj"] = 108001
--rwtTask[tTask.nZiLvLianMeng4_3_1]["ReqPuzzleEnterDialog"] = 
rwtTask[tTask.nZiLvLianMeng4_3_1]["ReqPuzzleEndDialog"] = 11761
rwtTask[tTask.nZiLvLianMeng4_3_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng4_3_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng4_3_1]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nGenId_Build_WuQiHome
rwtTask[tTask.nZiLvLianMeng4_3_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng4_3_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng4_3_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng4_3_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng4_3_1]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng4_3_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Build_WuQiHome
rwtTask[tTask.nZiLvLianMeng4_3_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nGenId_Build_WuQiHome

--严厉的处罚
rwtTask[tTask.nZiLvLianMeng4_4] = {}
rwtTask[tTask.nZiLvLianMeng4_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21407]
rwtTask[tTask.nZiLvLianMeng4_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng4_4]["PreTaskId"] = tTask.nZiLvLianMeng4_3_1
rwtTask[tTask.nZiLvLianMeng4_4]["NextTaskId"] = tTask.nZiLvLianMeng5_1
rwtTask[tTask.nZiLvLianMeng4_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng4_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng4_4]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng4_4]["DialogId"] = tDialog.nTask4_4
rwtTask[tTask.nZiLvLianMeng4_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng4_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng4_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng4_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng4_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[13]
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng4_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng4_4

--听听镇民的赞赏
rwtTask[tTask.nZiLvLianMeng5_1] = {}
rwtTask[tTask.nZiLvLianMeng5_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21408]
rwtTask[tTask.nZiLvLianMeng5_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng5_1]["PreTaskId"] = tTask.nZiLvLianMeng4_4
rwtTask[tTask.nZiLvLianMeng5_1]["NextTaskId"] = tTask.nZiLvLianMeng5_2
rwtTask[tTask.nZiLvLianMeng5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng5_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng5_1]["TaskNpc"] = tSingleNpc.nNpc_LunNaDe
rwtTask[tTask.nZiLvLianMeng5_1]["DialogId"] = tDialog.nTask5_1
rwtTask[tTask.nZiLvLianMeng5_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng5_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng5_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng5_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LunNaDe
rwtTask[tTask.nZiLvLianMeng5_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LunNaDe

--找到特卡勒
rwtTask[tTask.nZiLvLianMeng5_2] = {}
rwtTask[tTask.nZiLvLianMeng5_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21408]
rwtTask[tTask.nZiLvLianMeng5_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng5_2]["PreTaskId"] = tTask.nZiLvLianMeng5_1
rwtTask[tTask.nZiLvLianMeng5_2]["NextTaskId"] = tTask.nZiLvLianMeng5_3
rwtTask[tTask.nZiLvLianMeng5_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng5_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng5_2]["TaskNpc"] = tSingleNpc.nNpc_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_2]["DialogId"] = tDialog.nTask5_2
rwtTask[tTask.nZiLvLianMeng5_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng5_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng5_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nZiLvLianMeng5_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng5_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng5_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TeKaLe

--去大贝湾抓鱼
rwtTask[tTask.nZiLvLianMeng5_3] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21408]
rwtTask[tTask.nZiLvLianMeng5_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng5_3]["PreTaskId"] = tTask.nZiLvLianMeng5_2
rwtTask[tTask.nZiLvLianMeng5_3]["NextTaskId"] = tTask.nZiLvLianMeng5_4
rwtTask[tTask.nZiLvLianMeng5_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tTask.nZiLvLianMeng5_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng5_3]["ReqCollectId1"] = tCollect.nCollect_YuQun
rwtTask[tTask.nZiLvLianMeng5_3]["ReqCollectOnceNum"] = 1
rwtTask[tTask.nZiLvLianMeng5_3]["ReqCollectCount1"] = 1
rwtTask[tTask.nZiLvLianMeng5_3]["DialogId"] = tDialog.nTask5_3
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][2]["GenId"] = tCollect.nCollect_GenId_YuQun
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][3]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nZiLvLianMeng5_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng5_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_3]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_YuQun
rwtTask[tTask.nZiLvLianMeng5_3]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_YuQun
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[14]
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng5_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng5_3

--返回特卡勒处
rwtTask[tTask.nZiLvLianMeng5_4] = {}
rwtTask[tTask.nZiLvLianMeng5_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21408]
rwtTask[tTask.nZiLvLianMeng5_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng5_4]["PreTaskId"] = tTask.nZiLvLianMeng5_3
rwtTask[tTask.nZiLvLianMeng5_4]["NextTaskId"] = tTask.nZiLvLianMeng5_5
rwtTask[tTask.nZiLvLianMeng5_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng5_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng5_4]["TaskNpc"] = tSingleNpc.nNpc_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_4]["DialogId"] = tDialog.nTask5_4
rwtTask[tTask.nZiLvLianMeng5_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng5_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng5_4]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng5_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng5_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng5_4]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng5_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_TeKaLe
rwtTask[tTask.nZiLvLianMeng5_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_TeKaLe

--回联盟领奖
rwtTask[tTask.nZiLvLianMeng5_5] = {}
rwtTask[tTask.nZiLvLianMeng5_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21408]
rwtTask[tTask.nZiLvLianMeng5_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng5_5]["PreTaskId"] = tTask.nZiLvLianMeng5_4
--rwtTask[tTask.nZiLvLianMeng5_5]["NextTaskId"] = tTask.nZiLvLianMeng6_1
rwtTask[tTask.nZiLvLianMeng5_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng5_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng5_5]["TaskNpc"] = tSingleNpc.nNpc_LunNaDe
rwtTask[tTask.nZiLvLianMeng5_5]["DialogId"] = tDialog.nTask5_5
rwtTask[tTask.nZiLvLianMeng5_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng5_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng5_5]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng5_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LunNaDe
rwtTask[tTask.nZiLvLianMeng5_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LunNaDe
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[15]
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng5_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng5_5
--完成后接取 
--rwtTask[tTask.nZiLvLianMeng5_5]["AcceptExtraTaskId"] = tTask.nZiLvLianMeng7  --支线任务 自律联盟-自律联盟被盯上

-----------------------------------------------制服设计师-------------------------------------------
--找吉拉对话
rwtTask[tTask.nZiLvLianMeng6_1] = {}
rwtTask[tTask.nZiLvLianMeng6_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng6_1]["PreTaskId"] = tTask.nZiLvLianMeng5_5
rwtTask[tTask.nZiLvLianMeng6_1]["NextTaskId"] = tTask.nZiLvLianMeng6_2
rwtTask[tTask.nZiLvLianMeng6_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng6_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_1]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng6_1]["DialogId"] = tDialog.nTask6_1
--rwtTask[tTask.nZiLvLianMeng6_1]["AutoTaskDialog"] =  tDialog.nTask6_1
--rwtTask[tTask.nZiLvLianMeng6_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng6_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng6_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng6_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
--rwtTask[tTask.nZiLvLianMeng6_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

--购买布料
rwtTask[tTask.nZiLvLianMeng6_2] = {}
rwtTask[tTask.nZiLvLianMeng6_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_2]["PreTaskId"] = tTask.nZiLvLianMeng6_1
rwtTask[tTask.nZiLvLianMeng6_2]["NextTaskId"] = tTask.nZiLvLianMeng6_3
rwtTask[tTask.nZiLvLianMeng6_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng6_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_2]["TaskNpc"] = tSingleNpc.nNpc_GeBuLinShangFan
rwtTask[tTask.nZiLvLianMeng6_2]["DialogId"] = tDialog.nTask6_2
rwtTask[tTask.nZiLvLianMeng6_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng6_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_GeBuLinShangFan
rwtTask[tTask.nZiLvLianMeng6_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_GeBuLinShangFan

--前往裁缝道奇处
rwtTask[tTask.nZiLvLianMeng6_3] = {}
rwtTask[tTask.nZiLvLianMeng6_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_3]["PreTaskId"] = tTask.nZiLvLianMeng6_2
rwtTask[tTask.nZiLvLianMeng6_3]["NextTaskId"] = tTask.nZiLvLianMeng6_4
rwtTask[tTask.nZiLvLianMeng6_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng6_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_3]["DialogId"] = tDialog.nTask6_3
rwtTask[tTask.nZiLvLianMeng6_3]["AutoTaskDialog"] = tDialog.nTask6_3

--跟裁缝道奇对话
rwtTask[tTask.nZiLvLianMeng6_4] = {}
rwtTask[tTask.nZiLvLianMeng6_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_4]["PreTaskId"] = tTask.nZiLvLianMeng6_3
rwtTask[tTask.nZiLvLianMeng6_4]["NextTaskId"] = tTask.nZiLvLianMeng6_5
rwtTask[tTask.nZiLvLianMeng6_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng6_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_4]["ReqTrap1"] = tTrap.nTrap_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_4]["DialogId"] = tDialog.nTask6_4
rwtTask[tTask.nZiLvLianMeng6_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng6_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng6_4]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng6_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng6_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_4]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_4]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_DaoQiJia

--前往风车镇特饮店
rwtTask[tTask.nZiLvLianMeng6_5] = {}
rwtTask[tTask.nZiLvLianMeng6_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_5]["PreTaskId"] = tTask.nZiLvLianMeng6_4
rwtTask[tTask.nZiLvLianMeng6_5]["NextTaskId"] = tTask.nZiLvLianMeng6_6
rwtTask[tTask.nZiLvLianMeng6_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng6_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_5]["TaskNpc"] = tSingleNpc.nNpc_JiuGuanLaoBanZuoYi
rwtTask[tTask.nZiLvLianMeng6_5]["DialogId"] = tDialog.nTask6_5
rwtTask[tTask.nZiLvLianMeng6_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng6_5]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng6_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiuGuanLaoBanZuoYi
rwtTask[tTask.nZiLvLianMeng6_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiuGuanLaoBanZuoYi

--返回裁缝道奇处
rwtTask[tTask.nZiLvLianMeng6_6] = {}
rwtTask[tTask.nZiLvLianMeng6_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_6]["PreTaskId"] = tTask.nZiLvLianMeng6_5
rwtTask[tTask.nZiLvLianMeng6_6]["NextTaskId"] = tTask.nZiLvLianMeng6_7
rwtTask[tTask.nZiLvLianMeng6_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng6_6]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_6]["ReqTrap1"] = tTrap.nTrap_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_6]["DialogId"] = tDialog.nTask6_6
rwtTask[tTask.nZiLvLianMeng6_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng6_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng6_6]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng6_6]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng6_6]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_6]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_6]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_DaoQiJia

--找到熊皮
rwtTask[tTask.nZiLvLianMeng6_7] = {}
rwtTask[tTask.nZiLvLianMeng6_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_7]["PreTaskId"] = tTask.nZiLvLianMeng6_6
rwtTask[tTask.nZiLvLianMeng6_7]["NextTaskId"] = tTask.nZiLvLianMeng6_8
rwtTask[tTask.nZiLvLianMeng6_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng6_7]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_7]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task6_7
rwtTask[tTask.nZiLvLianMeng6_7]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task6_7
rwtTask[tTask.nZiLvLianMeng6_7]["ReqTrap1"] = tTrap.nTrap_Task6_7
rwtTask[tTask.nZiLvLianMeng6_7]["DialogId"] = tDialog.nTask6_7
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task6_7
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task6_7
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng6_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng6_7]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng6_7]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng6_7]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task6_7
rwtTask[tTask.nZiLvLianMeng6_7]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task6_7

--将熊皮带给裁缝
rwtTask[tTask.nZiLvLianMeng6_8] = {}
rwtTask[tTask.nZiLvLianMeng6_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_8]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_8]["PreTaskId"] = tTask.nZiLvLianMeng6_7
rwtTask[tTask.nZiLvLianMeng6_8]["NextTaskId"] = tTask.nZiLvLianMeng6_9
rwtTask[tTask.nZiLvLianMeng6_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng6_8]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_8]["ReqTrap1"] = tTrap.nTrap_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_8]["DialogId"] = tDialog.nTask6_8
rwtTask[tTask.nZiLvLianMeng6_8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng6_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng6_8]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_8]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng6_8]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng6_8]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng6_8]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_DaoQiJia
rwtTask[tTask.nZiLvLianMeng6_8]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_DaoQiJia

--向吉拉询问
rwtTask[tTask.nZiLvLianMeng6_9] = {}
rwtTask[tTask.nZiLvLianMeng6_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21409]
rwtTask[tTask.nZiLvLianMeng6_9]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng6_9]["PreTaskId"] = tTask.nZiLvLianMeng6_8
--rwtTask[tTask.nZiLvLianMeng6_9]["NextTaskId"] = tTask.nZiLvLianMeng7
rwtTask[tTask.nZiLvLianMeng6_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng6_9]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng6_9]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng6_9]["DialogId"] = tDialog.nTask6_9
rwtTask[tTask.nZiLvLianMeng6_9]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng6_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng6_9]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng6_9]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng6_9]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[6]
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng6_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng6_9
--完成后接取 
--rwtTask[tTask.nZiLvLianMeng6_9]["AcceptExtraTaskId"] = tTask.nZiLvLianMeng9_1  --支线任务 自律联盟-学霸支招

-----------------------------------------------自律联盟被盯上-------------------------------------------
--（和老乞丐对话）
rwtTask[tTask.nZiLvLianMeng7] = {}
rwtTask[tTask.nZiLvLianMeng7]["Title"] = tLuaText[LANGUAGE_CONFIG][21410]
rwtTask[tTask.nZiLvLianMeng7]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng7]["PreTaskId"] = tTask.nZiLvLianMeng6_9
rwtTask[tTask.nZiLvLianMeng7]["NextTaskId"] = tTask.nZiLvLianMeng7_1
rwtTask[tTask.nZiLvLianMeng7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng7]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng7]["TaskNpc"] = tSingleNpc.nNpc_LaoQiGai
rwtTask[tTask.nZiLvLianMeng7]["DialogId"] = tDialog.nTask7
--rwtTask[tTask.nZiLvLianMeng7]["AutoTaskDialog"] =  tDialog.nTask7
--rwtTask[tTask.nZiLvLianMeng7]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng7]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng7]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
--rwtTask[tTask.nZiLvLianMeng7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoQiGai
--rwtTask[tTask.nZiLvLianMeng7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoQiGai

--突发紧急情况
rwtTask[tTask.nZiLvLianMeng7_1] = {}
rwtTask[tTask.nZiLvLianMeng7_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21410]
rwtTask[tTask.nZiLvLianMeng7_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng7_1]["PreTaskId"] = tTask.nZiLvLianMeng7
rwtTask[tTask.nZiLvLianMeng7_1]["NextTaskId"] = tTask.nZiLvLianMeng7_2
rwtTask[tTask.nZiLvLianMeng7_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng7_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng7_1]["ReqTrap1"] = tTrap.nTrap_Task7_1
rwtTask[tTask.nZiLvLianMeng7_1]["DialogId"] = tDialog.nTask7_1
rwtTask[tTask.nZiLvLianMeng7_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng7_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng7_1]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task7_1
rwtTask[tTask.nZiLvLianMeng7_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng7_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng7_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng7_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng7_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng7_1]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task7_1
rwtTask[tTask.nZiLvLianMeng7_1]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task7_1

--制止狼人
rwtTask[tTask.nZiLvLianMeng7_2] = {}
rwtTask[tTask.nZiLvLianMeng7_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21410]
rwtTask[tTask.nZiLvLianMeng7_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng7_2]["PreTaskId"] = tTask.nZiLvLianMeng7_1
rwtTask[tTask.nZiLvLianMeng7_2]["NextTaskId"] = tTask.nZiLvLianMeng7_3
rwtTask[tTask.nZiLvLianMeng7_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng7_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng7_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task7_2
rwtTask[tTask.nZiLvLianMeng7_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task7_2
rwtTask[tTask.nZiLvLianMeng7_2]["ReqTrap1"] = tTrap.nTrap_Task7_2
rwtTask[tTask.nZiLvLianMeng7_2]["DialogId"] = tDialog.nTask7_2
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task7_2
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task7_2
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng7_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng7_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng7_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng7_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng7_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task7_2
rwtTask[tTask.nZiLvLianMeng7_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task7_2

--前往湖畔镇寻找
rwtTask[tTask.nZiLvLianMeng7_3] = {}
rwtTask[tTask.nZiLvLianMeng7_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21410]
rwtTask[tTask.nZiLvLianMeng7_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng7_3]["PreTaskId"] = tTask.nZiLvLianMeng7_2
rwtTask[tTask.nZiLvLianMeng7_3]["NextTaskId"] = tTask.nZiLvLianMeng7_4
rwtTask[tTask.nZiLvLianMeng7_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng7_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng7_3]["TaskNpc"] = tSingleNpc.nNpc_ShaoNvSuFei
rwtTask[tTask.nZiLvLianMeng7_3]["DialogId"] = tDialog.nTask7_3
rwtTask[tTask.nZiLvLianMeng7_3]["AcceptDialogId"] = 11763
rwtTask[tTask.nZiLvLianMeng7_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng7_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng7_3]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_ShaoNvSuFei
rwtTask[tTask.nZiLvLianMeng7_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng7_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng7_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng7_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng7_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng7_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ShaoNvSuFei
rwtTask[tTask.nZiLvLianMeng7_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ShaoNvSuFei

--护送苏菲回联盟
rwtTask[tTask.nZiLvLianMeng7_4] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21410]
rwtTask[tTask.nZiLvLianMeng7_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng7_4]["PreTaskId"] = tTask.nZiLvLianMeng7_3
--rwtTask[tTask.nZiLvLianMeng7_4]["NextTaskId"] = tTask.nZiLvLianMeng8
rwtTask[tTask.nZiLvLianMeng7_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng7_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng7_4]["ReqTrap1"] = tTrap.nTrap_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng7_4]["DialogId"] = tDialog.nTask7_4
rwtTask[tTask.nZiLvLianMeng7_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng7_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng7_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng7_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng7_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng7_4]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng7_4]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_ZLLMMenKou
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[7]
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng7_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng7_4
--完成后接取 
--rwtTask[tTask.nZiLvLianMeng7_4]["AcceptExtraTaskId"] = tTask.nZiLvLianMeng8  --支线任务 自律联盟-最后一个佣兵任务

-----------------------------------------------最后一个佣兵任务-------------------------------------------
--（和吉拉对话）
rwtTask[tTask.nZiLvLianMeng8] = {}
rwtTask[tTask.nZiLvLianMeng8]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng8]["PreTaskId"] = tTask.nZiLvLianMeng7_4
rwtTask[tTask.nZiLvLianMeng8]["NextTaskId"] = tTask.nZiLvLianMeng8_1
rwtTask[tTask.nZiLvLianMeng8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng8]["DialogId"] = tDialog.nTask8
--rwtTask[tTask.nZiLvLianMeng8]["AutoTaskDialog"] =  tDialog.nTask8
--rwtTask[tTask.nZiLvLianMeng8]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng8]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng8]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng8]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
--rwtTask[tTask.nZiLvLianMeng8]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

--听老佣兵讲故事
rwtTask[tTask.nZiLvLianMeng8_1] = {}
rwtTask[tTask.nZiLvLianMeng8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_1]["PreTaskId"] = tTask.nZiLvLianMeng8
rwtTask[tTask.nZiLvLianMeng8_1]["NextTaskId"] = tTask.nZiLvLianMeng8_2
rwtTask[tTask.nZiLvLianMeng8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_1]["TaskNpc"] = tSingleNpc.nNpc_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_1]["DialogId"] = tDialog.nTask8_1
rwtTask[tTask.nZiLvLianMeng8_1]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_1]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nZiLvLianMeng8_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing

--前往月神森林
rwtTask[tTask.nZiLvLianMeng8_2] = {}
rwtTask[tTask.nZiLvLianMeng8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_2]["PreTaskId"] = tTask.nZiLvLianMeng8_1
rwtTask[tTask.nZiLvLianMeng8_2]["NextTaskId"] = tTask.nZiLvLianMeng8_3
rwtTask[tTask.nZiLvLianMeng8_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_2]["TaskNpc"] = tSingleNpc.nNpc_DeLuYiShouLing
rwtTask[tTask.nZiLvLianMeng8_2]["DialogId"] = tDialog.nTask8_2
rwtTask[tTask.nZiLvLianMeng8_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_2]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_DeLuYiShouLing
rwtTask[tTask.nZiLvLianMeng8_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_DeLuYiShouLing

--前往乔西处
rwtTask[tTask.nZiLvLianMeng8_3] = {}
rwtTask[tTask.nZiLvLianMeng8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_3]["PreTaskId"] = tTask.nZiLvLianMeng8_2
rwtTask[tTask.nZiLvLianMeng8_3]["NextTaskId"] = tTask.nZiLvLianMeng8_4
rwtTask[tTask.nZiLvLianMeng8_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng8_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_3]["ReqTrap1"] = tTrap.nTrap_Task8_3
rwtTask[tTask.nZiLvLianMeng8_3]["DialogId"] = tDialog.nTask8_3
rwtTask[tTask.nZiLvLianMeng8_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task8_3
rwtTask[tTask.nZiLvLianMeng8_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_3]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task8_3
rwtTask[tTask.nZiLvLianMeng8_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task8_3

--将信件带给杰克
rwtTask[tTask.nZiLvLianMeng8_4] = {}
rwtTask[tTask.nZiLvLianMeng8_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_4]["PreTaskId"] = tTask.nZiLvLianMeng8_3
rwtTask[tTask.nZiLvLianMeng8_4]["NextTaskId"] = tTask.nZiLvLianMeng8_5
rwtTask[tTask.nZiLvLianMeng8_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_4]["TaskNpc"] = tSingleNpc.nNpc_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_4]["DialogId"] = tDialog.nTask8_4
rwtTask[tTask.nZiLvLianMeng8_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_4]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nZiLvLianMeng8_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing

--寻找紫鸢花小姐
rwtTask[tTask.nZiLvLianMeng8_5] = {}
rwtTask[tTask.nZiLvLianMeng8_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_5]["PreTaskId"] = tTask.nZiLvLianMeng8_4
rwtTask[tTask.nZiLvLianMeng8_5]["NextTaskId"] = tTask.nZiLvLianMeng8_6
rwtTask[tTask.nZiLvLianMeng8_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_5]["TaskNpc"] = tSingleNpc.nNpc_ZhenZhangYiNuoKe
rwtTask[tTask.nZiLvLianMeng8_5]["DialogId"] = tDialog.nTask8_5
rwtTask[tTask.nZiLvLianMeng8_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_5]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_5]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ZhenZhangYiNuoKe
rwtTask[tTask.nZiLvLianMeng8_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ZhenZhangYiNuoKe

--前往黄胡子特饮店
rwtTask[tTask.nZiLvLianMeng8_6] = {}
rwtTask[tTask.nZiLvLianMeng8_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_6]["PreTaskId"] = tTask.nZiLvLianMeng8_5
rwtTask[tTask.nZiLvLianMeng8_6]["NextTaskId"] = tTask.nZiLvLianMeng8_7
rwtTask[tTask.nZiLvLianMeng8_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_6]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_6]["TaskNpc"] = tSingleNpc.nNpc_JiuGuanHuangHuZi
rwtTask[tTask.nZiLvLianMeng8_6]["DialogId"] = tDialog.nTask8_6
rwtTask[tTask.nZiLvLianMeng8_6]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_6]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_6]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiuGuanHuangHuZi
rwtTask[tTask.nZiLvLianMeng8_6]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiuGuanHuangHuZi

--战胜沙漠毒蝎
rwtTask[tTask.nZiLvLianMeng8_7] = {}
rwtTask[tTask.nZiLvLianMeng8_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_7]["PreTaskId"] = tTask.nZiLvLianMeng8_6
rwtTask[tTask.nZiLvLianMeng8_7]["NextTaskId"] = tTask.nZiLvLianMeng8_8
rwtTask[tTask.nZiLvLianMeng8_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng8_7]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_7]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task8_6
rwtTask[tTask.nZiLvLianMeng8_7]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task8_6
rwtTask[tTask.nZiLvLianMeng8_7]["ReqTrap1"] = tTrap.nTrap_Task8_6
rwtTask[tTask.nZiLvLianMeng8_7]["DialogId"] = tDialog.nTask8_7
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task8_6
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task8_6
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][2]["MapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_7]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_7]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng8_7]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_7]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task8_6
rwtTask[tTask.nZiLvLianMeng8_7]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task8_6

--返回黄胡子特饮店
rwtTask[tTask.nZiLvLianMeng8_8] = {}
rwtTask[tTask.nZiLvLianMeng8_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_8]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_8]["PreTaskId"] = tTask.nZiLvLianMeng8_7
rwtTask[tTask.nZiLvLianMeng8_8]["NextTaskId"] = tTask.nZiLvLianMeng8_9
rwtTask[tTask.nZiLvLianMeng8_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_8]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_8]["TaskNpc"] = tSingleNpc.nNpc_JiuGuanHuangHuZi
rwtTask[tTask.nZiLvLianMeng8_8]["DialogId"] = tDialog.nTask8_8
rwtTask[tTask.nZiLvLianMeng8_8]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_8]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_8]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiuGuanHuangHuZi
rwtTask[tTask.nZiLvLianMeng8_8]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiuGuanHuangHuZi

--前往玛瑙街78号
rwtTask[tTask.nZiLvLianMeng8_9] = {}
rwtTask[tTask.nZiLvLianMeng8_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_9]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_9]["PreTaskId"] = tTask.nZiLvLianMeng8_8
rwtTask[tTask.nZiLvLianMeng8_9]["NextTaskId"] = tTask.nZiLvLianMeng8_10
rwtTask[tTask.nZiLvLianMeng8_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng8_9]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_9]["ReqTrap1"] = tTrap.nTrap_Task8_9
rwtTask[tTask.nZiLvLianMeng8_9]["DialogId"] = tDialog.nTask8_9
rwtTask[tTask.nZiLvLianMeng8_9]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_9]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_Task8_9
rwtTask[tTask.nZiLvLianMeng8_9]["DynaNpcGroupGen"][1]["MapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_9]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_9]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_9]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_Task8_9
rwtTask[tTask.nZiLvLianMeng8_9]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_Task8_9

--返回杰克处
rwtTask[tTask.nZiLvLianMeng8_10] = {}
rwtTask[tTask.nZiLvLianMeng8_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_10]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_10]["PreTaskId"] = tTask.nZiLvLianMeng8_9
rwtTask[tTask.nZiLvLianMeng8_10]["NextTaskId"] = tTask.nZiLvLianMeng8_11
rwtTask[tTask.nZiLvLianMeng8_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_10]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_10]["TaskNpc"] = tSingleNpc.nNpc_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_10]["DialogId"] = tDialog.nTask8_10
rwtTask[tTask.nZiLvLianMeng8_10]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_10]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_10]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_10]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nZiLvLianMeng8_10]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_10]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_10]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_10]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing

--前往边陲沙漠
rwtTask[tTask.nZiLvLianMeng8_11] = {}
rwtTask[tTask.nZiLvLianMeng8_11]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_11]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_11]["PreTaskId"] = tTask.nZiLvLianMeng8_10
rwtTask[tTask.nZiLvLianMeng8_11]["NextTaskId"] = tTask.nZiLvLianMeng8_12
rwtTask[tTask.nZiLvLianMeng8_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng8_11]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_11]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task8_10
rwtTask[tTask.nZiLvLianMeng8_11]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task8_10
rwtTask[tTask.nZiLvLianMeng8_11]["ReqTrap1"] = tTrap.nTrap_Task8_10
rwtTask[tTask.nZiLvLianMeng8_11]["DialogId"] = tDialog.nTask8_11
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task8_10
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][1]["MapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task8_10
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][2]["MapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][3]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_11]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_11]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_11]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng8_11]["StartAutoWay"]["FindWayMapId"] = nMapId_GJNE
rwtTask[tTask.nZiLvLianMeng8_11]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task8_10
rwtTask[tTask.nZiLvLianMeng8_11]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task8_10

--向杰克汇报
rwtTask[tTask.nZiLvLianMeng8_12] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["Title"] = tLuaText[LANGUAGE_CONFIG][21411]
rwtTask[tTask.nZiLvLianMeng8_12]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng8_12]["PreTaskId"] = tTask.nZiLvLianMeng8_11
--rwtTask[tTask.nZiLvLianMeng8_12]["NextTaskId"] = tTask.nZiLvLianMeng9_1
rwtTask[tTask.nZiLvLianMeng8_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng8_12]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng8_12]["TaskNpc"] = tSingleNpc.nNpc_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_12]["DialogId"] = tDialog.nTask8_12
rwtTask[tTask.nZiLvLianMeng8_12]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_12]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng8_12]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng8_12]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng8_12]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_12]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoYongBing
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[8]
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng8_12]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng8_12

-----------------------------------------------学霸支招-------------------------------------------
--和詹尼佛大妈对话
rwtTask[tTask.nZiLvLianMeng9_1] = {}
rwtTask[tTask.nZiLvLianMeng9_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21412]
rwtTask[tTask.nZiLvLianMeng9_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng9_1]["PreTaskId"] = tTask.nZiLvLianMeng8_12
rwtTask[tTask.nZiLvLianMeng9_1]["NextTaskId"] = tTask.nZiLvLianMeng9_2
rwtTask[tTask.nZiLvLianMeng9_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng9_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng9_1]["TaskNpc"] = tSingleNpc.nNpc_ZhanFuNiDaMa
rwtTask[tTask.nZiLvLianMeng9_1]["DialogId"] = tDialog.nTask9_1
--rwtTask[tTask.nZiLvLianMeng9_1]["AutoTaskDialog"] =  tDialog.nTask9_1
--rwtTask[tTask.nZiLvLianMeng9_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng9_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng9_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
--rwtTask[tTask.nZiLvLianMeng9_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ZhanFuNiDaMa
--rwtTask[tTask.nZiLvLianMeng9_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ZhanFuNiDaMa

--找吉拉解决难题
rwtTask[tTask.nZiLvLianMeng9_2] = {}
rwtTask[tTask.nZiLvLianMeng9_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21412]
rwtTask[tTask.nZiLvLianMeng9_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng9_2]["PreTaskId"] = tTask.nZiLvLianMeng9_1
rwtTask[tTask.nZiLvLianMeng9_2]["NextTaskId"] = tTask.nZiLvLianMeng9_3
rwtTask[tTask.nZiLvLianMeng9_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng9_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng9_2]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng9_2]["DialogId"] = tDialog.nTask9_2
rwtTask[tTask.nZiLvLianMeng9_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng9_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng9_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng9_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng9_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

--告诉詹尼佛大妈
rwtTask[tTask.nZiLvLianMeng9_3] = {}
rwtTask[tTask.nZiLvLianMeng9_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21412]
rwtTask[tTask.nZiLvLianMeng9_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng9_3]["PreTaskId"] = tTask.nZiLvLianMeng9_2
--rwtTask[tTask.nZiLvLianMeng9_3]["NextTaskId"] = tTask.nZiLvLianMeng10_1
rwtTask[tTask.nZiLvLianMeng9_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng9_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng9_3]["TaskNpc"] = tSingleNpc.nNpc_ZhanFuNiDaMa
rwtTask[tTask.nZiLvLianMeng9_3]["DialogId"] = tDialog.nTask9_3
rwtTask[tTask.nZiLvLianMeng9_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng9_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng9_3]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng9_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_ZhanFuNiDaMa
rwtTask[tTask.nZiLvLianMeng9_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_ZhanFuNiDaMa
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[9]
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng9_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng9_3

-----------------------------------------------搭配特饮的小菜-------------------------------------------
--和安道夫对话
rwtTask[tTask.nZiLvLianMeng10_1] = {}
rwtTask[tTask.nZiLvLianMeng10_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21413]
rwtTask[tTask.nZiLvLianMeng10_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng10_1]["PreTaskId"] = tTask.nZiLvLianMeng9_3
rwtTask[tTask.nZiLvLianMeng10_1]["NextTaskId"] = tTask.nZiLvLianMeng10_2
rwtTask[tTask.nZiLvLianMeng10_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng10_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng10_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng10_1]["DialogId"] = tDialog.nTask10_1
--rwtTask[tTask.nZiLvLianMeng10_1]["AutoTaskDialog"] =  tDialog.nTask10_1
--rwtTask[tTask.nZiLvLianMeng10_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng10_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng10_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng10_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
--rwtTask[tTask.nZiLvLianMeng10_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--前往购买面包
rwtTask[tTask.nZiLvLianMeng10_2] = {}
rwtTask[tTask.nZiLvLianMeng10_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21413]
rwtTask[tTask.nZiLvLianMeng10_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng10_2]["PreTaskId"] = tTask.nZiLvLianMeng10_1
rwtTask[tTask.nZiLvLianMeng10_2]["NextTaskId"] = tTask.nZiLvLianMeng10_3
rwtTask[tTask.nZiLvLianMeng10_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng10_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng10_2]["TaskNpc"] = tSingleNpc.nNpc_MianBaoDaWangANuo
rwtTask[tTask.nZiLvLianMeng10_2]["DialogId"] = tDialog.nTask10_2
rwtTask[tTask.nZiLvLianMeng10_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng10_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng10_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng10_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_MianBaoDaWangANuo
rwtTask[tTask.nZiLvLianMeng10_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_MianBaoDaWangANuo

--回复铁臂大人
rwtTask[tTask.nZiLvLianMeng10_3] = {}
rwtTask[tTask.nZiLvLianMeng10_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21413]
rwtTask[tTask.nZiLvLianMeng10_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng10_3]["PreTaskId"] = tTask.nZiLvLianMeng10_2
rwtTask[tTask.nZiLvLianMeng10_3]["NextTaskId"] = tTask.nZiLvLianMeng11_1
rwtTask[tTask.nZiLvLianMeng10_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng10_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng10_3]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng10_3]["DialogId"] = tDialog.nTask10_3
rwtTask[tTask.nZiLvLianMeng10_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng10_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng10_3]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng10_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng10_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[5]
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng10_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng10_3

--徽章的意义：剑
rwtTask[tTask.nZiLvLianMeng11_1] = {}
rwtTask[tTask.nZiLvLianMeng11_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21414]
rwtTask[tTask.nZiLvLianMeng11_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng11_1]["PreTaskId"] = tTask.nZiLvLianMeng10_3
rwtTask[tTask.nZiLvLianMeng11_1]["NextTaskId"] = tTask.nZiLvLianMeng11_2
rwtTask[tTask.nZiLvLianMeng11_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng11_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng11_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng11_1]["DialogId"] = tDialog.nTask11_1
rwtTask[tTask.nZiLvLianMeng11_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng11_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng11_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng11_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng11_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--和萨林对话
rwtTask[tTask.nZiLvLianMeng11_2] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21414]
rwtTask[tTask.nZiLvLianMeng11_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng11_2]["PreTaskId"] = tTask.nZiLvLianMeng11_1
rwtTask[tTask.nZiLvLianMeng11_2]["NextTaskId"] = tTask.nZiLvLianMeng12_1
rwtTask[tTask.nZiLvLianMeng11_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng11_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng11_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task11_2
rwtTask[tTask.nZiLvLianMeng11_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task11_2
rwtTask[tTask.nZiLvLianMeng11_2]["TaskNpc"] = tSingleNpc.nNpc_Salin
rwtTask[tTask.nZiLvLianMeng11_2]["DialogId"] = tDialog.nTask11_2
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task11_2
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_Salin
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng11_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng11_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng11_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng11_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Salin 
rwtTask[tTask.nZiLvLianMeng11_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_Salin
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[6]
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng11_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng11_2

--和安道夫对话
rwtTask[tTask.nZiLvLianMeng12_1] = {}
rwtTask[tTask.nZiLvLianMeng12_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_1]["PreTaskId"] = tTask.nZiLvLianMeng11_2
rwtTask[tTask.nZiLvLianMeng12_1]["NextTaskId"] = tTask.nZiLvLianMeng12_2
rwtTask[tTask.nZiLvLianMeng12_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng12_1]["AcceptDialogId"] = 11765
rwtTask[tTask.nZiLvLianMeng12_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng12_1]["DialogId"] = tDialog.nTask12_1
rwtTask[tTask.nZiLvLianMeng12_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng12_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng12_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng12_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--寻找可以帮助的人
rwtTask[tTask.nZiLvLianMeng12_2] = {}
rwtTask[tTask.nZiLvLianMeng12_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_2]["PreTaskId"] = tTask.nZiLvLianMeng12_1
rwtTask[tTask.nZiLvLianMeng12_2]["NextTaskId"] = tTask.nZiLvLianMeng12_3
rwtTask[tTask.nZiLvLianMeng12_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng12_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_2]["TaskNpc"] = tSingleNpc.nNpc_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_2]["DialogId"] = tDialog.nTask12_2
rwtTask[tTask.nZiLvLianMeng12_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng12_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng12_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoNiuManKe

--抓湖畔鲈鱼(前杀怪)
rwtTask[tTask.nZiLvLianMeng12_3] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_3]["PreTaskId"] = tTask.nZiLvLianMeng12_2
rwtTask[tTask.nZiLvLianMeng12_3]["NextTaskId"] = tTask.nZiLvLianMeng12_4
rwtTask[tTask.nZiLvLianMeng12_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng12_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["ReqTrap1"] = tTrap.nTrap_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["DialogId"] = tDialog.nTask12_3
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng12_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng12_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng12_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task12_3
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[7]
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng12_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng12_3

--抓湖畔鲈鱼
rwtTask[tTask.nZiLvLianMeng12_4] = {}
rwtTask[tTask.nZiLvLianMeng12_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_4]["PreTaskId"] = tTask.nZiLvLianMeng12_3
rwtTask[tTask.nZiLvLianMeng12_4]["NextTaskId"] = tTask.nZiLvLianMeng12_5
rwtTask[tTask.nZiLvLianMeng12_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tTask.nZiLvLianMeng12_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_4]["ReqCollectId1"] = tCollect.nCollect_HuZhongDeYu
rwtTask[tTask.nZiLvLianMeng12_4]["ReqCollectOnceNum"] = 1
rwtTask[tTask.nZiLvLianMeng12_4]["ReqCollectCount1"] = 1
rwtTask[tTask.nZiLvLianMeng12_4]["AcceptDialogId"] = 11767
rwtTask[tTask.nZiLvLianMeng12_4]["DialogId"] = tDialog.nTask12_4
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_HuZhongDeYu
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][2]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng12_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng12_4]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng12_4]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_HuZhongDeYu
rwtTask[tTask.nZiLvLianMeng12_4]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_HuZhongDeYu

--购买烹饪佐料
rwtTask[tTask.nZiLvLianMeng12_5] = {}
rwtTask[tTask.nZiLvLianMeng12_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_5]["PreTaskId"] = tTask.nZiLvLianMeng12_4
rwtTask[tTask.nZiLvLianMeng12_5]["NextTaskId"] = tTask.nZiLvLianMeng12_6
rwtTask[tTask.nZiLvLianMeng12_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng12_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_5]["TaskNpc"] = tSingleNpc.nNpc_GeBuLinShangFanMaiKen
rwtTask[tTask.nZiLvLianMeng12_5]["DialogId"] = tDialog.nTask12_5
rwtTask[tTask.nZiLvLianMeng12_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng12_5]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_GeBuLinShangFanMaiKen
rwtTask[tTask.nZiLvLianMeng12_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_GeBuLinShangFanMaiKen

--准备晚餐
rwtTask[tTask.nZiLvLianMeng12_6] = {}
rwtTask[tTask.nZiLvLianMeng12_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_6]["PreTaskId"] = tTask.nZiLvLianMeng12_5
rwtTask[tTask.nZiLvLianMeng12_6]["NextTaskId"] = tTask.nZiLvLianMeng12_7
rwtTask[tTask.nZiLvLianMeng12_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tTask.nZiLvLianMeng12_6]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_6]["ReqCollectId1"] = tCollect.nCollect_PengTiao
rwtTask[tTask.nZiLvLianMeng12_6]["ReqCollectOnceNum"] = 1
rwtTask[tTask.nZiLvLianMeng12_6]["ReqCollectCount1"] = 1
rwtTask[tTask.nZiLvLianMeng12_6]["AcceptDialogId"] = tDialog.nTask12_6
rwtTask[tTask.nZiLvLianMeng12_6]["DialogId"] = 11766
rwtTask[tTask.nZiLvLianMeng12_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng12_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_6]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_PengTiao
rwtTask[tTask.nZiLvLianMeng12_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_6]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng12_6]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_6]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_PengTiao
rwtTask[tTask.nZiLvLianMeng12_6]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_PengTiao

--把晚餐送给纽曼克
rwtTask[tTask.nZiLvLianMeng12_7] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21415]
rwtTask[tTask.nZiLvLianMeng12_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng12_7]["PreTaskId"] = tTask.nZiLvLianMeng12_6
rwtTask[tTask.nZiLvLianMeng12_7]["NextTaskId"] = tTask.nZiLvLianMeng13_1
rwtTask[tTask.nZiLvLianMeng12_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng12_7]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng12_7]["TaskNpc"] = tSingleNpc.nNpc_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_7]["DialogId"] = tDialog.nTask12_7
rwtTask[tTask.nZiLvLianMeng12_7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_7]["DynaNpcGroupGen"][1]["MapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng12_7]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng12_7]["StartAutoWay"]["FindWayMapId"] = nMapId_ZHUC
rwtTask[tTask.nZiLvLianMeng12_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LaoNiuManKe
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[8]
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng12_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng12_7

--和安道夫对话
rwtTask[tTask.nZiLvLianMeng13_1] = {}
rwtTask[tTask.nZiLvLianMeng13_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21416]
rwtTask[tTask.nZiLvLianMeng13_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng13_1]["PreTaskId"] = tTask.nZiLvLianMeng12_7
rwtTask[tTask.nZiLvLianMeng13_1]["NextTaskId"] = tTask.nZiLvLianMeng13_2
rwtTask[tTask.nZiLvLianMeng13_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng13_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng13_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng13_1]["DialogId"] = tDialog.nTask13_1
rwtTask[tTask.nZiLvLianMeng13_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng13_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng13_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng13_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng13_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--和库伯拉长老对话
rwtTask[tTask.nZiLvLianMeng13_2] = {}
rwtTask[tTask.nZiLvLianMeng13_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21416]
rwtTask[tTask.nZiLvLianMeng13_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng13_2]["PreTaskId"] = tTask.nZiLvLianMeng13_1
rwtTask[tTask.nZiLvLianMeng13_2]["NextTaskId"] = tTask.nZiLvLianMeng13_3
rwtTask[tTask.nZiLvLianMeng13_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng13_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng13_2]["TaskNpc"] = tSingleNpc.nNpc_KuBoLaZhangLao
rwtTask[tTask.nZiLvLianMeng13_2]["DialogId"] = tDialog.nTask13_2
rwtTask[tTask.nZiLvLianMeng13_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng13_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng13_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng13_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_KuBoLaZhangLao
rwtTask[tTask.nZiLvLianMeng13_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_KuBoLaZhangLao

--和麦提对话
rwtTask[tTask.nZiLvLianMeng13_3] = {}
rwtTask[tTask.nZiLvLianMeng13_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21416]
rwtTask[tTask.nZiLvLianMeng13_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng13_3]["PreTaskId"] = tTask.nZiLvLianMeng13_2
rwtTask[tTask.nZiLvLianMeng13_3]["NextTaskId"] = tTask.nZiLvLianMeng13_4
rwtTask[tTask.nZiLvLianMeng13_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng13_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng13_3]["TaskNpc"] = tSingleNpc.nNpc_MaiTi
rwtTask[tTask.nZiLvLianMeng13_3]["DialogId"] = tDialog.nTask13_3
rwtTask[tTask.nZiLvLianMeng13_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng13_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng13_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng13_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_MaiTi
rwtTask[tTask.nZiLvLianMeng13_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_MaiTi

--和桑妮对话
rwtTask[tTask.nZiLvLianMeng13_4] = {}
rwtTask[tTask.nZiLvLianMeng13_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21416]
rwtTask[tTask.nZiLvLianMeng13_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng13_4]["PreTaskId"] = tTask.nZiLvLianMeng13_3
rwtTask[tTask.nZiLvLianMeng13_4]["NextTaskId"] = tTask.nZiLvLianMeng13_5
rwtTask[tTask.nZiLvLianMeng13_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng13_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng13_4]["TaskNpc"] = tSingleNpc.nNpc_XiuNvSangNi
rwtTask[tTask.nZiLvLianMeng13_4]["DialogId"] = tDialog.nTask13_4
rwtTask[tTask.nZiLvLianMeng13_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng13_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng13_4]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng13_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_XiuNvSangNi
rwtTask[tTask.nZiLvLianMeng13_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_XiuNvSangNi

--返回自律联盟
rwtTask[tTask.nZiLvLianMeng13_5] = {}
rwtTask[tTask.nZiLvLianMeng13_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21416]
rwtTask[tTask.nZiLvLianMeng13_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng13_5]["PreTaskId"] = tTask.nZiLvLianMeng13_4
--rwtTask[tTask.nZiLvLianMeng13_5]["NextTaskId"] = tTask.nZiLvLianMeng14_1
rwtTask[tTask.nZiLvLianMeng13_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng13_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng13_5]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng13_5]["DialogId"] = tDialog.nTask13_5
rwtTask[tTask.nZiLvLianMeng13_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng13_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng13_5]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng13_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng13_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[9]
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng13_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng13_5

-----------------------------------------------老旧的赏金账单-------------------------------------------
--背包里的意外发现
rwtTask[tTask.nZiLvLianMeng14_1] = {}
rwtTask[tTask.nZiLvLianMeng14_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng14_1]["PreTaskId"] = tTask.nZiLvLianMeng13_5
rwtTask[tTask.nZiLvLianMeng14_1]["NextTaskId"] = tTask.nZiLvLianMeng14_2
rwtTask[tTask.nZiLvLianMeng14_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng14_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng14_1]["DialogId"] = tDialog.nTask14_1
--rwtTask[tTask.nZiLvLianMeng14_1]["AutoTaskDialog"] =  tDialog.nTask14_1
--rwtTask[tTask.nZiLvLianMeng14_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng14_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng14_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng14_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
--rwtTask[tTask.nZiLvLianMeng14_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--讨论对策
rwtTask[tTask.nZiLvLianMeng14_2] = {}
rwtTask[tTask.nZiLvLianMeng14_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng14_2]["PreTaskId"] = tTask.nZiLvLianMeng14_1
rwtTask[tTask.nZiLvLianMeng14_2]["NextTaskId"] = tTask.nZiLvLianMeng14_3
rwtTask[tTask.nZiLvLianMeng14_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nZiLvLianMeng14_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_2]["DialogId"] = tDialog.nTask14_2
rwtTask[tTask.nZiLvLianMeng14_2]["AutoTaskDialog"] = tDialog.nTask14_2

--前往罗兰镇
rwtTask[tTask.nZiLvLianMeng14_3] = {}
rwtTask[tTask.nZiLvLianMeng14_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng14_3]["PreTaskId"] = tTask.nZiLvLianMeng14_2
rwtTask[tTask.nZiLvLianMeng14_3]["NextTaskId"] = tTask.nZiLvLianMeng14_4
rwtTask[tTask.nZiLvLianMeng14_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng14_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_3]["ReqTrap1"] = tTrap.nTrap_LaoLeiEnJia
rwtTask[tTask.nZiLvLianMeng14_3]["DialogId"] = tDialog.nTask14_3
rwtTask[tTask.nZiLvLianMeng14_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng14_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng14_3]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_LaoLeiEnJia
rwtTask[tTask.nZiLvLianMeng14_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng14_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng14_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng14_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_3]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_LaoLeiEnJia
rwtTask[tTask.nZiLvLianMeng14_3]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_LaoLeiEnJia

--寻找小雷恩
rwtTask[tTask.nZiLvLianMeng14_4] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng14_4]["PreTaskId"] = tTask.nZiLvLianMeng14_3
rwtTask[tTask.nZiLvLianMeng14_4]["NextTaskId"] = tTask.nZiLvLianMeng14_5
rwtTask[tTask.nZiLvLianMeng14_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng14_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_4]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["ReqTrap1"] = tTrap.nTrap_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["DialogId"] = tDialog.nTask14_4
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][3]["GenId"] = tSingleNpc.nNpcGroup_GenId_XiaoLeiEn
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][3]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_4]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nZiLvLianMeng14_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng14_4]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task14_3
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[16]
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng14_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng14_4

--和小雷恩对话
rwtTask[tTask.nZiLvLianMeng14_5] = {}
rwtTask[tTask.nZiLvLianMeng14_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng14_5]["PreTaskId"] = tTask.nZiLvLianMeng14_4
rwtTask[tTask.nZiLvLianMeng14_5]["NextTaskId"] = tTask.nZiLvLianMeng14_6
rwtTask[tTask.nZiLvLianMeng14_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng14_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_5]["TaskNpc"] = tSingleNpc.nNpc_XiaoLeiEn
rwtTask[tTask.nZiLvLianMeng14_5]["DialogId"] = tDialog.nTask14_5
rwtTask[tTask.nZiLvLianMeng14_5]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng14_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng14_5]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_XiaoLeiEn
rwtTask[tTask.nZiLvLianMeng14_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng14_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng14_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng14_5]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_XiaoLeiEn
rwtTask[tTask.nZiLvLianMeng14_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_XiaoLeiEn

--回到老雷恩处
rwtTask[tTask.nZiLvLianMeng14_6] = {}
rwtTask[tTask.nZiLvLianMeng14_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_6]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng14_6]["PreTaskId"] = tTask.nZiLvLianMeng14_5
rwtTask[tTask.nZiLvLianMeng14_6]["NextTaskId"] = tTask.nZiLvLianMeng14_7
rwtTask[tTask.nZiLvLianMeng14_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng14_6]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_6]["ReqTrap1"] = tTrap.nTrap_LaoLeiEnJia
rwtTask[tTask.nZiLvLianMeng14_6]["DialogId"] = tDialog.nTask14_6
rwtTask[tTask.nZiLvLianMeng14_6]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng14_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng14_6]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_LaoLeiEnJia
rwtTask[tTask.nZiLvLianMeng14_6]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng14_6]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng14_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng14_6]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng14_6]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_LaoLeiEnJia
rwtTask[tTask.nZiLvLianMeng14_6]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_LaoLeiEnJia

--铁臂安道夫
rwtTask[tTask.nZiLvLianMeng14_7] = {}
rwtTask[tTask.nZiLvLianMeng14_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21417]
rwtTask[tTask.nZiLvLianMeng14_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng14_7]["PreTaskId"] = tTask.nZiLvLianMeng14_6
rwtTask[tTask.nZiLvLianMeng14_7]["NextTaskId"] = tTask.nZiLvLianMeng15_1
rwtTask[tTask.nZiLvLianMeng14_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng14_7]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng14_7]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng14_7]["DialogId"] = tDialog.nTask14_7
rwtTask[tTask.nZiLvLianMeng14_7]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng14_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng14_7]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng14_7]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng14_7]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[17]
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng14_7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng14_7

-----------------------------------------------全权负责人-------------------------------------------
--寻找联盟负责人-1
rwtTask[tTask.nZiLvLianMeng15_1] = {}
rwtTask[tTask.nZiLvLianMeng15_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21418]
rwtTask[tTask.nZiLvLianMeng15_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng15_1]["PreTaskId"] = tTask.nZiLvLianMeng14_7
rwtTask[tTask.nZiLvLianMeng15_1]["NextTaskId"] = tTask.nZiLvLianMeng15_2
rwtTask[tTask.nZiLvLianMeng15_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng15_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng15_1]["TaskNpc"] = tSingleNpc.nNpc_LunNaDe
rwtTask[tTask.nZiLvLianMeng15_1]["DialogId"] = tDialog.nTask15_1
--rwtTask[tTask.nZiLvLianMeng15_1]["AutoTaskDialog"] =  tDialog.nTask15_1
rwtTask[tTask.nZiLvLianMeng15_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng15_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng15_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng15_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LunNaDe
rwtTask[tTask.nZiLvLianMeng15_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LunNaDe

--寻找联盟负责人-2
rwtTask[tTask.nZiLvLianMeng15_2] = {}
rwtTask[tTask.nZiLvLianMeng15_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21418]
rwtTask[tTask.nZiLvLianMeng15_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng15_2]["PreTaskId"] = tTask.nZiLvLianMeng15_1
rwtTask[tTask.nZiLvLianMeng15_2]["NextTaskId"] = tTask.nZiLvLianMeng15_3
rwtTask[tTask.nZiLvLianMeng15_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng15_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng15_2]["TaskNpc"] = tSingleNpc.nNpc_JiLa
rwtTask[tTask.nZiLvLianMeng15_2]["DialogId"] = tDialog.nTask15_2
rwtTask[tTask.nZiLvLianMeng15_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng15_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng15_2]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng15_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiLa
rwtTask[tTask.nZiLvLianMeng15_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiLa

--寻找联盟负责人-3
rwtTask[tTask.nZiLvLianMeng15_3] = {}
rwtTask[tTask.nZiLvLianMeng15_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21418]
rwtTask[tTask.nZiLvLianMeng15_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng15_3]["PreTaskId"] = tTask.nZiLvLianMeng15_2
rwtTask[tTask.nZiLvLianMeng15_3]["NextTaskId"] = tTask.nZiLvLianMeng15_4
rwtTask[tTask.nZiLvLianMeng15_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng15_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng15_3]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nZiLvLianMeng15_3]["DialogId"] = tDialog.nTask15_3
rwtTask[tTask.nZiLvLianMeng15_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng15_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng15_3]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng15_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
rwtTask[tTask.nZiLvLianMeng15_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao

--寻找联盟负责人-4
rwtTask[tTask.nZiLvLianMeng15_4] = {}
rwtTask[tTask.nZiLvLianMeng15_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21418]
rwtTask[tTask.nZiLvLianMeng15_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng15_4]["PreTaskId"] = tTask.nZiLvLianMeng15_3
rwtTask[tTask.nZiLvLianMeng15_4]["NextTaskId"] = tTask.nZiLvLianMeng16_1
rwtTask[tTask.nZiLvLianMeng15_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng15_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng15_4]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng15_4]["DialogId"] = tDialog.nTask15_4
rwtTask[tTask.nZiLvLianMeng15_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng15_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng15_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng15_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng15_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[18]
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng15_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng15_4

-----------------------------------------------神秘人的委派-------------------------------------------
--安道夫有安排
rwtTask[tTask.nZiLvLianMeng16_1] = {}
rwtTask[tTask.nZiLvLianMeng16_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21419]
rwtTask[tTask.nZiLvLianMeng16_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng16_1]["PreTaskId"] = tTask.nZiLvLianMeng15_4
rwtTask[tTask.nZiLvLianMeng16_1]["NextTaskId"] = tTask.nZiLvLianMeng16_2
rwtTask[tTask.nZiLvLianMeng16_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng16_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng16_1]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng16_1]["DialogId"] = tDialog.nTask16_1
--rwtTask[tTask.nZiLvLianMeng16_1]["AutoTaskDialog"] =  tDialog.nTask16_1
rwtTask[tTask.nZiLvLianMeng16_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng16_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng16_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng16_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng16_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--寻找接头人
rwtTask[tTask.nZiLvLianMeng16_2] = {}
rwtTask[tTask.nZiLvLianMeng16_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21419]
rwtTask[tTask.nZiLvLianMeng16_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng16_2]["PreTaskId"] = tTask.nZiLvLianMeng16_1
rwtTask[tTask.nZiLvLianMeng16_2]["NextTaskId"] = tTask.nZiLvLianMeng16_3
rwtTask[tTask.nZiLvLianMeng16_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask.nZiLvLianMeng16_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng16_2]["ReqTrap1"] = tTrap.nTrap_JieTouChu
rwtTask[tTask.nZiLvLianMeng16_2]["DialogId"] = tDialog.nTask16_2
rwtTask[tTask.nZiLvLianMeng16_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng16_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng16_2]["DynaNpcGroupGen"][1]["GenId"] = tTrap.nTrap_GenId_JieTouChu
rwtTask[tTask.nZiLvLianMeng16_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng16_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng16_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng16_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng16_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng16_2]["StartAutoWay"]["FindWayGroupId"] = tTrap.nTrap_JieTouChu
rwtTask[tTask.nZiLvLianMeng16_2]["StartAutoWay"]["FindWayGenId"] = tTrap.nTrap_GenId_JieTouChu

--战胜暗黑战魂
rwtTask[tTask.nZiLvLianMeng16_3] = {}
rwtTask[tTask.nZiLvLianMeng16_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21419]
rwtTask[tTask.nZiLvLianMeng16_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng16_3]["PreTaskId"] = tTask.nZiLvLianMeng16_2
rwtTask[tTask.nZiLvLianMeng16_3]["NextTaskId"] = tTask.nZiLvLianMeng16_4
rwtTask[tTask.nZiLvLianMeng16_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask.nZiLvLianMeng16_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng16_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_Task16_2
rwtTask[tTask.nZiLvLianMeng16_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_Task16_2
rwtTask[tTask.nZiLvLianMeng16_3]["ReqTrap1"] = tTrap.nTrap_JieTouChu
rwtTask[tTask.nZiLvLianMeng16_3]["DialogId"] = tDialog.nTask16_3
rwtTask[tTask.nZiLvLianMeng16_3]["AutoTaskDialog"] = tDialog.nTask16_3
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_Task16_2
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][2]["GenId"] = tTrap.nTrap_GenId_JieTouChu
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng16_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng16_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng16_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask.nZiLvLianMeng16_3]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng16_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_Task16_2
rwtTask[tTask.nZiLvLianMeng16_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_Task16_2

--回报安道夫
rwtTask[tTask.nZiLvLianMeng16_4] = {}
rwtTask[tTask.nZiLvLianMeng16_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21419]
rwtTask[tTask.nZiLvLianMeng16_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng16_4]["PreTaskId"] = tTask.nZiLvLianMeng16_3
rwtTask[tTask.nZiLvLianMeng16_4]["NextTaskId"] = tTask.nZiLvLianMeng17_1
rwtTask[tTask.nZiLvLianMeng16_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng16_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng16_4]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng16_4]["DialogId"] = tDialog.nTask16_4
rwtTask[tTask.nZiLvLianMeng16_4]["AcceptDialogId"] = 11768
rwtTask[tTask.nZiLvLianMeng16_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng16_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng16_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng16_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng16_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[19]
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng16_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng16_4

-----------------------------------------------被篡改的历史-------------------------------------------
--(和伦纳德说话)
rwtTask[tTask.nZiLvLianMeng17_1] = {}
rwtTask[tTask.nZiLvLianMeng17_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21420]
rwtTask[tTask.nZiLvLianMeng17_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng17_1]["PreTaskId"] = tTask.nZiLvLianMeng16_4
rwtTask[tTask.nZiLvLianMeng17_1]["NextTaskId"] = tTask.nZiLvLianMeng17_2
rwtTask[tTask.nZiLvLianMeng17_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng17_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng17_1]["TaskNpc"] = tSingleNpc.nNpc_LunNaDe
rwtTask[tTask.nZiLvLianMeng17_1]["DialogId"] = tDialog.nTask17_1
--rwtTask[tTask.nZiLvLianMeng17_1]["AutoTaskDialog"] =  tDialog.nTask17_1
rwtTask[tTask.nZiLvLianMeng17_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng17_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng17_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng17_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_LunNaDe
rwtTask[tTask.nZiLvLianMeng17_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_LunNaDe

--与镇长大卫对话
rwtTask[tTask.nZiLvLianMeng17_2] = {}
rwtTask[tTask.nZiLvLianMeng17_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21420]
rwtTask[tTask.nZiLvLianMeng17_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng17_2]["PreTaskId"] = tTask.nZiLvLianMeng17_1
rwtTask[tTask.nZiLvLianMeng17_2]["NextTaskId"] = tTask.nZiLvLianMeng17_3
rwtTask[tTask.nZiLvLianMeng17_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng17_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng17_2]["TaskNpc"] = tSingleNpc.nNpc_DaWei
rwtTask[tTask.nZiLvLianMeng17_2]["DialogId"] = tDialog.nTask17_2
rwtTask[tTask.nZiLvLianMeng17_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng17_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng17_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng17_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_DaWei
rwtTask[tTask.nZiLvLianMeng17_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_DaWei

--询问铁臂安道夫
rwtTask[tTask.nZiLvLianMeng17_3] = {}
rwtTask[tTask.nZiLvLianMeng17_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21420]
rwtTask[tTask.nZiLvLianMeng17_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng17_3]["PreTaskId"] = tTask.nZiLvLianMeng17_2
rwtTask[tTask.nZiLvLianMeng17_3]["NextTaskId"] = tTask.nZiLvLianMeng17_4
rwtTask[tTask.nZiLvLianMeng17_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng17_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng17_3]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng17_3]["DialogId"] = tDialog.nTask17_3
rwtTask[tTask.nZiLvLianMeng17_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng17_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng17_3]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng17_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng17_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[20]
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng17_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng17_3

--三个疑问
rwtTask[tTask.nZiLvLianMeng17_4] = {}
rwtTask[tTask.nZiLvLianMeng17_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21420]
rwtTask[tTask.nZiLvLianMeng17_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng17_4]["PreTaskId"] = tTask.nZiLvLianMeng17_3
rwtTask[tTask.nZiLvLianMeng17_4]["NextTaskId"] = tTask.nZiLvLianMeng17_5
rwtTask[tTask.nZiLvLianMeng17_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng17_4]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng17_4]["TaskNpc"] = tSingleNpc.nNpc_AnDaoFu
rwtTask[tTask.nZiLvLianMeng17_4]["DialogId"] = tDialog.nTask17_4
rwtTask[tTask.nZiLvLianMeng17_4]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng17_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng17_4]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng17_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_AnDaoFu
rwtTask[tTask.nZiLvLianMeng17_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_AnDaoFu

--把答案告诉大卫
rwtTask[tTask.nZiLvLianMeng17_5] = {}
rwtTask[tTask.nZiLvLianMeng17_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21420]
rwtTask[tTask.nZiLvLianMeng17_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng17_5]["PreTaskId"] = tTask.nZiLvLianMeng17_4
--rwtTask[tTask.nZiLvLianMeng17_5]["NextTaskId"] = tTask.nZiLvLianMeng18_1
rwtTask[tTask.nZiLvLianMeng17_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng17_5]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng17_5]["TaskNpc"] = tSingleNpc.nNpc_DaWei
rwtTask[tTask.nZiLvLianMeng17_5]["DialogId"] = tDialog.nTask17_5
rwtTask[tTask.nZiLvLianMeng17_5]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng17_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng17_5]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng17_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_DaWei
rwtTask[tTask.nZiLvLianMeng17_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_DaWei
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[21]
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng17_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng17_5

-----------------------------------------------比多猫的航海传奇-------------------------------------------
--比多猫的额外任务
rwtTask[tTask.nZiLvLianMeng18_1] = {}
rwtTask[tTask.nZiLvLianMeng18_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21421]
rwtTask[tTask.nZiLvLianMeng18_1]["TaskType"] = CONST_TASK_TYPE.SIDE
--rwtTask[tTask.nZiLvLianMeng18_1]["PreTaskId"] = tTask.nZiLvLianMeng17_5
rwtTask[tTask.nZiLvLianMeng18_1]["NextTaskId"] = tTask.nZiLvLianMeng18_2
rwtTask[tTask.nZiLvLianMeng18_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng18_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng18_1]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nZiLvLianMeng18_1]["DialogId"] = tDialog.nTask18_1
--rwtTask[tTask.nZiLvLianMeng18_1]["AutoTaskDialog"] =  tDialog.nTask18_1
--rwtTask[tTask.nZiLvLianMeng18_1]["StartAutoWay"] = {}
--rwtTask[tTask.nZiLvLianMeng18_1]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask.nZiLvLianMeng18_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
--rwtTask[tTask.nZiLvLianMeng18_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
--rwtTask[tTask.nZiLvLianMeng18_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao

--前往大贝湾调查
rwtTask[tTask.nZiLvLianMeng18_2] = {}
rwtTask[tTask.nZiLvLianMeng18_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21421]
rwtTask[tTask.nZiLvLianMeng18_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng18_2]["PreTaskId"] = tTask.nZiLvLianMeng18_1
rwtTask[tTask.nZiLvLianMeng18_2]["NextTaskId"] = tTask.nZiLvLianMeng18_3
rwtTask[tTask.nZiLvLianMeng18_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tTask.nZiLvLianMeng18_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng18_2]["ReqCollectId1"] = tCollect.nCollect_JiaoShi
rwtTask[tTask.nZiLvLianMeng18_2]["ReqCollectOnceNum"] = 1
rwtTask[tTask.nZiLvLianMeng18_2]["ReqCollectCount1"] = 1
rwtTask[tTask.nZiLvLianMeng18_2]["DialogId"] = tDialog.nTask18_2
rwtTask[tTask.nZiLvLianMeng18_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng18_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng18_2]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_JiaoShi
rwtTask[tTask.nZiLvLianMeng18_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng18_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng18_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng18_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng18_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng18_2]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_JiaoShi
rwtTask[tTask.nZiLvLianMeng18_2]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_JiaoShi

--回复比多猫
rwtTask[tTask.nZiLvLianMeng18_3] = {}
rwtTask[tTask.nZiLvLianMeng18_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21421]
rwtTask[tTask.nZiLvLianMeng18_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng18_3]["PreTaskId"] = tTask.nZiLvLianMeng18_2
rwtTask[tTask.nZiLvLianMeng18_3]["NextTaskId"] = tTask.nZiLvLianMeng19_1
rwtTask[tTask.nZiLvLianMeng18_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng18_3]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng18_3]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nZiLvLianMeng18_3]["DialogId"] = tDialog.nTask18_3
rwtTask[tTask.nZiLvLianMeng18_3]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng18_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng18_3]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng18_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
rwtTask[tTask.nZiLvLianMeng18_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[3]
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng18_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng18_3

--和比多猫对话
rwtTask[tTask.nZiLvLianMeng19_1] = {}
rwtTask[tTask.nZiLvLianMeng19_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21422]
rwtTask[tTask.nZiLvLianMeng19_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng19_1]["PreTaskId"] = tTask.nZiLvLianMeng18_3
rwtTask[tTask.nZiLvLianMeng19_1]["NextTaskId"] = tTask.nZiLvLianMeng19_2
rwtTask[tTask.nZiLvLianMeng19_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng19_1]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng19_1]["TaskNpc"] = tSingleNpc.nNpc_BiDuoMao
rwtTask[tTask.nZiLvLianMeng19_1]["DialogId"] = tDialog.nTask19_1
rwtTask[tTask.nZiLvLianMeng19_1]["AutoTaskDialog"] = tDialog.nTask19_1
rwtTask[tTask.nZiLvLianMeng19_1]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng19_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng19_1]["StartAutoWay"]["FindWayMapId"] = nMapId_ZLLM
rwtTask[tTask.nZiLvLianMeng19_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_BiDuoMao
rwtTask[tTask.nZiLvLianMeng19_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_BiDuoMao

--把礼物送给黛茜
rwtTask[tTask.nZiLvLianMeng19_2] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21422]
rwtTask[tTask.nZiLvLianMeng19_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZiLvLianMeng19_2]["PreTaskId"] = tTask.nZiLvLianMeng19_1
--rwtTask[tTask.nZiLvLianMeng19_2]["NextTaskId"] = End
rwtTask[tTask.nZiLvLianMeng19_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZiLvLianMeng19_2]["IsClickComplete"] = 0
rwtTask[tTask.nZiLvLianMeng19_2]["TaskNpc"] = tSingleNpc.nNpc_JiaEn
rwtTask[tTask.nZiLvLianMeng19_2]["DialogId"] = tDialog.nTask19_2
rwtTask[tTask.nZiLvLianMeng19_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_GenId_JiaEn
rwtTask[tTask.nZiLvLianMeng19_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng19_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nZiLvLianMeng19_2]["StartAutoWay"] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nZiLvLianMeng19_2]["StartAutoWay"]["FindWayMapId"] = nMapId_LMDL
rwtTask[tTask.nZiLvLianMeng19_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JiaEn
rwtTask[tTask.nZiLvLianMeng19_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JiaEn
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"][1] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tZiLvLianMengAwardId[4]
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask.nZiLvLianMeng19_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask.nZiLvLianMeng19_2
