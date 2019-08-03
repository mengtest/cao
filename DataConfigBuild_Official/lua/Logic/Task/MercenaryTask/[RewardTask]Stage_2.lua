--region *.lua
--Date
--悬赏任务 第二期
--by:Nizw

--endregion

--********************数据定义**************************
-------任务id-------
local tRewardTask = {}
tRewardTask.Task1 =  40192      --武装狼人
tRewardTask.Task2 =  40193      --蝎怪
tRewardTask.Task3 =  40194      --四蹄神
tRewardTask.Task4 =  40195      --锡波
tRewardTask.Task5 =  40196      --枯叶蜂蜂王
tRewardTask.Task6 =  40197      --贪婪
tRewardTask.Task7 =  40198      --丧尸法师
tRewardTask.Task8 =  40199      --恶魔修帝
tRewardTask.Task9 =  40200      --莱克
tRewardTask.Task10 = 40201      --绝世舞姬
tRewardTask.Task11 = 40202      --蜘蛛女王
tRewardTask.Task12 = 40203      --武装熊人战士
tRewardTask.Task13 = 40204      --矮巨人指挥官
tRewardTask.Task14 = 40205      --海魔
tRewardTask.Task15 = 40206      --绝世舞姬
tRewardTask.Task16 = 40207      --哈蒙
tRewardTask.Task17 = 40208      --枭鹰
tRewardTask.Task18 = 40209      --尼格斯
tRewardTask.Task19 = 40210      --枯叶蜂蜂王
tRewardTask.Task20 = 40211      --白银盾战
tRewardTask.Task21 = 40212      --默希娅
tRewardTask.Task22 = 40213      --嗜血战魂
tRewardTask.Task23 = 40214      --蝎怪
tRewardTask.Task24 = 40215      --四蹄神
tRewardTask.Task25 = 40216      --机械石像
tRewardTask.Task26 = 40217      --黑暗法师
tRewardTask.Task27 = 40218      --萨米尔
tRewardTask.Task28 = 40219      --黑色荆棘
tRewardTask.Task29 = 40220      --恶魔修帝
tRewardTask.Task30 = 40221      --武装熊人战士



local tRewardTaskFinish = {}
tRewardTaskFinish.Task1 =  40222    --武装狼人
tRewardTaskFinish.Task2 =  40223    --蝎怪
tRewardTaskFinish.Task3 =  40224    --四蹄神
tRewardTaskFinish.Task4 =  40225    --锡波
tRewardTaskFinish.Task5 =  40226    --枯叶蜂蜂王
tRewardTaskFinish.Task6 =  40227    --贪婪
tRewardTaskFinish.Task7 =  40228    --丧尸法师
tRewardTaskFinish.Task8 =  40229    --恶魔修帝
tRewardTaskFinish.Task9 =  40230    --莱克
tRewardTaskFinish.Task10 = 40231    --绝世舞姬
tRewardTaskFinish.Task11 = 40232    --蜘蛛女王
tRewardTaskFinish.Task12 = 40233    --武装熊人战士
tRewardTaskFinish.Task13 = 40234    --矮巨人指挥官
tRewardTaskFinish.Task14 = 40235    --海魔
tRewardTaskFinish.Task15 = 40236    --绝世舞姬
tRewardTaskFinish.Task16 = 40237    --哈蒙
tRewardTaskFinish.Task17 = 40238    --枭鹰
tRewardTaskFinish.Task18 = 40239    --尼格斯
tRewardTaskFinish.Task19 = 40240    --枯叶蜂蜂王
tRewardTaskFinish.Task20 = 40241    --白银盾战
tRewardTaskFinish.Task21 = 40242    --默希娅
tRewardTaskFinish.Task22 = 40243    --嗜血战魂
tRewardTaskFinish.Task23 = 40244    --蝎怪
tRewardTaskFinish.Task24 = 40245    --四蹄神
tRewardTaskFinish.Task25 = 40246    --机械石像
tRewardTaskFinish.Task26 = 40247    --黑暗法师
tRewardTaskFinish.Task27 = 40248    --萨米尔
tRewardTaskFinish.Task28 = 40249    --黑色荆棘
tRewardTaskFinish.Task29 = 40250    --恶魔修帝
tRewardTaskFinish.Task30 = 40251    --武装熊人战士

