
--永夜森林

------------------------------------------Table and MainID

--永夜森林常量表
local tYongYe = {}

tYongYe.nMapId = 2003

------------------------------------------TaskID

tYongYe.nPriorTask = 10350 -- 前置任务
tYongYe.nLaterTask = 10369 -- 后续任务

tYongYe.nTask1 = 10293--永无白昼的森林 到达永夜森林
tYongYe.nTask2 = 10294--永无白昼的森林 帮助阿德琳
tYongYe.nTask3 = 10295--原来是不死者 原来是不死者
tYongYe.nTask4 = 10296--暗精灵部落 找暗精灵首领
tYongYe.nTask5 = 10297--暗精灵的委托 采集平息水晶
tYongYe.nTask6 = 10298--暗精灵的委托 收集魔脊半鱼人骨刺
tYongYe.nTask7 = 10299--完成委托 把材料交给首领
tYongYe.nTask8 = 10300--寻找大法师 前往森林北部
tYongYe.nTask9 = 10301--寻找大法师 前往森林东部
tYongYe.nTask10 = 10302--初见大法师 同加林交谈
tYongYe.nTask11 = 10303--初见大法师 护送加林
tYongYe.nTask12 = 10304--大法师的风采 不死者 -- 废弃(ID可回收)
tYongYe.nTask13 = 10305--大法师的风采 收服不死者 -- 废弃(ID可回收)
tYongYe.nTask14 = 10306--净化而不是消灭 了解不死者 -- 废弃(ID可回收)
tYongYe.nTask15 = 10307--疑点重重 怀疑加林
tYongYe.nTask16 = 10308--疑点重重 怀疑加林(导航)
tYongYe.nTask17 = 10309--疑点重重 黑魔法 -- 废弃(ID可回收)
tYongYe.nTask18 = 10310--新的不死者 不死者突然出现
tYongYe.nTask19 = 10311--加林的解释 加林的解释
tYongYe.nTask20 = 10312--永夜墓地 永夜墓地
tYongYe.nTask21 = 10313--树心城封印 询问加林
tYongYe.nTask22 = 10314--找出不死者 找出所有不死者
tYongYe.nTask23 = 10315--净化 交给加林
tYongYe.nTask24 = 10316--净化 真正的净化 -- 废弃(ID可回收)
tYongYe.nTask25 = 10317--事件终结 和暗精灵首领谈话
tYongYe.nTask26 = 10318--木工狂人 询问木匠达罗斯
tYongYe.nTask27 = 10319--木工狂人 采集桑木
tYongYe.nTask28 = 10320--麻烦的木匠 同木匠对话
tYongYe.nTask29 = 10321--采集关键材料 采集关键材料
tYongYe.nTask30 = 10368--完成委托 将材料交给木匠
tYongYe.nTask31 = 10322--制作船只 制作船只
tYongYe.nTask32 = 10367--再见，永夜森林 前往迷雾森林

------------------------------------------AutoPos

tYongYe.sPos_Enter = "-194.58,0.09,-217.61"
tYongYe.sPos_AnNiTe = "-201.66,0.09,-235.43"
tYongYe.sPos_JiaLinShiFa = "-249.42,0.09,-261.57"
tYongYe.sPos_AJLBL = "-194.11,0.22,-269.02"
tYongYe.sPos_DLZD = "-256.93,0.09,-270.44"


------------------------------------------GroupID

--Trap
tYongYe.nGTrap_YongYeEnter = 30273
tYongYe.nGTrap_KillAnNiTe = 30274
tYongYe.nGTrap_KillMJYuRen = 30275
tYongYe.nGTrap_KillJSBear = 30276
tYongYe.nGTrap_ESCORTJiaLin = 30277
tYongYe.nGTrap_JiaLinShiFa = 30278
tYongYe.nGTrap_KillJiaLinSon = 30279
tYongYe.nGTrap_KillBuSiZhe = 30280
tYongYe.nGTrap_Leave = 30281
tYongYe.nGTrap_PlayScene = 30314  -- （未使用）

--NPC
tYongYe.nNpc_ADeLin = 20205
tYongYe.nNpc_AnJingLing = 20206
tYongYe.nNpc_AnJingLing_WB = 20207
tYongYe.nNpc_JiaLin = 20208
tYongYe.nNpc_DaLuoSi = 20209
tYongYe.nNpc_BuSiZhe = 20239

--Collect
tYongYe.nCollect_Crystal = 60089 --备注：相关 lookface 更改 (4 -> 1003)
tYongYe.nCollect_SangMu = 60090 --备注：相关 lookface 更改 (2 -> 1001)



--Monster
tYongYe.nMonster_AnNiTe = 900199
tYongYe.nMonster_MJYuRen = 900200
tYongYe.nMonster_JSBear1 = 900201
tYongYe.nMonster_BuSiZhe1 = 900202
tYongYe.nMonster_BuSiZhe2 = 900203
tYongYe.nMonster_JSBear2 = 900204

--MonsterId
tYongYe.nMonId_AnNiTe = 9000086
tYongYe.nMonId_MJYuRen = 9000087
tYongYe.nMonId_JSBear1 = 9000088
tYongYe.nMonId_BuSiZhe1 = 9000089
tYongYe.nMonId_BuSiZhe2 = 9000090
tYongYe.nMonId_JSBear2 = 9000147

------------------------------------------DialogId

--Trap
tYongYe.nDTrap_YongYeEnter = 10600
tYongYe.nDTrap_KillAnNiTe = 10601
tYongYe.nDTrap_KillMJYuRen = 10602
tYongYe.nDTrap_KillJSBear = 10603
--tYongYe.nDTrap_ESCORTJiaLin = 10604
tYongYe.nDTrap_KillJiaLinSon = 10605
tYongYe.nDTrap_KillBuSiZhe = 10606

--NPC

