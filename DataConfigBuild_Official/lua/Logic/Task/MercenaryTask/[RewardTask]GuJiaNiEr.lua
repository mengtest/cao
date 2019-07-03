--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--古加尼尔悬赏任务
--by:syl
--endregion

-----------------------------------------------数据定义-----------------------------------------------------------------
-------任务id-------
--任务条件
local nTaskId_LMDL_Final = 10215
--接任务
local nTaskId_1 = 40030       --悬赏！荒原女巫
local nTaskId_2 = 40031       --悬赏！锤子团首领
local nTaskId_3 = 40032       --悬赏！蝎怪
local nTaskId_4 = 40033       --悬赏！枯叶蜂蜂王
local nTaskId_5 = 40034       --悬赏！矮巨人指挥官
local nTaskId_6 = 40035       --悬赏！丧尸法师
local nTaskId_7 = 40036       --悬赏！鹿角兽队长
local nTaskId_8 = 40037       --悬赏！嗜血战魂*
local nTaskId_9 = 40038       --悬赏！寄居熊
local nTaskId_10 = 40039      --悬赏！沙漠巨人

--交任务
local nTaskId_1_Finish = 40040       --悬赏！荒原女巫
local nTaskId_2_Finish = 40041       --悬赏！锤子团首领
local nTaskId_3_Finish = 40042       --悬赏！蝎怪
local nTaskId_4_Finish = 40043       --悬赏！枯叶蜂蜂王
local nTaskId_5_Finish = 40044       --悬赏！矮巨人指挥官
local nTaskId_6_Finish = 40045       --悬赏！丧尸法师
local nTaskId_7_Finish = 40046       --悬赏！鹿角兽队长
local nTaskId_8_Finish = 40047       --悬赏！嗜血战魂*
local nTaskId_9_Finish = 40048       --悬赏！寄居熊
local nTaskId_10_Finish = 40049      --悬赏！沙漠巨人

---------对白id----------
local nTaskId_1_Dialog1 = 10929         --任务1接受任务对白
local nTaskId_1_Dialog2 = 10930         --任务1完成任务对白
local nTaskId_2_Dialog1 = 10931         --任务2接受任务对白
local nTaskId_2_Dialog2 = 10932         --任务2完成任务对白
local nTaskId_3_Dialog1 = 10933         --任务3接受任务对白
local nTaskId_3_Dialog2 = 10934         --任务3完成任务对白
local nTaskId_4_Dialog1 = 10935         --任务4接受任务对白
local nTaskId_4_Dialog2 = 10936         --任务4完成任务对白
local nTaskId_5_Dialog1 = 10937         --任务5接受任务对白
local nTaskId_5_Dialog2 = 10938         --任务5完成任务对白
local nTaskId_6_Dialog1 = 10939         --任务6接受任务对白
local nTaskId_6_Dialog2 = 10940         --任务6完成任务对白
local nTaskId_7_Dialog1 = 10941         --任务7接受任务对白
local nTaskId_7_Dialog2 = 10942         --任务7完成任务对白
local nTaskId_8_Dialog1 = 10943         --任务8接受任务对白
local nTaskId_8_Dialog2 = 10944         --任务8完成任务对白
local nTaskId_9_Dialog1 = 10945         --任务9接受任务对白
local nTaskId_9_Dialog2 = 10946         --任务9完成任务对白
local nTaskId_10_Dialog1 = 10947       --任务10接受任务对白
local nTaskId_10_Dialog2 = 10948       --任务10完成任务对白

--------------Monster----------------------
local nMonster_1 = 9000176                 --荒原女巫 10054
local nMonster_2 = 9000177                 --锤子团首领 10050
local nMonster_3 = 9000178                 --蝎怪   10027
local nMonster_4 = 9000179                 --枯叶蜂蜂王   10042
local nMonster_5 = 9000180                 --矮巨人指挥官   8000
local nMonster_6 = 9000181                 --丧尸法师    10013
local nMonster_7 = 9000182                 --鹿角兽队长  10024
local nMonster_8 = 9000183                 --嗜血战魂*   52003
local nMonster_9 = 9000184                 --寄居熊     10039
local nMonster_10 = 9000185                --沙漠巨人    10052
--嗜血战魂新增小怪
local nMonster_11 = 9000324                --暗黑战魂