--===================================================
--接受任务对白
local tAcceptDialog = {}
tAcceptDialog.Task1 =  12376        --武装狼人
tAcceptDialog.Task2 =  12377        --蝎怪
tAcceptDialog.Task3 =  12378        --四蹄神
tAcceptDialog.Task4 =  12379        --锡波
tAcceptDialog.Task5 =  12380        --枯叶蜂蜂王
tAcceptDialog.Task6 =  12381        --贪婪
tAcceptDialog.Task7 =  12382        --丧尸法师
tAcceptDialog.Task8 =  12383        --恶魔修帝
tAcceptDialog.Task9 =  12384        --莱克
tAcceptDialog.Task10 = 12385        --绝世舞姬        
tAcceptDialog.Task11 = 12386        --蜘蛛女王        
tAcceptDialog.Task12 = 12387        --武装熊人战士        
tAcceptDialog.Task13 = 12388        --矮巨人指挥官        
tAcceptDialog.Task14 = 12389        --海魔        
tAcceptDialog.Task15 = 12390        --绝世舞姬        
tAcceptDialog.Task16 = 12391        --哈蒙        
tAcceptDialog.Task17 = 12392        --枭鹰        
tAcceptDialog.Task18 = 12393        --尼格斯        
tAcceptDialog.Task19 = 12394        --枯叶蜂蜂王        
tAcceptDialog.Task20 = 12395        --白银盾战        
tAcceptDialog.Task21 = 12396        --默希娅        
tAcceptDialog.Task22 = 12397        --嗜血战魂        
tAcceptDialog.Task23 = 12398        --蝎怪        
tAcceptDialog.Task24 = 12399        --四蹄神        
tAcceptDialog.Task25 = 12400        --机械石像        
tAcceptDialog.Task26 = 12401        --黑暗法师        
tAcceptDialog.Task27 = 12402        --萨米尔        
tAcceptDialog.Task28 = 12403        --黑色荆棘        
tAcceptDialog.Task29 = 12404        --恶魔修帝        
tAcceptDialog.Task30 = 12405        --武装熊人战士

--完成任务对白
local tFinishDialog = {}
--沙海苍鹰
tFinishDialog.Task1 =  12406        --武装狼人
tFinishDialog.Task2 =  12407        --蝎怪
tFinishDialog.Task3 =  12408        --四蹄神
tFinishDialog.Task4 =  12409        --锡波
tFinishDialog.Task5 =  12410        --枯叶蜂蜂王
tFinishDialog.Task6 =  12411        --贪婪
tFinishDialog.Task7 =  12412        --丧尸法师
tFinishDialog.Task8 =  12413        --恶魔修帝
tFinishDialog.Task9 =  12414        --莱克
tFinishDialog.Task10 = 12415        --绝世舞姬    
tFinishDialog.Task11 = 12416        --蜘蛛女王    
tFinishDialog.Task12 = 12417        --武装熊人战士
tFinishDialog.Task13 = 12418        --矮巨人指挥官
tFinishDialog.Task14 = 12419        --海魔        
tFinishDialog.Task15 = 12420        --绝世舞姬    
tFinishDialog.Task16 = 12421        --哈蒙        
tFinishDialog.Task17 = 12422        --枭鹰        
tFinishDialog.Task18 = 12423        --尼格斯      
tFinishDialog.Task19 = 12424        --枯叶蜂蜂王  
tFinishDialog.Task20 = 12425        --白银盾战    
tFinishDialog.Task21 = 12426        --默希娅      
tFinishDialog.Task22 = 12427        --嗜血战魂    
tFinishDialog.Task23 = 12428        --蝎怪        
tFinishDialog.Task24 = 12429        --四蹄神      
tFinishDialog.Task25 = 12430        --机械石像    
tFinishDialog.Task26 = 12431        --黑暗法师    
tFinishDialog.Task27 = 12432        --萨米尔      
tFinishDialog.Task28 = 12433        --黑色荆棘    
tFinishDialog.Task29 = 12434        --恶魔修帝    
tFinishDialog.Task30 = 12435        --武装熊人战士

----------------NPCid----------------------
local tNpcId = {}

----铁臂安道夫(已有NPC)
--tNpcId[1] = 3005
--吉拉(已有NPC)
tNpcId[1] = 3042

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