tYongYe.nDNpc_ADeLin_1 = 10607
tYongYe.nDNpc_AnJingLing_1 = 10608
tYongYe.nDNpc_AnJingLing_2 = 10609
tYongYe.nDNpc_AnJingLing_WB_1 = 10610
tYongYe.nDNpc_JiaLin_1 = 10611
tYongYe.nDNpc_AnJingLing_3 = 10612
tYongYe.nDNpc_JiaLin_2 = 10613
tYongYe.nDNpc_JiaLin_3 = 10614
tYongYe.nDNpc_JiaLin_4 = 10615
tYongYe.nDNpc_JiaLin_5 = 10616
tYongYe.nDNpc_JiaLin_6 = 10617
tYongYe.nDNpc_AnJingLing_4 = 10618
tYongYe.nDNpc_DaLuoSi_1 = 10619
tYongYe.nDNpc_DaLuoSi_2 = 10620
tYongYe.nDNpc_DaLuoSi_3 = 10621
tYongYe.nDNpc_Leave = 10622

--Scene

tYongYe.nSDialogId_1 = 10623
tYongYe.nSDialogId_2 = 10624
tYongYe.nSDialogId_3 = 10625

------------------------------------------GenID

-- Trap
tYongYe.nGenTrap_YongYeEnter = 20030154
tYongYe.nGenTrap_KillAnNiTe = 20030136
tYongYe.nGenTrap_KillMJYuRen = 20030137
tYongYe.nGenTrap_KillJSBear = 20030138
tYongYe.nGenTrap_ESCORTJiaLin = 20030139
tYongYe.nGenTrap_JiaLinShiFa = 20030140
tYongYe.nGenTrap_Leave = 20030141
tYongYe.nGenTrap_KillJiaLinSon = 20030155
tYongYe.nGenTrap_KillBuSiZhe = 20030156
tYongYe.nGenTrap_PlayScene_1 = 20030227 -- 未使用

-- Monster
tYongYe.nGenMon_AnNiTe_1 = 20030142
tYongYe.nGenMon_MJYuRen_1 = 20030143
tYongYe.nGenMon_JSBear_1 = 20030144
tYongYe.nGenMon_BuSiZhe_1 = 20030145
tYongYe.nGenMon_BuSiZhe_2 = 20030146
tYongYe.nGenMon_JSBear_2 = 20030147

-- NPC 
tYongYe.nGenNpc_ADeLin_1 = 20030148
tYongYe.nGenNpc_JiaLin_1 = 20030149
tYongYe.nGenNpc_JiaLin_2 = 20030150
tYongYe.nGenNpc_JiaLin_3 = 20030151
tYongYe.nGenNpc_AnJingLing = 20030157 -- 永久
tYongYe.nGenNpc_AnJingLing_WB = 20030158 -- 永久
tYongYe.nGenNpc_DaLuoSi = 20030159 -- 永久
tYongYe.nGenNpc_BuSiZhe_1 = 20030160

--Collect
tYongYe.nGenCol_Crystal = 20030152
tYongYe.nGenCol_SangMu = 20030153

------------------------------------------NPC

tYongYe.nNpcRes_ADeLin = 3157
tYongYe.nNpcRes_AnJingLing = 3164
tYongYe.nNpcRes_AnJingLing_WB = 3165
tYongYe.nNpcRes_JiaLin = 3166
tYongYe.nNpcRes_DaLuoSi = 3167

tYongYe.nNpcRes_MuChan = 104
tYongYe.nNpcRes_GeLai = 3132

tYongYe.nNpcRes_BSZNver = 3280

------------------------------------------rwtNpcGroup

--永夜森林入口陷阱
rwtNpcGroup[tYongYe.nGTrap_YongYeEnter] = rwtNpcGroup[tYongYe.nGTrap_YongYeEnter] or {}
rwtNpcGroup[tYongYe.nGTrap_YongYeEnter]["Type"] = CONST_NPCGROUP_TYPE.Trap

--安妮特战斗陷阱
rwtNpcGroup[tYongYe.nGTrap_KillAnNiTe] = rwtNpcGroup[tYongYe.nGTrap_KillAnNiTe] or {}
rwtNpcGroup[tYongYe.nGTrap_KillAnNiTe]["Type"] = CONST_NPCGROUP_TYPE.Trap

--阿德琳
rwtNpcGroup[tYongYe.nNpc_ADeLin] = rwtNpcGroup[tYongYe.nNpc_ADeLin] or {}  
rwtNpcGroup[tYongYe.nNpc_ADeLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tYongYe.nNpc_ADeLin]["NpcId"] = tYongYe.nNpcRes_ADeLin

--暗精灵首领
rwtNpcGroup[tYongYe.nNpc_AnJingLing] = rwtNpcGroup[tYongYe.nNpc_AnJingLing] or {}  
rwtNpcGroup[tYongYe.nNpc_AnJingLing]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tYongYe.nNpc_AnJingLing]["NpcId"] = tYongYe.nNpcRes_AnJingLing

--不死者女儿
rwtNpcGroup[tYongYe.nNpc_BuSiZhe] = rwtNpcGroup[tYongYe.nNpc_BuSiZhe] or {}  
rwtNpcGroup[tYongYe.nNpc_BuSiZhe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tYongYe.nNpc_BuSiZhe]["NpcId"] = tYongYe.nNpcRes_BSZNver

--采集平息水晶
rwtNpcGroup[tYongYe.nCollect_Crystal] = rwtNpcGroup[tYongYe.nCollect_Crystal] or {}
rwtNpcGroup[tYongYe.nCollect_Crystal]["Type"] = CONST_NPCGROUP_TYPE.Collect

--魔脊半鱼人战斗陷阱
rwtNpcGroup[tYongYe.nGTrap_KillMJYuRen] = rwtNpcGroup[tYongYe.nGTrap_KillMJYuRen] or {}
rwtNpcGroup[tYongYe.nGTrap_KillMJYuRen]["Type"] = CONST_NPCGROUP_TYPE.Trap