local nMonsterGroupId_1 = 900278                 --荒原女巫
local nMonsterGroupId_2 = 900279                 --锤子团首领
local nMonsterGroupId_3 = 900280                 --蝎怪
local nMonsterGroupId_4 = 900281                 --枯叶蜂蜂王
local nMonsterGroupId_5 = 900282                 --矮巨人指挥官
local nMonsterGroupId_6 = 900283                 --丧尸法师
local nMonsterGroupId_7 = 900284                 --鹿角兽队长
local nMonsterGroupId_8 = 900285                 --嗜血战魂*
local nMonsterGroupId_9 = 900286                 --寄居熊
local nMonsterGroupId_10 = 900287                --沙漠巨人


local nMonsterGroupGenId_1 = 2001938            --荒原女巫
local nMonsterGroupGenId_2 = 2001939            --锤子团首领
local nMonsterGroupGenId_3 = 2001940            --蝎怪
local nMonsterGroupGenId_4 = 2001941            --枯叶蜂蜂王
local nMonsterGroupGenId_5 = 2001942            --矮巨人指挥官
local nMonsterGroupGenId_6 = 2001943            --丧尸法师
local nMonsterGroupGenId_7 = 2001944            --鹿角兽队长
local nMonsterGroupGenId_8 = 2001945            --嗜血战魂*
local nMonsterGroupGenId_9 = 2001946            --寄居熊
local nMonsterGroupGenId_10 = 2001947           --沙漠巨人

-------NPCid--------
local nNpc_TuoMaSi = 3005		--铁臂安道夫
local nNpc_BiDuoMao = 3043      --比多猫

local nNpcmap_TuoMaSi = 20112 --托马斯
local nNpcmap_TuoMaSi_GenId = 2001655

--------奖励id------------
local nTaskAward_1 = 2000141	                     --悬赏！荒原女巫
local nTaskAward_2 = 2000142                  		 --悬赏！锤子团首领
local nTaskAward_3 = 2000143                  		 --悬赏！蝎怪
local nTaskAward_4 = 2000144                  		 --悬赏！枯叶蜂蜂王
local nTaskAward_5 = 2000145                  		 --悬赏！矮巨人指挥官
local nTaskAward_6 = 2000146                  		 --悬赏！丧尸法师
local nTaskAward_7 = 2000147                         --悬赏！鹿角兽队长
local nTaskAward_8 = 2000148                         --悬赏！嗜血战魂*
local nTaskAward_9 = 2000149                         --悬赏！寄居熊
local nTaskAward_10 = 2000150                        --悬赏！沙漠巨人

----------------------------------------------- 任务 -----------------------------------------------------------------
--悬赏！荒原女巫
rwtTask[nTaskId_1] = {}
rwtTask[nTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20722]
rwtTask[nTaskId_1]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_1]["StartNpc"] = nNpc_TuoMaSi
rwtTask[nTaskId_1]["NextTaskId"] = nTaskId_1_Finish
rwtTask[nTaskId_1]["IsClickComplete"] = 0
rwtTask[nTaskId_1]["AcceptDialogId"] = nTaskId_1_Dialog1

rwtTask[nTaskId_1]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_1
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete   

rwtTask[nTaskId_1]["StartAutoWay"] = {}
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_1
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_1

rwtTask[nTaskId_1]["KillMonsterGroup1" ]= nMonsterGroupId_1

