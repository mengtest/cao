--region [RewardTask]Stage_3.lua
--Purpose:		悬赏任务第三期
--Creator: 		林多娜
--Created:		2019-6-27
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-09-06 $
--RCS-ID:		$Revision: 3 $
--endregion

--********************数据定义**************************
-------地图id-------
local nMapId = 2005
-------任务id-------
local tRewardTask = {}
tRewardTask.Task1 =  40252			--	锐斧战魔安德鲁
tRewardTask.Task2 =	 40253			--	实验合成兽巴德
tRewardTask.Task3 =	 40254			--	林地红魔阿诺德
tRewardTask.Task4 =	 40255			--	欲望男爵舒克
tRewardTask.Task5 =	 40256			--	荆刺蜂后塞拉
tRewardTask.Task6 =	 40257			--	海上掠夺者格纳
tRewardTask.Task7 =	 40258			--	钢羽枭鹰伊伦
tRewardTask.Task8 =	 40259			--	邪能研究者格纳
tRewardTask.Task9 =	 40260			--	暮夜魔蝎洛兹
tRewardTask.Task10 = 40261			--	翼魔统领塞曼
tRewardTask.Task11 = 40262			--	密林怪盗贝克勒
tRewardTask.Task12 = 40263			--	亡魂低语者埃莉
tRewardTask.Task13 = 40264			--	暗金领主维恩
tRewardTask.Task14 = 40265			--	风啸游隼丽丝
tRewardTask.Task15 = 40266			--	强袭战狼斯塔克
tRewardTask.Task16 = 40267			--	荒地魔蝎尼斯
tRewardTask.Task17 = 40268			--	烈炎斧兽尼尔斯
tRewardTask.Task18 = 40269			--	猩红先驱者欧文
tRewardTask.Task19 = 40270			--	枯木蜂王艾蕾
tRewardTask.Task20 = 40271			--	暗夜邪魔奥托

---------------------------------------------------------
tRewardTask.Task21 = 40272			--  暗影操控者格斯[count 1]
tRewardTask.Task22 = 40273			--  深渊领主桑德拉[count 1]
tRewardTask.Task23 = 40274			--  暗黑骑士长韦伯[count 1]
tRewardTask.Task24 = 40275			--  猩红鞭刺者多琳[count 1]
tRewardTask.Task25 = 40276			--  荒棘魔蛛克洛伊[count 1]
tRewardTask.Task26 = 40277			--  荒野领主里奥[count 1]
tRewardTask.Task27 = 40278			--  碎岩战锤查理[count 1]
tRewardTask.Task28 = 40279			--  邪鳍海魔奥利弗[count 1]
tRewardTask.Task29 = 40280			--  黯淡蔷薇坎蒂丝[count 1]
tRewardTask.Task30 = 40281			--  狂械暴徒奥德里[count 1]				
tRewardTask.Task31 = 40312			--  枭翼女妖柏莎[count 1]
tRewardTask.Task32 = 40313			--  漆黑侍魔者巴罗[count 1]
tRewardTask.Task33 = 40314			--  致命刀锋阿曼达[count 1]
tRewardTask.Task34 = 40315			--  狂战指挥官托特[count 1]
tRewardTask.Task35 = 40316			--  暮色桔梗阿芙拉[count 1]
tRewardTask.Task36 = 40317			--  重装魔铠艾伯特[count 1]
tRewardTask.Task37 = 40318			--  荒漠领主纳伏[count 1]
tRewardTask.Task38 = 40319			--  深渊铁蹄卡萨帕[count 1]
tRewardTask.Task39 = 40320			--  机械魔人杰森[count 1]
														
---------------------------------------------------------

local tRewardTaskFinish = {}
tRewardTaskFinish.Task1 =  40282	--	锐斧战魔安德鲁
tRewardTaskFinish.Task2 =  40283	--	实验合成兽巴德
tRewardTaskFinish.Task3 =  40284	--	林地红魔阿诺德
tRewardTaskFinish.Task4 =  40285	--	砾风游贼班森
tRewardTaskFinish.Task5 =  40286	--	荆刺蜂后塞拉
tRewardTaskFinish.Task6 =  40287	--	海上掠夺者格纳
tRewardTaskFinish.Task7 =  40288	--	钢羽枭鹰伊伦
tRewardTaskFinish.Task8 =  40289	--	邪能研究者格纳
tRewardTaskFinish.Task9 =  40290	--	暮夜魔蝎洛兹
tRewardTaskFinish.Task10 = 40291	--	翼魔统领塞曼
tRewardTaskFinish.Task11 = 40292	--	密林怪盗贝克勒
tRewardTaskFinish.Task12 = 40293	--	亡魂低语者埃莉
tRewardTaskFinish.Task13 = 40294	--	暗金领主维恩
tRewardTaskFinish.Task14 = 40295	--	风啸游隼丽丝
tRewardTaskFinish.Task15 = 40296	--	强袭战狼斯塔克
tRewardTaskFinish.Task16 = 40297	--	荒地魔蝎尼斯
tRewardTaskFinish.Task17 = 40298	--	烈炎斧兽尼尔斯
tRewardTaskFinish.Task18 = 40299	--	猩红先驱者欧文
tRewardTaskFinish.Task19 = 40300	--	枯木蜂王艾蕾
tRewardTaskFinish.Task20 = 40301	--	暗夜邪魔奥托
---------------------------------------------------------
tRewardTaskFinish.Task21 = 40302	--	暗影操控者格斯
tRewardTaskFinish.Task22 = 40303	--	深渊领主桑德拉
tRewardTaskFinish.Task23 = 40304	--	暗黑骑士长韦伯
tRewardTaskFinish.Task24 = 40305	--	猩红鞭刺者多琳
tRewardTaskFinish.Task25 = 40306	--	荒棘魔蛛克洛伊
tRewardTaskFinish.Task26 = 40307	--	荒野领主里奥
tRewardTaskFinish.Task27 = 40308	--	碎岩战锤查理
tRewardTaskFinish.Task28 = 40309	--	邪鳍海魔奥利弗
tRewardTaskFinish.Task29 = 40310	--	黯淡蔷薇坎蒂丝
tRewardTaskFinish.Task30 = 40311	--	狂械暴徒奥德里
tRewardTaskFinish.Task31 = 40321	--	枭翼女妖柏莎
tRewardTaskFinish.Task32 = 40322	--	漆黑侍魔者巴罗
tRewardTaskFinish.Task33 = 40323	--	致命刀锋阿曼达
tRewardTaskFinish.Task34 = 40324	--	狂战指挥官托特
tRewardTaskFinish.Task35 = 40325	--	暮色桔梗阿芙拉
tRewardTaskFinish.Task36 = 40326	--	重装魔铠艾伯特
tRewardTaskFinish.Task37 = 40327	--	荒漠领主纳伏
tRewardTaskFinish.Task38 = 40328	--	深渊铁蹄卡萨帕
tRewardTaskFinish.Task39 = 40329	--	机械魔人杰森
-----------------------------------------------------------
local AccpectDelGenId = {}
AccpectDelGenId[1] = 20050139   --狂战指挥官托特
AccpectDelGenId[2] = 20050142   --邪鳍海魔奥利弗
AccpectDelGenId[3] = 20050144   --漆黑侍魔者巴罗
AccpectDelGenId[4] = 20050278   --机械魔人杰森
AccpectDelGenId[5] = 20050150   --猩红鞭刺者多琳
AccpectDelGenId[6] = 20050151   --实验合成兽巴德
AccpectDelGenId[7] = 20050154   --欲望男爵舒克
AccpectDelGenId[8] = 20050156   --翼魔统领塞曼
AccpectDelGenId[9] = 20050158   --暗影操控者格斯
AccpectDelGenId[10]= 20050160   --钢羽枭鹰伊伦
AccpectDelGenId[11]= 20050272   --碎岩战锤查理
AccpectDelGenId[12]= 20050273   --烈炎斧兽凯恩特
AccpectDelGenId[13]= 20050275   --暗金领主维恩
-----------------------------------------------------------
--接受任务对白										
local tAcceptDialog = {}
tAcceptDialog.Task1 = 	12500		--	锐斧战魔安德鲁
tAcceptDialog.Task2 =	12502		--	实验合成兽巴德
tAcceptDialog.Task3 =	12504		--	林地红魔阿诺德
tAcceptDialog.Task4 =	12506		--	砾风游贼班森
tAcceptDialog.Task5 =	12508		--	荆刺蜂后塞拉
tAcceptDialog.Task6 =	12510		--	海上掠夺者格纳
tAcceptDialog.Task7 =	12512		--	钢羽枭鹰伊伦
tAcceptDialog.Task8 =	12514		--	邪能研究者格纳
tAcceptDialog.Task9 =	12516		--	暮夜魔蝎洛兹
tAcceptDialog.Task10 =	12518		--	翼魔统领塞曼
tAcceptDialog.Task11 =	12520		--	密林怪盗贝克勒
tAcceptDialog.Task12 =	12522		--	亡魂低语者埃莉
tAcceptDialog.Task13 =	12524		--	暗金领主维恩
tAcceptDialog.Task14 =	12526		--	风啸游隼丽丝
tAcceptDialog.Task15 =	12528		--	强袭战狼斯塔克
tAcceptDialog.Task16 =	12530		--	荒地魔蝎尼斯
tAcceptDialog.Task17 =	12532		--	烈炎斧兽尼尔斯
tAcceptDialog.Task18 =	12534		--	猩红先驱者欧文
tAcceptDialog.Task19 =	12536		--	枯木蜂王艾蕾
tAcceptDialog.Task20 =	12538		--	暗夜邪魔奥托