--沙海苍鹰
tMonsterGroup.Task1 =  900499       --武装狼人
tMonsterGroup.Task2 =  900500       --蝎怪
tMonsterGroup.Task3 =  900501       --四蹄神
tMonsterGroup.Task4 =  900502       --锡波
tMonsterGroup.Task5 =  900503       --枯叶蜂蜂王
tMonsterGroup.Task6 =  900504       --贪婪
tMonsterGroup.Task7 =  900505       --丧尸法师
tMonsterGroup.Task8 =  900506       --恶魔修帝
tMonsterGroup.Task9 =  900507       --莱克
tMonsterGroup.Task10 = 900508       --绝世舞姬    
tMonsterGroup.Task11 = 900509       --蜘蛛女王    
tMonsterGroup.Task12 = 900510       --武装熊人战士
tMonsterGroup.Task13 = 900511       --矮巨人指挥官
tMonsterGroup.Task14 = 900512       --海魔        
tMonsterGroup.Task15 = 900513       --绝世舞姬    
tMonsterGroup.Task16 = 900514       --哈蒙        
tMonsterGroup.Task17 = 900515       --枭鹰        
tMonsterGroup.Task18 = 900516       --尼格斯      
tMonsterGroup.Task19 = 900517       --枯叶蜂蜂王  
tMonsterGroup.Task20 = 900518       --白银盾战    
tMonsterGroup.Task21 = 900519       --默希娅      
tMonsterGroup.Task22 = 900520       --嗜血战魂    
tMonsterGroup.Task23 = 900521       --蝎怪        
tMonsterGroup.Task24 = 900522       --四蹄神      
tMonsterGroup.Task25 = 900523       --机械石像    
tMonsterGroup.Task26 = 900524       --黑暗法师    
tMonsterGroup.Task27 = 900525       --萨米尔      
tMonsterGroup.Task28 = 900526       --黑色荆棘    
tMonsterGroup.Task29 = 900527       --恶魔修帝    
tMonsterGroup.Task30 = 900528       --武装熊人战士



--沙海苍鹰
tMonsterGroupGenId.Task1 =  20030522    --武装狼人
tMonsterGroupGenId.Task2 =  20030523    --蝎怪
tMonsterGroupGenId.Task3 =  20030524    --四蹄神
tMonsterGroupGenId.Task4 =  20030525    --锡波
tMonsterGroupGenId.Task5 =  20030526    --枯叶蜂蜂王
tMonsterGroupGenId.Task6 =  20030527    --贪婪
tMonsterGroupGenId.Task7 =  20030528    --丧尸法师
tMonsterGroupGenId.Task8 =  20030529    --恶魔修帝
tMonsterGroupGenId.Task9 =  20030530    --莱克
tMonsterGroupGenId.Task10 = 20030531    --绝世舞姬    
tMonsterGroupGenId.Task11 = 20030532    --蜘蛛女王    
tMonsterGroupGenId.Task12 = 20030533    --武装熊人战士
tMonsterGroupGenId.Task13 = 20030534    --矮巨人指挥官
tMonsterGroupGenId.Task14 = 20030535    --海魔        
tMonsterGroupGenId.Task15 = 20030536    --绝世舞姬    
tMonsterGroupGenId.Task16 = 20030537    --哈蒙        
tMonsterGroupGenId.Task17 = 20030538    --枭鹰        
tMonsterGroupGenId.Task18 = 20030539    --尼格斯      
tMonsterGroupGenId.Task19 = 20030540    --枯叶蜂蜂王  
tMonsterGroupGenId.Task20 = 20030541    --白银盾战    
tMonsterGroupGenId.Task21 = 20030542    --默希娅      
tMonsterGroupGenId.Task22 = 20030543    --嗜血战魂    
tMonsterGroupGenId.Task23 = 20030544    --蝎怪        
tMonsterGroupGenId.Task24 = 20030545    --四蹄神      
tMonsterGroupGenId.Task25 = 20030546    --机械石像    
tMonsterGroupGenId.Task26 = 20030547    --黑暗法师    
tMonsterGroupGenId.Task27 = 20030548    --萨米尔      
tMonsterGroupGenId.Task28 = 20030549    --黑色荆棘    
tMonsterGroupGenId.Task29 = 20030550    --恶魔修帝    
tMonsterGroupGenId.Task30 = 20030551    --武装熊人战士

----------奖励id------------
local tAwardId = {}

--通用任务奖励
tAwardId.NormalTask = 2000448