rwtTask[nTaskId_1_Finish] = {}
rwtTask[nTaskId_1_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20723]
rwtTask[nTaskId_1_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_1_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_1_Finish]["PreTaskId"] = nTaskId_1
rwtTask[nTaskId_1_Finish]["NextTaskId"] = nTaskId_2
rwtTask[nTaskId_1_Finish]["DialogId"] = nTaskId_1_Dialog2
rwtTask[nTaskId_1_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_1_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_1_Finish]["Awards"] = {}
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_1
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_1_Finish
--悬赏！锤子团首领
rwtTask[nTaskId_2] = {}
rwtTask[nTaskId_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20724]
rwtTask[nTaskId_2]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_2]["PreTaskId"] = nTaskId_1_Finish
rwtTask[nTaskId_2]["NextTaskId"] = nTaskId_2_Finish
rwtTask[nTaskId_2]["IsClickComplete"] = 0
rwtTask[nTaskId_2]["AcceptDialogId"] = nTaskId_2_Dialog1

rwtTask[nTaskId_2]["StartAutoWay"] = {}
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_2
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_2

rwtTask[nTaskId_2]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_2
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete  

rwtTask[nTaskId_2]["KillMonsterGroup1" ]= nMonsterGroupId_2


rwtTask[nTaskId_2_Finish] = {}
rwtTask[nTaskId_2_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20725]
rwtTask[nTaskId_2_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_2_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_2_Finish]["PreTaskId"] = nTaskId_2
rwtTask[nTaskId_2_Finish]["NextTaskId"] = nTaskId_3
rwtTask[nTaskId_2_Finish]["DialogId"] = nTaskId_2_Dialog2
rwtTask[nTaskId_2_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_2_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_2_Finish]["Awards"] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_2
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_2_Finish


--悬赏！蝎怪
rwtTask[nTaskId_3] = {}
rwtTask[nTaskId_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20726]
rwtTask[nTaskId_3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_3]["PreTaskId"] = nTaskId_2_Finish
rwtTask[nTaskId_3]["NextTaskId"] = nTaskId_3_Finish
rwtTask[nTaskId_3]["IsClickComplete"] = 0
rwtTask[nTaskId_3]["AcceptDialogId"] = nTaskId_3_Dialog1

rwtTask[nTaskId_3]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_3
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_3]["StartAutoWay"] = {}
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_3
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_3

rwtTask[nTaskId_3]["KillMonsterGroup1" ]= nMonsterGroupId_3

rwtTask[nTaskId_3_Finish] = {}
rwtTask[nTaskId_3_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20727]
rwtTask[nTaskId_3_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_3_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_3_Finish]["PreTaskId"] = nTaskId_3
rwtTask[nTaskId_3_Finish]["NextTaskId"] = nTaskId_4
rwtTask[nTaskId_3_Finish]["DialogId"] = nTaskId_3_Dialog2
rwtTask[nTaskId_3_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_3_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_3_Finish]["Awards"] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_3
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_3_Finish


--悬赏！枯叶蜂蜂王
rwtTask[nTaskId_4] = {}
rwtTask[nTaskId_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20728]
rwtTask[nTaskId_4]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_4]["PreTaskId"] = nTaskId_3_Finish
rwtTask[nTaskId_4]["NextTaskId"] = nTaskId_4_Finish
rwtTask[nTaskId_4]["IsClickComplete"] = 0
rwtTask[nTaskId_4]["AcceptDialogId"] = nTaskId_4_Dialog1

rwtTask[nTaskId_4]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_4
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_4]["StartAutoWay"] = {}
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_4
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_4

rwtTask[nTaskId_4]["KillMonsterGroup1" ]= nMonsterGroupId_4

rwtTask[nTaskId_4_Finish] = {}
rwtTask[nTaskId_4_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20729]
rwtTask[nTaskId_4_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_4_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_4_Finish]["PreTaskId"] = nTaskId_4
rwtTask[nTaskId_4_Finish]["NextTaskId"] = nTaskId_5
rwtTask[nTaskId_4_Finish]["DialogId"] = nTaskId_4_Dialog2
rwtTask[nTaskId_4_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_4_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_4_Finish]["Awards"] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_4
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_4_Finish


