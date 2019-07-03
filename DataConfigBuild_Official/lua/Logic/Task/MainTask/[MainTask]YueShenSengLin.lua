--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--endregion

--taskid 10323-10351
--taskindex 11-39
--npcid 3149-3158
--npcgroup 20191-20200
--trap 30223-30252

--monster 1000156 1000160
--monstergroup 300096-300100
--采集物 60087
--gen_event 20030079-20030130
--Dialog 10577-10599
--npc闲聊 1253 1269
--月神森林任务奖励 2000076-2000085
--月神新增npc组 20328 - 20330
--月神新增npc 3295 - 3297

--任务
local tYueShenSengLinTask = {}
--卡等级//新增
tYueShenSengLinTask[1] = 10324
--森林里的部落 抵达月神森林
tYueShenSengLinTask[2] = 10323
--被袭击的敌人/解救树人
 tYueShenSengLinTask[3] = 10351
--混乱的部落冲突/与树人对话
 tYueShenSengLinTask[4] = 10325
--混乱的部落冲突 表名来意
 tYueShenSengLinTask[5] = 10327
-- 混乱的部落冲突 解决危机
 tYueShenSengLinTask[6] = 10328
--不受欢迎的访客/劝说木禅
 tYueShenSengLinTask[7] = 10329
--不受欢迎的访客/进入德鲁伊          
 tYueShenSengLinTask[8] =  10331
--神器危机/向守卫解释                       
 tYueShenSengLinTask[9]  = 10332 
--神器危机/向首领说明来意         
 tYueShenSengLinTask[10] = 10333
--追回檐鬼/与檐鬼交手            
 tYueShenSengLinTask[11] = 10337
--追回檐鬼/对话木禅              
 tYueShenSengLinTask[12] = 10338
--矿洞矮巨人                    
 tYueShenSengLinTask[13] = 10339
--银母矿洞副本                   
 tYueShenSengLinTask[14] = 10340
--质问檐鬼                       
 tYueShenSengLinTask[15] = 10341
--寻回神器                       
 tYueShenSengLinTask[16] = 10342

--魔物的背后/推测幕后真凶        
 tYueShenSengLinTask[17] = 10344
--魔物的背后/调查发狂魔物        
 tYueShenSengLinTask[18] = 10345
--魔物来源                       
 tYueShenSengLinTask[19] = 10346
 --听魔物的辩解                 
 tYueShenSengLinTask[20] = 10343
--真相                           
 tYueShenSengLinTask[21] = 10347
--卡等级                       
 tYueShenSengLinTask[22] = 10348
--木禅的决定                 
 tYueShenSengLinTask[23] = 10349
--下一站，永夜森林               
 tYueShenSengLinTask[24] = 10350
                                 
--对话
local nDialog_Task1 = 10577
local nDialog_Task2 = 10578
local nDialog_Task3 = 10579
local nDialog_Task4 = 10580
local nDialog_Task5 = 10581
local nDialog_Task6 = 10582
local nDialog_Task7 = 10583
local nDialog_Task8 = 10584
local nDialog_Task9 = 10585
local nDialog_Task10 = 10586
local nDialog_Task11 = 10587
local nDialog_Task12 = 10588
local nDialog_Task13 = 10589
local nDialog_Task14 = 10590
local nDialog_Task15 = 10591
local nDialog_Task16 = 10592
local nDialog_Task17 = 10593
local nDialog_Task18 = 10594
local nDialog_Task19 = 10595
local nDialog_Task20 = 10596
local nDialog_Task21 = 10597
local nDialog_Task22 = 10598
local nDialog_Task23 = 10599
local nDialog_Task24 = 10689
local nDialog_Task25 = 10690
local nDialog_Task26 = 10691

--NPC

--树人杰拉尔2043
local nNpc_JieLaer                = 3149
local nNpcGroup_JieLaer           = 20191
local nNpcGroup_Gen_JieLaer       = 20030079
--树人首领2038
local nNpc_ShuRenShouLin          = 3150
local nNpcGroup_ShuRenShouLin     = 20192
local nNpcGroup_Gen_ShuRenShouLin = 20030080

--树人守卫
local nNpc_ShuRenShouWei          = 3151
local nNpcGroup_ShuRenShouWei     = 20193
local nNpcGroup_Gen_ShuRenShouWei = 20030081
--树人木禅
local nNpc_MuChan1                = 104
local nNpcGroup_MuChan1           = 20194
local nNpcGroup_Gen_MuChan1       = 20030082

--德鲁伊守卫
local nNpc_DeluyiShouWei          = 3155
local nNpcGroup_DeluyiShouWei     = 20197
local nNpcGroup_Gen_DeluyiShouWei = 20030085
--德鲁伊首领
local nNpc_DeluyiShouLin          = 3156
local nNpcGroup_DeluyiShouLin     = 20198
local nNpcGroup_Gen_DeluyiShouLin = 20030086
--阿德琳
local nNpc_ADeLin                 = 3157
local nNpcGroup_ADeLin            = 20199
local nNpcGroup_Gen_ADeLin        = 20030087
--檐鬼
local nNpc_YanGui                 = 106
local nNpcGroup_YanGui            = 20200
local nNpcGroup_Gen_YanGui        = 20030127