----------任务标题id------------
local tTaskTitle = {}
tTaskTitle.Task1  = tLuaText[LANGUAGE_CONFIG][21700]
tTaskTitle.Task2  = tLuaText[LANGUAGE_CONFIG][21701]
tTaskTitle.Task3  = tLuaText[LANGUAGE_CONFIG][21702]
tTaskTitle.Task4  = tLuaText[LANGUAGE_CONFIG][21703]
tTaskTitle.Task5  = tLuaText[LANGUAGE_CONFIG][21704]
tTaskTitle.Task6  = tLuaText[LANGUAGE_CONFIG][21705]
tTaskTitle.Task7  = tLuaText[LANGUAGE_CONFIG][21706]
tTaskTitle.Task8  = tLuaText[LANGUAGE_CONFIG][21707]
tTaskTitle.Task9  = tLuaText[LANGUAGE_CONFIG][21708]
tTaskTitle.Task10 = tLuaText[LANGUAGE_CONFIG][21709]
tTaskTitle.Task11 = tLuaText[LANGUAGE_CONFIG][21710]
tTaskTitle.Task12 = tLuaText[LANGUAGE_CONFIG][21711]
tTaskTitle.Task13 = tLuaText[LANGUAGE_CONFIG][21712]
tTaskTitle.Task14 = tLuaText[LANGUAGE_CONFIG][21713]
tTaskTitle.Task15 = tLuaText[LANGUAGE_CONFIG][21714]
tTaskTitle.Task16 = tLuaText[LANGUAGE_CONFIG][21715]
tTaskTitle.Task17 = tLuaText[LANGUAGE_CONFIG][21716]
tTaskTitle.Task18 = tLuaText[LANGUAGE_CONFIG][21717]
tTaskTitle.Task19 = tLuaText[LANGUAGE_CONFIG][21718]
tTaskTitle.Task20 = tLuaText[LANGUAGE_CONFIG][21719]
tTaskTitle.Task21 = tLuaText[LANGUAGE_CONFIG][21720]
tTaskTitle.Task22 = tLuaText[LANGUAGE_CONFIG][21721]
tTaskTitle.Task23 = tLuaText[LANGUAGE_CONFIG][21722]
tTaskTitle.Task24 = tLuaText[LANGUAGE_CONFIG][21723]
tTaskTitle.Task25 = tLuaText[LANGUAGE_CONFIG][21724]
tTaskTitle.Task26 = tLuaText[LANGUAGE_CONFIG][21725]
tTaskTitle.Task27 = tLuaText[LANGUAGE_CONFIG][21726]
tTaskTitle.Task28 = tLuaText[LANGUAGE_CONFIG][21727]
tTaskTitle.Task29 = tLuaText[LANGUAGE_CONFIG][21728]
tTaskTitle.Task30 = tLuaText[LANGUAGE_CONFIG][21729]


--提交任务通用标题
tTaskTitle.Submit = tLuaText[LANGUAGE_CONFIG][21815]
--------悬赏id------------
local tArrestId = {}
tArrestId.Task1  = 111
tArrestId.Task2  = 112
tArrestId.Task3  = 113
tArrestId.Task4  = 121
tArrestId.Task5  = 122
tArrestId.Task6  = 123
tArrestId.Task7  = 131
tArrestId.Task8  = 132
tArrestId.Task9  = 133
tArrestId.Task10 = 141
tArrestId.Task11 = 142
tArrestId.Task12 = 143
tArrestId.Task13 = 151
tArrestId.Task14 = 152
tArrestId.Task15 = 153
tArrestId.Task16 = 161
tArrestId.Task17 = 162
tArrestId.Task18 = 163
tArrestId.Task19 = 171
tArrestId.Task20 = 172
tArrestId.Task21 = 173
tArrestId.Task22 = 181
tArrestId.Task23 = 182
tArrestId.Task24 = 183
tArrestId.Task25 = 191
tArrestId.Task26 = 192
tArrestId.Task27 = 193
tArrestId.Task28 = 201
tArrestId.Task29 = 202
tArrestId.Task30 = 203

------***************************杀怪任务***************************----

rwtTask[tRewardTask.Task1] = {}
rwtTask[tRewardTask.Task1]["Title"] = tTaskTitle.Task1
rwtTask[tRewardTask.Task1]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task1]["NextTaskId"] = tRewardTaskFinish.Task1
rwtTask[tRewardTask.Task1]["AcceptDialogId"] = tAcceptDialog.Task1
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task1
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task1]["KillMonsterGroup1" ]= tMonsterGroup.Task1
rwtTask[tRewardTask.Task1]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task1
rwtTask[tRewardTask.Task1]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task1



rwtTask[tRewardTask.Task2] = {}
rwtTask[tRewardTask.Task2]["Title"] = tTaskTitle.Task2
rwtTask[tRewardTask.Task2]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task2]["NextTaskId"] = tRewardTaskFinish.Task2
rwtTask[tRewardTask.Task2]["AcceptDialogId"] = tAcceptDialog.Task2
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task2
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task2]["KillMonsterGroup1" ]= tMonsterGroup.Task2
rwtTask[tRewardTask.Task2]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task2
rwtTask[tRewardTask.Task2]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task2


rwtTask[tRewardTask.Task3] = {}
rwtTask[tRewardTask.Task3]["Title"] = tTaskTitle.Task3
rwtTask[tRewardTask.Task3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task3]["NextTaskId"] = tRewardTaskFinish.Task3
rwtTask[tRewardTask.Task3]["AcceptDialogId"] = tAcceptDialog.Task3
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task3
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task3]["KillMonsterGroup1" ]= tMonsterGroup.Task3
rwtTask[tRewardTask.Task3]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task3
rwtTask[tRewardTask.Task3]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task3



rwtTask[tRewardTask.Task4] = {}
rwtTask[tRewardTask.Task4]["Title"] = tTaskTitle.Task4
rwtTask[tRewardTask.Task4]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task4]["NextTaskId"] = tRewardTaskFinish.Task4
rwtTask[tRewardTask.Task4]["AcceptDialogId"] = tAcceptDialog.Task4
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task4
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task4]["KillMonsterGroup1" ]= tMonsterGroup.Task4
rwtTask[tRewardTask.Task4]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task4
rwtTask[tRewardTask.Task4]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task4


