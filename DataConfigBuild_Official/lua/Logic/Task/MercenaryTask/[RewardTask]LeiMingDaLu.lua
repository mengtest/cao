--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--雷鸣大陆悬赏任务
--by:mzy

--endregion

--********************数据定义**************************
-------任务id-------
--主线任务id
local nTaskId_LMDL_Final = 10215
--接任务
local nTaskId_1 = 40000       --悬赏！苍白獠牙塞特
local nTaskId_2 = 40001       --悬赏！怒鳍半鱼人
local nTaskId_3 = 40002       --悬赏！丛林开膛手
local nTaskId_4 = 40003       --悬赏！财宝哥布林
local nTaskId_5 = 40004       --悬赏！巨斧屠夫曼达
local nTaskId_6 = 40005       --悬赏！北方暴君纳森
local nTaskId_7 = 40006       --悬赏！先驱者1号
--local nTaskId_8 = 40007       --悬赏！暮夜法师普洛斯*
local nTaskId_9 = 40008       --悬赏！骑士长亚索
local nTaskId_10 = 40009     --悬赏！食人酋长布鲁
--local nTaskId_11 = 40010      --悬赏！鹿角男爵尤德*
--local nTaskId_12 = 40011      --悬赏！毒蝎领主维克*
local nTaskId_13 = 40012      --悬赏！山岩领主蒙多
--交任务
local nTaskId_1_Finish = 40013       --悬赏！苍白獠牙塞特
local nTaskId_2_Finish = 40014       --悬赏！怒鳍半鱼人
local nTaskId_3_Finish = 40015       --悬赏！丛林开膛手
local nTaskId_4_Finish = 40016       --悬赏！财宝哥布林
local nTaskId_5_Finish = 40017       --悬赏！巨斧屠夫曼达
local nTaskId_6_Finish = 40018       --悬赏！北方暴君纳森
local nTaskId_7_Finish = 40019       --悬赏！先驱者1号
--local nTaskId_8_Finish = 40020      --悬赏！暮夜法师普洛斯
local nTaskId_9_Finish = 40021       --悬赏！骑士长亚索
local nTaskId_10_Finish = 40022     --悬赏！食人酋长布鲁
--local nTaskId_11_Finish = 40023     --悬赏！鹿角男爵尤德
--local nTaskId_12_Finish = 40024     --悬赏！毒蝎领主维克
local nTaskId_13_Finish = 40025     --悬赏！山岩领主蒙多
---------对白id----------
local nTaskId_1_Dialog1 = 10377         --任务1接受任务对白
local nTaskId_1_Dialog2 = 10378         --任务1完成任务对白
local nTaskId_2_Dialog1 = 10379         --任务2接受任务对白
local nTaskId_2_Dialog2 = 10380         --任务2完成任务对白
local nTaskId_3_Dialog1 = 10381         --任务3接受任务对白
local nTaskId_3_Dialog2 = 10382         --任务3完成任务对白
local nTaskId_4_Dialog1 = 10383         --任务4接受任务对白
local nTaskId_4_Dialog2 = 10384         --任务4完成任务对白
local nTaskId_5_Dialog1 = 10385         --任务5接受任务对白
local nTaskId_5_Dialog2 = 10386         --任务5完成任务对白
local nTaskId_6_Dialog1 = 10387         --任务6接受任务对白
local nTaskId_6_Dialog2 = 10388         --任务6完成任务对白
local nTaskId_7_Dialog1 = 10389         --任务7接受任务对白
local nTaskId_7_Dialog2 = 10390         --任务7完成任务对白
--local nTaskId_8_Dialog1 = 10391         --任务8接受任务对白
--local nTaskId_8_Dialog2 = 10392         --任务8完成任务对白
local nTaskId_9_Dialog1 = 10393         --任务9接受任务对白
local nTaskId_9_Dialog2 = 10394         --任务9完成任务对白
local nTaskId_10_Dialog1 = 10395         --任务10接受任务对白
local nTaskId_10_Dialog2 = 10396         --任务10完成任务对白
--local nTaskId_11_Dialog1 = 10397         --任务11接受任务对白
--local nTaskId_11_Dialog2 = 10398         --任务11完成任务对白
--local nTaskId_12_Dialog1 = 10399         --任务12接受任务对白
--local nTaskId_12_Dialog2 = 10400         --任务12完成任务对白
local nTaskId_13_Dialog1 = 10401         --任务13接受任务对白
local nTaskId_13_Dialog2 = 10402         --任务13完成任务对白