--悬赏！矮巨人指挥官
rwtTask[nTaskId_5] = {}
rwtTask[nTaskId_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20730]
rwtTask[nTaskId_5]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_5]["PreTaskId"] = nTaskId_4_Finish
rwtTask[nTaskId_5]["NextTaskId"] = nTaskId_5_Finish
rwtTask[nTaskId_5]["IsClickComplete"] = 0
rwtTask[nTaskId_5]["AcceptDialogId"] = nTaskId_5_Dialog1

rwtTask[nTaskId_5]["StartAutoWay"] = {}
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_5
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_5

rwtTask[nTaskId_5]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_5
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_5]["KillMonsterGroup1" ]= nMonsterGroupId_5

rwtTask[nTaskId_5_Finish] = {}
rwtTask[nTaskId_5_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20731]
rwtTask[nTaskId_5_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_5_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_5_Finish]["PreTaskId"] = nTaskId_5
rwtTask[nTaskId_5_Finish]["NextTaskId"] = nTaskId_6
rwtTask[nTaskId_5_Finish]["DialogId"] = nTaskId_5_Dialog2
rwtTask[nTaskId_5_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_5_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_5_Finish]["Awards"] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_5
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_5_Finish

--悬赏！丧尸法师
rwtTask[nTaskId_6] = {}
rwtTask[nTaskId_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20732]
rwtTask[nTaskId_6]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_6]["PreTaskId"] = nTaskId_5_Finish
rwtTask[nTaskId_6]["NextTaskId"] = nTaskId_6_Finish
rwtTask[nTaskId_6]["IsClickComplete"] = 0
rwtTask[nTaskId_6]["AcceptDialogId"] = nTaskId_6_Dialog1

rwtTask[nTaskId_6]["StartAutoWay"] = {}
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_6
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_6

rwtTask[nTaskId_6]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_6
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_6]["KillMonsterGroup1" ]= nMonsterGroupId_6

rwtTask[nTaskId_6_Finish] = {}
rwtTask[nTaskId_6_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20733]
rwtTask[nTaskId_6_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_6_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_6_Finish]["PreTaskId"] = nTaskId_6
rwtTask[nTaskId_6_Finish]["NextTaskId"] = nTaskId_7
rwtTask[nTaskId_6_Finish]["DialogId"] = nTaskId_6_Dialog2
rwtTask[nTaskId_6_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_6_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_6_Finish]["Awards"] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_6
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_6_Finish

--悬赏！鹿角兽队长
rwtTask[nTaskId_7] = {}
rwtTask[nTaskId_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20734]
rwtTask[nTaskId_7]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_7]["PreTaskId"] = nTaskId_6_Finish
rwtTask[nTaskId_7]["NextTaskId"] = nTaskId_7_Finish
rwtTask[nTaskId_7]["IsClickComplete"] = 0
rwtTask[nTaskId_7]["AcceptDialogId"] = nTaskId_7_Dialog1

rwtTask[nTaskId_7]["StartAutoWay"] = {}
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_7
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_7

rwtTask[nTaskId_7]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_7
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_7]["KillMonsterGroup1" ]= nMonsterGroupId_7

rwtTask[nTaskId_7_Finish] = {}
rwtTask[nTaskId_7_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20735]
rwtTask[nTaskId_7_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_7_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_7_Finish]["PreTaskId"] = nTaskId_7
rwtTask[nTaskId_7_Finish]["NextTaskId"] = nTaskId_8
rwtTask[nTaskId_7_Finish]["DialogId"] = nTaskId_7_Dialog2
rwtTask[nTaskId_7_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_7_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_7_Finish]["Awards"] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_7
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_7_Finish
                