rwtTask[tRewardTask.Task5] = {}
rwtTask[tRewardTask.Task5]["Title"] = tTaskTitle.Task5
rwtTask[tRewardTask.Task5]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task5]["NextTaskId"] = tRewardTaskFinish.Task5
rwtTask[tRewardTask.Task5]["AcceptDialogId"] = tAcceptDialog.Task5
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task5
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task5]["KillMonsterGroup1" ]= tMonsterGroup.Task5
rwtTask[tRewardTask.Task5]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task5
rwtTask[tRewardTask.Task5]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task5


rwtTask[tRewardTask.Task6] = {}
rwtTask[tRewardTask.Task6]["Title"] = tTaskTitle.Task6
rwtTask[tRewardTask.Task6]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task6]["NextTaskId"] = tRewardTaskFinish.Task6
rwtTask[tRewardTask.Task6]["AcceptDialogId"] = tAcceptDialog.Task6
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task6
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task6]["KillMonsterGroup1" ]= tMonsterGroup.Task6
rwtTask[tRewardTask.Task6]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task6
rwtTask[tRewardTask.Task6]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task6


rwtTask[tRewardTask.Task7] = {}
rwtTask[tRewardTask.Task7]["Title"] = tTaskTitle.Task7
rwtTask[tRewardTask.Task7]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task7]["NextTaskId"] = tRewardTaskFinish.Task7
rwtTask[tRewardTask.Task7]["AcceptDialogId"] = tAcceptDialog.Task7
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task7
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task7]["KillMonsterGroup1" ]= tMonsterGroup.Task7
rwtTask[tRewardTask.Task7]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task7
rwtTask[tRewardTask.Task7]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task7


rwtTask[tRewardTask.Task8] = {}
rwtTask[tRewardTask.Task8]["Title"] = tTaskTitle.Task8
rwtTask[tRewardTask.Task8]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task8]["NextTaskId"] = tRewardTaskFinish.Task8
rwtTask[tRewardTask.Task8]["AcceptDialogId"] = tAcceptDialog.Task8
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task8
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task8]["KillMonsterGroup1" ]= tMonsterGroup.Task8
rwtTask[tRewardTask.Task8]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task8
rwtTask[tRewardTask.Task8]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task8


rwtTask[tRewardTask.Task9] = {}
rwtTask[tRewardTask.Task9]["Title"] = tTaskTitle.Task9
rwtTask[tRewardTask.Task9]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task9]["NextTaskId"] = tRewardTaskFinish.Task9
rwtTask[tRewardTask.Task9]["AcceptDialogId"] = tAcceptDialog.Task9
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task9
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task9]["KillMonsterGroup1" ]= tMonsterGroup.Task9
rwtTask[tRewardTask.Task9]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task9
rwtTask[tRewardTask.Task9]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task9


rwtTask[tRewardTask.Task10] = {}
rwtTask[tRewardTask.Task10]["Title"] = tTaskTitle.Task10
rwtTask[tRewardTask.Task10]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task10]["NextTaskId"] = tRewardTaskFinish.Task10
rwtTask[tRewardTask.Task10]["AcceptDialogId"] = tAcceptDialog.Task10
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task10
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task10]["KillMonsterGroup1" ]= tMonsterGroup.Task10
rwtTask[tRewardTask.Task10]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task10
rwtTask[tRewardTask.Task10]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task10


rwtTask[tRewardTask.Task11] = {}
rwtTask[tRewardTask.Task11]["Title"] = tTaskTitle.Task11
rwtTask[tRewardTask.Task11]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task11]["NextTaskId"] = tRewardTaskFinish.Task11
rwtTask[tRewardTask.Task11]["AcceptDialogId"] = tAcceptDialog.Task11
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task11
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task11]["KillMonsterGroup1" ]= tMonsterGroup.Task11
rwtTask[tRewardTask.Task11]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task11
rwtTask[tRewardTask.Task11]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task11


rwtTask[tRewardTask.Task12] = {}
rwtTask[tRewardTask.Task12]["Title"] = tTaskTitle.Task12
rwtTask[tRewardTask.Task12]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task12]["NextTaskId"] = tRewardTaskFinish.Task12
rwtTask[tRewardTask.Task12]["AcceptDialogId"] = tAcceptDialog.Task12
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task12
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task12]["KillMonsterGroup1" ]= tMonsterGroup.Task12
rwtTask[tRewardTask.Task12]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task12
rwtTask[tRewardTask.Task12]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task12