-----------------------------------------------------------
tAcceptDialog.Task21 =	12540		--	暗影操控者格斯
tAcceptDialog.Task22 =	12542		--	深渊领主桑德拉
tAcceptDialog.Task23 =	12544		--	暗黑骑士长韦伯
tAcceptDialog.Task24 =	12546		--	猩红鞭刺者多琳
tAcceptDialog.Task25 =	12548		--	荒棘魔蛛克洛伊
tAcceptDialog.Task26 =	12550		--	荒野领主里奥
tAcceptDialog.Task27 =	12552		--	碎岩战锤查理
tAcceptDialog.Task28 =	12554		--	邪鳍海魔奥利弗
tAcceptDialog.Task29 =	12556		--	黯淡蔷薇坎蒂丝
tAcceptDialog.Task30 =	12558		--	狂械暴徒奥德里
tAcceptDialog.Task31 =  12621		--	枭翼女妖柏莎
tAcceptDialog.Task32 =  12623		--	漆黑侍魔者巴罗
tAcceptDialog.Task33 =  12625		--	致命刀锋阿曼达
tAcceptDialog.Task34 =  12627		--	狂战指挥官托特
tAcceptDialog.Task35 =  12629		--	暮色桔梗阿芙拉
tAcceptDialog.Task36 =  12631		--	重装魔铠艾伯特
tAcceptDialog.Task37 =  12633		--	荒漠领主纳伏
tAcceptDialog.Task38 =  12635		--	深渊铁蹄卡萨帕
tAcceptDialog.Task39 =  12637		--	机械魔人杰森
-----------------------------------------------------------

--完成任务对白
local tFinishDialog = {}
tFinishDialog.Task1 = 	12501		--	锐斧战魔安德鲁
tFinishDialog.Task2 =	12503		--	实验合成兽巴德
tFinishDialog.Task3 =	12505		--	林地红魔阿诺德
tFinishDialog.Task4 =	12507		--	砾风游贼班森
tFinishDialog.Task5 =	12509		--	荆刺蜂后塞拉
tFinishDialog.Task6 =	12511		--	海上掠夺者格纳
tFinishDialog.Task7 =	12513		--	钢羽枭鹰伊伦
tFinishDialog.Task8 =	12515		--	邪能研究者格纳
tFinishDialog.Task9 =	12517		--	暮夜魔蝎洛兹
tFinishDialog.Task10 =	12519		--	翼魔统领塞曼
tFinishDialog.Task11 =	12521		--	密林怪盗贝克勒
tFinishDialog.Task12 =	12523		--	亡魂低语者埃莉
tFinishDialog.Task13 =	12525		--	暗金领主维恩
tFinishDialog.Task14 =	12527		--	风啸游隼丽丝
tFinishDialog.Task15 =	12529		--	强袭战狼斯塔克
tFinishDialog.Task16 =	12531		--	荒地魔蝎尼斯
tFinishDialog.Task17 =	12533		--	烈炎斧兽尼尔斯
tFinishDialog.Task18 =	12535		--	猩红先驱者欧文
tFinishDialog.Task19 =	12537		--	枯木蜂王艾蕾
tFinishDialog.Task20 =	12539		--	暗夜邪魔奥托

-----------------------------------------------------------
tFinishDialog.Task21 =	12541		--	暗影操控者格斯
tFinishDialog.Task22 =	12543		--	深渊领主桑德拉
tFinishDialog.Task23 =	12545		--	暗黑骑士长韦伯
tFinishDialog.Task24 =	12547		--	猩红鞭刺者多琳
tFinishDialog.Task25 =	12549		--	荒棘魔蛛克洛伊
tFinishDialog.Task26 =	12551		--	荒野领主里奥
tFinishDialog.Task27 =	12553		--	碎岩战锤查理
tFinishDialog.Task28 =	12555		--	邪鳍海魔奥利弗
tFinishDialog.Task29 =	12557		--	黯淡蔷薇坎蒂丝
tFinishDialog.Task30 =	12559		--	狂械暴徒奥德里					
tFinishDialog.Task31 =  12622		--	枭翼女妖柏莎
tFinishDialog.Task32 =  12624		--	漆黑侍魔者巴罗
tFinishDialog.Task33 =  12626		--	致命刀锋阿曼达
tFinishDialog.Task34 =  12628		--	狂战指挥官托特
tFinishDialog.Task35 =  12630		--	暮色桔梗阿芙拉
tFinishDialog.Task36 =  12632		--	重装魔铠艾伯特
tFinishDialog.Task37 =  12634		--	荒漠领主纳伏
tFinishDialog.Task38 =  12636		--	深渊铁蹄卡萨帕
tFinishDialog.Task39 =  12638		--	机械魔人杰森
----------------NPCid----------------------
local tNpcId = {}

----铁臂安道夫(已有NPC)
--tNpcId[1] = 3005
--吉拉(已有NPC)
tNpcId[1] = 3042

----------------NPC组----------------------

--NPC
local tNpcGroup = {}
local tNpcGroupGenId = {}

----铁臂安道夫(已有NPC)
--tNpcGroup[1] = 20112
--tNpcGroupGenId[1] = 2001655
--吉拉(已有NPC)
tNpcGroup[1] = 20114
tNpcGroupGenId[1] = 2001657
----------------monsterGroup----------------------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

tMonsterGroup.Task1 = 	900530		--	锐斧战魔安德鲁
tMonsterGroup.Task2 =	900531		--	实验合成兽巴德
tMonsterGroup.Task3 =	900532		--	林地红魔阿诺德
tMonsterGroup.Task4 =	900533		--	砾风游贼班森
tMonsterGroup.Task5 =	900534		--	荆刺蜂后塞拉
tMonsterGroup.Task6 =	900535		--	海上掠夺者格纳
tMonsterGroup.Task7 =	900536		--	钢羽枭鹰伊伦
tMonsterGroup.Task8 =	900537		--	邪能研究者格纳
tMonsterGroup.Task9 =	900538		--	暮夜魔蝎洛兹
tMonsterGroup.Task10 =	900539		--	翼魔统领塞曼
tMonsterGroup.Task11 =	900540		--	密林怪盗贝克勒
tMonsterGroup.Task12 =	900541		--	亡魂低语者埃莉
tMonsterGroup.Task13 =	900542		--	暗金领主维恩
tMonsterGroup.Task14 =	900543		--	风啸游隼丽丝
tMonsterGroup.Task15 =	900544		--	强袭战狼斯塔克
tMonsterGroup.Task16 =	900545		--	荒地魔蝎尼斯
tMonsterGroup.Task17 =	900546		--	烈炎斧兽尼尔斯
tMonsterGroup.Task18 =	900547		--	猩红先驱者欧文
tMonsterGroup.Task19 =	900548		--	枯木蜂王艾蕾
tMonsterGroup.Task20 =	900549		--	暗夜邪魔奥托
---------------------------------------------------------
tMonsterGroup.Task21 =	900550		--	暗影操控者格斯
tMonsterGroup.Task22 =	900551		--	深渊领主桑德拉
tMonsterGroup.Task23 =	900552		--	暗黑骑士长韦伯
tMonsterGroup.Task24 =	900553		--	猩红鞭刺者多琳
tMonsterGroup.Task25 =	900554		--	荒棘魔蛛克洛伊
tMonsterGroup.Task26 =	900555		--	荒野领主里奥
tMonsterGroup.Task27 =	900556		--	碎岩战锤查理
tMonsterGroup.Task28 =	900557		--	邪鳍海魔奥利弗
tMonsterGroup.Task29 =	900558		--	黯淡蔷薇坎蒂丝
tMonsterGroup.Task30 =	900559		--	狂械暴徒奥德里
tMonsterGroup.Task31 =  900566		--	枭翼女妖柏莎
tMonsterGroup.Task32 =  900567		--	漆黑侍魔者巴罗
tMonsterGroup.Task33 =  900568		--	致命刀锋阿曼达
tMonsterGroup.Task34 =  900569		--	狂战指挥官托特
tMonsterGroup.Task35 =  900570		--	暮色桔梗阿芙拉
tMonsterGroup.Task36 =  900571		--	重装魔铠艾伯特
tMonsterGroup.Task37 =  900572		--	荒漠领主纳伏
tMonsterGroup.Task38 =  900573		--	深渊铁蹄卡萨帕
tMonsterGroup.Task39 =  900574		--	机械魔人杰森
-----------------------------------------------------------

tMonsterGroupGenId.Task1 = 	20050290		--	锐斧战魔安德鲁
tMonsterGroupGenId.Task2 =	20050291		--	实验合成兽巴德
tMonsterGroupGenId.Task3 =	20050292		--	林地红魔阿诺德
tMonsterGroupGenId.Task4 =	20050293		--	砾风游贼班森
tMonsterGroupGenId.Task5 =	20050294		--	荆刺蜂后塞拉
tMonsterGroupGenId.Task6 =	20050295		--	海上掠夺者格纳
tMonsterGroupGenId.Task7 =	20050296		--	钢羽枭鹰伊伦
tMonsterGroupGenId.Task8 =	20050297		--	邪能研究者格纳
tMonsterGroupGenId.Task9 =	20050298		--	暮夜魔蝎洛兹
tMonsterGroupGenId.Task10 =	20050299		--	翼魔统领塞曼
tMonsterGroupGenId.Task11 =	20050300		--	密林怪盗贝克勒
tMonsterGroupGenId.Task12 =	20050301		--	亡魂低语者埃莉
tMonsterGroupGenId.Task13 =	20050302		--	暗金领主维恩
tMonsterGroupGenId.Task14 =	20050303		--	风啸游隼丽丝
tMonsterGroupGenId.Task15 =	20050304		--	强袭战狼斯塔克
tMonsterGroupGenId.Task16 =	20050305		--	荒地魔蝎尼斯
tMonsterGroupGenId.Task17 =	20050306		--	烈炎斧兽尼尔斯
tMonsterGroupGenId.Task18 =	20050307		--	猩红先驱者欧文
tMonsterGroupGenId.Task19 =	20050308		--	枯木蜂王艾蕾
tMonsterGroupGenId.Task20 =	20050309		--	暗夜邪魔奥托
---------------------------------------------------------
tMonsterGroupGenId.Task21 =	20050310		--	暗影操控者格斯
tMonsterGroupGenId.Task22 =	20050311		--	深渊领主桑德拉
tMonsterGroupGenId.Task23 =	20050312		--	暗黑骑士长韦伯
tMonsterGroupGenId.Task24 =	20050313		--	猩红鞭刺者多琳
tMonsterGroupGenId.Task25 =	20050314		--	荒棘魔蛛克洛伊
tMonsterGroupGenId.Task26 =	20050315		--	荒野领主里奥
tMonsterGroupGenId.Task27 =	20050316		--	碎岩战锤查理
tMonsterGroupGenId.Task28 =	20050317		--	邪鳍海魔奥利弗
tMonsterGroupGenId.Task29 =	20050318		--	黯淡蔷薇坎蒂丝
tMonsterGroupGenId.Task30 =	20050319		--	狂械暴徒奥德里					 
tMonsterGroupGenId.Task31 = 20050330		--	枭翼女妖柏莎
tMonsterGroupGenId.Task32 = 20050331		--	漆黑侍魔者巴罗
tMonsterGroupGenId.Task33 = 20050332		--	致命刀锋阿曼达
tMonsterGroupGenId.Task34 = 20050333		--	狂战指挥官托特
tMonsterGroupGenId.Task35 = 20050334		--	暮色桔梗阿芙拉
tMonsterGroupGenId.Task36 = 20050335		--	重装魔铠艾伯特
tMonsterGroupGenId.Task37 = 20050336		--	荒漠领主纳伏
tMonsterGroupGenId.Task38 = 20050337		--	深渊铁蹄卡萨帕
tMonsterGroupGenId.Task39 = 20050338		--	机械魔人杰森
----------------------------------------------------------------