--任务1完成任务对白
local nDialog_Task1 = 11971
--------------Monster----------------------
local nMonsterGroupId_1 = 900245                 --苍白獠牙塞特
local nMonsterGroupId_2 = 900246                 --怒鳍半鱼人
local nMonsterGroupId_3 = 900247                 --丛林开膛手
local nMonsterGroupId_4 = 900248                 --财宝哥布林
local nMonsterGroupId_5 = 900249                 --巨斧屠夫曼达
local nMonsterGroupId_6 = 900250                 --北方暴君纳森
local nMonsterGroupId_7 = 900251                 --先驱者1号
local nMonsterGroupId_9 = 900252                 --骑士长亚索
local nMonsterGroupId_10 = 900253               --食人酋长布鲁
local nMonsterGroupId_13 = 900254               --山岩领主蒙多

local nMonsterGroupGenId_1 = 2001793           --苍白獠牙塞特
local nMonsterGroupGenId_2 = 2001794           --怒鳍半鱼人
local nMonsterGroupGenId_3 = 2001795           --丛林开膛手
local nMonsterGroupGenId_4 = 2001796           --财宝哥布林
local nMonsterGroupGenId_5 = 2001797           --巨斧屠夫曼达
local nMonsterGroupGenId_6 = 2001798           --北方暴君纳森
local nMonsterGroupGenId_7 = 2001799           --先驱者1号
local nMonsterGroupGenId_9 = 2001800           --骑士长亚索
local nMonsterGroupGenId_10 = 2001801           --食人酋长布鲁
local nMonsterGroupGenId_13 = 2001802         --山岩领主蒙多

-------monsterid--------
local nMonster_1  = 9000135      --苍白獠牙塞特
local nMonster_2  = 9000136      --怒鳍半鱼人
local nMonster_3  = 9000137      --丛林开膛手
local nMonster_4  = 9000138      --财宝哥布林
local nMonster_5  = 9000139      --巨斧屠夫曼达
local nMonster_6  = 9000140      --北方暴君纳森
local nMonster_7  = 9000141      --先驱者1号
local nMonster_9  = 9000142      --骑士长亚索
local nMonster_10 = 9000143       --食人酋长布鲁
local nMonster_13 = 9000144     --山岩领主蒙多
--先驱者1号新增小怪
local nMoster_14 = 9000323        --哥布林随从

-------NPCid--------
local nNpc_TuoMaSi = 3005
local nNpc_BiDuoMao = 3043      --比多猫

-------NPCGroup-----------
--铁臂
local nSingleNpcGroup_1 = 20112
local nSingleNpcGroup_1_GenId = 2001655

--陷阱
local nTrap_1 = 30579
local nTrap_GenId_1 = 20010201
--------奖励id------------
local nTaskAward_1 = 2000065	                    --悬赏！苍白獠牙塞特
local nTaskAward_2 = 2000066                    --悬赏！怒鳍半鱼人
local nTaskAward_3 = 2000067                    --悬赏！丛林开膛手
local nTaskAward_4 = 2000068                    --悬赏！财宝哥布林
local nTaskAward_5 = 2000069                    --悬赏！巨斧屠夫曼达
local nTaskAward_6 = 2000070                    --悬赏！北方暴君纳森
local nTaskAward_7 = 2000071                     --悬赏！先驱者1号
--local nTaskAward_8 = 2000072                    --悬赏！暮夜法师普洛斯
local nTaskAward_9 = 2000072                    --悬赏！骑士长亚索
local nTaskAward_10 = 2000073                   --悬赏！食人酋长布鲁
--local nTaskAward_11 = 2000075                   --悬赏！鹿角男爵尤德
--local nTaskAward_12 = 2000076                   --悬赏！毒蝎领主维克
local nTaskAward_13 = 2000074                   --悬赏！山岩领主蒙多

------***************************逻辑***************************----
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}  --物件
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

------***************************任务***************************----
--悬赏！苍白獠牙塞特
rwtTask[nTaskId_1] = {}
rwtTask[nTaskId_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20742]
rwtTask[nTaskId_1]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nTaskId_1]["StartNpc"] = nNpc_TuoMaSi
rwtTask[nTaskId_1]["NextTaskId"] = nTaskId_1_Finish
rwtTask[nTaskId_1]["AcceptDialogId"] = nTaskId_1_Dialog1
rwtTask[nTaskId_1]["DialogId"] = nDialog_Task1
rwtTask[nTaskId_1]["ReqTrap1"] = nTrap_1