rwtTask[tRewardTask.Task13] = {}
rwtTask[tRewardTask.Task13]["Title"] = tTaskTitle.Task13
rwtTask[tRewardTask.Task13]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task13]["NextTaskId"] = tRewardTaskFinish.Task13
rwtTask[tRewardTask.Task13]["AcceptDialogId"] = tAcceptDialog.Task13
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task13
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task13]["KillMonsterGroup1" ]= tMonsterGroup.Task13
rwtTask[tRewardTask.Task13]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task13
rwtTask[tRewardTask.Task13]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task13


rwtTask[tRewardTask.Task14] = {}
rwtTask[tRewardTask.Task14]["Title"] = tTaskTitle.Task14
rwtTask[tRewardTask.Task14]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task14]["NextTaskId"] = tRewardTaskFinish.Task14
rwtTask[tRewardTask.Task14]["AcceptDialogId"] = tAcceptDialog.Task14
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task14
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task14]["KillMonsterGroup1" ]= tMonsterGroup.Task14
rwtTask[tRewardTask.Task14]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task14
rwtTask[tRewardTask.Task14]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task14


rwtTask[tRewardTask.Task15] = {}
rwtTask[tRewardTask.Task15]["Title"] = tTaskTitle.Task15
rwtTask[tRewardTask.Task15]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task15]["NextTaskId"] = tRewardTaskFinish.Task15
rwtTask[tRewardTask.Task15]["AcceptDialogId"] = tAcceptDialog.Task15
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task15
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task15]["KillMonsterGroup1" ]= tMonsterGroup.Task15
rwtTask[tRewardTask.Task15]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task15
rwtTask[tRewardTask.Task15]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task15


rwtTask[tRewardTask.Task16] = {}
rwtTask[tRewardTask.Task16]["Title"] = tTaskTitle.Task16
rwtTask[tRewardTask.Task16]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task16]["NextTaskId"] = tRewardTaskFinish.Task16
rwtTask[tRewardTask.Task16]["AcceptDialogId"] = tAcceptDialog.Task16
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task16
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task16]["KillMonsterGroup1" ]= tMonsterGroup.Task16
rwtTask[tRewardTask.Task16]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task16
rwtTask[tRewardTask.Task16]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task16



rwtTask[tRewardTask.Task17] = {}
rwtTask[tRewardTask.Task17]["Title"] = tTaskTitle.Task17
rwtTask[tRewardTask.Task17]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task17]["NextTaskId"] = tRewardTaskFinish.Task17
rwtTask[tRewardTask.Task17]["AcceptDialogId"] = tAcceptDialog.Task17
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task17
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task17]["KillMonsterGroup1" ]= tMonsterGroup.Task17
rwtTask[tRewardTask.Task17]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task17
rwtTask[tRewardTask.Task17]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task17



rwtTask[tRewardTask.Task18] = {}
rwtTask[tRewardTask.Task18]["Title"] = tTaskTitle.Task18
rwtTask[tRewardTask.Task18]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task18]["NextTaskId"] = tRewardTaskFinish.Task18
rwtTask[tRewardTask.Task18]["AcceptDialogId"] = tAcceptDialog.Task18
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task18
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task18]["KillMonsterGroup1" ]= tMonsterGroup.Task18
rwtTask[tRewardTask.Task18]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task18
rwtTask[tRewardTask.Task18]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task18




rwtTask[tRewardTask.Task19] = {}
rwtTask[tRewardTask.Task19]["Title"] = tTaskTitle.Task19
rwtTask[tRewardTask.Task19]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task19]["NextTaskId"] = tRewardTaskFinish.Task19
rwtTask[tRewardTask.Task19]["AcceptDialogId"] = tAcceptDialog.Task19
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task19
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task19]["KillMonsterGroup1" ]= tMonsterGroup.Task19
rwtTask[tRewardTask.Task19]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task19
rwtTask[tRewardTask.Task19]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task19




rwtTask[tRewardTask.Task20] = {}
rwtTask[tRewardTask.Task20]["Title"] = tTaskTitle.Task20
rwtTask[tRewardTask.Task20]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task20]["NextTaskId"] = tRewardTaskFinish.Task20
rwtTask[tRewardTask.Task20]["AcceptDialogId"] = tAcceptDialog.Task20
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task20
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task20]["KillMonsterGroup1" ]= tMonsterGroup.Task20
rwtTask[tRewardTask.Task20]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task20
rwtTask[tRewardTask.Task20]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task20



rwtTask[tRewardTask.Task21] = {}
rwtTask[tRewardTask.Task21]["Title"] = tTaskTitle.Task21
rwtTask[tRewardTask.Task21]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task21]["NextTaskId"] = tRewardTaskFinish.Task21
rwtTask[tRewardTask.Task21]["AcceptDialogId"] = tAcceptDialog.Task21
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task21
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task21]["KillMonsterGroup1" ]= tMonsterGroup.Task21
rwtTask[tRewardTask.Task21]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task21
rwtTask[tRewardTask.Task21]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task21