--暗精灵卫兵
rwtNpcGroup[tYongYe.nNpc_AnJingLing_WB] = rwtNpcGroup[tYongYe.nNpc_AnJingLing_WB] or {}  
rwtNpcGroup[tYongYe.nNpc_AnJingLing_WB]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tYongYe.nNpc_AnJingLing_WB]["NpcId"] = tYongYe.nNpcRes_AnJingLing_WB

--晶石熊战斗陷阱
rwtNpcGroup[tYongYe.nGTrap_KillJSBear] = rwtNpcGroup[tYongYe.nGTrap_KillJSBear] or {}
rwtNpcGroup[tYongYe.nGTrap_KillJSBear]["Type"] = CONST_NPCGROUP_TYPE.Trap

--加林
rwtNpcGroup[tYongYe.nNpc_JiaLin] = rwtNpcGroup[tYongYe.nNpc_JiaLin] or {}  
rwtNpcGroup[tYongYe.nNpc_JiaLin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tYongYe.nNpc_JiaLin]["NpcId"] = tYongYe.nNpcRes_JiaLin

--护送加林陷阱
rwtNpcGroup[tYongYe.nGTrap_ESCORTJiaLin] = rwtNpcGroup[tYongYe.nGTrap_ESCORTJiaLin] or {}
rwtNpcGroup[tYongYe.nGTrap_ESCORTJiaLin]["Type"] = CONST_NPCGROUP_TYPE.Trap

--加林施法陷阱
rwtNpcGroup[tYongYe.nGTrap_JiaLinShiFa] = rwtNpcGroup[tYongYe.nGTrap_JiaLinShiFa] or {}
rwtNpcGroup[tYongYe.nGTrap_JiaLinShiFa]["Type"] = CONST_NPCGROUP_TYPE.Trap

--不死者加林儿子战斗陷阱
rwtNpcGroup[tYongYe.nGTrap_KillJiaLinSon] = rwtNpcGroup[tYongYe.nGTrap_KillJiaLinSon] or {}
rwtNpcGroup[tYongYe.nGTrap_KillJiaLinSon]["Type"] = CONST_NPCGROUP_TYPE.Trap

--出逃不死者战斗陷阱
rwtNpcGroup[tYongYe.nGTrap_KillBuSiZhe] = rwtNpcGroup[tYongYe.nGTrap_KillBuSiZhe] or {}
rwtNpcGroup[tYongYe.nGTrap_KillBuSiZhe]["Type"] = CONST_NPCGROUP_TYPE.Trap

--木匠达罗斯的家
rwtNpcGroup[tYongYe.nNpc_DaLuoSi] = rwtNpcGroup[tYongYe.nNpc_DaLuoSi] or {}  
rwtNpcGroup[tYongYe.nNpc_DaLuoSi]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tYongYe.nNpc_DaLuoSi]["NpcId1"] = tYongYe.nNpcRes_DaLuoSi

--采集桑木
rwtNpcGroup[tYongYe.nCollect_SangMu] = rwtNpcGroup[tYongYe.nCollect_SangMu] or {}
rwtNpcGroup[tYongYe.nCollect_SangMu]["Type"] = CONST_NPCGROUP_TYPE.Collect


--离开永夜森林陷阱
rwtNpcGroup[tYongYe.nGTrap_Leave] = rwtNpcGroup[tYongYe.nGTrap_Leave] or {}
rwtNpcGroup[tYongYe.nGTrap_Leave]["Type"] = CONST_NPCGROUP_TYPE.Trap

------------------------------------------Func



------------------------------------------rwtNpc

--阿德琳
rwtNpc[tYongYe.nNpcRes_ADeLin] = rwtNpc[tYongYe.nNpcRes_ADeLin] or {}
rwtNpc[tYongYe.nNpcRes_ADeLin]["DialogId"] = {1270,1271,1471}

--暗精灵首领
rwtNpc[tYongYe.nNpcRes_AnJingLing] = rwtNpc[tYongYe.nNpcRes_AnJingLing] or {}
rwtNpc[tYongYe.nNpcRes_AnJingLing]["DialogId"] = {1272,1273,1274}

--暗精灵卫兵
rwtNpc[tYongYe.nNpcRes_AnJingLing_WB] = rwtNpc[tYongYe.nNpcRes_AnJingLing_WB] or {}
rwtNpc[tYongYe.nNpcRes_AnJingLing_WB]["DialogId"] = {1472,1473,1474}

--加林
rwtNpc[tYongYe.nNpcRes_JiaLin] = rwtNpc[tYongYe.nNpcRes_JiaLin] or {}
rwtNpc[tYongYe.nNpcRes_JiaLin]["DialogId"] = {1475,1476,1477}

--达罗斯
rwtNpc[tYongYe.nNpcRes_DaLuoSi] = rwtNpc[tYongYe.nNpcRes_DaLuoSi] or {}
rwtNpc[tYongYe.nNpcRes_DaLuoSi]["DialogId"] = {1478,1479,1480}

--不死者女儿
rwtNpc[tYongYe.nNpcRes_BSZNver] = rwtNpc[tYongYe.nNpcRes_BSZNver] or {}
rwtNpc[tYongYe.nNpcRes_BSZNver]["DialogId"] = {1481,1482,1483}





------------------------------------------MainTaskList