rwtTask[nTaskId_1]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_1
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[nTaskId_1]["DynaNpcGroupGen"][2] = {}
rwtTask[nTaskId_1]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_1
rwtTask[nTaskId_1]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nTaskId_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--rwtTask[nTaskId_1]["KillMonsterGroup1" ]= nMonsterGroupId_1

rwtTask[nTaskId_1]["StartAutoWay"] = {}
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_1
rwtTask[nTaskId_1]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_1


rwtTask[nTaskId_1_Finish] = {}
rwtTask[nTaskId_1_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20743]
rwtTask[nTaskId_1_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_1_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_1_Finish]["PreTaskId"] = nTaskId_1
rwtTask[nTaskId_1_Finish]["NextTaskId"] = nTaskId_2
rwtTask[nTaskId_1_Finish]["DialogId"] = nTaskId_1_Dialog2
rwtTask[nTaskId_1_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_1_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_1_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

rwtTask[nTaskId_1_Finish]["Awards"] = {}
rwtTask[nTaskId_1_Finish]["Awards"]["Events"] = {}
rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1] = {}
rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_1
rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nTaskId_1_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_1_Finish

--悬赏！深渊鱼王
rwtTask[nTaskId_2] = {}
rwtTask[nTaskId_2]["Title"] =tLuaText[LANGUAGE_CONFIG][20744]
rwtTask[nTaskId_2]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_2]["PreTaskId"] = nTaskId_1_Finish
rwtTask[nTaskId_2]["NextTaskId"] = nTaskId_2_Finish
rwtTask[nTaskId_2]["AcceptDialogId"] = nTaskId_2_Dialog1

rwtTask[nTaskId_2]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_2
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_2]["KillMonsterGroup1" ]= nMonsterGroupId_2

rwtTask[nTaskId_2]["StartAutoWay"] = {}
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_2
rwtTask[nTaskId_2]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_2

rwtTask[nTaskId_2_Finish] = {}
rwtTask[nTaskId_2_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20745]
rwtTask[nTaskId_2_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_2_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_2_Finish]["PreTaskId"] = nTaskId_2
rwtTask[nTaskId_2_Finish]["NextTaskId"] = nTaskId_3
rwtTask[nTaskId_2_Finish]["DialogId"] = nTaskId_2_Dialog2
rwtTask[nTaskId_2_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_2_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_2_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_2_Finish]["Awards"] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_2
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_2_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_2_Finish


--悬赏！毒刃蜂后
rwtTask[nTaskId_3] = {}
rwtTask[nTaskId_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20746]
rwtTask[nTaskId_3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_3]["PreTaskId"] = nTaskId_2_Finish
rwtTask[nTaskId_3]["NextTaskId"] = nTaskId_3_Finish
rwtTask[nTaskId_3]["AcceptDialogId"] = nTaskId_3_Dialog1

rwtTask[nTaskId_3]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_3
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_3]["KillMonsterGroup1" ]= nMonsterGroupId_3

rwtTask[nTaskId_3]["StartAutoWay"] = {}
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_3
rwtTask[nTaskId_3]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_3

rwtTask[nTaskId_3_Finish] = {}
rwtTask[nTaskId_3_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20747]
rwtTask[nTaskId_3_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_3_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_3_Finish]["PreTaskId"] = nTaskId_3
rwtTask[nTaskId_3_Finish]["NextTaskId"] = nTaskId_4
rwtTask[nTaskId_3_Finish]["DialogId"] = nTaskId_3_Dialog2
rwtTask[nTaskId_3_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_3_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_3_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_3_Finish]["Awards"] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_3
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_3_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_3_Finish


--悬赏！金钱哥布林
rwtTask[nTaskId_4] = {}
rwtTask[nTaskId_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20748]
rwtTask[nTaskId_4]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_4]["PreTaskId"] = nTaskId_3_Finish
rwtTask[nTaskId_4]["NextTaskId"] = nTaskId_4_Finish
rwtTask[nTaskId_4]["AcceptDialogId"] = nTaskId_4_Dialog1

rwtTask[nTaskId_4]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_4
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_4]["KillMonsterGroup1" ]= nMonsterGroupId_4

rwtTask[nTaskId_4]["StartAutoWay"] = {}
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_4
rwtTask[nTaskId_4]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_4

