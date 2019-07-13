--region [MainTask]MaoXianZhe.lua
--Date
--此文件由[BabeLua]插件自动生成
--冒险者营地主线



--endregion

----***************************数据定义***************************----
----------任务ID------

--前一个镇任务
local nPreTaskId = 10222
--后一个镇任务
local nNextTaskId = 10230

--任务table
local tMaoXianZheTaskId = {}

--冒险者的灾难
tMaoXianZheTaskId[1] = 10271         --前往三月边陲
tMaoXianZheTaskId[2] = 10272         --救下冒险者
tMaoXianZheTaskId[3] = 10416             --收集猎物
tMaoXianZheTaskId[4] = 10423             --交给受伤的冒险者
tMaoXianZheTaskId[5] = 10273         --护送冒险者回营地

--日行一善
tMaoXianZheTaskId[6] = 10274         --打听消息
tMaoXianZheTaskId[7] = 10275         --继续打听消息
tMaoXianZheTaskId[8] = 10276         --击败戈壁火狐
tMaoXianZheTaskId[9] = 10278         --把芜拉草给布雷登

--我选择相信
tMaoXianZheTaskId[10] = 10279         --找首领了解情况
tMaoXianZheTaskId[11] = 10280          --找到女巫古堡

--细节决定成败
tMaoXianZheTaskId[12] = 10417          --采集狐薄荷
tMaoXianZheTaskId[13] = 10418          --引开戈壁火狐
tMaoXianZheTaskId[14] = 10419          --采集狐薄荷
tMaoXianZheTaskId[15] = 10420          --引开戈壁火狐
tMaoXianZheTaskId[16] = 10281         --和小女巫周旋

--女巫古堡
tMaoXianZheTaskId[17] = 10282         --通关女巫古堡

--和解，当然是……
tMaoXianZheTaskId[18] = 10284         --找首领埃尼奥谈判

--背后的真凶
tMaoXianZheTaskId[19] = 10285         --找首领埃尼奥谈判
tMaoXianZheTaskId[20] = 10286         --击败假费米

--魔能结晶
tMaoXianZheTaskId[21] = 10287         --了解假费米的身份
tMaoXianZheTaskId[22] = 10288         --回到营地休息
tMaoXianZheTaskId[23] = 10289         --等待魔能结晶制作12小时

--温丽的梦
tMaoXianZheTaskId[24] = 10290         --温丽的梦
tMaoXianZheTaskId[25] = 10422           --去裂谷边
--出发！三月边陲
tMaoXianZheTaskId[26] = 10291         --乘坐飞艇

----------对白ID------
local tMaoXianZheDialogId = {}

tMaoXianZheDialogId[1] = 10542   --前往三月边陲
tMaoXianZheDialogId[2] = 10543   --救下冒险者
tMaoXianZheDialogId[4] = 10696       --交给受伤的冒险者
tMaoXianZheDialogId[5] = 10544   --护送冒险者回营地

tMaoXianZheDialogId[6] = 10545   --打听消息
tMaoXianZheDialogId[7] = 10546   --继续打听消息
tMaoXianZheDialogId[8] = 10547   --击败戈壁火狐
tMaoXianZheDialogId[9] = 10549   --把岚幽草给布雷登

tMaoXianZheDialogId[10] = 10550   --费米的坚持
tMaoXianZheDialogId[11] = 10694   --找到女巫古堡

tMaoXianZheDialogId[12] = 10683   --采集狐薄荷对白（第一次）
tMaoXianZheDialogId[13] = 10684   --引开戈壁火狐（第一次）
tMaoXianZheDialogId[15] = 10686   --引开戈壁火狐（第二次）
tMaoXianZheDialogId[16] = 10551   --和小女巫周旋

tMaoXianZheDialogId[18] = 10552   --找首领埃尼奥谈判
tMaoXianZheDialogId[19] = 10553   --找首领埃尼奥谈判
tMaoXianZheDialogId[20] = 10554   --击败假费米
tMaoXianZheDialogId[21] = 10555   --了解假费米的身份
tMaoXianZheDialogId[22] = 10556   --回到营地休息
tMaoXianZheDialogId[24] = 10557   --温丽的预言梦

tMaoXianZheDialogId[25] = 10688   --去裂谷边
tMaoXianZheDialogId[26] = 10558   --告别众人

local nDialog_LockLev = 11448       --未达到等级对白
local nDialog_UnLockLev = 11449     --达成等级对白
--------------奖励id--------------
local tMaoXianZheAwardId = {}

tMaoXianZheAwardId[5] = 3003120        --冒险者的灾难
tMaoXianZheAwardId[9] = 3003121        --日行一善
tMaoXianZheAwardId[11] = 3003122        --我选择相信
tMaoXianZheAwardId[15] = 3003123         --细节决定成败(新增)
tMaoXianZheAwardId[16] = 3003124      --小女巫的退让
tMaoXianZheAwardId[17] = 3003125      --女巫古堡
tMaoXianZheAwardId[18] = 3003126      --和解，当然是……
tMaoXianZheAwardId[20] = 3003127      --背后的真凶
tMaoXianZheAwardId[23] = 3003128     --为了爱与和平
tMaoXianZheAwardId[25] = 3003129       --温丽的梦
tMaoXianZheAwardId[26] = 2000116      --出发！三月边陲

-----------------------NPC群组ID-----------------
--陷阱
local tMaoXianZheTrap = {}
local tMaoXianZheTrap_GenId = {}

tMaoXianZheTrap[1] = 30213           
tMaoXianZheTrap_GenId[1] = 20030035
tMaoXianZheTrap[2] = 30214           
tMaoXianZheTrap_GenId[2] = 20030036
tMaoXianZheTrap[3] = 30215           
tMaoXianZheTrap_GenId[3] = 20030037
tMaoXianZheTrap[4] = 30216           
tMaoXianZheTrap_GenId[4] = 20030038
tMaoXianZheTrap[5] = 30217           
tMaoXianZheTrap_GenId[5] = 20030039
tMaoXianZheTrap[6] = 30218          
tMaoXianZheTrap_GenId[6] = 20030040
tMaoXianZheTrap[7] = 30219           
tMaoXianZheTrap_GenId[7] = 20030041
tMaoXianZheTrap[8] = 30312           
tMaoXianZheTrap_GenId[8] = 20030225
tMaoXianZheTrap[9] = 30318           --回到营地休息
tMaoXianZheTrap_GenId[9] = 20030261


--采集物
local tMaoXianZheCollect = {}
local tMaoXianZheCollect_GenId = {}

tMaoXianZheCollect[1] = 60083        --芜拉草
tMaoXianZheCollect_GenId[1] = 20030042