--[陷阱对白][任务面板寻路]
rwtTask[tYongYe.nTask1] = {}
rwtTask[tYongYe.nTask1]["Title"] = tLuaText[LANGUAGE_CONFIG][20190]
rwtTask[tYongYe.nTask1]["PreTaskId"] = tYongYe.nPriorTask
rwtTask[tYongYe.nTask1]["NextTaskId"] = tYongYe.nTask2
rwtTask[tYongYe.nTask1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYongYe.nTask1]["ReqTrap1"] = tYongYe.nGTrap_YongYeEnter
rwtTask[tYongYe.nTask1]["DialogId"] = tYongYe.nDTrap_YongYeEnter
rwtTask[tYongYe.nTask1]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask1]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask1]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenTrap_YongYeEnter
rwtTask[tYongYe.nTask1]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask1]["OpenTransfer"] = CONST_TRANSFER_INDEX.YONGYESENLIN
rwtTask[tYongYe.nTask1]["OpenTransferTip"] =  tLuaText[LANGUAGE_CONFIG][10034]
rwtTask[tYongYe.nTask1]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask1]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tYongYe.nTask1]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask1]["StartAutoWay"]["FindWayPos"] = tYongYe.sPos_Enter

--[对白选择杀怪][自动寻路]
rwtTask[tYongYe.nTask2] = {}
rwtTask[tYongYe.nTask2]["Title" ]= tLuaText[LANGUAGE_CONFIG][20191]
rwtTask[tYongYe.nTask2]["PreTaskId" ]= tYongYe.nTask1
rwtTask[tYongYe.nTask2]["NextTaskId" ]= tYongYe.nTask3
rwtTask[tYongYe.nTask2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenMon_AnNiTe_1
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenTrap_KillAnNiTe
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][3] = {}
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][3]["GenId"] = tYongYe.nGenNpc_ADeLin_1
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][3]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask2]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask2]["KillMonsterGroup1" ]= tYongYe.nMonster_AnNiTe
rwtTask[tYongYe.nTask2]["ReqTrap1" ]= tYongYe.nGTrap_KillAnNiTe
rwtTask[tYongYe.nTask2]["DialogId" ]= tYongYe.nDTrap_KillAnNiTe
rwtTask[tYongYe.nTask2]["MonsterGroupGenId"] = tYongYe.nGenMon_AnNiTe_1
rwtTask[tYongYe.nTask2]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tYongYe.nTask2]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask2]["StartAutoWay"]["FindWayPos"] = tYongYe.sPos_AnNiTe
rwtTask[tYongYe.nTask2]["Awards"] = {}
rwtTask[tYongYe.nTask2]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask2]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000110
rwtTask[tYongYe.nTask2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask2


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask3] = {}
rwtTask[tYongYe.nTask3]["Title" ]= tLuaText[LANGUAGE_CONFIG][20192]
rwtTask[tYongYe.nTask3]["PreTaskId" ]= tYongYe.nTask2
rwtTask[tYongYe.nTask3]["NextTaskId" ]= tYongYe.nTask4
rwtTask[tYongYe.nTask3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask3]["TaskNpc"] = tYongYe.nNpcRes_ADeLin
rwtTask[tYongYe.nTask3]["DialogId" ]= tYongYe.nDNpc_ADeLin_1
rwtTask[tYongYe.nTask3]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask3]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask3]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_ADeLin_1
rwtTask[tYongYe.nTask3]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask3]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask3]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask3]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_ADeLin
rwtTask[tYongYe.nTask3]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_ADeLin_1


--[NPC护送][自动寻路]
rwtTask[tYongYe.nTask4] = {}
rwtTask[tYongYe.nTask4]["Title" ]= tLuaText[LANGUAGE_CONFIG][20193]
rwtTask[tYongYe.nTask4]["PreTaskId" ]= tYongYe.nTask3
rwtTask[tYongYe.nTask4]["NextTaskId" ]= tYongYe.nTask5
rwtTask[tYongYe.nTask4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tYongYe.nTask4]["TaskNpc"] = tYongYe.nNpcRes_AnJingLing
rwtTask[tYongYe.nTask4]["DialogId" ]= tYongYe.nDNpc_AnJingLing_1
rwtTask[tYongYe.nTask4]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask4]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask4]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_AnJingLing
rwtTask[tYongYe.nTask4]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_AnJingLing
rwtTask[tYongYe.nTask4]["Awards"] = {}
rwtTask[tYongYe.nTask4]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask4]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000111
rwtTask[tYongYe.nTask4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask4


--[采集][任务面板寻路]
rwtTask[tYongYe.nTask5] = {}
rwtTask[tYongYe.nTask5]["Title"]= tLuaText[LANGUAGE_CONFIG][20194]
rwtTask[tYongYe.nTask5]["PreTaskId"]= tYongYe.nTask4
rwtTask[tYongYe.nTask5]["NextTaskId"]= tYongYe.nTask6
rwtTask[tYongYe.nTask5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYongYe.nTask5]["ReqCollectId1"] = tYongYe.nCollect_Crystal
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenCol_Crystal
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenMon_MJYuRen_1
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask5]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask5]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask5]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nCollect_Crystal
rwtTask[tYongYe.nTask5]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenCol_Crystal


--[对白选择杀怪][任务面板寻路]
rwtTask[tYongYe.nTask6] = {}
rwtTask[tYongYe.nTask6]["Title" ]= tLuaText[LANGUAGE_CONFIG][20195]
rwtTask[tYongYe.nTask6]["PreTaskId" ]= tYongYe.nTask5
rwtTask[tYongYe.nTask6]["NextTaskId" ]= tYongYe.nTask7
rwtTask[tYongYe.nTask6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenTrap_KillMJYuRen
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenMon_MJYuRen_1
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask6]["KillMonsterGroup1" ]= tYongYe.nMonster_MJYuRen
rwtTask[tYongYe.nTask6]["ReqTrap1"]= tYongYe.nGTrap_KillMJYuRen
rwtTask[tYongYe.nTask6]["DialogId"]= tYongYe.nDTrap_KillMJYuRen
rwtTask[tYongYe.nTask6]["MonsterGroupGenId"] = tYongYe.nGenMon_MJYuRen_1
rwtTask[tYongYe.nTask6]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask6]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tYongYe.nTask6]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask6]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nMonster_MJYuRen
rwtTask[tYongYe.nTask6]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenMon_MJYuRen_1