rwtNpc[nNpc_JieLaer] = rwtNpc[nNpc_JieLaer] or {}
rwtNpc[nNpc_JieLaer]["DialogId"] = {1253,1254,1255}

rwtNpc[nNpc_ShuRenShouLin] = rwtNpc[nNpc_ShuRenShouLin] or {}
rwtNpc[nNpc_ShuRenShouLin]["DialogId"] = {1256,1257,1258}

rwtNpc[nNpc_ShuRenShouWei] = rwtNpc[nNpc_ShuRenShouWei] or {}

rwtNpc[nNpc_DeluyiShouLin] = rwtNpc[nNpc_DeluyiShouLin] or {}
rwtNpc[nNpc_DeluyiShouLin]["DialogId"] = {1262,1263,1264} 

rwtNpc[nNpc_DeluyiShouWei] = rwtNpc[nNpc_DeluyiShouWei] or {}
rwtNpc[nNpc_DeluyiShouWei]["DialogId"] = {1259,1260,1261}

rwtNpc[nNpc_ADeLin] = rwtNpc[nNpc_ADeLin] or {}

rwtNpc[nNpc_MuChan1] = rwtNpc[nNpc_MuChan1] or {}
rwtNpc[nNpc_MuChan1]["DialogId"] = {1265,1266,1267}

rwtNpc[nNpc_YanGui] = rwtNpc[nNpc_YanGui] or {}
--森林熊1
rwtNpc[3297] = rwtNpc[3297] or {}
rwtNpc[3297]["DialogId"] = {1586,1587,1588}

rwtNpcGroup[nNpcGroup_JieLaer] = rwtNpcGroup[nNpcGroup_JieLaer] or {}  --树人杰拉尔
rwtNpcGroup[nNpcGroup_JieLaer]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_JieLaer]["NpcId"]= nNpc_JieLaer

rwtNpcGroup[nNpcGroup_ShuRenShouLin] = rwtNpcGroup[nNpcGroup_ShuRenShouLin] or {}  --树人首领
rwtNpcGroup[nNpcGroup_ShuRenShouLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ShuRenShouLin]["NpcId"]= nNpc_ShuRenShouLin

rwtNpcGroup[nNpcGroup_ShuRenShouWei] = rwtNpcGroup[nNpcGroup_ShuRenShouWei] or {}  --树人守卫
rwtNpcGroup[nNpcGroup_ShuRenShouWei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ShuRenShouWei]["NpcId"]= nNpc_ShuRenShouWei

rwtNpcGroup[nNpcGroup_MuChan1] = rwtNpcGroup[nNpcGroup_MuChan1] or {}  --树人木禅1
rwtNpcGroup[nNpcGroup_MuChan1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_MuChan1]["NpcId"]= nNpc_MuChan1

rwtNpcGroup[nNpcGroup_DeluyiShouWei] = rwtNpcGroup[nNpcGroup_DeluyiShouWei] or {}  --德鲁伊守卫
rwtNpcGroup[nNpcGroup_DeluyiShouWei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_DeluyiShouWei]["NpcId"]= nNpc_DeluyiShouWei

rwtNpcGroup[nNpcGroup_DeluyiShouLin] = rwtNpcGroup[nNpcGroup_DeluyiShouLin] or {}  --德鲁伊首领
rwtNpcGroup[nNpcGroup_DeluyiShouLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_DeluyiShouLin]["NpcId"]= nNpc_DeluyiShouLin

rwtNpcGroup[nNpcGroup_ADeLin] = rwtNpcGroup[nNpcGroup_ADeLin] or {}  --阿德琳
rwtNpcGroup[nNpcGroup_ADeLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ADeLin]["NpcId"]= nNpc_ADeLin

rwtNpcGroup[nNpcGroup_YanGui] = rwtNpcGroup[nNpcGroup_YanGui] or {}  --檐鬼
rwtNpcGroup[nNpcGroup_YanGui]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_YanGui]["NpcId"]= nNpc_YanGui

rwtNpcGroup[20330] = rwtNpcGroup[20330] or {}  --森林熊
rwtNpcGroup[20330]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20330]["NpcId"]=3297

--Monster
--荆棘花妖10028
local nMonster_HuaYao = 1000156
local nMonsterGroup_HuaYao = 300096
local nMonster_GenId_HuaYao= 20030089
--绿林鹿角兽10006
local nMonster_LuJiaoShou = 1000157
local nMonsterGroup_LuJiaoShou = 300097
local nMonster_GenId_LuJiaoShou= 20030090
--战斗爆熊10018
local nMonster_BaoXiong = 1000158
local nMonsterGroup_BaoXiong = 300098
local nMonster_GenId_BaoXiong= 20030091
--矿洞矮巨人10055
local nMonster_AiJuRen = 1000159
local nMonsterGroup_AiJuRen = 300099
local nMonster_GenId_BAiJuRen= 20030092