----------奖励id------------
local tAwardId = {}

----通用任务奖励
--tAwardId.NormalTask = 2000387

tAwardId.Task1 = 2000552
tAwardId.Task2 = 2000553
tAwardId.Task3 = 2000554
tAwardId.Task4 = 2000555
tAwardId.Task5 = 2000556
tAwardId.Task6 = 2000557
tAwardId.Task7 = 2000558
tAwardId.Task8 = 2000559
tAwardId.Task9 = 2000560
tAwardId.Task10 = 2000561
tAwardId.Task11 = 2000562
tAwardId.Task12 = 2000563
tAwardId.Task13 = 2000564
tAwardId.Task14 = 2000565
tAwardId.Task15 = 2000566
tAwardId.Task16 = 2000567
tAwardId.Task17 = 2000568
tAwardId.Task18 = 2000569
tAwardId.Task19 = 2000570
tAwardId.Task20 = 2000571
tAwardId.Task21 = 2000572
tAwardId.Task22 = 2000573
tAwardId.Task23 = 2000574
tAwardId.Task24 = 2000575
tAwardId.Task25 = 2000576
tAwardId.Task26 = 2000577
tAwardId.Task27 = 2000578
tAwardId.Task28 = 2000579
tAwardId.Task29 = 2000580
tAwardId.Task30 = 2000581
tAwardId.Task31 = 2000582
tAwardId.Task32 = 2000583
tAwardId.Task33 = 2000584
tAwardId.Task34 = 2000585
tAwardId.Task35 = 2000586
tAwardId.Task36 = 2000587
tAwardId.Task37 = 2000588
tAwardId.Task38 = 2000589
tAwardId.Task39 = 2000590

--怪物奖励
tAwardId.MonsterGroup1 =	2000450		--	锐斧战魔安德鲁
tAwardId.MonsterGroup2 =	2000451		--	实验合成兽巴德
tAwardId.MonsterGroup3 =	2000452		--	林地红魔阿诺德
tAwardId.MonsterGroup4 =	2000453		--	砾风游贼班森
tAwardId.MonsterGroup5 =	2000454		--	荆刺蜂后塞拉
tAwardId.MonsterGroup6 =	2000455		--	海上掠夺者格纳
tAwardId.MonsterGroup7 =	2000456		--	钢羽枭鹰伊伦
tAwardId.MonsterGroup8 =	2000457		--	邪能研究者格纳
tAwardId.MonsterGroup9 =	2000458		--	暮夜魔蝎洛兹
tAwardId.MonsterGroup10 =	2000459		--	翼魔统领塞曼
tAwardId.MonsterGroup11 =	2000460		--	密林怪盗贝克勒
tAwardId.MonsterGroup12 =	2000461		--	亡魂低语者埃莉
tAwardId.MonsterGroup13 =	2000462		--	暗金领主维恩
tAwardId.MonsterGroup14 =	2000463		--	风啸游隼丽丝
tAwardId.MonsterGroup15 =	2000464		--	强袭战狼斯塔克
tAwardId.MonsterGroup16 =	2000465		--	荒地魔蝎尼斯
tAwardId.MonsterGroup17 =	2000466		--	烈炎斧兽尼尔斯
tAwardId.MonsterGroup18 =	2000467		--	猩红先驱者欧文
tAwardId.MonsterGroup19 =	2000468		--	枯木蜂王艾蕾
tAwardId.MonsterGroup20 =	2000469		--	暗夜邪魔奥托
---------------------------------------------------------
tAwardId.MonsterGroup21 =	2000470		--	丧尸法师
tAwardId.MonsterGroup22 =	2000471		--	恶魔修帝
tAwardId.MonsterGroup23 =	2000472		--	莱克
tAwardId.MonsterGroup24 =	2000473		--	绝世舞姬
tAwardId.MonsterGroup25 =	2000474		--	蜘蛛女王
tAwardId.MonsterGroup26 =	2000475		--	武装熊人战士
tAwardId.MonsterGroup27 =	2000476		--	矮巨人指挥官
tAwardId.MonsterGroup28 =	2000477		--	海魔
tAwardId.MonsterGroup29 =	2000478		--	绝世舞姬
tAwardId.MonsterGroup30 =	2000479		--	哈蒙
----------------------------------------------------------------
--新增9个：）										 
tAwardId.MonsterGroup31 = 2000480	--	枭鹰		----
tAwardId.MonsterGroup32 = 2000481	--	尼格斯		----
tAwardId.MonsterGroup33 = 2000482	--	枯叶蜂蜂王	----
tAwardId.MonsterGroup34 = 2000483	--	白银盾战	----
tAwardId.MonsterGroup35 = 2000484	--	默希娅		----
tAwardId.MonsterGroup36 = 2000485	--	嗜血战魂	----
tAwardId.MonsterGroup37 = 2000486	--	蝎怪		----
tAwardId.MonsterGroup38 = 2000487	--	四蹄神		----
tAwardId.MonsterGroup39 = 2000488	--	机械石像	----
----------------------------------------------------------------

----------任务标题id------------
local tTaskTitle = {}
tTaskTitle.Task1 =  tLuaText[LANGUAGE_CONFIG][21731]	--	锐斧战魔安德鲁
tTaskTitle.Task2 =  tLuaText[LANGUAGE_CONFIG][21732]	--	实验合成兽巴德
tTaskTitle.Task3 =  tLuaText[LANGUAGE_CONFIG][21733]	--	林地红魔阿诺德
tTaskTitle.Task4 =  tLuaText[LANGUAGE_CONFIG][21734]	--	砾风游贼班森
tTaskTitle.Task5 =  tLuaText[LANGUAGE_CONFIG][21735]	--	荆刺蜂后塞拉
tTaskTitle.Task6 =  tLuaText[LANGUAGE_CONFIG][21736]	--	海上掠夺者格纳
tTaskTitle.Task7 =  tLuaText[LANGUAGE_CONFIG][21737]	--	钢羽枭鹰伊伦
tTaskTitle.Task8 =  tLuaText[LANGUAGE_CONFIG][21738]	--	邪能研究者格纳
tTaskTitle.Task9 =  tLuaText[LANGUAGE_CONFIG][21739]	--	暮夜魔蝎洛兹
tTaskTitle.Task10 = tLuaText[LANGUAGE_CONFIG][21740]	--	翼魔统领塞曼
tTaskTitle.Task11 = tLuaText[LANGUAGE_CONFIG][21741]	--	密林怪盗贝克勒
tTaskTitle.Task12 = tLuaText[LANGUAGE_CONFIG][21742]	--	亡魂低语者埃莉
tTaskTitle.Task13 = tLuaText[LANGUAGE_CONFIG][21743]	--	暗金领主维恩
tTaskTitle.Task14 = tLuaText[LANGUAGE_CONFIG][21744]	--	风啸游隼丽丝
tTaskTitle.Task15 = tLuaText[LANGUAGE_CONFIG][21745]	--	强袭战狼斯塔克
tTaskTitle.Task16 = tLuaText[LANGUAGE_CONFIG][21746]	--	荒地魔蝎尼斯
tTaskTitle.Task17 = tLuaText[LANGUAGE_CONFIG][21747]	--	烈炎斧兽尼尔斯
tTaskTitle.Task18 = tLuaText[LANGUAGE_CONFIG][21748]	--	猩红先驱者欧文
tTaskTitle.Task19 = tLuaText[LANGUAGE_CONFIG][21749]	--	枯木蜂王艾蕾
tTaskTitle.Task20 = tLuaText[LANGUAGE_CONFIG][21750]	--	暗夜邪魔奥托
---------------------------------------------------------
tTaskTitle.Task21 = tLuaText[LANGUAGE_CONFIG][21751]	--	丧尸法师
tTaskTitle.Task22 = tLuaText[LANGUAGE_CONFIG][21752]	--	恶魔修帝
tTaskTitle.Task23 = tLuaText[LANGUAGE_CONFIG][21753]	--	莱克
tTaskTitle.Task24 = tLuaText[LANGUAGE_CONFIG][21754]	--	绝世舞姬
tTaskTitle.Task25 = tLuaText[LANGUAGE_CONFIG][21755]	--	蜘蛛女王
tTaskTitle.Task26 = tLuaText[LANGUAGE_CONFIG][21756]	--	武装熊人战士
tTaskTitle.Task27 = tLuaText[LANGUAGE_CONFIG][21757]	--	矮巨人指挥官
tTaskTitle.Task28 = tLuaText[LANGUAGE_CONFIG][21758]	--	海魔
tTaskTitle.Task29 = tLuaText[LANGUAGE_CONFIG][21759]	--	绝世舞姬
tTaskTitle.Task30 = tLuaText[LANGUAGE_CONFIG][21760]	--	哈蒙
----------------------------------------------------------------
--新增9个：）	
tTaskTitle.Task31 = tLuaText[LANGUAGE_CONFIG][21773]	--	枭鹰		
tTaskTitle.Task32 = tLuaText[LANGUAGE_CONFIG][21774]	--	尼格斯		
tTaskTitle.Task33 = tLuaText[LANGUAGE_CONFIG][21775]	--	枯叶蜂蜂王	
tTaskTitle.Task34 = tLuaText[LANGUAGE_CONFIG][21776]	--	白银盾战	
tTaskTitle.Task35 = tLuaText[LANGUAGE_CONFIG][21777]	--	默希娅		
tTaskTitle.Task36 = tLuaText[LANGUAGE_CONFIG][21778]	--	嗜血战魂	
tTaskTitle.Task37 = tLuaText[LANGUAGE_CONFIG][21779]	--	蝎怪		
tTaskTitle.Task38 = tLuaText[LANGUAGE_CONFIG][21780]	--	四蹄神		
tTaskTitle.Task39 = tLuaText[LANGUAGE_CONFIG][21781]	--	机械石像	