--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask7] = {}
rwtTask[tYongYe.nTask7]["Title" ]= tLuaText[LANGUAGE_CONFIG][20196]
rwtTask[tYongYe.nTask7]["PreTaskId" ]= tYongYe.nTask6
rwtTask[tYongYe.nTask7]["NextTaskId" ]= tYongYe.nTask8
rwtTask[tYongYe.nTask7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask7]["DialogId" ]= tYongYe.nDNpc_AnJingLing_2
rwtTask[tYongYe.nTask7]["TaskNpc"] = tYongYe.nNpcRes_AnJingLing
rwtTask[tYongYe.nTask7]["Awards"] = {}
rwtTask[tYongYe.nTask7]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask7]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask7]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask7]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask7]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000110
rwtTask[tYongYe.nTask7]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask7]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask7
rwtTask[tYongYe.nTask7]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask7]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask7]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_AnJingLing
rwtTask[tYongYe.nTask7]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_AnJingLing

--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask8] = {}
rwtTask[tYongYe.nTask8]["Title" ]= tLuaText[LANGUAGE_CONFIG][20197] 
rwtTask[tYongYe.nTask8]["PreTaskId" ]= tYongYe.nTask7
rwtTask[tYongYe.nTask8]["NextTaskId" ]= tYongYe.nTask9
rwtTask[tYongYe.nTask8]["DialogId" ]= tYongYe.nDNpc_AnJingLing_WB_1
rwtTask[tYongYe.nTask8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask8]["TaskNpc"] = tYongYe.nNpcRes_AnJingLing_WB
rwtTask[tYongYe.nTask8]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask8]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask8]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_AnJingLing_WB
rwtTask[tYongYe.nTask8]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_AnJingLing_WB


--[对白选择杀怪][自动寻路]
rwtTask[tYongYe.nTask9] = {}
rwtTask[tYongYe.nTask9]["Title" ]= tLuaText[LANGUAGE_CONFIG][20198]
rwtTask[tYongYe.nTask9]["PreTaskId" ]= tYongYe.nTask8
rwtTask[tYongYe.nTask9]["NextTaskId" ]= tYongYe.nTask10
rwtTask[tYongYe.nTask9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenMon_JSBear_1
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenTrap_KillJSBear
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask9]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask9]["KillMonsterGroup1" ]= tYongYe.nMonster_JSBear1
rwtTask[tYongYe.nTask9]["ReqTrap1"]= tYongYe.nGTrap_KillJSBear
rwtTask[tYongYe.nTask9]["DialogId"]= tYongYe.nDTrap_KillJSBear
rwtTask[tYongYe.nTask9]["MonsterGroupGenId"] = tYongYe.nGenMon_JSBear_1
rwtTask[tYongYe.nTask9]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask9]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tYongYe.nTask9]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask9]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nMonster_JSBear1
rwtTask[tYongYe.nTask9]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenMon_JSBear_1
rwtTask[tYongYe.nTask9]["Awards"] = {}
rwtTask[tYongYe.nTask9]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask9]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000110
rwtTask[tYongYe.nTask9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask9


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask10] = {}
rwtTask[tYongYe.nTask10]["Title" ]= tLuaText[LANGUAGE_CONFIG][20199]
rwtTask[tYongYe.nTask10]["PreTaskId" ]= tYongYe.nTask9
rwtTask[tYongYe.nTask10]["NextTaskId" ]= tYongYe.nTask11
rwtTask[tYongYe.nTask10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask10]["DialogId" ]= tYongYe.nDNpc_JiaLin_1
rwtTask[tYongYe.nTask10]["TaskNpc"] = tYongYe.nNpcRes_JiaLin
rwtTask[tYongYe.nTask10]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask10]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask10]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_1
rwtTask[tYongYe.nTask10]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask10]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask10]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask10]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_JiaLin
rwtTask[tYongYe.nTask10]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_JiaLin_1



--[NPC护送][自动寻路]
rwtTask[tYongYe.nTask11] = {}
rwtTask[tYongYe.nTask11]["Title" ]= tLuaText[LANGUAGE_CONFIG][20200]
rwtTask[tYongYe.nTask11]["PreTaskId" ]= tYongYe.nTask10
rwtTask[tYongYe.nTask11]["NextTaskId" ]= tYongYe.nTask15
rwtTask[tYongYe.nTask11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tYongYe.nTask11]["ReqTrap1"]= tYongYe.nGTrap_ESCORTJiaLin
rwtTask[tYongYe.nTask11]["DialogId"]= tYongYe.nSDialogId_1
rwtTask[tYongYe.nTask11]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask11]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask11]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenTrap_ESCORTJiaLin
rwtTask[tYongYe.nTask11]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask11]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask11]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tYongYe.nTask11]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask11]["StartAutoWay"]["FindWayPos"] = tYongYe.sPos_AJLBL
rwtTask[tYongYe.nTask11]["Awards"] = {}
rwtTask[tYongYe.nTask11]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask11]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000112
rwtTask[tYongYe.nTask11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask11

--[任务面板对白][不寻路]
rwtTask[tYongYe.nTask15] = {}
rwtTask[tYongYe.nTask15]["Title" ]= tLuaText[LANGUAGE_CONFIG][20201]
rwtTask[tYongYe.nTask15]["PreTaskId" ]= tYongYe.nTask11
rwtTask[tYongYe.nTask15]["NextTaskId" ]= tYongYe.nTask16
rwtTask[tYongYe.nTask15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYongYe.nTask15]["ReqTrap1" ]= tYongYe.nGTrap_ESCORTJiaLin
rwtTask[tYongYe.nTask15]["DialogId" ]= tYongYe.nDNpc_JiaLin_3
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenTrap_ESCORTJiaLin
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask15]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask15]["AutoTaskDialog"] = tYongYe.nDNpc_JiaLin_3