local nMonster_GenId_BAiJuRen2= 20030124
--枯叶蜂王10042
local nMonster_FengTu = 1000160
local nMonsterGroup_FengTu = 300100
local nMonster_GenId_FengTu= 20030093
--檐鬼
local nMonster_YanGui = 9000134
local nMonsterGroup_YanGui = 900244
local nMonster_GenId_YanGui= 20030126

--采集物 月见草
local nCollect_YueJian = 60087
local nCollect_YueJian_Gen = 20030123

rwtNpcGroup[nCollect_YueJian] = rwtNpcGroup[nCollect_YueJian] or {}     --血霜草
rwtNpcGroup[nCollect_YueJian]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--陷阱
local nTrap_1 = 30223 
local nTrap_gen_1 = 20030094 
local nTrap_2 = 30224 
local nTrap_gen_2 = 20030095 
local nTrap_3 = 30226 
local nTrap_gen_3 = 20030097
local nTrap_4 = 30228 
local nTrap_gen_4 = 20030099
local nTrap_5 = 30230 
local nTrap_gen_5 = 20030101
local nTrap_6 = 30231 
local nTrap_gen_6 = 20030102
local nTrap_7 = 30235 
local nTrap_gen_7 = 20030106
local nTrap_9 = 30239 
local nTrap_gen_9 = 20030110
local nTrap_10 = 30240
local nTrap_gen_10 = 20030111
-- local nTrap_11 = 30654
-- local nTrap_gen_11 = 20030585


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
rwtNpcGroup[nTrap_6] = rwtNpcGroup[nTrap_6] or {}  
rwtNpcGroup[nTrap_6]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_7] = rwtNpcGroup[nTrap_7] or {}   
rwtNpcGroup[nTrap_7]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_9] = rwtNpcGroup[nTrap_9] or {}  
rwtNpcGroup[nTrap_9]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_10] = rwtNpcGroup[nTrap_10] or {}   
rwtNpcGroup[nTrap_10]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[nTrap_11] = rwtNpcGroup[nTrap_11] or {}   
-- rwtNpcGroup[nTrap_11]["Type"] = CONST_NPCGROUP_TYPE.Trap

--位置
--树人位置
local sPos_YueShen = " -190.05,0.21,-91.34"
--树人位置
local sPos_ShuYao = "-171.39,0.09,-105.50"
--树人部落
local sPos_ShuRenBuLuo = "-134.24,2.02,-130.46 "
--鹿角兽位置
local sPos_LuJiao = "-136.90,2.75,-144.55"
--德鲁伊部落
local sPos_DeLuYi = "-226.10,0.64,-122.15"
--矿巨人位置
local sPos_AiDong = "-155.62,0.08,-177.51"
--劝说木禅
local sPos_MuChanQuan = "-168.06,0,-162.06"
--调查魔物陷阱
local sPos_MowuTrap = "-221.52,0.08,-83.57"
--银母矿洞 
local sPos_YinMu = "-157.30,0.20,-188.51"
--蜂土的位置
local sPos_FengTu = "-241.49,0,-84.4"
--副本银母矿洞
local nCopyMap_YingMu = 3023

--------------------------------------------------------------------------------
--任务 