--------悬赏id------------
local tArrestId = {}
tArrestId.Task1  = 211
tArrestId.Task2  = 212
tArrestId.Task3  = 213
tArrestId.Task4  = 221
tArrestId.Task5  = 222
tArrestId.Task6  = 223
tArrestId.Task7  = 231
tArrestId.Task8  = 232
tArrestId.Task9  = 233
tArrestId.Task10 = 241
tArrestId.Task11 = 242
tArrestId.Task12 = 243
tArrestId.Task13 = 251
tArrestId.Task14 = 252
tArrestId.Task15 = 253
tArrestId.Task16 = 261
tArrestId.Task17 = 262
tArrestId.Task18 = 263
tArrestId.Task19 = 271
tArrestId.Task20 = 272
---------------------------------------------------------
tArrestId.Task21 = 273
tArrestId.Task22 = 281
tArrestId.Task23 = 282
tArrestId.Task24 = 283
tArrestId.Task25 = 291
tArrestId.Task26 = 292
tArrestId.Task27 = 293
tArrestId.Task28 = 301
tArrestId.Task29 = 302
tArrestId.Task30 = 303
------------------------------------------
--新增9个
tArrestId.Task31 = 311
tArrestId.Task32 = 312
tArrestId.Task33 = 313
tArrestId.Task34 = 321
tArrestId.Task35 = 322
tArrestId.Task36 = 323
tArrestId.Task37 = 331
tArrestId.Task38 = 332
tArrestId.Task39 = 333


------***************************杀怪任务***************************----
---------------------------------------------------------------------------------------------------------------------
--斧战魔安德鲁

rwtTask[tRewardTask.Task1] = {}
rwtTask[tRewardTask.Task1]["Title"] = tTaskTitle.Task1
rwtTask[tRewardTask.Task1]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task1]["NextTaskId"] = tRewardTaskFinish.Task1
rwtTask[tRewardTask.Task1]["AcceptDialogId"] = tAcceptDialog.Task1

rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task1
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task1]["KillMonsterGroup1" ]= tMonsterGroup.Task1

rwtTask[tRewardTask.Task1]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task1
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task1
---------------------------------------------------------------------------------------------------------------------
--实验合成兽巴德

rwtTask[tRewardTask.Task2] = {}
rwtTask[tRewardTask.Task2]["Title"] = tTaskTitle.Task2
rwtTask[tRewardTask.Task2]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task2]["NextTaskId"] = tRewardTaskFinish.Task2
rwtTask[tRewardTask.Task2]["AcceptDialogId"] = tAcceptDialog.Task2
rwtTask[tRewardTask.Task2]["AcceptDelDynaObj"] = AccpectDelGenId[6]

rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task2
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task2]["KillMonsterGroup1" ]= tMonsterGroup.Task2

rwtTask[tRewardTask.Task2]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task2
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task2
---------------------------------------------------------------------------------------------------------------------
--林地红魔阿诺德

rwtTask[tRewardTask.Task3] = {}
rwtTask[tRewardTask.Task3]["Title"] = tTaskTitle.Task3
rwtTask[tRewardTask.Task3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task3]["NextTaskId"] = tRewardTaskFinish.Task3
rwtTask[tRewardTask.Task3]["AcceptDialogId"] = tAcceptDialog.Task3

rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task3
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task3]["KillMonsterGroup1" ]= tMonsterGroup.Task3

rwtTask[tRewardTask.Task3]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task3
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task3
---------------------------------------------------------------------------------------------------------------------
--砾风游贼班森

rwtTask[tRewardTask.Task4] = {}
rwtTask[tRewardTask.Task4]["Title"] = tTaskTitle.Task4
rwtTask[tRewardTask.Task4]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task4]["NextTaskId"] = tRewardTaskFinish.Task4
rwtTask[tRewardTask.Task4]["AcceptDialogId"] = tAcceptDialog.Task4
rwtTask[tRewardTask.Task4]["AcceptDelDynaObj"] = AccpectDelGenId[7]


rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task4
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task4]["KillMonsterGroup1" ]= tMonsterGroup.Task4

rwtTask[tRewardTask.Task4]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task4
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task4
---------------------------------------------------------------------------------------------------------------------
--荆刺蜂后塞拉

rwtTask[tRewardTask.Task5] = {}
rwtTask[tRewardTask.Task5]["Title"] = tTaskTitle.Task5
rwtTask[tRewardTask.Task5]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task5]["NextTaskId"] = tRewardTaskFinish.Task5
rwtTask[tRewardTask.Task5]["AcceptDialogId"] = tAcceptDialog.Task5

rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task5
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task5]["KillMonsterGroup1" ]= tMonsterGroup.Task5

rwtTask[tRewardTask.Task5]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task5
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task5
---------------------------------------------------------------------------------------------------------------------
--海上掠夺者格纳

rwtTask[tRewardTask.Task6] = {}
rwtTask[tRewardTask.Task6]["Title"] = tTaskTitle.Task6
rwtTask[tRewardTask.Task6]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task6]["NextTaskId"] = tRewardTaskFinish.Task6
rwtTask[tRewardTask.Task6]["AcceptDialogId"] = tAcceptDialog.Task6

rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task6
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task6]["KillMonsterGroup1" ]= tMonsterGroup.Task6

rwtTask[tRewardTask.Task6]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task6
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task6
---------------------------------------------------------------------------------------------------------------------
--钢羽枭鹰伊伦

rwtTask[tRewardTask.Task7] = {}
rwtTask[tRewardTask.Task7]["Title"] = tTaskTitle.Task7
rwtTask[tRewardTask.Task7]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task7]["NextTaskId"] = tRewardTaskFinish.Task7
rwtTask[tRewardTask.Task7]["AcceptDialogId"] = tAcceptDialog.Task7
rwtTask[tRewardTask.Task7]["AcceptDelDynaObj"] = AccpectDelGenId[10]

rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task7
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task7]["KillMonsterGroup1" ]= tMonsterGroup.Task7

rwtTask[tRewardTask.Task7]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task7
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task7
---------------------------------------------------------------------------------------------------------------------
--邪能研究者格纳

rwtTask[tRewardTask.Task8] = {}
rwtTask[tRewardTask.Task8]["Title"] = tTaskTitle.Task8
rwtTask[tRewardTask.Task8]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task8]["NextTaskId"] = tRewardTaskFinish.Task8
rwtTask[tRewardTask.Task8]["AcceptDialogId"] = tAcceptDialog.Task8

rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task8
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task8]["KillMonsterGroup1" ]= tMonsterGroup.Task8

rwtTask[tRewardTask.Task8]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task8
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task8
---------------------------------------------------------------------------------------------------------------------
--暮夜魔蝎洛兹

rwtTask[tRewardTask.Task9] = {}
rwtTask[tRewardTask.Task9]["Title"] = tTaskTitle.Task9
rwtTask[tRewardTask.Task9]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task9]["NextTaskId"] = tRewardTaskFinish.Task9
rwtTask[tRewardTask.Task9]["AcceptDialogId"] = tAcceptDialog.Task9

rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task9
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task9]["KillMonsterGroup1" ]= tMonsterGroup.Task9

rwtTask[tRewardTask.Task9]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task9
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task9
---------------------------------------------------------------------------------------------------------------------
--翼魔统领塞曼

rwtTask[tRewardTask.Task10] = {}
rwtTask[tRewardTask.Task10]["Title"] = tTaskTitle.Task10
rwtTask[tRewardTask.Task10]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task10]["NextTaskId"] = tRewardTaskFinish.Task10
rwtTask[tRewardTask.Task10]["AcceptDialogId"] = tAcceptDialog.Task10
rwtTask[tRewardTask.Task10]["AcceptDelDynaObj"] = AccpectDelGenId[8]

rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task10
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task10]["KillMonsterGroup1" ]= tMonsterGroup.Task10

rwtTask[tRewardTask.Task10]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task10
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task10
---------------------------------------------------------------------------------------------------------------------
--密林怪盗贝克勒

rwtTask[tRewardTask.Task11] = {}
rwtTask[tRewardTask.Task11]["Title"] = tTaskTitle.Task11
rwtTask[tRewardTask.Task11]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task11]["NextTaskId"] = tRewardTaskFinish.Task11
rwtTask[tRewardTask.Task11]["AcceptDialogId"] = tAcceptDialog.Task11

rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task11
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task11]["KillMonsterGroup1" ]= tMonsterGroup.Task11

rwtTask[tRewardTask.Task11]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task11
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task11
---------------------------------------------------------------------------------------------------------------------
--亡魂低语者埃莉

rwtTask[tRewardTask.Task12] = {}
rwtTask[tRewardTask.Task12]["Title"] = tTaskTitle.Task12
rwtTask[tRewardTask.Task12]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task12]["NextTaskId"] = tRewardTaskFinish.Task12
rwtTask[tRewardTask.Task12]["AcceptDialogId"] = tAcceptDialog.Task12

rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task12
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task12]["KillMonsterGroup1" ]= tMonsterGroup.Task12

rwtTask[tRewardTask.Task12]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task12
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task12
---------------------------------------------------------------------------------------------------------------------
--暗金领主维恩

rwtTask[tRewardTask.Task13] = {}
rwtTask[tRewardTask.Task13]["Title"] = tTaskTitle.Task13
rwtTask[tRewardTask.Task13]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task13]["NextTaskId"] = tRewardTaskFinish.Task13
rwtTask[tRewardTask.Task13]["AcceptDialogId"] = tAcceptDialog.Task13
rwtTask[tRewardTask.Task13]["AcceptDelDynaObj"] = AccpectDelGenId[13]

rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task13
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task13]["KillMonsterGroup1" ]= tMonsterGroup.Task13

rwtTask[tRewardTask.Task13]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task13
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task13
---------------------------------------------------------------------------------------------------------------------
--风啸游隼丽丝