rwtTask[nTaskId_4_Finish] = {}
rwtTask[nTaskId_4_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20749]
rwtTask[nTaskId_4_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_4_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_4_Finish]["PreTaskId"] = nTaskId_4
rwtTask[nTaskId_4_Finish]["NextTaskId"] = nTaskId_5
rwtTask[nTaskId_4_Finish]["DialogId"] = nTaskId_4_Dialog2
rwtTask[nTaskId_4_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_4_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_4_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_4_Finish]["Awards"] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_4
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_4_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_4_Finish

--悬赏！巨斧酋长
rwtTask[nTaskId_5] = {}
rwtTask[nTaskId_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20750]
rwtTask[nTaskId_5]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_5]["PreTaskId"] = nTaskId_4_Finish
rwtTask[nTaskId_5]["NextTaskId"] = nTaskId_5_Finish
rwtTask[nTaskId_5]["AcceptDialogId"] = nTaskId_5_Dialog1

rwtTask[nTaskId_5]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_5
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_5]["KillMonsterGroup1" ]= nMonsterGroupId_5

rwtTask[nTaskId_5]["StartAutoWay"] = {}
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_5
rwtTask[nTaskId_5]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_5

rwtTask[nTaskId_5_Finish] = {}
rwtTask[nTaskId_5_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20751]
rwtTask[nTaskId_5_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_5_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_5_Finish]["PreTaskId"] = nTaskId_5
rwtTask[nTaskId_5_Finish]["NextTaskId"] = nTaskId_6
rwtTask[nTaskId_5_Finish]["DialogId"] = nTaskId_5_Dialog2
rwtTask[nTaskId_5_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_5_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_5_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_5_Finish]["Awards"] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_5
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_5_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_5_Finish

--悬赏！重装甲暴熊
rwtTask[nTaskId_6] = {}
rwtTask[nTaskId_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20752]
rwtTask[nTaskId_6]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_6]["PreTaskId"] = nTaskId_5_Finish
rwtTask[nTaskId_6]["NextTaskId"] = nTaskId_6_Finish
rwtTask[nTaskId_6]["AcceptDialogId"] = nTaskId_6_Dialog1


rwtTask[nTaskId_6]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_6
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_6]["KillMonsterGroup1" ]= nMonsterGroupId_6

rwtTask[nTaskId_6]["StartAutoWay"] = {}
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_6
rwtTask[nTaskId_6]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_6

rwtTask[nTaskId_6_Finish] = {}
rwtTask[nTaskId_6_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20753]
rwtTask[nTaskId_6_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_6_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_6_Finish]["PreTaskId"] = nTaskId_6
rwtTask[nTaskId_6_Finish]["NextTaskId"] = nTaskId_7
rwtTask[nTaskId_6_Finish]["DialogId"] = nTaskId_6_Dialog2
rwtTask[nTaskId_6_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_6_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_6_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_6_Finish]["Awards"] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_6
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_6_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_6_Finish

--悬赏！先驱者1号
rwtTask[nTaskId_7] = {}
rwtTask[nTaskId_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20754]
rwtTask[nTaskId_7]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_7]["PreTaskId"] = nTaskId_6_Finish
rwtTask[nTaskId_7]["NextTaskId"] = nTaskId_7_Finish
rwtTask[nTaskId_7]["AcceptDialogId"] = nTaskId_7_Dialog1

rwtTask[nTaskId_7]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_7
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_7]["KillMonsterGroup1" ]= nMonsterGroupId_7

rwtTask[nTaskId_7]["StartAutoWay"] = {}
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_7
rwtTask[nTaskId_7]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_7

rwtTask[nTaskId_7_Finish] = {}
rwtTask[nTaskId_7_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20755]
rwtTask[nTaskId_7_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_7_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_7_Finish]["PreTaskId"] = nTaskId_7
rwtTask[nTaskId_7_Finish]["NextTaskId"] = nTaskId_9
rwtTask[nTaskId_7_Finish]["DialogId"] = nTaskId_7_Dialog2
rwtTask[nTaskId_7_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_7_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_7_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_7_Finish]["Awards"] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_7
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_7_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_7_Finish

--悬赏！战魂之主
rwtTask[nTaskId_9] = {}
rwtTask[nTaskId_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20756]
rwtTask[nTaskId_9]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_9]["PreTaskId"] = nTaskId_7_Finish
rwtTask[nTaskId_9]["NextTaskId"] = nTaskId_9_Finish
rwtTask[nTaskId_9]["AcceptDialogId"] = nTaskId_9_Dialog1