--新的伙伴/卡等级
rwtTask[tYueShenSengLinTask[1]] = {}
rwtTask[tYueShenSengLinTask[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20417]
rwtTask[tYueShenSengLinTask[1]]["PreTaskId"] = 10254
rwtTask[tYueShenSengLinTask[1]]["NextTaskId"] = tYueShenSengLinTask[2]
rwtTask[tYueShenSengLinTask[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tYueShenSengLinTask[1]]["NeedLevel"] = 38
rwtTask[tYueShenSengLinTask[1]]["LackDialogId"] = 12198
rwtTask[tYueShenSengLinTask[1]]["DialogId"] = 12199
--rwtTask[tYueShenSengLinTask[1]]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10041]

--森之住民
rwtTask[tYueShenSengLinTask[2]] = {}
rwtTask[tYueShenSengLinTask[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20418]
rwtTask[tYueShenSengLinTask[2]]["PreTaskId"] = tYueShenSengLinTask[1]
rwtTask[tYueShenSengLinTask[2]]["NextTaskId"] = tYueShenSengLinTask[3]
rwtTask[tYueShenSengLinTask[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[2]]["DialogId"] = nDialog_Task1
rwtTask[tYueShenSengLinTask[2]]["ReqTrap1"] = nTrap_1
rwtTask[tYueShenSengLinTask[2]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[2]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_1
rwtTask[tYueShenSengLinTask[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[2]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[2]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[2]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[2]]["StartAutoWay"]["FindWayPos"] = sPos_YueShen
rwtTask[tYueShenSengLinTask[2]]["OpenTransfer"] = CONST_TRANSFER_INDEX.YUESHENSENLIN
rwtTask[tYueShenSengLinTask[2]]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10033]

--森之住民/突如其来的救援
rwtTask[tYueShenSengLinTask[3]] = {}
rwtTask[tYueShenSengLinTask[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20419]
rwtTask[tYueShenSengLinTask[3]]["PreTaskId"] = tYueShenSengLinTask[2]
rwtTask[tYueShenSengLinTask[3]]["NextTaskId"] = tYueShenSengLinTask[4]
rwtTask[tYueShenSengLinTask[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenSengLinTask[3]]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10037]
rwtTask[tYueShenSengLinTask[3]]["DialogId"] = nDialog_Task2
rwtTask[tYueShenSengLinTask[3]]["ReqTrap1"] = nTrap_2
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_2
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][2] = {}
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_HuaYao
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[3]]["MonsterGroupGenId"] = nMonster_GenId_HuaYao
rwtTask[tYueShenSengLinTask[3]]["KillMonsterGroup1" ]= nMonsterGroup_HuaYao
rwtTask[tYueShenSengLinTask[3]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[3]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[3]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[3]]["StartAutoWay"]["FindWayPos"] = sPos_ShuYao
rwtTask[tYueShenSengLinTask[3]]["IsClickComplete"] = 0
--rwtTask[tYueShenSengLinTask[3]]["AwardId"] = 2000076
rwtTask[tYueShenSengLinTask[3]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000076
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[3]

--部落冲突/被厌恶的人类与德鲁伊
rwtTask[tYueShenSengLinTask[4]] = {}
rwtTask[tYueShenSengLinTask[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20420]
rwtTask[tYueShenSengLinTask[4]]["PreTaskId"] = tYueShenSengLinTask[3]
rwtTask[tYueShenSengLinTask[4]]["NextTaskId"] = tYueShenSengLinTask[5]
rwtTask[tYueShenSengLinTask[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[4]]["DialogId"] = nDialog_Task3
rwtTask[tYueShenSengLinTask[4]]["TaskNpc"] = nNpc_JieLaer  
rwtTask[tYueShenSengLinTask[4]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[4]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_JieLaer
rwtTask[tYueShenSengLinTask[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_JieLaer              
rwtTask[tYueShenSengLinTask[4]]["IsClickComplete"] = 0



--部落冲突/混乱的部落冲突
rwtTask[tYueShenSengLinTask[5]] = {}
rwtTask[tYueShenSengLinTask[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20421]
rwtTask[tYueShenSengLinTask[5]]["PreTaskId"] = tYueShenSengLinTask[4]
rwtTask[tYueShenSengLinTask[5]]["NextTaskId"] = tYueShenSengLinTask[6]
rwtTask[tYueShenSengLinTask[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[5]]["DialogId"] = nDialog_Task4
rwtTask[tYueShenSengLinTask[5]]["TaskNpc"] = nNpc_ShuRenShouLin  
rwtTask[tYueShenSengLinTask[5]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[5]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[5]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuRenShouLin
rwtTask[tYueShenSengLinTask[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_ShuRenShouLin


--部落冲突 /暂时性的合作
rwtTask[tYueShenSengLinTask[6]] = {}
rwtTask[tYueShenSengLinTask[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20422]
rwtTask[tYueShenSengLinTask[6]]["PreTaskId"] = tYueShenSengLinTask[5]
rwtTask[tYueShenSengLinTask[6]]["NextTaskId"] = tYueShenSengLinTask[7]
rwtTask[tYueShenSengLinTask[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenSengLinTask[6]]["DialogId"] = nDialog_Task5
rwtTask[tYueShenSengLinTask[6]]["ReqTrap1"] =  nTrap_5
rwtTask[tYueShenSengLinTask[6]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_GenId_LuJiaoShou
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][2] = {}
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][2]["GenId"] = nTrap_gen_5
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[6]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[6]]["MonsterGroupGenId"] = nMonster_GenId_LuJiaoShou
rwtTask[tYueShenSengLinTask[6]]["KillMonsterGroup1" ]= nMonsterGroup_LuJiaoShou
rwtTask[tYueShenSengLinTask[6]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[6]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[6]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[6]]["StartAutoWay"]["FindWayPos"] = sPos_LuJiao
--rwtTask[tYueShenSengLinTask[6]]["AwardId"] = 2000077
rwtTask[tYueShenSengLinTask[6]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000077
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[6]
--不受欢迎的访客/说服木禅 
rwtTask[tYueShenSengLinTask[7]] = {}
rwtTask[tYueShenSengLinTask[7]]["Title"] =tLuaText[LANGUAGE_CONFIG][20423]
rwtTask[tYueShenSengLinTask[7]]["PreTaskId"] = tYueShenSengLinTask[6]
rwtTask[tYueShenSengLinTask[7]]["NextTaskId"] = tYueShenSengLinTask[8]
rwtTask[tYueShenSengLinTask[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[7]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[7]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[7]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_5
rwtTask[tYueShenSengLinTask[7]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[7]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[7]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[7]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[7]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[7]]["StartAutoWay"]["FindWayPos"] = sPos_LuJiao
rwtTask[tYueShenSengLinTask[7]]["ReqTrap1"] = nTrap_5
rwtTask[tYueShenSengLinTask[7]]["DialogId"] = nDialog_Task6
rwtTask[tYueShenSengLinTask[7]]["IsClickComplete"] = 0

--不受欢迎的访客/进入德鲁伊部落

rwtTask[tYueShenSengLinTask[8]] = {}
rwtTask[tYueShenSengLinTask[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20424]
rwtTask[tYueShenSengLinTask[8]]["PreTaskId"] = tYueShenSengLinTask[7]
rwtTask[tYueShenSengLinTask[8]]["NextTaskId"] = tYueShenSengLinTask[9]
rwtTask[tYueShenSengLinTask[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenSengLinTask[8]]["DialogId"] = nDialog_Task8
rwtTask[tYueShenSengLinTask[8]]["TaskNpc"] = nNpc_DeluyiShouWei
-- rwtTask[tYueShenSengLinTask[8]]["ReqTrap1"] = nTrap_11
rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"] = {}
-- rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_11
-- rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1]["MapId"] = 2003
-- rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_GenId_BaoXiong
rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[8]]["MonsterGroupGenId"] = nMonster_GenId_BaoXiong
rwtTask[tYueShenSengLinTask[8]]["KillMonsterGroup1" ]= nMonsterGroup_BaoXiong
rwtTask[tYueShenSengLinTask[8]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[8]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[8]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[8]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouWei
rwtTask[tYueShenSengLinTask[8]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouWei
rwtTask[tYueShenSengLinTask[8]]["IsClickComplete"] = 0
--rwtTask[tYueShenSengLinTask[8]]["AwardId"] = 2000078
rwtTask[tYueShenSengLinTask[8]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000078
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[8]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[8]
--神器危机/解释缘由
rwtTask[tYueShenSengLinTask[9]] = {}
rwtTask[tYueShenSengLinTask[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20425]
rwtTask[tYueShenSengLinTask[9]]["PreTaskId"] = tYueShenSengLinTask[8]
rwtTask[tYueShenSengLinTask[9]]["NextTaskId"] = tYueShenSengLinTask[10]
rwtTask[tYueShenSengLinTask[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[9]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[9]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[9]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_6
rwtTask[tYueShenSengLinTask[9]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[9]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[9]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[9]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[9]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[9]]["StartAutoWay"]["FindWayPos"] = sPos_DeLuYi
rwtTask[tYueShenSengLinTask[9]]["ReqTrap1"] = nTrap_6
rwtTask[tYueShenSengLinTask[9]]["DialogId"] = nDialog_Task9
rwtTask[tYueShenSengLinTask[9]]["IsClickComplete"] = 0

--神器危机/首领，我们是为了……
rwtTask[tYueShenSengLinTask[10]] = {}
rwtTask[tYueShenSengLinTask[10]]["Title"] = tLuaText[LANGUAGE_CONFIG][20426]
rwtTask[tYueShenSengLinTask[10]]["PreTaskId"] = tYueShenSengLinTask[9]
rwtTask[tYueShenSengLinTask[10]]["NextTaskId"] = tYueShenSengLinTask[11]
rwtTask[tYueShenSengLinTask[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[10]]["DialogId"] = nDialog_Task10
rwtTask[tYueShenSengLinTask[10]]["TaskNpc"] = nNpc_DeluyiShouLin
rwtTask[tYueShenSengLinTask[10]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[10]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[10]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[10]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[10]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenSengLinTask[10]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin

--神器危机/敌人，檐鬼！
rwtTask[tYueShenSengLinTask[11]] = {}
rwtTask[tYueShenSengLinTask[11]]["Title"] = tLuaText[LANGUAGE_CONFIG][20427]
rwtTask[tYueShenSengLinTask[11]]["PreTaskId"] = tYueShenSengLinTask[10]
rwtTask[tYueShenSengLinTask[11]]["NextTaskId"] = tYueShenSengLinTask[12]
rwtTask[tYueShenSengLinTask[11]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[11]]["DialogId"] = nDialog_Task24
rwtTask[tYueShenSengLinTask[11]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[11]]["TaskNpc"] = nNpc_ADeLin
rwtTask[tYueShenSengLinTask[11]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[11]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[11]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Gen_ADeLin
rwtTask[tYueShenSengLinTask[11]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[11]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[11]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[11]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[11]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[11]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ADeLin
rwtTask[tYueShenSengLinTask[11]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_ADeLin
--rwtTask[tYueShenSengLinTask[11]]["AwardId"] = 2000079
rwtTask[tYueShenSengLinTask[11]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000079
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[11]

--拦路的矿洞守卫/无法前行的木禅
rwtTask[tYueShenSengLinTask[12]] = {}
rwtTask[tYueShenSengLinTask[12]]["Title"] =tLuaText[LANGUAGE_CONFIG][20428]
rwtTask[tYueShenSengLinTask[12]]["PreTaskId"] = tYueShenSengLinTask[11]
rwtTask[tYueShenSengLinTask[12]]["NextTaskId"] =  tYueShenSengLinTask[13]
rwtTask[tYueShenSengLinTask[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[12]]["DialogId"] = nDialog_Task25   
rwtTask[tYueShenSengLinTask[12]]["ReqTrap1"] = nTrap_3
rwtTask[tYueShenSengLinTask[12]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[12]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[12]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_3
rwtTask[tYueShenSengLinTask[12]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[12]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[12]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[12]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[12]]["StartAutoWay"]["FindWayPos"] = sPos_MuChanQuan
rwtTask[tYueShenSengLinTask[12]]["IsClickComplete"] = 0

--拦路的矿洞守卫/充满敌意的矮巨人
rwtTask[tYueShenSengLinTask[13]] = {}
rwtTask[tYueShenSengLinTask[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][20429]
rwtTask[tYueShenSengLinTask[13]]["PreTaskId"] = tYueShenSengLinTask[12]
rwtTask[tYueShenSengLinTask[13]]["NextTaskId"] = tYueShenSengLinTask[14]
rwtTask[tYueShenSengLinTask[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenSengLinTask[13]]["DialogId"] = nDialog_Task26
rwtTask[tYueShenSengLinTask[13]]["ReqTrap1"] = nTrap_7
rwtTask[tYueShenSengLinTask[13]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_7
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][2] = {}
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_BAiJuRen
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][3] = {}
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][3]["GenId"] = nMonster_GenId_BAiJuRen2
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[13]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[13]]["MonsterGroupGenId"] = nMonster_GenId_BAiJuRen
rwtTask[tYueShenSengLinTask[13]]["KillMonsterGroup1" ]= nMonsterGroup_AiJuRen
rwtTask[tYueShenSengLinTask[13]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[13]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[13]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[13]]["StartAutoWay"]["FindWayPos"] = sPos_AiDong
--rwtTask[tYueShenSengLinTask[13]]["AwardId"] = 2000080
rwtTask[tYueShenSengLinTask[13]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000080
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[13]
rwtTask[tYueShenSengLinTask[13]]["UnlockCopyMap1"] = 3023		--银母普通
rwtTask[tYueShenSengLinTask[13]]["UnlockCopyMap2"] = 3041		--银母剧情

rwtTask[tYueShenSengLinTask[14]] = {}
rwtTask[tYueShenSengLinTask[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][20430]
rwtTask[tYueShenSengLinTask[14]]["PreTaskId"] =  tYueShenSengLinTask[13]
rwtTask[tYueShenSengLinTask[14]]["NextTaskId"] = tYueShenSengLinTask[15]
rwtTask[tYueShenSengLinTask[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tYueShenSengLinTask[14]]["IsClickComplete"] = 1
rwtTask[tYueShenSengLinTask[14]]["PassCopyMap1"] = nCopyMap_YingMu
rwtTask[tYueShenSengLinTask[14]]["PassCopyMapCount1"] = 1
rwtTask[tYueShenSengLinTask[14]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[14]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[14]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[14]]["StartAutoWay"]["FindWayPos"] = sPos_YinMu
--rwtTask[tYueShenSengLinTask[14]]["AwardId"] = 2000081
rwtTask[tYueShenSengLinTask[14]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000081
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[14]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[14]
rwtTask[tYueShenSengLinTask[14]]["OpenCopyMap"] = nCopyMap_YingMu


--质问檐鬼
rwtTask[tYueShenSengLinTask[15]] = {}
rwtTask[tYueShenSengLinTask[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20431]
rwtTask[tYueShenSengLinTask[15]]["PreTaskId"] = tYueShenSengLinTask[14]
rwtTask[tYueShenSengLinTask[15]]["NextTaskId"] = tYueShenSengLinTask[16]
rwtTask[tYueShenSengLinTask[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[15]]["ReqTrap1"] = nTrap_7
rwtTask[tYueShenSengLinTask[15]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[15]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[15]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_7
rwtTask[tYueShenSengLinTask[15]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[15]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[15]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[15]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[15]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[15]]["StartAutoWay"]["FindWayPos"] = sPos_AiDong
rwtTask[tYueShenSengLinTask[15]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[15]]["DialogId"] = nDialog_Task12

--寻回神器/和解的部族
rwtTask[tYueShenSengLinTask[16]] = {}
rwtTask[tYueShenSengLinTask[16]]["Title"] = tLuaText[LANGUAGE_CONFIG][20432]
rwtTask[tYueShenSengLinTask[16]]["PreTaskId"] = tYueShenSengLinTask[15]
rwtTask[tYueShenSengLinTask[16]]["NextTaskId"] = tYueShenSengLinTask[17]
rwtTask[tYueShenSengLinTask[16]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tYueShenSengLinTask[16]]["ReqTrap1"] = nTrap_4
rwtTask[tYueShenSengLinTask[16]]["DialogId"] = nDialog_Task14
rwtTask[tYueShenSengLinTask[16]]["IsClickComplete"] = 0 
rwtTask[tYueShenSengLinTask[16]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[16]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[16]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_4
rwtTask[tYueShenSengLinTask[16]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[16]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete                    
rwtTask[tYueShenSengLinTask[16]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[16]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[16]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[16]]["StartAutoWay"]["FindWayPos"] = sPos_ShuRenBuLuo
--rwtTask[tYueShenSengLinTask[16]]["AwardId"] = 2000082
rwtTask[tYueShenSengLinTask[16]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000082
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[16]


--魔物的背后/找寻线索
rwtTask[tYueShenSengLinTask[17]] = {}
rwtTask[tYueShenSengLinTask[17]]["Title"] = tLuaText[LANGUAGE_CONFIG][20433]
rwtTask[tYueShenSengLinTask[17]]["PreTaskId"] = tYueShenSengLinTask[16]
rwtTask[tYueShenSengLinTask[17]]["NextTaskId"] = tYueShenSengLinTask[18]
rwtTask[tYueShenSengLinTask[17]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[17]]["DialogId"] = nDialog_Task15
rwtTask[tYueShenSengLinTask[17]]["ReqTrap1"] = nTrap_9
rwtTask[tYueShenSengLinTask[17]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_9
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][2] = {}
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][2]["GenId"] = nCollect_YueJian_Gen
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[17]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tYueShenSengLinTask[17]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[17]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[17]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[17]]["StartAutoWay"]["FindWayPos"] = sPos_MowuTrap

--魔物的背后/幕后真凶
rwtTask[tYueShenSengLinTask[18]] = {}
rwtTask[tYueShenSengLinTask[18]]["Title"] = tLuaText[LANGUAGE_CONFIG][20434]
rwtTask[tYueShenSengLinTask[18]]["PreTaskId"] = tYueShenSengLinTask[17]
rwtTask[tYueShenSengLinTask[18]]["NextTaskId"] = tYueShenSengLinTask[19]
rwtTask[tYueShenSengLinTask[18]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tYueShenSengLinTask[18]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[18]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[18]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_YueJian_Gen
rwtTask[tYueShenSengLinTask[18]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[18]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tYueShenSengLinTask[18]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[18]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[18]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[18]]["StartAutoWay"]["FindWayGroupId"] = nCollect_YueJian
rwtTask[tYueShenSengLinTask[18]]["StartAutoWay"]["FindWayGenId"] = nCollect_YueJian_Gen 
rwtTask[tYueShenSengLinTask[18]]["ReqCollectId1"] = nCollect_YueJian
rwtTask[tYueShenSengLinTask[18]]["DialogId"] = nDialog_Task16
rwtTask[tYueShenSengLinTask[18]]["IsClickComplete"] = 0

--魔物来源
rwtTask[tYueShenSengLinTask[19]] = {}
rwtTask[tYueShenSengLinTask[19]]["Title"] = tLuaText[LANGUAGE_CONFIG][20435]
rwtTask[tYueShenSengLinTask[19]]["PreTaskId"] = tYueShenSengLinTask[18]
rwtTask[tYueShenSengLinTask[19]]["NextTaskId"] = tYueShenSengLinTask[20]
rwtTask[tYueShenSengLinTask[19]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenSengLinTask[19]]["DialogId"] = nDialog_Task17
rwtTask[tYueShenSengLinTask[19]]["ReqTrap1"] = nTrap_10
rwtTask[tYueShenSengLinTask[19]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_10
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][2] = {}
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][2]["GenId"] = nMonster_GenId_FengTu
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[19]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenSengLinTask[19]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[19]]["StartAutoWay"]["FindWayTypeId"]=2
rwtTask[tYueShenSengLinTask[19]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[19]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_FengTu
rwtTask[tYueShenSengLinTask[19]]["StartAutoWay"]["FindWayGenId"] = nMonster_GenId_FengTu 
rwtTask[tYueShenSengLinTask[19]]["MonsterGroupGenId"] = nMonster_GenId_FengTu
rwtTask[tYueShenSengLinTask[19]]["KillMonsterGroup1" ]= nMonsterGroup_FengTu


rwtTask[tYueShenSengLinTask[20]] = {}
rwtTask[tYueShenSengLinTask[20]]["Title"] = tLuaText[LANGUAGE_CONFIG][20436]
rwtTask[tYueShenSengLinTask[20]]["PreTaskId"] = tYueShenSengLinTask[19]
rwtTask[tYueShenSengLinTask[20]]["NextTaskId"] = tYueShenSengLinTask[21]
rwtTask[tYueShenSengLinTask[20]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYueShenSengLinTask[20]]["ReqTrap1"] = nTrap_10
rwtTask[tYueShenSengLinTask[20]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[20]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenSengLinTask[20]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenSengLinTask[20]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_gen_10
rwtTask[tYueShenSengLinTask[20]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenSengLinTask[20]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tYueShenSengLinTask[20]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[20]]["StartAutoWay"]["FindWayTypeId"]=0
rwtTask[tYueShenSengLinTask[20]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[20]]["StartAutoWay"]["FindWayPos"] = sPos_FengTu
rwtTask[tYueShenSengLinTask[20]]["DialogId"] = nDialog_Task18
--rwtTask[tYueShenSengLinTask[20]]["AwardId"] = 2000083
rwtTask[tYueShenSengLinTask[20]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000083
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[20]

--纷争的真相/是时候揭露真相了
rwtTask[tYueShenSengLinTask[21]] = {}
rwtTask[tYueShenSengLinTask[21]]["Title"] = tLuaText[LANGUAGE_CONFIG][20437]
rwtTask[tYueShenSengLinTask[21]]["PreTaskId"] = tYueShenSengLinTask[20]
rwtTask[tYueShenSengLinTask[21]]["NextTaskId"] = tYueShenSengLinTask[22]
rwtTask[tYueShenSengLinTask[21]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[21]]["DialogId"] = nDialog_Task19
rwtTask[tYueShenSengLinTask[21]]["TaskNpc"] =  nNpc_ShuRenShouLin
rwtTask[tYueShenSengLinTask[21]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[21]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[21]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[21]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuRenShouLin
rwtTask[tYueShenSengLinTask[21]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_ShuRenShouLin 
rwtTask[tYueShenSengLinTask[21]]["IsClickComplete"] = 0
--rwtTask[tYueShenSengLinTask[21]]["AwardId"] = 2000084
rwtTask[tYueShenSengLinTask[21]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000084
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[21]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[21]

--新的伙伴/卡等级
rwtTask[tYueShenSengLinTask[22]] = {}
rwtTask[tYueShenSengLinTask[22]]["Title"] = tLuaText[LANGUAGE_CONFIG][20438]
rwtTask[tYueShenSengLinTask[22]]["PreTaskId"] = tYueShenSengLinTask[21]
rwtTask[tYueShenSengLinTask[22]]["NextTaskId"] = tYueShenSengLinTask[23]
rwtTask[tYueShenSengLinTask[22]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
rwtTask[tYueShenSengLinTask[22]]["NeedLevel"] = 40
rwtTask[tYueShenSengLinTask[22]]["LackDialogId"] = 11431
rwtTask[tYueShenSengLinTask[22]]["DialogId"] = 11432

--新的伙伴/邀请木禅
rwtTask[tYueShenSengLinTask[23]] = {}
rwtTask[tYueShenSengLinTask[23]]["Title"] = tLuaText[LANGUAGE_CONFIG][20439]
rwtTask[tYueShenSengLinTask[23]]["PreTaskId"] = tYueShenSengLinTask[22]
rwtTask[tYueShenSengLinTask[23]]["NextTaskId"] = tYueShenSengLinTask[24]
rwtTask[tYueShenSengLinTask[23]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[23]]["DialogId"] = nDialog_Task20
rwtTask[tYueShenSengLinTask[23]]["TaskNpc"] =  nNpc_MuChan1
rwtTask[tYueShenSengLinTask[23]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[23]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[23]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[23]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_MuChan1
rwtTask[tYueShenSengLinTask[23]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_MuChan1 
rwtTask[tYueShenSengLinTask[23]]["IsClickComplete"] = 0

--新的伙伴/邀请阿德琳
rwtTask[tYueShenSengLinTask[24]] = {}
rwtTask[tYueShenSengLinTask[24]]["Title"] = tLuaText[LANGUAGE_CONFIG][20440]
rwtTask[tYueShenSengLinTask[24]]["PreTaskId"] = tYueShenSengLinTask[23]
rwtTask[tYueShenSengLinTask[24]]["NextTaskId"] = 10293
rwtTask[tYueShenSengLinTask[24]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenSengLinTask[24]]["DialogId"] = nDialog_Task21
rwtTask[tYueShenSengLinTask[24]]["TaskNpc"] =  nNpc_DeluyiShouLin
rwtTask[tYueShenSengLinTask[24]]["IsClickComplete"] = 0
rwtTask[tYueShenSengLinTask[24]]["StartAutoWay"] = {}
rwtTask[tYueShenSengLinTask[24]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenSengLinTask[24]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenSengLinTask[24]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenSengLinTask[24]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin
--rwtTask[tYueShenSengLinTask[24]]["AwardId"] = 2000085
rwtTask[tYueShenSengLinTask[24]]["Awards"] = {}
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"] = {}
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"][1] = {}
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000085
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYueShenSengLinTask[24]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYueShenSengLinTask[24]
rwtTask[tYueShenSengLinTask[24]]["OpenMercenaryTask"] = {}
rwtTask[tYueShenSengLinTask[24]]["OpenMercenaryTask"]["AreaId"] = 2003
rwtTask[tYueShenSengLinTask[24]]["OpenMercenaryTask"]["TownId"] = 200303

--------------------------------------------------------------------------------