tMaoXianZheCollect[2] = 60107            --猎物*
tMaoXianZheCollect_GenId[2] = {20030213,20030262,20030263}

tMaoXianZheCollect[3] = 60108            --狐薄荷(第一个)*
tMaoXianZheCollect_GenId[3] = 20030214

tMaoXianZheCollect[4] = 60109            --狐薄荷(第二个)*
tMaoXianZheCollect_GenId[4] = 20030215



--NPC
local tMaoXianZheSingleNpc = {}
local tMaoXianZheSingleNpc_GenId = {}

tMaoXianZheSingleNpc[1] = 20181            --阿布纳
tMaoXianZheSingleNpc_GenId[1] = 20030043            

--tMaoXianZheSingleNpc[2] = 20182          --迈尔斯
--tMaoXianZheSingleNpc_GenId[2] = 20030044          

--tMaoXianZheSingleNpc[3] = 20183        --布雷登
--tMaoXianZheSingleNpc_GenId[3] = 20030045     

--tMaoXianZheSingleNpc[4] = 20184           --首领埃尼奥
--tMaoXianZheSingleNpc_GenId[4] = 20030046   
       
tMaoXianZheSingleNpc[5] = 20202           --弥尔（古堡外）
tMaoXianZheSingleNpc_GenId[5] = 20030132  

tMaoXianZheSingleNpc[6] = 20203           --女巫菲梅
tMaoXianZheSingleNpc_GenId[6] = 20030133     

tMaoXianZheSingleNpc[7] = 20315           --火狐哥哥（火狐科斯）
tMaoXianZheSingleNpc_GenId[7] = 20030216     
        
tMaoXianZheSingleNpc[8] = 20316           --火狐弟弟（火狐洛里）
tMaoXianZheSingleNpc_GenId[8] = 20030217        
  
local nGenID_Npcgroup_TeluodeInWanggong = 2001987

tMaoXianZheSingleNpc[9] = 20432           --魅魔
tMaoXianZheSingleNpc_GenId[9] = 20030411        

--建筑
local tBuild = {}
local tBuildGenId = {}
--营地帐篷（迈尔斯）
tBuild.Build1 = 10029
tBuildGenId.Build1 = 20030582 
--营地帐篷（布雷登）
tBuild.Build2 = 10030
tBuildGenId.Build2 = 20030583
--埃尼奥的帐篷
tBuild.Build3 = 10031
tBuildGenId.Build3 = 20030584


-----------------------NPCID-----------------
local tMaoXianZheNpc = {}

tMaoXianZheNpc[1] = 3139            --阿布纳
tMaoXianZheNpc[2] = 3140          --迈尔斯
tMaoXianZheNpc[3] = 3141        --布雷登
tMaoXianZheNpc[4] = 3142           --首领埃尼奥
tMaoXianZheNpc[5] = 3118           --弥尔（古堡外）
tMaoXianZheNpc[6] = 3119           --女巫菲梅
tMaoXianZheNpc[7] = 3262           --戈壁火狐哥哥*
tMaoXianZheNpc[8] = 3263           --戈壁火狐弟弟*

tMaoXianZheNpc[9] = 3159           --费米
tMaoXianZheNpc[10] = 3172         --魅魔修狄斯
tMaoXianZheNpc[11] = 3173           --冒险者拉尔夫

--------------------MonsterGroupId---------------
local tMaoXianZheMonsterGroup = {}
local tMaoXianZheMonsterGroup_GenId = {}

tMaoXianZheMonsterGroup[1] = 900194       --戈壁火狐
tMaoXianZheMonsterGroup_GenId[1] = 20030047    
tMaoXianZheMonsterGroup[2] = 900195       --魔化毒角兽
tMaoXianZheMonsterGroup_GenId[2] = 20030048    
tMaoXianZheMonsterGroup[3] = 900198       --魅魔
tMaoXianZheMonsterGroup_GenId[3] = 20030134    

------------------monsterid--------------
local tMaoXianZheMonster = {}

tMaoXianZheMonster[1] = 9000078       --戈壁火狐
tMaoXianZheMonster[2] = 9000079       --魔化毒角兽
tMaoXianZheMonster[3] = 9000085       --魅魔

--------------------------自动寻路点----------------
local sPos_Task3 = "7.50,-0.03,-40.08"   --护送阿布纳任务完成点
local sPos_Task10 = "-35.30,-0.02,-14.51"   --护送费米任务完成点
local sPos_Task_Add7 = "5.79,0.05,-49.27"               --裂谷边
local sPos_Task21 = "-1.66,0.04,-45.94"               --飞艇旁

local sPos_NvWuGuBao = "-39.52,-0.01,-14.44"        --副本坐标

local sPos_Task22_End = "-68.55,0.10,-23.21"
local nRotY_Task22__End = 280.69

-----------------------------------其他数据-----------
--副本id，女巫古堡
local nCopyMap_NvWu = 3024   
--切屏点id，冒险者营地-->三月边陲
local nChangeMapPoint_MaoXianZhe = 54004
local nChangeMapPoint_MaoXianZhe_GenId = 20030001

--飞跃峡谷动画id
local nCg_1 = 3401
------***************************逻辑***************************----
--女巫古堡副本
local nGenIdCopyMapPlot = 3024015       --剧情
local nGenIdCopyMapNormal = 3043009     --普通

-----------------------------------NPC组-----------
--陷阱
rwtNpcGroup[tMaoXianZheTrap[1]] = rwtNpcGroup[tMaoXianZheTrap[1]] or {}
rwtNpcGroup[tMaoXianZheTrap[1]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[2]] = rwtNpcGroup[tMaoXianZheTrap[2]] or {}
rwtNpcGroup[tMaoXianZheTrap[2]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[3]] = rwtNpcGroup[tMaoXianZheTrap[3]] or {}
rwtNpcGroup[tMaoXianZheTrap[3]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[4]] = rwtNpcGroup[tMaoXianZheTrap[4]] or {}
rwtNpcGroup[tMaoXianZheTrap[4]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[5]] = rwtNpcGroup[tMaoXianZheTrap[5]] or {}
rwtNpcGroup[tMaoXianZheTrap[5]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[6]] = rwtNpcGroup[tMaoXianZheTrap[6]] or {}
rwtNpcGroup[tMaoXianZheTrap[6]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[7]] = rwtNpcGroup[tMaoXianZheTrap[7]] or {}
rwtNpcGroup[tMaoXianZheTrap[7]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[8]] = rwtNpcGroup[tMaoXianZheTrap[8]] or {}
rwtNpcGroup[tMaoXianZheTrap[8]]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tMaoXianZheTrap[9]] = rwtNpcGroup[tMaoXianZheTrap[9]] or {}
rwtNpcGroup[tMaoXianZheTrap[9]]["Type"] = CONST_NPCGROUP_TYPE.Trap