rwtTask[nTaskId_9]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_9
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_9]["KillMonsterGroup1" ]= nMonsterGroupId_9

rwtTask[nTaskId_9]["StartAutoWay"] = {}
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_9
rwtTask[nTaskId_9]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_9

rwtTask[nTaskId_9_Finish] = {}
rwtTask[nTaskId_9_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20757]
rwtTask[nTaskId_9_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_9_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_9_Finish]["PreTaskId"] = nTaskId_9
rwtTask[nTaskId_9_Finish]["NextTaskId"] = nTaskId_10
rwtTask[nTaskId_9_Finish]["DialogId"] = nTaskId_9_Dialog2
rwtTask[nTaskId_9_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_9_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_9_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_9_Finish]["Awards"] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_9
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_9_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_9_Finish

--悬赏！食人魔·哈蒙
rwtTask[nTaskId_10] = {}
rwtTask[nTaskId_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20758]
rwtTask[nTaskId_10]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_10]["PreTaskId"] = nTaskId_9_Finish
rwtTask[nTaskId_10]["NextTaskId"] = nTaskId_10_Finish
rwtTask[nTaskId_10]["AcceptDialogId"] = nTaskId_10_Dialog1

rwtTask[nTaskId_10]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_10
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_10]["KillMonsterGroup1" ]= nMonsterGroupId_10

rwtTask[nTaskId_10]["StartAutoWay"] = {}
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_10
rwtTask[nTaskId_10]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_10

rwtTask[nTaskId_10_Finish] = {}
rwtTask[nTaskId_10_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20759]
rwtTask[nTaskId_10_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_10_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_10_Finish]["PreTaskId"] = nTaskId_10
rwtTask[nTaskId_10_Finish]["NextTaskId"] = nTaskId_13
rwtTask[nTaskId_10_Finish]["DialogId"] = nTaskId_10_Dialog2
rwtTask[nTaskId_10_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_10_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_10_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_10_Finish]["Awards"] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_10
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_10_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_10_Finish

--悬赏！山岩巨兽·塞恩
rwtTask[nTaskId_13] = {}
rwtTask[nTaskId_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20760]
rwtTask[nTaskId_13]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTaskId_13]["PreTaskId"] = nTaskId_10_Finish
rwtTask[nTaskId_13]["NextTaskId"] = nTaskId_13_Finish
rwtTask[nTaskId_13]["AcceptDialogId"] = nTaskId_13_Dialog1

rwtTask[nTaskId_13]["DynaNpcGroupGen"] = {}
rwtTask[nTaskId_13]["DynaNpcGroupGen"][1] = {}
rwtTask[nTaskId_13]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroupGenId_13
rwtTask[nTaskId_13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTaskId_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success

rwtTask[nTaskId_13]["KillMonsterGroup1" ]= nMonsterGroupId_13

rwtTask[nTaskId_13]["StartAutoWay"] = {}
rwtTask[nTaskId_13]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nTaskId_13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTaskId_13]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_13
rwtTask[nTaskId_13]["StartAutoWay"]["FindWayGenId"] = nMonsterGroupGenId_13

rwtTask[nTaskId_13_Finish] = {}
rwtTask[nTaskId_13_Finish]["Title"] = tLuaText[LANGUAGE_CONFIG][20761]
rwtTask[nTaskId_13_Finish]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTaskId_13_Finish]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskId_13_Finish]["PreTaskId"] = nTaskId_13
rwtTask[nTaskId_13_Finish]["DialogId"] = nTaskId_13_Dialog2
rwtTask[nTaskId_13_Finish]["TaskNpc"] = nNpc_TuoMaSi

rwtTask[nTaskId_13_Finish]["StartAutoWay"] = {}
rwtTask[nTaskId_13_Finish]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTaskId_13_Finish]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTaskId_13_Finish]["StartAutoWay"]["FindWayGroupId"] = nSingleNpcGroup_1
rwtTask[nTaskId_13_Finish]["StartAutoWay"]["FindWayGenId"] = nSingleNpcGroup_1_GenId

-- rwtTask[nTaskId_13_Finish]["Awards"] = {}
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"] = {}
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"][1] = {}
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nTaskAward_13
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[nTaskId_13_Finish]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTaskId_13_Finish