--[陷阱对白][自动寻路]
rwtTask[tYongYe.nTask16] = {}
rwtTask[tYongYe.nTask16]["Title"] = tLuaText[LANGUAGE_CONFIG][20202]
rwtTask[tYongYe.nTask16]["PreTaskId"] = tYongYe.nTask15
rwtTask[tYongYe.nTask16]["NextTaskId"] = tYongYe.nTask18
rwtTask[tYongYe.nTask16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tYongYe.nTask16]["ReqTrap1" ]= tYongYe.nGTrap_JiaLinShiFa
rwtTask[tYongYe.nTask16]["DialogId" ]= tYongYe.nSDialogId_2
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenTrap_JiaLinShiFa
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask16]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask16]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tYongYe.nTask16]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask16]["StartAutoWay"]["FindWayPos"] = tYongYe.sPos_JiaLinShiFa




--[对白选择杀怪][任务面板寻路]
rwtTask[tYongYe.nTask18] = {}
rwtTask[tYongYe.nTask18]["Title" ]=tLuaText[LANGUAGE_CONFIG][20203]
rwtTask[tYongYe.nTask18]["PreTaskId" ]= tYongYe.nTask16
rwtTask[tYongYe.nTask18]["NextTaskId" ]= tYongYe.nTask19
rwtTask[tYongYe.nTask18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenMon_BuSiZhe_1
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][3] = {}
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][3]["GenId"] = tYongYe.nGenTrap_KillJiaLinSon
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][3]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask18]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask18]["KillMonsterGroup1" ]= tYongYe.nMonster_BuSiZhe1
rwtTask[tYongYe.nTask18]["ReqTrap1"]= tYongYe.nGTrap_KillJiaLinSon
rwtTask[tYongYe.nTask18]["DialogId"]= tYongYe.nDTrap_KillJiaLinSon
rwtTask[tYongYe.nTask18]["MonsterGroupGenId"] = tYongYe.nGenMon_BuSiZhe_1
rwtTask[tYongYe.nTask18]["AcceptBattleGenId"] = tYongYe.nGenMon_BuSiZhe_1


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask19] = {}
rwtTask[tYongYe.nTask19]["Title" ]= tLuaText[LANGUAGE_CONFIG][20204]
rwtTask[tYongYe.nTask19]["PreTaskId" ]= tYongYe.nTask18
rwtTask[tYongYe.nTask19]["NextTaskId" ]= tYongYe.nTask20
rwtTask[tYongYe.nTask19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask19]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask19]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask19]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask19]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask19]["TaskNpc"] = tYongYe.nNpcRes_JiaLin
rwtTask[tYongYe.nTask19]["DialogId" ]= tYongYe.nDNpc_JiaLin_4
rwtTask[tYongYe.nTask19]["UnlockCopyMap1"] = 3042
rwtTask[tYongYe.nTask19]["Awards"] = {}
rwtTask[tYongYe.nTask19]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask19]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000113
rwtTask[tYongYe.nTask19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask19
rwtTask[tYongYe.nTask19]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask19]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask19]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_JiaLin
rwtTask[tYongYe.nTask19]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_JiaLin_3

--[副本][任务面板寻路]
rwtTask[tYongYe.nTask20] = {} 
rwtTask[tYongYe.nTask20]["Title"]= tLuaText[LANGUAGE_CONFIG][20205]
rwtTask[tYongYe.nTask20]["PreTaskId"] = tYongYe.nTask19
rwtTask[tYongYe.nTask20]["NextTaskId"]= tYongYe.nTask21
rwtTask[tYongYe.nTask20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tYongYe.nTask20]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask20]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask20]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask20]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask20]["PassCopyMap1"] = {3042}
rwtTask[tYongYe.nTask20]["PassCopyMapCount1"] = 1
rwtTask[tYongYe.nTask20]["IsClickComplete"] = 1
rwtTask[tYongYe.nTask20]["OpenCopyMap"] = 3042
rwtTask[tYongYe.nTask20]["UnlockCopyMap1"] = 3047
rwtTask[tYongYe.nTask20]["Awards"] = {}
rwtTask[tYongYe.nTask20]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask20]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask20]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask20]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask20]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000113
rwtTask[tYongYe.nTask20]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask20]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask20
rwtTask[tYongYe.nTask20]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask20]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tYongYe.nTask20]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask20]["StartAutoWay"]["FindWayPos"] = tYongYe.sPos_DLZD


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask21] = {}
rwtTask[tYongYe.nTask21]["Title" ]= tLuaText[LANGUAGE_CONFIG][20206]
rwtTask[tYongYe.nTask21]["PreTaskId" ]= tYongYe.nTask20
rwtTask[tYongYe.nTask21]["NextTaskId" ]= tYongYe.nTask22
rwtTask[tYongYe.nTask21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask21]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask21]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask21]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask21]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask21]["TaskNpc"] = tYongYe.nNpcRes_JiaLin
rwtTask[tYongYe.nTask21]["DialogId" ]= tYongYe.nDNpc_JiaLin_5
rwtTask[tYongYe.nTask21]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask21]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask21]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_JiaLin
rwtTask[tYongYe.nTask21]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_JiaLin_3