rwtTask[tRewardTask.Task22] = {}
rwtTask[tRewardTask.Task22]["Title"] = tTaskTitle.Task22
rwtTask[tRewardTask.Task22]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task22]["NextTaskId"] = tRewardTaskFinish.Task22
rwtTask[tRewardTask.Task22]["AcceptDialogId"] = tAcceptDialog.Task22
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task22
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task22]["KillMonsterGroup1" ]= tMonsterGroup.Task22
rwtTask[tRewardTask.Task22]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task22
rwtTask[tRewardTask.Task22]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task22




rwtTask[tRewardTask.Task23] = {}
rwtTask[tRewardTask.Task23]["Title"] = tTaskTitle.Task23
rwtTask[tRewardTask.Task23]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task23]["NextTaskId"] = tRewardTaskFinish.Task23
rwtTask[tRewardTask.Task23]["AcceptDialogId"] = tAcceptDialog.Task23
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task23
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task23]["KillMonsterGroup1" ]= tMonsterGroup.Task23
rwtTask[tRewardTask.Task23]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task23
rwtTask[tRewardTask.Task23]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task23




rwtTask[tRewardTask.Task24] = {}
rwtTask[tRewardTask.Task24]["Title"] = tTaskTitle.Task24
rwtTask[tRewardTask.Task24]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task24]["NextTaskId"] = tRewardTaskFinish.Task24
rwtTask[tRewardTask.Task24]["AcceptDialogId"] = tAcceptDialog.Task24
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task24
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task24]["KillMonsterGroup1" ]= tMonsterGroup.Task24
rwtTask[tRewardTask.Task24]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task24
rwtTask[tRewardTask.Task24]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task24




rwtTask[tRewardTask.Task25] = {}
rwtTask[tRewardTask.Task25]["Title"] = tTaskTitle.Task25
rwtTask[tRewardTask.Task25]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task25]["NextTaskId"] = tRewardTaskFinish.Task25
rwtTask[tRewardTask.Task25]["AcceptDialogId"] = tAcceptDialog.Task25
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task25
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task25]["KillMonsterGroup1" ]= tMonsterGroup.Task25
rwtTask[tRewardTask.Task25]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task25
rwtTask[tRewardTask.Task25]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task25





rwtTask[tRewardTask.Task26] = {}
rwtTask[tRewardTask.Task26]["Title"] = tTaskTitle.Task26
rwtTask[tRewardTask.Task26]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task26]["NextTaskId"] = tRewardTaskFinish.Task26
rwtTask[tRewardTask.Task26]["AcceptDialogId"] = tAcceptDialog.Task26
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task26
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task26]["KillMonsterGroup1" ]= tMonsterGroup.Task26
rwtTask[tRewardTask.Task26]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task26
rwtTask[tRewardTask.Task26]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task26




rwtTask[tRewardTask.Task27] = {}
rwtTask[tRewardTask.Task27]["Title"] = tTaskTitle.Task27
rwtTask[tRewardTask.Task27]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task27]["NextTaskId"] = tRewardTaskFinish.Task27
rwtTask[tRewardTask.Task27]["AcceptDialogId"] = tAcceptDialog.Task27
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task27
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task27]["KillMonsterGroup1" ]= tMonsterGroup.Task27
rwtTask[tRewardTask.Task27]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task27
rwtTask[tRewardTask.Task27]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task27




rwtTask[tRewardTask.Task28] = {}
rwtTask[tRewardTask.Task28]["Title"] = tTaskTitle.Task28
rwtTask[tRewardTask.Task28]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task28]["NextTaskId"] = tRewardTaskFinish.Task28
rwtTask[tRewardTask.Task28]["AcceptDialogId"] = tAcceptDialog.Task28
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task28
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task28]["KillMonsterGroup1" ]= tMonsterGroup.Task28
rwtTask[tRewardTask.Task28]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task28
rwtTask[tRewardTask.Task28]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task28




rwtTask[tRewardTask.Task29] = {}
rwtTask[tRewardTask.Task29]["Title"] = tTaskTitle.Task29
rwtTask[tRewardTask.Task29]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task29]["NextTaskId"] = tRewardTaskFinish.Task29
rwtTask[tRewardTask.Task29]["AcceptDialogId"] = tAcceptDialog.Task29
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task29
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task29]["KillMonsterGroup1" ]= tMonsterGroup.Task29
rwtTask[tRewardTask.Task29]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task29
rwtTask[tRewardTask.Task29]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task29