--采集物
rwtNpcGroup[tMaoXianZheCollect[1]] = rwtNpcGroup[tMaoXianZheCollect[1]] or {}     --芜拉草
rwtNpcGroup[tMaoXianZheCollect[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[tMaoXianZheCollect[2]] = rwtNpcGroup[tMaoXianZheCollect[2]] or {}     --猎物
rwtNpcGroup[tMaoXianZheCollect[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
--rwtNpcGroup[tMaoXianZheCollect[2]]["Func"] = function()
--   --获得兽皮后提示
--   rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10012])
--end

rwtNpcGroup[tMaoXianZheCollect[3]] = rwtNpcGroup[tMaoXianZheCollect[3]] or {}     --狐薄荷
rwtNpcGroup[tMaoXianZheCollect[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tMaoXianZheCollect[3]]["DialogId"] = tMaoXianZheDialogId[12]

rwtNpcGroup[tMaoXianZheCollect[4]] = rwtNpcGroup[tMaoXianZheCollect[4]] or {}     --狐薄荷
rwtNpcGroup[tMaoXianZheCollect[4]]["Type"] = CONST_NPCGROUP_TYPE.Collect

--NPC
rwtNpcGroup[tMaoXianZheSingleNpc[1]] = {}     --阿布纳
rwtNpcGroup[tMaoXianZheSingleNpc[1]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMaoXianZheSingleNpc[1]]["NpcId"]= tMaoXianZheNpc[1]

--rwtNpcGroup[tMaoXianZheSingleNpc[2]] = {}     --迈尔斯
--rwtNpcGroup[tMaoXianZheSingleNpc[2]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tMaoXianZheSingleNpc[2]]["NpcId"]= tMaoXianZheNpc[2]

--rwtNpcGroup[tMaoXianZheSingleNpc[3]] = {}     --布雷登
--rwtNpcGroup[tMaoXianZheSingleNpc[3]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tMaoXianZheSingleNpc[3]]["NpcId"]= tMaoXianZheNpc[3]

--rwtNpcGroup[tMaoXianZheSingleNpc[4]] = {}     --首领埃尼奥
--rwtNpcGroup[tMaoXianZheSingleNpc[4]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tMaoXianZheSingleNpc[4]]["NpcId"]= tMaoXianZheNpc[4]

rwtNpcGroup[tMaoXianZheSingleNpc[6]] = {}     --女巫菲梅
rwtNpcGroup[tMaoXianZheSingleNpc[6]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMaoXianZheSingleNpc[6]]["NpcId"]= tMaoXianZheNpc[6]

rwtNpcGroup[tMaoXianZheSingleNpc[5]] = {}     --弥尔（古堡外）
rwtNpcGroup[tMaoXianZheSingleNpc[5]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMaoXianZheSingleNpc[5]]["NpcId"]= tMaoXianZheNpc[5]

rwtNpcGroup[tMaoXianZheSingleNpc[7]] = {}     --火狐哥哥
rwtNpcGroup[tMaoXianZheSingleNpc[7]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMaoXianZheSingleNpc[7]]["NpcId"]= tMaoXianZheNpc[7]

rwtNpcGroup[tMaoXianZheSingleNpc[8]] = {}     --火狐弟弟
rwtNpcGroup[tMaoXianZheSingleNpc[8]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMaoXianZheSingleNpc[8]]["NpcId"]= tMaoXianZheNpc[8]

rwtNpcGroup[tMaoXianZheSingleNpc[9]] = {}     --魅魔
rwtNpcGroup[tMaoXianZheSingleNpc[9]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tMaoXianZheSingleNpc[9]]["NpcId"]= tMaoXianZheNpc[10]

--------建筑----------
--营地帐篷（迈尔斯）
rwtNpcGroup[tBuild.Build1] = rwtNpcGroup[tBuild.Build1] or {}
rwtNpcGroup[tBuild.Build1]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tBuild.Build1]["NpcId1"]= tMaoXianZheNpc[2]
--营地帐篷（布雷登）
rwtNpcGroup[tBuild.Build2] = rwtNpcGroup[tBuild.Build2] or {}
rwtNpcGroup[tBuild.Build2]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tBuild.Build2]["NpcId1"]= tMaoXianZheNpc[3]
--埃尼奥的帐篷
rwtNpcGroup[tBuild.Build3] = rwtNpcGroup[tBuild.Build3] or {}
rwtNpcGroup[tBuild.Build3]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tBuild.Build3]["NpcId1"]= tMaoXianZheNpc[4]


--------NPC----------
--阿布纳
rwtNpc[tMaoXianZheNpc[1]] = rwtNpc[tMaoXianZheNpc[1]] or {}
rwtNpc[tMaoXianZheNpc[1]]["DialogId"] = {1438,1439,1440}

--迈尔斯
rwtNpc[tMaoXianZheNpc[2]] = rwtNpc[tMaoXianZheNpc[2]] or {}
rwtNpc[tMaoXianZheNpc[2]]["DialogId"] = {1441,1442,1443}

--布雷登
rwtNpc[tMaoXianZheNpc[3]] = rwtNpc[tMaoXianZheNpc[3]] or {}
rwtNpc[tMaoXianZheNpc[3]]["DialogId"] = {1444,1445,1446}

--首领埃尼奥
rwtNpc[tMaoXianZheNpc[4]] = rwtNpc[tMaoXianZheNpc[4]] or {}
rwtNpc[tMaoXianZheNpc[4]]["DialogId"] = {1447,1448,1449}

--弥尔(古堡外)
rwtNpc[tMaoXianZheNpc[5]] = rwtNpc[tMaoXianZheNpc[5]] or {}
rwtNpc[tMaoXianZheNpc[5]]["DialogId"] = {1453,1454,1455}

--女巫菲梅
rwtNpc[tMaoXianZheNpc[6]] = rwtNpc[tMaoXianZheNpc[6]] or {}
rwtNpc[tMaoXianZheNpc[6]]["DialogId"] = {1456,1457,1458}

--魅魔修狄斯
rwtNpc[tMaoXianZheNpc[10]] = rwtNpc[tMaoXianZheNpc[10]] or {}

--火狐科斯(火狐哥哥)
rwtNpc[tMaoXianZheNpc[7]] = rwtNpc[tMaoXianZheNpc[7]] or {}
rwtNpc[tMaoXianZheNpc[7]]["DialogId"] = {1512,1513,1514}