--[对白选择杀怪][任务面板寻路]
rwtTask[tYongYe.nTask22] = {}
rwtTask[tYongYe.nTask22]["Title" ]= tLuaText[LANGUAGE_CONFIG][20207]
rwtTask[tYongYe.nTask22]["PreTaskId" ]= tYongYe.nTask21
rwtTask[tYongYe.nTask22]["NextTaskId" ]= tYongYe.nTask23
rwtTask[tYongYe.nTask22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][2] = {}
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][2]["GenId"] = tYongYe.nGenMon_BuSiZhe_2
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][2]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][3] = {}
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][3]["GenId"] = tYongYe.nGenTrap_KillBuSiZhe
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][3]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask22]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask22]["KillMonsterGroup1" ]= tYongYe.nMonster_BuSiZhe2
rwtTask[tYongYe.nTask22]["ReqTrap1"]= tYongYe.nGTrap_KillBuSiZhe
rwtTask[tYongYe.nTask22]["DialogId" ]= tYongYe.nDTrap_KillBuSiZhe
rwtTask[tYongYe.nTask22]["MonsterGroupGenId"] = tYongYe.nGenMon_BuSiZhe_2
rwtTask[tYongYe.nTask22]["Awards"] = {}
rwtTask[tYongYe.nTask22]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask22]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask22]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask22]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask22]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000113
rwtTask[tYongYe.nTask22]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask22]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask22
rwtTask[tYongYe.nTask22]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask22]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tYongYe.nTask22]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask22]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nMonster_BuSiZhe2
rwtTask[tYongYe.nTask22]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenMon_BuSiZhe_2


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask23] = {}
rwtTask[tYongYe.nTask23]["Title" ]= tLuaText[LANGUAGE_CONFIG][20208]
rwtTask[tYongYe.nTask23]["PreTaskId" ]= tYongYe.nTask22
rwtTask[tYongYe.nTask23]["NextTaskId" ]= tYongYe.nTask25
rwtTask[tYongYe.nTask23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask23]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask23]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask23]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenNpc_JiaLin_3
rwtTask[tYongYe.nTask23]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask23]["TaskNpc"] = tYongYe.nNpcRes_JiaLin
rwtTask[tYongYe.nTask23]["DialogId" ]= tYongYe.nDNpc_JiaLin_6
rwtTask[tYongYe.nTask23]["DialogueEndFunc" ] = function()
	if rwHasGenEvent(tYongYe.nGenNpc_JiaLin_3) then
		rwDelGenEvent(tYongYe.nGenNpc_JiaLin_3)
	end
	rwStoryTrigger(3402,2,0)
end
rwtTask[tYongYe.nTask23]["IsClickComplete"] = 1
rwtTask[tYongYe.nTask23]["Awards"] = {}
rwtTask[tYongYe.nTask23]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask23]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask23]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask23]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask23]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000200
rwtTask[tYongYe.nTask23]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask23]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask23
rwtTask[tYongYe.nTask23]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask23]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask23]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_JiaLin
rwtTask[tYongYe.nTask23]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_JiaLin_3

--[NPC对白][自动寻路]
rwtTask[tYongYe.nTask25] = {}
rwtTask[tYongYe.nTask25]["Title" ]= tLuaText[LANGUAGE_CONFIG][20209]
rwtTask[tYongYe.nTask25]["PreTaskId" ]= tYongYe.nTask23
rwtTask[tYongYe.nTask25]["NextTaskId" ]= tYongYe.nTask26
rwtTask[tYongYe.nTask25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask25]["TaskNpc"] = tYongYe.nNpcRes_AnJingLing
rwtTask[tYongYe.nTask25]["DialogId" ]= tYongYe.nDNpc_AnJingLing_4
rwtTask[tYongYe.nTask25]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask25]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask25]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_AnJingLing
rwtTask[tYongYe.nTask25]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_AnJingLing
rwtTask[tYongYe.nTask25]["Awards"] = {}
rwtTask[tYongYe.nTask25]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask25]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask25]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask25]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask25]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000201
rwtTask[tYongYe.nTask25]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask25]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask25

--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask26] = {}
rwtTask[tYongYe.nTask26]["Title" ]= tLuaText[LANGUAGE_CONFIG][20210]
rwtTask[tYongYe.nTask26]["PreTaskId" ]= tYongYe.nTask25
rwtTask[tYongYe.nTask26]["NextTaskId" ]= tYongYe.nTask27
rwtTask[tYongYe.nTask26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask26]["TaskNpc"] = tYongYe.nNpcRes_DaLuoSi
rwtTask[tYongYe.nTask26]["DialogId" ]= tYongYe.nDNpc_DaLuoSi_1
rwtTask[tYongYe.nTask26]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask26]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask26]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask26]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_DaLuoSi
rwtTask[tYongYe.nTask26]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_DaLuoSi

--[采集][自动寻路]
rwtTask[tYongYe.nTask27] = {}
rwtTask[tYongYe.nTask27]["Title"]=tLuaText[LANGUAGE_CONFIG][20211]
rwtTask[tYongYe.nTask27]["PreTaskId"]= tYongYe.nTask26 
rwtTask[tYongYe.nTask27]["NextTaskId"]= tYongYe.nTask28
rwtTask[tYongYe.nTask27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYongYe.nTask27]["ReqCollectId1"] = tYongYe.nCollect_SangMu
rwtTask[tYongYe.nTask27]["ReqCollectCount1"] = 1
rwtTask[tYongYe.nTask27]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask27]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask27]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenCol_SangMu
rwtTask[tYongYe.nTask27]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask27]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask27]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask27]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask27]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nCollect_SangMu
rwtTask[tYongYe.nTask27]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenCol_SangMu
rwtTask[tYongYe.nTask27]["Awards"] = {}
rwtTask[tYongYe.nTask27]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask27]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask27]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask27]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask27]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000200
rwtTask[tYongYe.nTask27]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask27]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask27