rwtTask[tRewardTask.Task14] = {}
rwtTask[tRewardTask.Task14]["Title"] = tTaskTitle.Task14
rwtTask[tRewardTask.Task14]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task14]["NextTaskId"] = tRewardTaskFinish.Task14
rwtTask[tRewardTask.Task14]["AcceptDialogId"] = tAcceptDialog.Task14

rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task14
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task14]["KillMonsterGroup1" ]= tMonsterGroup.Task14

rwtTask[tRewardTask.Task14]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task14
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task14
---------------------------------------------------------------------------------------------------------------------
--强袭战狼斯塔克

rwtTask[tRewardTask.Task15] = {}
rwtTask[tRewardTask.Task15]["Title"] = tTaskTitle.Task15
rwtTask[tRewardTask.Task15]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task15]["NextTaskId"] = tRewardTaskFinish.Task15
rwtTask[tRewardTask.Task15]["AcceptDialogId"] = tAcceptDialog.Task15

rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task15
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task15]["KillMonsterGroup1" ]= tMonsterGroup.Task15

rwtTask[tRewardTask.Task15]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task15
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task15
---------------------------------------------------------------------------------------------------------------------
--荒地魔蝎尼斯

rwtTask[tRewardTask.Task16] = {}
rwtTask[tRewardTask.Task16]["Title"] = tTaskTitle.Task16
rwtTask[tRewardTask.Task16]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task16]["NextTaskId"] = tRewardTaskFinish.Task16
rwtTask[tRewardTask.Task16]["AcceptDialogId"] = tAcceptDialog.Task16

rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task16
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task16]["KillMonsterGroup1" ]= tMonsterGroup.Task16

rwtTask[tRewardTask.Task16]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task16
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task16
---------------------------------------------------------------------------------------------------------------------
--烈炎斧兽尼尔斯

rwtTask[tRewardTask.Task17] = {}
rwtTask[tRewardTask.Task17]["Title"] = tTaskTitle.Task17
rwtTask[tRewardTask.Task17]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task17]["NextTaskId"] = tRewardTaskFinish.Task17
rwtTask[tRewardTask.Task17]["AcceptDialogId"] = tAcceptDialog.Task17
rwtTask[tRewardTask.Task17]["AcceptDelDynaObj"] = AccpectDelGenId[12]

rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task17
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task17]["KillMonsterGroup1" ]= tMonsterGroup.Task17

rwtTask[tRewardTask.Task17]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task17
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task17
---------------------------------------------------------------------------------------------------------------------
--猩红先驱者欧文

rwtTask[tRewardTask.Task18] = {}
rwtTask[tRewardTask.Task18]["Title"] = tTaskTitle.Task18
rwtTask[tRewardTask.Task18]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task18]["NextTaskId"] = tRewardTaskFinish.Task18
rwtTask[tRewardTask.Task18]["AcceptDialogId"] = tAcceptDialog.Task18

rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task18
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task18]["KillMonsterGroup1"]= tMonsterGroup.Task18

rwtTask[tRewardTask.Task18]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task18
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task18
---------------------------------------------------------------------------------------------------------------------
--枯木蜂王艾蕾

rwtTask[tRewardTask.Task19] = {}
rwtTask[tRewardTask.Task19]["Title"] = tTaskTitle.Task19
rwtTask[tRewardTask.Task19]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task19]["NextTaskId"] = tRewardTaskFinish.Task19
rwtTask[tRewardTask.Task19]["AcceptDialogId"] = tAcceptDialog.Task19

rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task19
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task19]["KillMonsterGroup1" ]= tMonsterGroup.Task19

rwtTask[tRewardTask.Task19]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task19
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task19

---------------------------------------------------------------------------------------------------------------------
--暗夜邪魔奥托

rwtTask[tRewardTask.Task20] = {}
rwtTask[tRewardTask.Task20]["Title"] = tTaskTitle.Task20
rwtTask[tRewardTask.Task20]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task20]["NextTaskId"] = tRewardTaskFinish.Task20
rwtTask[tRewardTask.Task20]["AcceptDialogId"] = tAcceptDialog.Task20

rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task20
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task20]["KillMonsterGroup1" ]= tMonsterGroup.Task20

rwtTask[tRewardTask.Task20]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task20
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task20
---------------------------------------------------------------------------------------------------------------------
-- 暮夜蜂王
rwtTask[tRewardTask.Task21] = {}
rwtTask[tRewardTask.Task21]["Title"] = tTaskTitle.Task21
rwtTask[tRewardTask.Task21]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task21]["NextTaskId"] = tRewardTaskFinish.Task21
rwtTask[tRewardTask.Task21]["AcceptDialogId"] = tAcceptDialog.Task21
rwtTask[tRewardTask.Task21]["AcceptDelDynaObj"] = AccpectDelGenId[9]

rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task21
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task21]["KillMonsterGroup1" ]= tMonsterGroup.Task21

rwtTask[tRewardTask.Task21]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task21
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task21
---------------------------------------------------------------------------------------------------------------------
--狂战指挥官
rwtTask[tRewardTask.Task22] = {}
rwtTask[tRewardTask.Task22]["Title"] = tTaskTitle.Task22
rwtTask[tRewardTask.Task22]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task22]["NextTaskId"] = tRewardTaskFinish.Task22
rwtTask[tRewardTask.Task22]["AcceptDialogId"] = tAcceptDialog.Task22

rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task22
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task22]["KillMonsterGroup1" ]= tMonsterGroup.Task22

rwtTask[tRewardTask.Task22]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task22
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task22
---------------------------------------------------------------------------------------------------------------------
--尖啸游隼
rwtTask[tRewardTask.Task23] = {}
rwtTask[tRewardTask.Task23]["Title"] = tTaskTitle.Task23
rwtTask[tRewardTask.Task23]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task23]["NextTaskId"] = tRewardTaskFinish.Task23
rwtTask[tRewardTask.Task23]["AcceptDialogId"] = tAcceptDialog.Task23

rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task23
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task23]["KillMonsterGroup1" ]= tMonsterGroup.Task23

rwtTask[tRewardTask.Task23]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task23
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task23
---------------------------------------------------------------------------------------------------------------------
--狂乱研究者
rwtTask[tRewardTask.Task24] = {}
rwtTask[tRewardTask.Task24]["Title"] = tTaskTitle.Task24
rwtTask[tRewardTask.Task24]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task24]["NextTaskId"] = tRewardTaskFinish.Task24
rwtTask[tRewardTask.Task24]["AcceptDialogId"] = tAcceptDialog.Task24
rwtTask[tRewardTask.Task24]["AcceptDelDynaObj"] = AccpectDelGenId[5]

rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task24
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task24]["KillMonsterGroup1" ]= tMonsterGroup.Task24

rwtTask[tRewardTask.Task24]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task24
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task24
---------------------------------------------------------------------------------------------------------------------
--暗幕蝎王
rwtTask[tRewardTask.Task25] = {}
rwtTask[tRewardTask.Task25]["Title"] = tTaskTitle.Task25
rwtTask[tRewardTask.Task25]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task25]["NextTaskId"] = tRewardTaskFinish.Task25
rwtTask[tRewardTask.Task25]["AcceptDialogId"] = tAcceptDialog.Task25

rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task25
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task25]["KillMonsterGroup1" ]= tMonsterGroup.Task25

rwtTask[tRewardTask.Task25]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task25
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task25

---------------------------------------------------------------------------------------------------------------------
--深渊领主
rwtTask[tRewardTask.Task26] = {}
rwtTask[tRewardTask.Task26]["Title"] = tTaskTitle.Task26
rwtTask[tRewardTask.Task26]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task26]["NextTaskId"] = tRewardTaskFinish.Task26
rwtTask[tRewardTask.Task26]["AcceptDialogId"] = tAcceptDialog.Task26

rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task26
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task26]["KillMonsterGroup1" ]= tMonsterGroup.Task26

rwtTask[tRewardTask.Task26]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task26
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task26

--------------------------------------------------------------------------------------------------------------------
-- 暗黑骑士长
rwtTask[tRewardTask.Task27] = {}
rwtTask[tRewardTask.Task27]["Title"] = tTaskTitle.Task27
rwtTask[tRewardTask.Task27]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task27]["NextTaskId"] = tRewardTaskFinish.Task27
rwtTask[tRewardTask.Task27]["AcceptDialogId"] = tAcceptDialog.Task27
rwtTask[tRewardTask.Task27]["AcceptDelDynaObj"] = AccpectDelGenId[11]

rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task27
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task27]["KillMonsterGroup1" ]= tMonsterGroup.Task27

rwtTask[tRewardTask.Task27]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task27
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task27
---------------------------------------------------------------------------------------------------------------------
--魅魔使徒
rwtTask[tRewardTask.Task28] = {}
rwtTask[tRewardTask.Task28]["Title"] = tTaskTitle.Task28
rwtTask[tRewardTask.Task28]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task28]["NextTaskId"] = tRewardTaskFinish.Task28
rwtTask[tRewardTask.Task28]["AcceptDialogId"] = tAcceptDialog.Task28
rwtTask[tRewardTask.Task28]["AcceptDelDynaObj"] = AccpectDelGenId[2]

rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task28
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task28]["KillMonsterGroup1" ]= tMonsterGroup.Task28

rwtTask[tRewardTask.Task28]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task28
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task28
---------------------------------------------------------------------------------------------------------------------
--铁骑领主
rwtTask[tRewardTask.Task29] = {}
rwtTask[tRewardTask.Task29]["Title"] = tTaskTitle.Task29
rwtTask[tRewardTask.Task29]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task29]["NextTaskId"] = tRewardTaskFinish.Task29
rwtTask[tRewardTask.Task29]["AcceptDialogId"] = tAcceptDialog.Task29

rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task29
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task29]["KillMonsterGroup1" ]= tMonsterGroup.Task29

rwtTask[tRewardTask.Task29]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task29
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task29
---------------------------------------------------------------------------------------------------------------------
--枭鹰霸主
rwtTask[tRewardTask.Task30] = {}
rwtTask[tRewardTask.Task30]["Title"] = tTaskTitle.Task30
rwtTask[tRewardTask.Task30]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task30]["NextTaskId"] = tRewardTaskFinish.Task30
rwtTask[tRewardTask.Task30]["AcceptDialogId"] = tAcceptDialog.Task30

rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task30
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task30]["KillMonsterGroup1" ]= tMonsterGroup.Task30

rwtTask[tRewardTask.Task30]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task30
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task30
----------------------------------
--新增9个
rwtTask[tRewardTask.Task31] = {}
rwtTask[tRewardTask.Task31]["Title"] = tTaskTitle.Task31
rwtTask[tRewardTask.Task31]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task31]["NextTaskId"] = tRewardTaskFinish.Task31
rwtTask[tRewardTask.Task31]["AcceptDialogId"] = tAcceptDialog.Task31

rwtTask[tRewardTask.Task31]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task31]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task31]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task31
rwtTask[tRewardTask.Task31]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task31]["KillMonsterGroup1" ]= tMonsterGroup.Task31

rwtTask[tRewardTask.Task31]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task31]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task31]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task31]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task31
rwtTask[tRewardTask.Task31]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task31
---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task32] = {}
rwtTask[tRewardTask.Task32]["Title"] = tTaskTitle.Task32
rwtTask[tRewardTask.Task32]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task32]["NextTaskId"] = tRewardTaskFinish.Task32
rwtTask[tRewardTask.Task32]["AcceptDialogId"] = tAcceptDialog.Task32
rwtTask[tRewardTask.Task32]["AcceptDelDynaObj"] = AccpectDelGenId[3]

rwtTask[tRewardTask.Task32]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task32]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task32]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task32
rwtTask[tRewardTask.Task32]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task32]["KillMonsterGroup1" ]= tMonsterGroup.Task32

rwtTask[tRewardTask.Task32]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task32]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task32]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task32]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task32
rwtTask[tRewardTask.Task32]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task32

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task33] = {}
rwtTask[tRewardTask.Task33]["Title"] = tTaskTitle.Task33
rwtTask[tRewardTask.Task33]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task33]["NextTaskId"] = tRewardTaskFinish.Task33
rwtTask[tRewardTask.Task33]["AcceptDialogId"] = tAcceptDialog.Task33

rwtTask[tRewardTask.Task33]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task33]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task33]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task33
rwtTask[tRewardTask.Task33]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task33]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task33]["KillMonsterGroup1" ]= tMonsterGroup.Task33

rwtTask[tRewardTask.Task33]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task33]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task33]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task33]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task33
rwtTask[tRewardTask.Task33]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task33

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task34] = {}
rwtTask[tRewardTask.Task34]["Title"] = tTaskTitle.Task34
rwtTask[tRewardTask.Task34]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task34]["NextTaskId"] = tRewardTaskFinish.Task34
rwtTask[tRewardTask.Task34]["AcceptDialogId"] = tAcceptDialog.Task34
rwtTask[tRewardTask.Task34]["AcceptDelDynaObj"] = AccpectDelGenId[1]

rwtTask[tRewardTask.Task34]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task34]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task34]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task34
rwtTask[tRewardTask.Task34]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task34]["KillMonsterGroup1" ]= tMonsterGroup.Task34

rwtTask[tRewardTask.Task34]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task34]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task34]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task34]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task34
rwtTask[tRewardTask.Task34]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task34

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task35] = {}
rwtTask[tRewardTask.Task35]["Title"] = tTaskTitle.Task35
rwtTask[tRewardTask.Task35]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task35]["NextTaskId"] = tRewardTaskFinish.Task35
rwtTask[tRewardTask.Task35]["AcceptDialogId"] = tAcceptDialog.Task35

rwtTask[tRewardTask.Task35]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task35]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task35]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task35
rwtTask[tRewardTask.Task35]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task35]["KillMonsterGroup1" ]= tMonsterGroup.Task35

rwtTask[tRewardTask.Task35]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task35]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task35]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task35]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task35
rwtTask[tRewardTask.Task35]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task35

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task36] = {}
rwtTask[tRewardTask.Task36]["Title"] = tTaskTitle.Task36
rwtTask[tRewardTask.Task36]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task36]["NextTaskId"] = tRewardTaskFinish.Task36
rwtTask[tRewardTask.Task36]["AcceptDialogId"] = tAcceptDialog.Task36

rwtTask[tRewardTask.Task36]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task36]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task36]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task36
rwtTask[tRewardTask.Task36]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task36]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task36]["KillMonsterGroup1" ]= tMonsterGroup.Task36

rwtTask[tRewardTask.Task36]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task36]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task36]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task36]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task36
rwtTask[tRewardTask.Task36]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task36

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task37] = {}
rwtTask[tRewardTask.Task37]["Title"] = tTaskTitle.Task37
rwtTask[tRewardTask.Task37]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task37]["NextTaskId"] = tRewardTaskFinish.Task37
rwtTask[tRewardTask.Task37]["AcceptDialogId"] = tAcceptDialog.Task37

rwtTask[tRewardTask.Task37]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task37]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task37]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task37
rwtTask[tRewardTask.Task37]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task37]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task37]["KillMonsterGroup1" ]= tMonsterGroup.Task37

rwtTask[tRewardTask.Task37]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task37]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task37]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task37]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task37
rwtTask[tRewardTask.Task37]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task37

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task38] = {}
rwtTask[tRewardTask.Task38]["Title"] = tTaskTitle.Task38
rwtTask[tRewardTask.Task38]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task38]["NextTaskId"] = tRewardTaskFinish.Task38
rwtTask[tRewardTask.Task38]["AcceptDialogId"] = tAcceptDialog.Task38

rwtTask[tRewardTask.Task38]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task38]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task38]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task38
rwtTask[tRewardTask.Task38]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task38]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task38]["KillMonsterGroup1" ]= tMonsterGroup.Task38

rwtTask[tRewardTask.Task38]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task38]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task38]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task38]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task38
rwtTask[tRewardTask.Task38]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task38

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTask.Task39] = {}
rwtTask[tRewardTask.Task39]["Title"] = tTaskTitle.Task39
rwtTask[tRewardTask.Task39]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task39]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task39]["NextTaskId"] = tRewardTaskFinish.Task39
rwtTask[tRewardTask.Task39]["AcceptDialogId"] = tAcceptDialog.Task39
rwtTask[tRewardTask.Task39]["AcceptDelDynaObj"] = AccpectDelGenId[4]

rwtTask[tRewardTask.Task39]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task39]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task39]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task39
rwtTask[tRewardTask.Task39]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tRewardTask.Task39]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tRewardTask.Task39]["KillMonsterGroup1" ]= tMonsterGroup.Task39

rwtTask[tRewardTask.Task39]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task39]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task39]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tRewardTask.Task39]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task39
rwtTask[tRewardTask.Task39]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task39

---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
------***************************回复NPC任务***************************----
---------------------------------------------------------------------------------------------------------------------
--	锐斧战魔安德鲁

rwtTask[tRewardTaskFinish.Task1] = {}
rwtTask[tRewardTaskFinish.Task1]["Title"] = tTaskTitle.Task1
rwtTask[tRewardTaskFinish.Task1]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task1]["PreTaskId"] = tRewardTask.Task1
rwtTask[tRewardTaskFinish.Task1]["DialogId"] = tFinishDialog.Task1
rwtTask[tRewardTaskFinish.Task1]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task1]["ArrestId"] = tArrestId.Task1

rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task1]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task1]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task1
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task1
---------------------------------------------------------------------------------------------------------------------
--	实验合成兽巴德

rwtTask[tRewardTaskFinish.Task2] = {}
rwtTask[tRewardTaskFinish.Task2]["Title"] = tTaskTitle.Task2
rwtTask[tRewardTaskFinish.Task2]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task2]["PreTaskId"] = tRewardTask.Task2
rwtTask[tRewardTaskFinish.Task2]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task2]["DialogId"] = tFinishDialog.Task2

rwtTask[tRewardTaskFinish.Task2]["ArrestId"] = tArrestId.Task2

rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task2]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task2]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task2
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task2
---------------------------------------------------------------------------------------------------------------------
--	林地红魔阿诺德

rwtTask[tRewardTaskFinish.Task3] = {}
rwtTask[tRewardTaskFinish.Task3]["Title"] = tTaskTitle.Task3
rwtTask[tRewardTaskFinish.Task3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task3]["PreTaskId"] = tRewardTask.Task3
rwtTask[tRewardTaskFinish.Task3]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task3]["DialogId"] = tFinishDialog.Task3

rwtTask[tRewardTaskFinish.Task3]["ArrestId"] = tArrestId.Task3

rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task3]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task3]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task3
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task3
---------------------------------------------------------------------------------------------------------------------
--	砾风游贼班森

rwtTask[tRewardTaskFinish.Task4] = {}
rwtTask[tRewardTaskFinish.Task4]["Title"] = tTaskTitle.Task4
rwtTask[tRewardTaskFinish.Task4]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task4]["PreTaskId"] = tRewardTask.Task4
rwtTask[tRewardTaskFinish.Task4]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task4]["DialogId"] = tFinishDialog.Task4

rwtTask[tRewardTaskFinish.Task4]["ArrestId"] = tArrestId.Task4

rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task4]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task4]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task4
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task4
---------------------------------------------------------------------------------------------------------------------
--	荆刺蜂后塞拉

rwtTask[tRewardTaskFinish.Task5] = {}
rwtTask[tRewardTaskFinish.Task5]["Title"] = tTaskTitle.Task5
rwtTask[tRewardTaskFinish.Task5]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task5]["PreTaskId"] = tRewardTask.Task5
rwtTask[tRewardTaskFinish.Task5]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task5]["DialogId"] = tFinishDialog.Task5

rwtTask[tRewardTaskFinish.Task5]["ArrestId"] = tArrestId.Task5

rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task5]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task5]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task5
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task5

---------------------------------------------------------------------------------------------------------------------
--	海上掠夺者格纳

rwtTask[tRewardTaskFinish.Task6] = {}
rwtTask[tRewardTaskFinish.Task6]["Title"] = tTaskTitle.Task6
rwtTask[tRewardTaskFinish.Task6]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task6]["PreTaskId"] = tRewardTask.Task6
rwtTask[tRewardTaskFinish.Task6]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task6]["DialogId"] = tFinishDialog.Task6

rwtTask[tRewardTaskFinish.Task6]["ArrestId"] = tArrestId.Task6

rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task6]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task6]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task6
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task6