--火狐洛里(火狐弟弟)
rwtNpc[tMaoXianZheNpc[8]] = rwtNpc[tMaoXianZheNpc[8]] or {}
rwtNpc[tMaoXianZheNpc[8]]["DialogId"] = {1459,1460,1461}

--------------怪物-----------------
--击败戈壁火狐后获得芜拉草
rwtMonsterGroup[tMaoXianZheMonsterGroup[1]] = rwtMonsterGroup[tMaoXianZheMonsterGroup[1]] or {}
rwtMonsterGroup[tMaoXianZheMonsterGroup[1]]["BattleWin"] = function()
   rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10013])
end

------***************************任务***************************----
-----------------------------------------冒险者的灾难---------------------------------
--前往三月边陲
rwtTask[tMaoXianZheTaskId[1]] = {}
rwtTask[tMaoXianZheTaskId[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20286]
rwtTask[tMaoXianZheTaskId[1]]["PreTaskId"] = nPreTaskId
rwtTask[tMaoXianZheTaskId[1]]["NextTaskId"] = tMaoXianZheTaskId[2]
rwtTask[tMaoXianZheTaskId[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMaoXianZheTaskId[1]]["DialogId"] = tMaoXianZheDialogId[1]
rwtTask[tMaoXianZheTaskId[1]]["ReqTrap1"] = tMaoXianZheTrap[1]
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[1]
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_TeluodeInWanggong
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tMaoXianZheTaskId[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[1]]["OpenTransfer"] = CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI
rwtTask[tMaoXianZheTaskId[1]]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10031]
rwtTask[tMaoXianZheTaskId[1]]["WorldMapLock"] = CONST_MAPUNLOCK.GUJIANIER--接到任务解锁古加尼尔世界地图

rwtTask[tMaoXianZheTaskId[1]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[1]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[1]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[1]
rwtTask[tMaoXianZheTaskId[1]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[1]

--救下冒险者
rwtTask[tMaoXianZheTaskId[2]] = {}
rwtTask[tMaoXianZheTaskId[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20287]
rwtTask[tMaoXianZheTaskId[2]]["PreTaskId"] = tMaoXianZheTaskId[1]
rwtTask[tMaoXianZheTaskId[2]]["NextTaskId"] = tMaoXianZheTaskId[3]
rwtTask[tMaoXianZheTaskId[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[2]]["DialogId"] = tMaoXianZheDialogId[2]
rwtTask[tMaoXianZheTaskId[2]]["TaskNpc"] = tMaoXianZheNpc[1]

rwtTask[tMaoXianZheTaskId[2]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[2]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[2]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheSingleNpc[1]
rwtTask[tMaoXianZheTaskId[2]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheSingleNpc_GenId[1]

--收集猎物
rwtTask[tMaoXianZheTaskId[3]] = {}
rwtTask[tMaoXianZheTaskId[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20288]
rwtTask[tMaoXianZheTaskId[3]]["PreTaskId"] = tMaoXianZheTaskId[2]
rwtTask[tMaoXianZheTaskId[3]]["NextTaskId"] = tMaoXianZheTaskId[4]
rwtTask[tMaoXianZheTaskId[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheTaskId[3]]["ReqCollectId1"] = tMaoXianZheCollect[2]
rwtTask[tMaoXianZheTaskId[3]]["ReqCollectCount1"] = 3
rwtTask[tMaoXianZheTaskId[3]]["ReqCollectOnceNum"] = 1
rwtTask[tMaoXianZheTaskId[3]]["CollectEndMsgType"] = 2
rwtTask[tMaoXianZheTaskId[3]]["CollectEndMsgText"] = tLuaText[LANGUAGE_CONFIG][10012]
rwtTask[tMaoXianZheTaskId[3]]["CollectSuccessMsgType"] = 2
rwtTask[tMaoXianZheTaskId[3]]["CollectSuccessMsgText"] = tLuaText[LANGUAGE_CONFIG][10014]
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheCollect_GenId[2][1]
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheCollect_GenId[2][2]
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][3]["GenId"] = tMaoXianZheCollect_GenId[2][3]
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[3]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--rwtTask[tMaoXianZheTaskId[3]]["AwardFunc"] = function()
--    --任务达成完成后提示
--    rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10014])
--end

rwtTask[tMaoXianZheTaskId[3]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[3]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[3]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheCollect[2]
rwtTask[tMaoXianZheTaskId[3]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheCollect_GenId[2][1]

--交给受伤的冒险者
rwtTask[tMaoXianZheTaskId[4]] = {}
rwtTask[tMaoXianZheTaskId[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20289]
rwtTask[tMaoXianZheTaskId[4]]["PreTaskId"] = tMaoXianZheTaskId[3]
rwtTask[tMaoXianZheTaskId[4]]["NextTaskId"] = tMaoXianZheTaskId[5]
rwtTask[tMaoXianZheTaskId[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[4]]["DialogId"] = tMaoXianZheDialogId[4]
rwtTask[tMaoXianZheTaskId[4]]["TaskNpc"] = tMaoXianZheNpc[1]

rwtTask[tMaoXianZheTaskId[4]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[4]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[4]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheSingleNpc[1]
rwtTask[tMaoXianZheTaskId[4]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheSingleNpc_GenId[1]
--护送冒险者回营地
rwtTask[tMaoXianZheTaskId[5]] = {}
rwtTask[tMaoXianZheTaskId[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20290]
rwtTask[tMaoXianZheTaskId[5]]["PreTaskId"] = tMaoXianZheTaskId[4]
rwtTask[tMaoXianZheTaskId[5]]["NextTaskId"] = tMaoXianZheTaskId[6]
rwtTask[tMaoXianZheTaskId[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tMaoXianZheTaskId[5]]["DialogId"] = tMaoXianZheDialogId[5]
rwtTask[tMaoXianZheTaskId[5]]["ReqTrap1"] = tMaoXianZheTrap[2]
rwtTask[tMaoXianZheTaskId[5]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[5]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[2]
rwtTask[tMaoXianZheTaskId[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[5]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[5]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[5]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[2]
rwtTask[tMaoXianZheTaskId[5]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[2]

        
--rwtTask[tMaoXianZheTaskId[5]]["AwardId"] = tMaoXianZheAwardId[5]


rwtTask[tMaoXianZheTaskId[5]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[5]
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[5]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[5]



-----------------------------------------日行一善---------------------------------
--打听消息
rwtTask[tMaoXianZheTaskId[6]] = {}
rwtTask[tMaoXianZheTaskId[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20291]
rwtTask[tMaoXianZheTaskId[6]]["PreTaskId"] = tMaoXianZheTaskId[5]
rwtTask[tMaoXianZheTaskId[6]]["NextTaskId"] = tMaoXianZheTaskId[7]
rwtTask[tMaoXianZheTaskId[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[6]]["DialogId"] = tMaoXianZheDialogId[6]
rwtTask[tMaoXianZheTaskId[6]]["TaskNpc"] = tMaoXianZheNpc[2]

rwtTask[tMaoXianZheTaskId[6]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[6]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[6]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[6]]["StartAutoWay"]["FindWayGroupId"] = tBuild.Build1
rwtTask[tMaoXianZheTaskId[6]]["StartAutoWay"]["FindWayGenId"] = tBuildGenId.Build1


--继续打听消息
rwtTask[tMaoXianZheTaskId[7]] = {}
rwtTask[tMaoXianZheTaskId[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20292]
rwtTask[tMaoXianZheTaskId[7]]["PreTaskId"] = tMaoXianZheTaskId[6]
rwtTask[tMaoXianZheTaskId[7]]["NextTaskId"] = tMaoXianZheTaskId[8]
rwtTask[tMaoXianZheTaskId[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[7]]["DialogId"] = tMaoXianZheDialogId[7]
rwtTask[tMaoXianZheTaskId[7]]["TaskNpc"] = tMaoXianZheNpc[3]

rwtTask[tMaoXianZheTaskId[7]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[7]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[7]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[7]]["StartAutoWay"]["FindWayGroupId"] = tBuild.Build2
rwtTask[tMaoXianZheTaskId[7]]["StartAutoWay"]["FindWayGenId"] = tBuildGenId.Build3

--击败戈壁火狐
rwtTask[tMaoXianZheTaskId[8]] = {}
rwtTask[tMaoXianZheTaskId[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20293]
rwtTask[tMaoXianZheTaskId[8]]["PreTaskId"] = tMaoXianZheTaskId[7]
rwtTask[tMaoXianZheTaskId[8]]["NextTaskId"] = tMaoXianZheTaskId[9]
rwtTask[tMaoXianZheTaskId[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheTaskId[8]]["DialogId"] = tMaoXianZheDialogId[8]
rwtTask[tMaoXianZheTaskId[8]]["ReqTrap1"] = tMaoXianZheTrap[3]
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[3]
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheMonsterGroup_GenId[1]
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[8]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[8]]["MonsterGroupGenId"] = tMaoXianZheMonsterGroup_GenId[1]
--rwtTask[tMaoXianZheTaskId[8]]["IsClickComplete"] = 1

rwtTask[tMaoXianZheTaskId[8]]["KillMonsterGroup1" ]= tMaoXianZheMonsterGroup[1]

rwtTask[tMaoXianZheTaskId[8]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[8]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMaoXianZheTaskId[8]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[8]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheMonsterGroup[1]
rwtTask[tMaoXianZheTaskId[8]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheMonsterGroup_GenId[1]

--把芜拉草给布雷登
rwtTask[tMaoXianZheTaskId[9]] = {}
rwtTask[tMaoXianZheTaskId[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20294]
rwtTask[tMaoXianZheTaskId[9]]["PreTaskId"] = tMaoXianZheTaskId[8]
rwtTask[tMaoXianZheTaskId[9]]["NextTaskId"] = tMaoXianZheTaskId[10]
rwtTask[tMaoXianZheTaskId[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[9]]["DialogId"] = tMaoXianZheDialogId[9]
rwtTask[tMaoXianZheTaskId[9]]["TaskNpc"] = tMaoXianZheNpc[3]

rwtTask[tMaoXianZheTaskId[9]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[9]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[9]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[9]]["StartAutoWay"]["FindWayGroupId"] = tBuild.Build2
rwtTask[tMaoXianZheTaskId[9]]["StartAutoWay"]["FindWayGenId"] = tBuildGenId.Build3

        
--rwtTask[tMaoXianZheTaskId[9]]["AwardId"] = tMaoXianZheAwardId[9]

rwtTask[tMaoXianZheTaskId[9]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[9]
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[9]
-----------------------------------------我选择相信---------------------------------
--找首领了解情况
rwtTask[tMaoXianZheTaskId[10]] = {}
rwtTask[tMaoXianZheTaskId[10]]["Title"] = tLuaText[LANGUAGE_CONFIG][20295]
rwtTask[tMaoXianZheTaskId[10]]["PreTaskId"] = tMaoXianZheTaskId[9]
rwtTask[tMaoXianZheTaskId[10]]["NextTaskId"] = tMaoXianZheTaskId[11]
rwtTask[tMaoXianZheTaskId[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[10]]["DialogId"] = tMaoXianZheDialogId[10]
rwtTask[tMaoXianZheTaskId[10]]["TaskNpc"] = tMaoXianZheNpc[4]

rwtTask[tMaoXianZheTaskId[10]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[10]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[10]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[10]]["StartAutoWay"]["FindWayGroupId"] = tBuild.Build3
rwtTask[tMaoXianZheTaskId[10]]["StartAutoWay"]["FindWayGenId"] = tBuildGenId.Build3

--找到女巫古堡
rwtTask[tMaoXianZheTaskId[11]] = {}
rwtTask[tMaoXianZheTaskId[11]]["Title"] = tLuaText[LANGUAGE_CONFIG][20296]
rwtTask[tMaoXianZheTaskId[11]]["PreTaskId"] = tMaoXianZheTaskId[10]
rwtTask[tMaoXianZheTaskId[11]]["NextTaskId"] = tMaoXianZheTaskId[12]
rwtTask[tMaoXianZheTaskId[11]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tMaoXianZheTaskId[11]]["ReqTrap1"] = tMaoXianZheTrap[4]
rwtTask[tMaoXianZheTaskId[11]]["DialogId"] = tMaoXianZheDialogId[11]
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[4]
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheSingleNpc_GenId[7]
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][3]["GenId"] = tMaoXianZheSingleNpc_GenId[8]
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[11]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMaoXianZheTaskId[11]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[11]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[11]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[11]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[4]
rwtTask[tMaoXianZheTaskId[11]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[4]


--rwtTask[tMaoXianZheTaskId[11]]["AwardId"] = tMaoXianZheAwardId[11]

rwtTask[tMaoXianZheTaskId[11]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[11]
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[11]
-----------------------------------------细节决定成败---------------------------------
--采集狐薄荷
rwtTask[tMaoXianZheTaskId[12]] = {}
rwtTask[tMaoXianZheTaskId[12]]["Title"] = tLuaText[LANGUAGE_CONFIG][20297]
rwtTask[tMaoXianZheTaskId[12]]["PreTaskId"] = tMaoXianZheTaskId[11]
rwtTask[tMaoXianZheTaskId[12]]["NextTaskId"] = tMaoXianZheTaskId[13]
rwtTask[tMaoXianZheTaskId[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheCollect_GenId[3]
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheSingleNpc_GenId[7]
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][3]["GenId"] = tMaoXianZheSingleNpc_GenId[8]
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[12]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[12]]["ReqCollectId1"] = tMaoXianZheCollect[3]
rwtTask[tMaoXianZheTaskId[12]]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheTaskId[12]]["ReqCollectOnceNum"] = 1

rwtTask[tMaoXianZheTaskId[12]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[12]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[12]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[12]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheCollect[3]
rwtTask[tMaoXianZheTaskId[12]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheCollect_GenId[3]

--引开戈壁火狐
rwtTask[tMaoXianZheTaskId[13]] = {}
rwtTask[tMaoXianZheTaskId[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][20298]
rwtTask[tMaoXianZheTaskId[13]]["PreTaskId"] = tMaoXianZheTaskId[12]
rwtTask[tMaoXianZheTaskId[13]]["NextTaskId"] = tMaoXianZheTaskId[14]
rwtTask[tMaoXianZheTaskId[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[13]]["DialogId"] = tMaoXianZheDialogId[13]
rwtTask[tMaoXianZheTaskId[13]]["TaskNpc"] = tMaoXianZheNpc[8]
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[7]
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheSingleNpc_GenId[8]
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[13]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMaoXianZheTaskId[13]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[13]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[13]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[13]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheSingleNpc[8]
rwtTask[tMaoXianZheTaskId[13]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheSingleNpc_GenId[8]

--采集狐薄荷
rwtTask[tMaoXianZheTaskId[14]] = {}
rwtTask[tMaoXianZheTaskId[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][20299]
rwtTask[tMaoXianZheTaskId[14]]["PreTaskId"] = tMaoXianZheTaskId[13]
rwtTask[tMaoXianZheTaskId[14]]["NextTaskId"] = tMaoXianZheTaskId[15]
rwtTask[tMaoXianZheTaskId[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tMaoXianZheTaskId[14]]["ReqCollectId1"] = tMaoXianZheCollect[4]
rwtTask[tMaoXianZheTaskId[14]]["ReqCollectCount1"] = 1
rwtTask[tMaoXianZheTaskId[14]]["ReqCollectOnceNum"] = 1

rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[7]
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheSingleNpc_GenId[8]
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][3] = {}
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][3]["GenId"] = tMaoXianZheCollect_GenId[4]
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[14]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[14]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[14]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[14]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[14]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheCollect[4]
rwtTask[tMaoXianZheTaskId[14]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheCollect_GenId[4]

--引开戈壁火狐
rwtTask[tMaoXianZheTaskId[15]] = {}
rwtTask[tMaoXianZheTaskId[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20300]
rwtTask[tMaoXianZheTaskId[15]]["PreTaskId"] = tMaoXianZheTaskId[14]
rwtTask[tMaoXianZheTaskId[15]]["NextTaskId"] = tMaoXianZheTaskId[16]
rwtTask[tMaoXianZheTaskId[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[15]]["DialogId"] = tMaoXianZheDialogId[15]
rwtTask[tMaoXianZheTaskId[15]]["TaskNpc"] = tMaoXianZheNpc[8]

rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[7]
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheSingleNpc_GenId[8]
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMaoXianZheTaskId[15]]["DynaNpcGroupGen"][3] = {}

rwtTask[tMaoXianZheTaskId[15]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[15]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[15]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[15]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheSingleNpc[8]
rwtTask[tMaoXianZheTaskId[15]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheSingleNpc_GenId[8]

--rwtTask[tMaoXianZheTaskId[15]]["AwardId"] = tMaoXianZheAwardId[15]

rwtTask[tMaoXianZheTaskId[15]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[15]
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[15]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[15]

--和小女巫周旋
rwtTask[tMaoXianZheTaskId[16]] = {}
rwtTask[tMaoXianZheTaskId[16]]["Title"] = tLuaText[LANGUAGE_CONFIG][20301]
rwtTask[tMaoXianZheTaskId[16]]["PreTaskId"] = tMaoXianZheTaskId[15]
rwtTask[tMaoXianZheTaskId[16]]["NextTaskId"] = tMaoXianZheTaskId[17]
rwtTask[tMaoXianZheTaskId[16]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[16]]["UnlockCopyMap1"] = 3024
rwtTask[tMaoXianZheTaskId[16]]["UnlockCopyMap2"] = 3043
rwtTask[tMaoXianZheTaskId[16]]["DialogId"] = tMaoXianZheDialogId[16]
rwtTask[tMaoXianZheTaskId[16]]["TaskNpc"] = tMaoXianZheNpc[5]

rwtTask[tMaoXianZheTaskId[16]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[16]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[16]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[16]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheSingleNpc[5]
rwtTask[tMaoXianZheTaskId[16]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheSingleNpc_GenId[5]

        
--rwtTask[tMaoXianZheTaskId[16]]["AwardId"] = tMaoXianZheAwardId[16]

rwtTask[tMaoXianZheTaskId[16]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[16]
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[16]
-----------------------------------------女巫古堡---------------------------------
--通关女巫古堡
rwtTask[tMaoXianZheTaskId[17]] = {}
rwtTask[tMaoXianZheTaskId[17]]["Title"] = tLuaText[LANGUAGE_CONFIG][20302]
rwtTask[tMaoXianZheTaskId[17]]["PreTaskId"] = tMaoXianZheTaskId[16]
rwtTask[tMaoXianZheTaskId[17]]["NextTaskId"] = tMaoXianZheTaskId[18]
rwtTask[tMaoXianZheTaskId[17]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tMaoXianZheTaskId[17]]["OpenCopyMap"] = nCopyMap_NvWu
rwtTask[tMaoXianZheTaskId[17]]["IsClickComplete"] = 1
rwtTask[tMaoXianZheTaskId[17]]["PassCopyMap1"] = nCopyMap_NvWu
rwtTask[tMaoXianZheTaskId[17]]["PassCopyMapCount1"] = 1

        
--rwtTask[tMaoXianZheTaskId[17]]["AwardId"] = tMaoXianZheAwardId[17]

rwtTask[tMaoXianZheTaskId[17]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[17]
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[17]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[17]

rwtTask[tMaoXianZheTaskId[17]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[17]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMaoXianZheTaskId[17]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[17]]["StartAutoWay"]["FindWayPos"] = sPos_NvWuGuBao


--找首领埃尼奥谈判
rwtTask[tMaoXianZheTaskId[18]] = {}
rwtTask[tMaoXianZheTaskId[18]]["Title"] = tLuaText[LANGUAGE_CONFIG][20303]
rwtTask[tMaoXianZheTaskId[18]]["PreTaskId"] = tMaoXianZheTaskId[17]
rwtTask[tMaoXianZheTaskId[18]]["NextTaskId"] = tMaoXianZheTaskId[19]
rwtTask[tMaoXianZheTaskId[18]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheTaskId[18]]["DialogId"] = tMaoXianZheDialogId[18]
rwtTask[tMaoXianZheTaskId[18]]["TaskNpc"] = tMaoXianZheNpc[4]

--rwtTask[tMaoXianZheTaskId[18]]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheTaskId[18]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheTaskId[18]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[6]
--rwtTask[tMaoXianZheTaskId[18]]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheTaskId[18]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMaoXianZheTaskId[18]]["MonsterGroupGenId"] = tMaoXianZheMonsterGroup_GenId[2]
--rwtTask[tMaoXianZheTaskId[18]]["IsClickComplete"] = 1

rwtTask[tMaoXianZheTaskId[18]]["KillMonsterGroup1" ]= tMaoXianZheMonsterGroup[2]

rwtTask[tMaoXianZheTaskId[18]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[18]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[18]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[18]]["StartAutoWay"]["FindWayGroupId"] = tBuild.Build3
rwtTask[tMaoXianZheTaskId[18]]["StartAutoWay"]["FindWayGenId"] = tBuildGenId.Build3

        
--rwtTask[tMaoXianZheTaskId[18]]["AwardId"] = tMaoXianZheAwardId[18]

rwtTask[tMaoXianZheTaskId[18]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[18]
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[18]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[18]
-----------------------------------------背后的真凶---------------------------------
--找首领埃尼奥谈判
rwtTask[tMaoXianZheTaskId[19]] = {}
rwtTask[tMaoXianZheTaskId[19]]["Title"] = tLuaText[LANGUAGE_CONFIG][20304]
rwtTask[tMaoXianZheTaskId[19]]["PreTaskId"] = tMaoXianZheTaskId[18]
rwtTask[tMaoXianZheTaskId[19]]["NextTaskId"] = tMaoXianZheTaskId[20]
rwtTask[tMaoXianZheTaskId[19]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMaoXianZheTaskId[19]]["DialogId"] = tMaoXianZheDialogId[19]
rwtTask[tMaoXianZheTaskId[19]]["TaskNpc"] = tMaoXianZheNpc[4]

rwtTask[tMaoXianZheTaskId[19]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[19]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[19]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[6]
rwtTask[tMaoXianZheTaskId[19]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[19]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tMaoXianZheTaskId[19]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[19]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[19]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[19]]["StartAutoWay"]["FindWayGroupId"] = tBuild.Build3
rwtTask[tMaoXianZheTaskId[19]]["StartAutoWay"]["FindWayGenId"] = tBuildGenId.Build3

--击败假费米
rwtTask[tMaoXianZheTaskId[20]] = {}
rwtTask[tMaoXianZheTaskId[20]]["Title"] = tLuaText[LANGUAGE_CONFIG][20305]
rwtTask[tMaoXianZheTaskId[20]]["PreTaskId"] = tMaoXianZheTaskId[19]
rwtTask[tMaoXianZheTaskId[20]]["NextTaskId"] = tMaoXianZheTaskId[21]
rwtTask[tMaoXianZheTaskId[20]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMaoXianZheTaskId[20]]["DialogId"] = tMaoXianZheDialogId[20]
rwtTask[tMaoXianZheTaskId[20]]["TaskNpc"] = tMaoXianZheNpc[10]

rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"] = {}
--rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[6]
--rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1]["MapId"] = 2003
--rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheSingleNpc_GenId[9]
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][2]["GenId"] = tMaoXianZheMonsterGroup_GenId[3]
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[20]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[20]]["MonsterGroupGenId"] = tMaoXianZheMonsterGroup_GenId[3]
--rwtTask[tMaoXianZheTaskId[20]]["IsClickComplete"] = 1

rwtTask[tMaoXianZheTaskId[20]]["KillMonsterGroup1" ]= tMaoXianZheMonsterGroup[3]

rwtTask[tMaoXianZheTaskId[20]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[20]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[20]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[20]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheSingleNpc[9]
rwtTask[tMaoXianZheTaskId[20]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheSingleNpc_GenId[9]

        
--rwtTask[tMaoXianZheTaskId[20]]["AwardId"] = tMaoXianZheAwardId[20]

rwtTask[tMaoXianZheTaskId[20]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[20]
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[20]
-----------------------------------------魔能结晶---------------------------------
--了解假费米的身份
rwtTask[tMaoXianZheTaskId[21]] = {}
rwtTask[tMaoXianZheTaskId[21]]["Title"] = tLuaText[LANGUAGE_CONFIG][20306]
rwtTask[tMaoXianZheTaskId[21]]["PreTaskId"] = tMaoXianZheTaskId[20]
rwtTask[tMaoXianZheTaskId[21]]["NextTaskId"] = tMaoXianZheTaskId[22]
rwtTask[tMaoXianZheTaskId[21]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMaoXianZheTaskId[21]]["DialogId"] = tMaoXianZheDialogId[21]
rwtTask[tMaoXianZheTaskId[21]]["ReqTrap1"] = tMaoXianZheTrap[6]
rwtTask[tMaoXianZheTaskId[21]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[21]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[21]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[6]
rwtTask[tMaoXianZheTaskId[21]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[21]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[21]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[21]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[21]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[21]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[6]
rwtTask[tMaoXianZheTaskId[21]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[6]

--回到营地休息
rwtTask[tMaoXianZheTaskId[22]] = {}
rwtTask[tMaoXianZheTaskId[22]]["Title"] = tLuaText[LANGUAGE_CONFIG][20307]
rwtTask[tMaoXianZheTaskId[22]]["PreTaskId"] = tMaoXianZheTaskId[21]
rwtTask[tMaoXianZheTaskId[22]]["NextTaskId"] = tMaoXianZheTaskId[23]
rwtTask[tMaoXianZheTaskId[22]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tMaoXianZheTaskId[22]]["ReqTrap1"] = tMaoXianZheTrap[9]
rwtTask[tMaoXianZheTaskId[22]]["DialogId"] = tMaoXianZheDialogId[22]
rwtTask[tMaoXianZheTaskId[22]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[22]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[22]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[9]
rwtTask[tMaoXianZheTaskId[22]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[22]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[22]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[22]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[22]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[22]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[9]
rwtTask[tMaoXianZheTaskId[22]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[9]


--等待魔能结晶充能2:00:00
rwtTask[tMaoXianZheTaskId[23]] = {}
rwtTask[tMaoXianZheTaskId[23]]["Title"] = tLuaText[LANGUAGE_CONFIG][20308]
rwtTask[tMaoXianZheTaskId[23]]["PreTaskId"] = tMaoXianZheTaskId[22]
rwtTask[tMaoXianZheTaskId[23]]["NextTaskId"] = tMaoXianZheTaskId[24]
rwtTask[tMaoXianZheTaskId[23]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
rwtTask[tMaoXianZheTaskId[23]]["TaskFinishTime"] = 43200
--rwtTask[tMaoXianZheTaskId[23]]["NeedLevel"] = 34
rwtTask[tMaoXianZheTaskId[23]]["LackDialogId"] = nDialog_LockLev
rwtTask[tMaoXianZheTaskId[23]]["DialogId"] = nDialog_UnLockLev
--rwtTask[tMaoXianZheTaskId[23]]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10039]

--rwtTask[tMaoXianZheTaskId[23]]["IsClickComplete"] = 1

        
--rwtTask[tMaoXianZheTaskId[23]]["AwardId"] = tMaoXianZheAwardId[23]

rwtTask[tMaoXianZheTaskId[23]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[23]
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[23]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[23]
-----------------------------------------温丽的梦---------------------------------
--温丽的梦
rwtTask[tMaoXianZheTaskId[24]] = {}
rwtTask[tMaoXianZheTaskId[24]]["Title"] = tLuaText[LANGUAGE_CONFIG][20309]
rwtTask[tMaoXianZheTaskId[24]]["PreTaskId"] = tMaoXianZheTaskId[23]
rwtTask[tMaoXianZheTaskId[24]]["NextTaskId"] = tMaoXianZheTaskId[25]
rwtTask[tMaoXianZheTaskId[24]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMaoXianZheTaskId[24]]["DialogId"] = tMaoXianZheDialogId[24]
--rwtTask[tMaoXianZheTaskId[24]]["AutoTaskDialog"] = tMaoXianZheDialogId[24]
rwtTask[tMaoXianZheTaskId[24]]["ReqTrap1"] = tMaoXianZheTrap[7]
rwtTask[tMaoXianZheTaskId[24]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[24]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[24]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[7]
rwtTask[tMaoXianZheTaskId[24]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[24]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[24]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[24]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[24]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[24]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[7]
rwtTask[tMaoXianZheTaskId[24]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[7]

--去裂谷边
rwtTask[tMaoXianZheTaskId[25]] = {}
rwtTask[tMaoXianZheTaskId[25]]["Title"] = tLuaText[LANGUAGE_CONFIG][20310]
rwtTask[tMaoXianZheTaskId[25]]["PreTaskId"] = tMaoXianZheTaskId[24]
rwtTask[tMaoXianZheTaskId[25]]["NextTaskId"] = tMaoXianZheTaskId[26]
rwtTask[tMaoXianZheTaskId[25]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMaoXianZheTaskId[25]]["DialogId"] = tMaoXianZheDialogId[25]
rwtTask[tMaoXianZheTaskId[25]]["ReqTrap1"] = tMaoXianZheTrap[7]
rwtTask[tMaoXianZheTaskId[25]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[25]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[25]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[7]
rwtTask[tMaoXianZheTaskId[25]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[25]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[25]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[25]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[25]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[25]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[7]
rwtTask[tMaoXianZheTaskId[25]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[7]

        
--rwtTask[tMaoXianZheTaskId[25]]["AwardId"] = tMaoXianZheAwardId[25]

rwtTask[tMaoXianZheTaskId[25]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[25]
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[25]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[25]

-----------------------------------------出发！三月边陲---------------------------------
--乘坐飞艇
rwtTask[tMaoXianZheTaskId[26]] = {}
rwtTask[tMaoXianZheTaskId[26]]["Title"] = tLuaText[LANGUAGE_CONFIG][20311]
rwtTask[tMaoXianZheTaskId[26]]["PreTaskId"] = tMaoXianZheTaskId[25]
rwtTask[tMaoXianZheTaskId[26]]["NextTaskId"] = nNextTaskId
rwtTask[tMaoXianZheTaskId[26]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMaoXianZheTaskId[26]]["DialogId"] = tMaoXianZheDialogId[26]
rwtTask[tMaoXianZheTaskId[26]]["ReqTrap1"] = tMaoXianZheTrap[8]
rwtTask[tMaoXianZheTaskId[26]]["DynaNpcGroupGen"] = {}
rwtTask[tMaoXianZheTaskId[26]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMaoXianZheTaskId[26]]["DynaNpcGroupGen"][1]["GenId"] = tMaoXianZheTrap_GenId[8]
rwtTask[tMaoXianZheTaskId[26]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tMaoXianZheTaskId[26]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tMaoXianZheTaskId[26]]["StartAutoWay"] = {}
rwtTask[tMaoXianZheTaskId[26]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMaoXianZheTaskId[26]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tMaoXianZheTaskId[26]]["StartAutoWay"]["FindWayGroupId"] = tMaoXianZheTrap[8]
rwtTask[tMaoXianZheTaskId[26]]["StartAutoWay"]["FindWayGenId"] = tMaoXianZheTrap_GenId[8]
--rwtTask[tMaoXianZheTaskId[26]]["AwardFunc"] = function()
--    --任务完成后将玩家瞬移至目标点
--    rwUserTeleport(sPos_Task22_End,nRotY_Task22__End)
--end

--rwtTask[tMaoXianZheTaskId[26]]["AwardId"] = tMaoXianZheAwardId[26]

rwtTask[tMaoXianZheTaskId[26]]["Awards"] = {}
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"] = {}
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"][1] = {}
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tMaoXianZheAwardId[26]
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMaoXianZheTaskId[26]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMaoXianZheTaskId[26]

rwtTask[tMaoXianZheTaskId[26]]["OpenMercenaryTask"] = {}   --开放冒险者营地佣兵系列任务
rwtTask[tMaoXianZheTaskId[26]]["OpenMercenaryTask"]["AreaId"] = 2003
rwtTask[tMaoXianZheTaskId[26]]["OpenMercenaryTask"]["TownId"] = 200301

--对白后弹动画，防止出现卡动画无法完成任务情况
rwtTask[tMaoXianZheTaskId[26]]["DialogueEndFunc"] = function()
    rwStoryTrigger(nCg_1,2,0)
end

--动画结束后移动玩家位置
 function MainTask_MaoXianZhe_FlyXiaGu()
     rwUserTeleport(sPos_Task22_End,nRotY_Task22__End)
     rwPrintErrorLog("移动玩家")
 end
 rwtCGFinish[nCg_1] = rwtCGFinish[nCg_1] or {}
 table.insert(rwtCGFinish[nCg_1],MainTask_MaoXianZhe_FlyXiaGu)