--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask28] = {}
rwtTask[tYongYe.nTask28]["Title" ]= tLuaText[LANGUAGE_CONFIG][20212]
rwtTask[tYongYe.nTask28]["PreTaskId" ]= tYongYe.nTask27
rwtTask[tYongYe.nTask28]["NextTaskId" ]= tYongYe.nTask29
rwtTask[tYongYe.nTask28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask28]["TaskNpc"] = tYongYe.nNpcRes_DaLuoSi
rwtTask[tYongYe.nTask28]["DialogId"] = tYongYe.nDNpc_DaLuoSi_2
rwtTask[tYongYe.nTask28]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask28]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask28]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask28]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_DaLuoSi
rwtTask[tYongYe.nTask28]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_DaLuoSi

--[对白选择杀怪][任务面板寻路]
rwtTask[tYongYe.nTask29] = {}
rwtTask[tYongYe.nTask29]["Title" ]= tLuaText[LANGUAGE_CONFIG][20213]
rwtTask[tYongYe.nTask29]["PreTaskId" ]= tYongYe.nTask28
rwtTask[tYongYe.nTask29]["NextTaskId" ]= tYongYe.nTask30
rwtTask[tYongYe.nTask29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYongYe.nTask29]["MonsterGroupGenId"] = tYongYe.nGenMon_JSBear_2
rwtTask[tYongYe.nTask29]["KillMonsterGroup1" ]= tYongYe.nMonster_JSBear2
rwtTask[tYongYe.nTask29]["DynaNpcGroupGen"] = {}
rwtTask[tYongYe.nTask29]["DynaNpcGroupGen"][1] = {}
rwtTask[tYongYe.nTask29]["DynaNpcGroupGen"][1]["GenId"] = tYongYe.nGenMon_JSBear_2
rwtTask[tYongYe.nTask29]["DynaNpcGroupGen"][1]["MapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYongYe.nTask29]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask29]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tYongYe.nTask29]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask29]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nMonster_JSBear2
rwtTask[tYongYe.nTask29]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenMon_JSBear_2


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask30] = {}
rwtTask[tYongYe.nTask30]["Title" ]= tLuaText[LANGUAGE_CONFIG][20214]
rwtTask[tYongYe.nTask30]["PreTaskId" ]= tYongYe.nTask29
rwtTask[tYongYe.nTask30]["NextTaskId" ]= tYongYe.nTask31
rwtTask[tYongYe.nTask30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask30]["TaskNpc"] = tYongYe.nNpcRes_DaLuoSi
rwtTask[tYongYe.nTask30]["DialogId"] = tYongYe.nDNpc_DaLuoSi_3
rwtTask[tYongYe.nTask30]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask30]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask30]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask30]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_DaLuoSi
rwtTask[tYongYe.nTask30]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_DaLuoSi
rwtTask[tYongYe.nTask30]["Awards"] = {}
rwtTask[tYongYe.nTask30]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask30]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask30]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask30]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask30]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000201
rwtTask[tYongYe.nTask30]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask30]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask30

--[倒计时][不寻路]
rwtTask[tYongYe.nTask31] = {}
rwtTask[tYongYe.nTask31]["Title"] = tLuaText[LANGUAGE_CONFIG][20215]
rwtTask[tYongYe.nTask31]["PreTaskId" ]= tYongYe.nTask30
rwtTask[tYongYe.nTask31]["NextTaskId" ]= tYongYe.nTask32
rwtTask[tYongYe.nTask31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
--rwtTask[tYongYe.nTask31]["TaskFinishTime"] = 10
rwtTask[tYongYe.nTask31]["IsClickComplete"] = 1
rwtTask[tYongYe.nTask31]["NeedLevel"] = 42
--rwtTask[tYongYe.nTask31]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10038]
rwtTask[tYongYe.nTask31]["LackDialogId"] = 11433


--[NPC对白][任务面板寻路]
rwtTask[tYongYe.nTask32] = {}
rwtTask[tYongYe.nTask32]["Title"] = tLuaText[LANGUAGE_CONFIG][20216]
rwtTask[tYongYe.nTask32]["PreTaskId"] = tYongYe.nTask31
rwtTask[tYongYe.nTask32]["NextTaskId"] = tYongYe.nLaterTask
rwtTask[tYongYe.nTask32]["AcceptDialogId"] = 11434
rwtTask[tYongYe.nTask32]["DialogId"] = tYongYe.nDNpc_Leave
rwtTask[tYongYe.nTask32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYongYe.nTask32]["TaskNpc"] = tYongYe.nNpcRes_DaLuoSi
rwtTask[tYongYe.nTask32]["Awards"] = {}
rwtTask[tYongYe.nTask32]["Awards"]["Events"] = {}
rwtTask[tYongYe.nTask32]["Awards"]["Events"][1] = {}
rwtTask[tYongYe.nTask32]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tYongYe.nTask32]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tYongYe.nTask32]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000202
rwtTask[tYongYe.nTask32]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tYongYe.nTask32]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tYongYe.nTask32
rwtTask[tYongYe.nTask32]["OpenMercenaryTask"] = {}
rwtTask[tYongYe.nTask32]["OpenMercenaryTask"]["AreaId"] = 2003
rwtTask[tYongYe.nTask32]["OpenMercenaryTask"]["TownId"] = 200304
rwtTask[tYongYe.nTask32]["StartAutoWay"] = {}
rwtTask[tYongYe.nTask32]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tYongYe.nTask32]["StartAutoWay"]["FindWayMapId"] = tYongYe.nMapId
rwtTask[tYongYe.nTask32]["StartAutoWay"]["FindWayGroupId"] = tYongYe.nNpc_DaLuoSi
rwtTask[tYongYe.nTask32]["StartAutoWay"]["FindWayGenId"] = tYongYe.nGenNpc_DaLuoSi