---------------------------------------------------------------------------------------------------------------------
--	钢羽枭鹰伊伦

rwtTask[tRewardTaskFinish.Task7] = {}
rwtTask[tRewardTaskFinish.Task7]["Title"] = tTaskTitle.Task7
rwtTask[tRewardTaskFinish.Task7]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task7]["PreTaskId"] = tRewardTask.Task7
rwtTask[tRewardTaskFinish.Task7]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task7]["DialogId"] = tFinishDialog.Task7      

rwtTask[tRewardTaskFinish.Task7]["ArrestId"] = tArrestId.Task7 

rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task7]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task7]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task7
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task7

---------------------------------------------------------------------------------------------------------------------
--	邪能研究者格纳

rwtTask[tRewardTaskFinish.Task8] = {}
rwtTask[tRewardTaskFinish.Task8]["Title"] = tTaskTitle.Task8
rwtTask[tRewardTaskFinish.Task8]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task8]["PreTaskId"] = tRewardTask.Task8
rwtTask[tRewardTaskFinish.Task8]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task8]["DialogId"] = tFinishDialog.Task8      

rwtTask[tRewardTaskFinish.Task8]["ArrestId"] = tArrestId.Task8

rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task8]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task8]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task8
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task8

---------------------------------------------------------------------------------------------------------------------
--	暮夜魔蝎洛兹

rwtTask[tRewardTaskFinish.Task9] = {}
rwtTask[tRewardTaskFinish.Task9]["Title"] = tTaskTitle.Task9
rwtTask[tRewardTaskFinish.Task9]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task9]["PreTaskId"] = tRewardTask.Task9
rwtTask[tRewardTaskFinish.Task9]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task9]["DialogId"] = tFinishDialog.Task9      

rwtTask[tRewardTaskFinish.Task9]["ArrestId"] = tArrestId.Task9

rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task9]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task9]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task9
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task9

---------------------------------------------------------------------------------------------------------------------
--	翼魔统领塞曼

rwtTask[tRewardTaskFinish.Task10] = {}
rwtTask[tRewardTaskFinish.Task10]["Title"] = tTaskTitle.Task10
rwtTask[tRewardTaskFinish.Task10]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task10]["PreTaskId"] = tRewardTask.Task10
rwtTask[tRewardTaskFinish.Task10]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task10]["DialogId"] = tFinishDialog.Task10    

rwtTask[tRewardTaskFinish.Task10]["ArrestId"] = tArrestId.Task10

rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task10]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task10]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task10
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task10

---------------------------------------------------------------------------------------------------------------------
--	密林怪盗贝克勒

rwtTask[tRewardTaskFinish.Task11] = {}
rwtTask[tRewardTaskFinish.Task11]["Title"] = tTaskTitle.Task11
rwtTask[tRewardTaskFinish.Task11]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task11]["PreTaskId"] = tRewardTask.Task11
rwtTask[tRewardTaskFinish.Task11]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task11]["DialogId"] = tFinishDialog.Task11      

rwtTask[tRewardTaskFinish.Task11]["ArrestId"] = tArrestId.Task11

rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task11]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task11]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task11
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task11

---------------------------------------------------------------------------------------------------------------------
--	亡魂低语者埃莉

rwtTask[tRewardTaskFinish.Task12] = {}
rwtTask[tRewardTaskFinish.Task12]["Title"] = tTaskTitle.Task12
rwtTask[tRewardTaskFinish.Task12]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task12]["PreTaskId"] = tRewardTask.Task12
rwtTask[tRewardTaskFinish.Task12]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task12]["DialogId"] = tFinishDialog.Task12    

rwtTask[tRewardTaskFinish.Task12]["ArrestId"] = tArrestId.Task12

rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task12]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task12]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task12
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task12

---------------------------------------------------------------------------------------------------------------------
--	暗金领主维恩

rwtTask[tRewardTaskFinish.Task13] = {}
rwtTask[tRewardTaskFinish.Task13]["Title"] = tTaskTitle.Task13
rwtTask[tRewardTaskFinish.Task13]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task13]["PreTaskId"] = tRewardTask.Task13
rwtTask[tRewardTaskFinish.Task13]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task13]["DialogId"] = tFinishDialog.Task13    

rwtTask[tRewardTaskFinish.Task13]["ArrestId"] = tArrestId.Task13

rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task13]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task13]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task13
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task13

---------------------------------------------------------------------------------------------------------------------
--	风啸游隼丽丝

rwtTask[tRewardTaskFinish.Task14] = {}
rwtTask[tRewardTaskFinish.Task14]["Title"] = tTaskTitle.Task14
rwtTask[tRewardTaskFinish.Task14]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task14]["PreTaskId"] = tRewardTask.Task14
rwtTask[tRewardTaskFinish.Task14]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task14]["DialogId"] = tFinishDialog.Task14    

rwtTask[tRewardTaskFinish.Task14]["ArrestId"] = tArrestId.Task14

rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task14]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task14]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task14
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task14

---------------------------------------------------------------------------------------------------------------------
--	强袭战狼斯塔克

rwtTask[tRewardTaskFinish.Task15] = {}
rwtTask[tRewardTaskFinish.Task15]["Title"] = tTaskTitle.Task15
rwtTask[tRewardTaskFinish.Task15]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task15]["PreTaskId"] = tRewardTask.Task15
rwtTask[tRewardTaskFinish.Task15]["TaskNpc"] = tNpcId[1]
rwtTask[tRewardTaskFinish.Task15]["DialogId"] = tFinishDialog.Task15    

rwtTask[tRewardTaskFinish.Task15]["ArrestId"] = tArrestId.Task15

rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task15]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task15]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task15
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task15
---------------------------------------------------------------------------------------------------------------------
--	荒地魔蝎尼斯

rwtTask[tRewardTaskFinish.Task16] = {}
rwtTask[tRewardTaskFinish.Task16]["Title"] = tTaskTitle.Task16
rwtTask[tRewardTaskFinish.Task16]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task16]["PreTaskId"] = tRewardTask.Task16
rwtTask[tRewardTaskFinish.Task16]["DialogId"] = tFinishDialog.Task16
rwtTask[tRewardTaskFinish.Task16]["TaskNpc"] = tNpcId[1]  

rwtTask[tRewardTaskFinish.Task16]["ArrestId"] = tArrestId.Task16

rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task16]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task16]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task16
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task16
---------------------------------------------------------------------------------------------------------------------
--	烈炎斧兽尼尔斯

rwtTask[tRewardTaskFinish.Task17] = {}
rwtTask[tRewardTaskFinish.Task17]["Title"] = tTaskTitle.Task17
rwtTask[tRewardTaskFinish.Task17]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task17]["PreTaskId"] = tRewardTask.Task17
rwtTask[tRewardTaskFinish.Task17]["DialogId"] = tFinishDialog.Task17
rwtTask[tRewardTaskFinish.Task17]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task17]["ArrestId"] = tArrestId.Task17

rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task17]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task17]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task17
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task17

---------------------------------------------------------------------------------------------------------------------
--	猩红先驱者欧文

rwtTask[tRewardTaskFinish.Task18] = {}
rwtTask[tRewardTaskFinish.Task18]["Title"] = tTaskTitle.Task18
rwtTask[tRewardTaskFinish.Task18]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task18]["PreTaskId"] = tRewardTask.Task18
rwtTask[tRewardTaskFinish.Task18]["DialogId"] = tFinishDialog.Task18
rwtTask[tRewardTaskFinish.Task18]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task18]["ArrestId"] = tArrestId.Task18

rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task18]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task18]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task18
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task18
---------------------------------------


--	枯木蜂王艾蕾
---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task19] = {}
rwtTask[tRewardTaskFinish.Task19]["Title"] = tTaskTitle.Task19
rwtTask[tRewardTaskFinish.Task19]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task19]["PreTaskId"] = tRewardTask.Task19
rwtTask[tRewardTaskFinish.Task19]["DialogId"] = tFinishDialog.Task19
rwtTask[tRewardTaskFinish.Task19]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task19]["ArrestId"] = tArrestId.Task19

rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task19]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task19]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task19
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task19

---------------------------------------------------------------------------------------------------------------------
--	暗夜邪魔奥托

rwtTask[tRewardTaskFinish.Task20] = {}
rwtTask[tRewardTaskFinish.Task20]["Title"] = tTaskTitle.Task20
rwtTask[tRewardTaskFinish.Task20]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task20]["PreTaskId"] = tRewardTask.Task20
rwtTask[tRewardTaskFinish.Task20]["DialogId"] = tFinishDialog.Task20
rwtTask[tRewardTaskFinish.Task20]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task20]["ArrestId"] = tArrestId.Task20

rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task20]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task20]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task20
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task20

-------------------------------------------------------------------------------------------------------------
--暮夜蜂王
rwtTask[tRewardTaskFinish.Task21] = {}
rwtTask[tRewardTaskFinish.Task21]["Title"] = tTaskTitle.Task21
rwtTask[tRewardTaskFinish.Task21]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task21]["PreTaskId"] = tRewardTask.Task21
rwtTask[tRewardTaskFinish.Task21]["DialogId"] = tFinishDialog.Task21
rwtTask[tRewardTaskFinish.Task21]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task21]["ArrestId"] = tArrestId.Task21

rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task21]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task21]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task21
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task21
---------------------------------------------------------------------------------------------------------------------
--狂战指挥官
rwtTask[tRewardTaskFinish.Task22] = {}
rwtTask[tRewardTaskFinish.Task22]["Title"] = tTaskTitle.Task22
rwtTask[tRewardTaskFinish.Task22]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task22]["PreTaskId"] = tRewardTask.Task22
rwtTask[tRewardTaskFinish.Task22]["DialogId"] = tFinishDialog.Task22
rwtTask[tRewardTaskFinish.Task22]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task22]["ArrestId"] = tArrestId.Task22

rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task22]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task22]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task22
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task22
---------------------------------------------------------------------------------------------------------------------
--尖啸游隼
rwtTask[tRewardTaskFinish.Task23] = {}
rwtTask[tRewardTaskFinish.Task23]["Title"] = tTaskTitle.Task23
rwtTask[tRewardTaskFinish.Task23]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task23]["PreTaskId"] = tRewardTask.Task23
rwtTask[tRewardTaskFinish.Task23]["DialogId"] = tFinishDialog.Task23
rwtTask[tRewardTaskFinish.Task23]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task23]["ArrestId"] = tArrestId.Task23

rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task23]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task23]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task23
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task23
---------------------------------------------------------------------------------------------------------------------
--狂乱研究者
rwtTask[tRewardTaskFinish.Task24] = {}
rwtTask[tRewardTaskFinish.Task24]["Title"] = tTaskTitle.Task24
rwtTask[tRewardTaskFinish.Task24]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task24]["PreTaskId"] = tRewardTask.Task24
rwtTask[tRewardTaskFinish.Task24]["DialogId"] = tFinishDialog.Task24
rwtTask[tRewardTaskFinish.Task24]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task24]["ArrestId"] = tArrestId.Task24

rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task24]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task24]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task24
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task24
---------------------------------------------------------------------------------------------------------------------
--暗幕蝎王
rwtTask[tRewardTaskFinish.Task25] = {}
rwtTask[tRewardTaskFinish.Task25]["Title"] = tTaskTitle.Task25
rwtTask[tRewardTaskFinish.Task25]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task25]["PreTaskId"] = tRewardTask.Task25
rwtTask[tRewardTaskFinish.Task25]["DialogId"] = tFinishDialog.Task25
rwtTask[tRewardTaskFinish.Task25]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task25]["ArrestId"] = tArrestId.Task25

rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task25]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task25]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task25
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task25
---------------------------------------------------------------------------------------------------------------------
--深渊领主
rwtTask[tRewardTaskFinish.Task26] = {}
rwtTask[tRewardTaskFinish.Task26]["Title"] = tTaskTitle.Task26
rwtTask[tRewardTaskFinish.Task26]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task26]["PreTaskId"] = tRewardTask.Task26
rwtTask[tRewardTaskFinish.Task26]["DialogId"] = tFinishDialog.Task26
rwtTask[tRewardTaskFinish.Task26]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task26]["ArrestId"] = tArrestId.Task26

rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task26]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task26]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task26
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task26
---------------------------------------------------------------------------------------------------------------------
--暗黑骑士长
rwtTask[tRewardTaskFinish.Task27] = {}
rwtTask[tRewardTaskFinish.Task27]["Title"] = tTaskTitle.Task27
rwtTask[tRewardTaskFinish.Task27]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task27]["PreTaskId"] = tRewardTask.Task27
rwtTask[tRewardTaskFinish.Task27]["DialogId"] = tFinishDialog.Task27
rwtTask[tRewardTaskFinish.Task27]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task27]["ArrestId"] = tArrestId.Task27

rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task27]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task27]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task27
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task27
---------------------------------------------------------------------------------------------------------------------
--魅魔使徒
rwtTask[tRewardTaskFinish.Task28] = {}
rwtTask[tRewardTaskFinish.Task28]["Title"] = tTaskTitle.Task28
rwtTask[tRewardTaskFinish.Task28]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task28]["PreTaskId"] = tRewardTask.Task28
rwtTask[tRewardTaskFinish.Task28]["DialogId"] = tFinishDialog.Task28
rwtTask[tRewardTaskFinish.Task28]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task28]["ArrestId"] = tArrestId.Task28

rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task28]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task28]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task28
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task28
---------------------------------------------------------------------------------------------------------------------
--铁骑领主
rwtTask[tRewardTaskFinish.Task29] = {}
rwtTask[tRewardTaskFinish.Task29]["Title"] = tTaskTitle.Task29
rwtTask[tRewardTaskFinish.Task29]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task29]["PreTaskId"] = tRewardTask.Task29
rwtTask[tRewardTaskFinish.Task29]["DialogId"] = tFinishDialog.Task29
rwtTask[tRewardTaskFinish.Task29]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task29]["ArrestId"] = tArrestId.Task29

rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task29]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task29]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task29
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task29
---------------------------------------------------------------------------------------------------------------------
--枭鹰霸主
rwtTask[tRewardTaskFinish.Task30] = {}
rwtTask[tRewardTaskFinish.Task30]["Title"] = tTaskTitle.Task30
rwtTask[tRewardTaskFinish.Task30]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task30]["PreTaskId"] = tRewardTask.Task30
rwtTask[tRewardTaskFinish.Task30]["DialogId"] = tFinishDialog.Task30
rwtTask[tRewardTaskFinish.Task30]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task30]["ArrestId"] = tArrestId.Task30


rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task30]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task30]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task30
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task30

------------------------------------------
--新增9个
rwtTask[tRewardTaskFinish.Task31] = {}
rwtTask[tRewardTaskFinish.Task31]["Title"] = tTaskTitle.Task31
rwtTask[tRewardTaskFinish.Task31]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task31]["PreTaskId"] = tRewardTask.Task31
rwtTask[tRewardTaskFinish.Task31]["DialogId"] = tFinishDialog.Task31
rwtTask[tRewardTaskFinish.Task31]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task31]["ArrestId"] = tArrestId.Task31

rwtTask[tRewardTaskFinish.Task31]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task31]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task31]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task31]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task31]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task31]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task31
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task31]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task31
---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task32] = {}
rwtTask[tRewardTaskFinish.Task32]["Title"] = tTaskTitle.Task32
rwtTask[tRewardTaskFinish.Task32]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task32]["PreTaskId"] = tRewardTask.Task32
rwtTask[tRewardTaskFinish.Task32]["DialogId"] = tFinishDialog.Task32
rwtTask[tRewardTaskFinish.Task32]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task32]["ArrestId"] = tArrestId.Task32

rwtTask[tRewardTaskFinish.Task32]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task32]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task32]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task32]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task32]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task32]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task32
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task32]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task32

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task33] = {}
rwtTask[tRewardTaskFinish.Task33]["Title"] = tTaskTitle.Task33
rwtTask[tRewardTaskFinish.Task33]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task33]["PreTaskId"] = tRewardTask.Task33
rwtTask[tRewardTaskFinish.Task33]["DialogId"] = tFinishDialog.Task33
rwtTask[tRewardTaskFinish.Task33]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task33]["ArrestId"] = tArrestId.Task33

rwtTask[tRewardTaskFinish.Task33]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task33]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task33]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task33]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task33]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task33]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task33
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task33]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task33

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task34] = {}
rwtTask[tRewardTaskFinish.Task34]["Title"] = tTaskTitle.Task34
rwtTask[tRewardTaskFinish.Task34]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task34]["PreTaskId"] = tRewardTask.Task34
rwtTask[tRewardTaskFinish.Task34]["DialogId"] = tFinishDialog.Task34
rwtTask[tRewardTaskFinish.Task34]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task34]["ArrestId"] = tArrestId.Task34

rwtTask[tRewardTaskFinish.Task34]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task34]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task34]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task34]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task34]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task34]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task34
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task34]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task34

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task35] = {}
rwtTask[tRewardTaskFinish.Task35]["Title"] = tTaskTitle.Task35
rwtTask[tRewardTaskFinish.Task35]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task35]["PreTaskId"] = tRewardTask.Task35
rwtTask[tRewardTaskFinish.Task35]["DialogId"] = tFinishDialog.Task35
rwtTask[tRewardTaskFinish.Task35]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task35]["ArrestId"] = tArrestId.Task35

rwtTask[tRewardTaskFinish.Task35]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task35]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task35]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task35]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task35]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task35]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task35
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task35]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task35

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task36] = {}
rwtTask[tRewardTaskFinish.Task36]["Title"] = tTaskTitle.Task36
rwtTask[tRewardTaskFinish.Task36]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task36]["PreTaskId"] = tRewardTask.Task36
rwtTask[tRewardTaskFinish.Task36]["DialogId"] = tFinishDialog.Task36
rwtTask[tRewardTaskFinish.Task36]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task36]["ArrestId"] = tArrestId.Task36

rwtTask[tRewardTaskFinish.Task36]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task36]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task36]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task36]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task36]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task36]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task36
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task36]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task36

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task37] = {}
rwtTask[tRewardTaskFinish.Task37]["Title"] = tTaskTitle.Task37
rwtTask[tRewardTaskFinish.Task37]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task37]["PreTaskId"] = tRewardTask.Task37
rwtTask[tRewardTaskFinish.Task37]["DialogId"] = tFinishDialog.Task37
rwtTask[tRewardTaskFinish.Task37]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task37]["ArrestId"] = tArrestId.Task37

rwtTask[tRewardTaskFinish.Task37]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task37]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task37]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task37]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task37]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task37]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task37
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task37]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task37

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task38] = {}
rwtTask[tRewardTaskFinish.Task38]["Title"] = tTaskTitle.Task38
rwtTask[tRewardTaskFinish.Task38]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task38]["PreTaskId"] = tRewardTask.Task38
rwtTask[tRewardTaskFinish.Task38]["DialogId"] = tFinishDialog.Task38
rwtTask[tRewardTaskFinish.Task38]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task38]["ArrestId"] = tArrestId.Task38

rwtTask[tRewardTaskFinish.Task38]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task38]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task38]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task38]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task38]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task38]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task38
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task38]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task38

---------------------------------------------------------------------------------------------------------------------
rwtTask[tRewardTaskFinish.Task39] = {}
rwtTask[tRewardTaskFinish.Task39]["Title"] = tTaskTitle.Task39
rwtTask[tRewardTaskFinish.Task39]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTaskFinish.Task39]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tRewardTaskFinish.Task39]["PreTaskId"] = tRewardTask.Task39
rwtTask[tRewardTaskFinish.Task39]["DialogId"] = tFinishDialog.Task39
rwtTask[tRewardTaskFinish.Task39]["TaskNpc"] = tNpcId[1]

rwtTask[tRewardTaskFinish.Task39]["ArrestId"] = tArrestId.Task39

rwtTask[tRewardTaskFinish.Task39]["StartAutoWay"] = {}
rwtTask[tRewardTaskFinish.Task39]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tRewardTaskFinish.Task39]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tRewardTaskFinish.Task39]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup[1]
rwtTask[tRewardTaskFinish.Task39]["StartAutoWay"]["FindWayGenId"] = tNpcGroupGenId[1]

rwtTask[tRewardTaskFinish.Task39]["Awards"] = {}
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"] = {}
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"][1] = {}
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Task39
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task39]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task39
rwtTask[tRewardTaskFinish.Task39]["FinalReward"] = 1
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------