--悬赏！嗜血战魂
rwtTask[nTaskId_8] = {}
rwtTask[nTaskId_8]["Title"] = tLuaText[LANGUAGE_CONFIG][20736]
rwtTask[nTaskId_8]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_8]["PreTaskId"] = nTaskId_7_Finish
rwtTask[nTaskId_8]["NextTaskId"] = nTaskId_8_Finish
rwtTask[nTaskId_8]["IsClickComplete"] = 0
rwtTask[nTaskId_8]["AcceptDialogId"] = nTaskId_8_Dialog1

rwtTask[nTaskId_8]["StartAutoWay"] = {}
rwtTask[nTaskId_8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_8]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_8]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_8
rwtTask[nTaskId_8]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_8

rwtTask[nTaskId_8]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_8]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_8]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_8
rwtTask[nTaskId_8]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_8]["KillMonsterGroup1" ]= nMonsterGroupId_8

rwtTask[nTaskId_8_Finish] = {}
rwtTask[nTaskId_8_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20737]
rwtTask[nTaskId_8_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_8_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_8_Finish]["PreTaskId"] = nTaskId_8
rwtTask[nTaskId_8_Finish]["NextTaskId"] = nTaskId_9
rwtTask[nTaskId_8_Finish]["DialogId"] = nTaskId_8_Dialog2
rwtTask[nTaskId_8_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_8_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_8_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_8_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_8_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_8_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_8_Finish]["Awards"] = {}
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_8
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_8_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_8_Finish

--悬赏！寄居熊
rwtTask[nTaskId_9] = {}
rwtTask[nTaskId_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20738]
rwtTask[nTaskId_9]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_9]["PreTaskId"] = nTaskId_8_Finish
rwtTask[nTaskId_9]["NextTaskId"] = nTaskId_9_Finish
rwtTask[nTaskId_9]["IsClickComplete"] = 0
rwtTask[nTaskId_9]["AcceptDialogId"] = nTaskId_9_Dialog1

rwtTask[nTaskId_9]["StartAutoWay"] = {}
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_9
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_9

rwtTask[nTaskId_9]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_9
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_9]["KillMonsterGroup1" ]= nMonsterGroupId_9

rwtTask[nTaskId_9_Finish] = {}
rwtTask[nTaskId_9_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20739]
rwtTask[nTaskId_9_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_9_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_9_Finish]["PreTaskId"] = nTaskId_9
rwtTask[nTaskId_9_Finish]["NextTaskId"] = nTaskId_10
rwtTask[nTaskId_9_Finish]["DialogId"] = nTaskId_9_Dialog2
rwtTask[nTaskId_9_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_9_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_9_Finish]["Awards"] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_9
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_9_Finish

--悬赏！沙漠巨人
rwtTask[nTaskId_10] = {}
rwtTask[nTaskId_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20740]
rwtTask[nTaskId_10]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_10]["PreTaskId"] = nTaskId_9_Finish
rwtTask[nTaskId_10]["NextTaskId"] = nTaskId_10_Finish
rwtTask[nTaskId_10]["IsClickComplete"] = 0
rwtTask[nTaskId_10]["AcceptDialogId"] = nTaskId_10_Dialog1

rwtTask[nTaskId_10]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_10
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[nTaskId_10]["StartAutoWay"] = {}
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_10
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_10

rwtTask[nTaskId_10]["KillMonsterGroup1" ]= nMonsterGroupId_10

rwtTask[nTaskId_10_Finish] = {}
rwtTask[nTaskId_10_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20741]
rwtTask[nTaskId_10_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_10_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_10_Finish]["PreTaskId"] = nTaskId_10
rwtTask[nTaskId_10_Finish]["DialogId"] = nTaskId_10_Dialog2
rwtTask[nTaskId_10_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_10_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_TuoMaSi
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayGenId"] = nNpcmap_TuoMaSi_GenId

-- rwtTask[nTaskId_10_Finish]["Awards"] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_10
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_10_Finish