rwtTask[tRewardTask.Task30] = {}
rwtTask[tRewardTask.Task30]["Title"] = tTaskTitle.Task30
rwtTask[tRewardTask.Task30]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[tRewardTask.Task30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tRewardTask.Task30]["NextTaskId"] = tRewardTaskFinish.Task30
rwtTask[tRewardTask.Task30]["AcceptDialogId"] = tAcceptDialog.Task30
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"] = {}
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1] = {}
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroupGenId.Task30
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tRewardTask.Task30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tRewardTask.Task30]["KillMonsterGroup1" ]= tMonsterGroup.Task30
rwtTask[tRewardTask.Task30]["StartAutoWay"] = {}
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.Task30
rwtTask[tRewardTask.Task30]["StartAutoWay"]["FindWayGenId"] = tMonsterGroupGenId.Task30


------***************************回复NPC任务***************************----
rwtTask[tRewardTaskFinish.Task1] = {}
rwtTask[tRewardTaskFinish.Task1]["Title"] = tTaskTitle.Submit
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




rwtTask[tRewardTaskFinish.Task2] = {}
rwtTask[tRewardTaskFinish.Task2]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTask.Task2




rwtTask[tRewardTaskFinish.Task3] = {}
rwtTask[tRewardTaskFinish.Task3]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task3




rwtTask[tRewardTaskFinish.Task4] = {}
rwtTask[tRewardTaskFinish.Task4]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task4




rwtTask[tRewardTaskFinish.Task5] = {}
rwtTask[tRewardTaskFinish.Task5]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task5




rwtTask[tRewardTaskFinish.Task6] = {}
rwtTask[tRewardTaskFinish.Task6]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task6




rwtTask[tRewardTaskFinish.Task7] = {}
rwtTask[tRewardTaskFinish.Task7]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task7




rwtTask[tRewardTaskFinish.Task8] = {}
rwtTask[tRewardTaskFinish.Task8]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task8]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task8




rwtTask[tRewardTaskFinish.Task9] = {}
rwtTask[tRewardTaskFinish.Task9]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task9




rwtTask[tRewardTaskFinish.Task10] = {}
rwtTask[tRewardTaskFinish.Task10]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task10]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task10




rwtTask[tRewardTaskFinish.Task11] = {}
rwtTask[tRewardTaskFinish.Task11]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task11




rwtTask[tRewardTaskFinish.Task12] = {}
rwtTask[tRewardTaskFinish.Task12]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task12]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task12




rwtTask[tRewardTaskFinish.Task13] = {}
rwtTask[tRewardTaskFinish.Task13]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task13]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task13




rwtTask[tRewardTaskFinish.Task14] = {}
rwtTask[tRewardTaskFinish.Task14]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task14




rwtTask[tRewardTaskFinish.Task15] = {}
rwtTask[tRewardTaskFinish.Task15]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task15]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task15



rwtTask[tRewardTaskFinish.Task16] = {}
rwtTask[tRewardTaskFinish.Task16]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task16]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task16



rwtTask[tRewardTaskFinish.Task17] = {}
rwtTask[tRewardTaskFinish.Task17]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task17]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task17



rwtTask[tRewardTaskFinish.Task18] = {}
rwtTask[tRewardTaskFinish.Task18]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task18]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task18



rwtTask[tRewardTaskFinish.Task19] = {}
rwtTask[tRewardTaskFinish.Task19]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task19



rwtTask[tRewardTaskFinish.Task20] = {}
rwtTask[tRewardTaskFinish.Task20]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task20]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task20



rwtTask[tRewardTaskFinish.Task21] = {}
rwtTask[tRewardTaskFinish.Task21]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task21]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task21


rwtTask[tRewardTaskFinish.Task22] = {}
rwtTask[tRewardTaskFinish.Task22]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task22


rwtTask[tRewardTaskFinish.Task23] = {}
rwtTask[tRewardTaskFinish.Task23]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task23]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task23


rwtTask[tRewardTaskFinish.Task24] = {}
rwtTask[tRewardTaskFinish.Task24]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task24]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task24


rwtTask[tRewardTaskFinish.Task25] = {}
rwtTask[tRewardTaskFinish.Task25]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task25


rwtTask[tRewardTaskFinish.Task26] = {}
rwtTask[tRewardTaskFinish.Task26]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task26]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task26


rwtTask[tRewardTaskFinish.Task27] = {}
rwtTask[tRewardTaskFinish.Task27]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task27]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task27


rwtTask[tRewardTaskFinish.Task28] = {}
rwtTask[tRewardTaskFinish.Task28]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task28]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task28


rwtTask[tRewardTaskFinish.Task29] = {}
rwtTask[tRewardTaskFinish.Task29]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task29]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task29


rwtTask[tRewardTaskFinish.Task30] = {}
rwtTask[tRewardTaskFinish.Task30]["Title"] = tTaskTitle.Submit
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
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalTask
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tRewardTaskFinish.Task30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRewardTaskFinish.Task30
