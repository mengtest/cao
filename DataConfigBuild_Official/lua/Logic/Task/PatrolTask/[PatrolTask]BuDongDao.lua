--region 不冬岛巡查
--Date
--此文件由[BabeLua]插件自动生成
--By zy


--endregion
local nMapId = 2005
local nZilvMapId = 1001

local nTownId = 200501
--任务ID
local tPatrolTaskId_Budong = {}
tPatrolTaskId_Budong.AcceptTask = 50290

tPatrolTaskId_Budong.Task1_CG = 50291
tPatrolTaskId_Budong.Task1_1 = 50292
tPatrolTaskId_Budong.Task1_2 = 50293
tPatrolTaskId_Budong.Task1_3 = 50294
tPatrolTaskId_Budong.Task1_4 = 50295
tPatrolTaskId_Budong.Task1_5 = 50296
tPatrolTaskId_Budong.Task1_6 = 50297
tPatrolTaskId_Budong.Task1_Complete = 50298

tPatrolTaskId_Budong.Task2_CG = 50299
tPatrolTaskId_Budong.Task2_Option = 50300
tPatrolTaskId_Budong.Task2_1_1 = 50301
tPatrolTaskId_Budong.Task2_1_2 = 50302
tPatrolTaskId_Budong.Task2_1_3 = 50303
tPatrolTaskId_Budong.Task2_1_4 = 50304
tPatrolTaskId_Budong.Task2_1_5 = 50305
tPatrolTaskId_Budong.Task2_1_Complete = 50306

tPatrolTaskId_Budong.Task2_2_1 = 50307
tPatrolTaskId_Budong.Task2_2_2 = 50308
tPatrolTaskId_Budong.Task2_2_Option = 50309

tPatrolTaskId_Budong.Task2_2_Option_1_1 = 50310
tPatrolTaskId_Budong.Task2_2_Option_1_2 = 50311
tPatrolTaskId_Budong.Task2_2_Option_1_Complete = 50312

tPatrolTaskId_Budong.Task2_2_Option_2_1 = 50313
tPatrolTaskId_Budong.Task2_2_Option_2_2 = 50314
tPatrolTaskId_Budong.Task2_2_Option_2_3 = 50315
tPatrolTaskId_Budong.Task2_2_Option_2_Complete = 50316

--对白ID
local tDialog = {}
tDialog.CG_1 = 12242
tDialog.CG_2 = 12243
tDialog.AcceptDialog = 12211
tDialog.Task_1_1 = 12214
tDialog.Task_1_2 = 12215
tDialog.Task_1_3 = 12216
tDialog.Task_1_4 = 12217
tDialog.Task_1_5 = 12218
tDialog.Task_1_6 = 12219
tDialog.Task_1_7 = 12220
tDialog.Task_2_1 = 12223
tDialog.Task_2_2 = 12224
tDialog.Task_2_3 = 12225
tDialog.Task_2_4 = 12226
tDialog.Task_2_5 = 12227
tDialog.Task_2_6 = 12228
tDialog.Task_2_7 = 12229
tDialog.Task_2_8 = 12230
tDialog.Task_2_9 = 12231
tDialog.Task_2_10 = 12232
tDialog.Task_2_11 = 12233
tDialog.Task_2_12 = 12234
tDialog.Task_2_13 = 12235
tDialog.Task_2_14 = 12236
tDialog.Task_2_15 = 12237
tDialog.Task_2_16 = 12238
tDialog.Task_2_17 = 12239
tDialog.Task_2_18 = 12240
tDialog.Task_2_19 = 12241


--怪物组ID
local tMonsterGroup = {}
tMonsterGroup.Xiaoying = 900458
tMonsterGroup.Kuyefeng = 900459
tMonsterGroup.Shamojuren = 900460
tMonsterGroup.Box = 900461
tMonsterGroup.Jixieshixiang = 900462

--NPCID
local tNpc = {}
tNpc.JieJi = 3384
tNpc.LuoFu = 3560
tNpc.YizuXianzhi = 3704
tNpc.BiDuoMao = 3080

--NPC组ID
local tNpcGroup = {}
tNpcGroup.Trap_Xuncha = 30609
tNpcGroup.Trap_XianChang = 30610
tNpcGroup.Trap_KuangDong = 30611
tNpcGroup.Trap_Shamojuren = 30612
tNpcGroup.Trap_Box = 30613
tNpcGroup.Trap_Jixieshixiang = 30614
tNpcGroup.Collect_XianchangFujin = 60351
tNpcGroup.Collect_JuShi_1 = 60352
tNpcGroup.Collect_JuShi_2 = 60353
tNpcGroup.Collect_PuBu = 60354
tNpcGroup.Collect_Box = 60355
tNpcGroup.JieJi = 20409
tNpcGroup.LuoFu = 20514
tNpcGroup.YizuXianzhi = 20611
tNpcGroup.YizuJingwei = 20612
tNpcGroup.Daomin = 20613
tNpcGroup.BiDuoMao = 20115

--NPC组、NPC表配置
rwtNpc[tNpc.JieJi] = rwtNpc[tNpc.JieJi] or {}
rwtNpcGroup[tNpcGroup.JieJi] = rwtNpcGroup[tNpcGroup.JieJi] or {}    --杰基
rwtNpcGroup[tNpcGroup.JieJi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.JieJi]["NpcId"]= tNpc.JieJi

rwtNpc[tNpc.LuoFu] = rwtNpc[tNpc.LuoFu] or {}
rwtNpcGroup[tNpcGroup.LuoFu] = rwtNpcGroup[tNpcGroup.LuoFu] or {}    --罗夫
rwtNpcGroup[tNpcGroup.LuoFu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.LuoFu]["NpcId"]= tNpc.LuoFu

rwtNpc[tNpc.YizuXianzhi] = rwtNpc[tNpc.YizuXianzhi] or {}
rwtNpc[tNpc.YizuXianzhi]["DialogId"] = 1794
rwtNpcGroup[tNpcGroup.YizuXianzhi] = rwtNpcGroup[tNpcGroup.YizuXianzhi] or {}	--翼族先知    
rwtNpcGroup[tNpcGroup.YizuXianzhi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YizuXianzhi]["NpcId"]= tNpc.YizuXianzhi

rwtNpcGroup[tNpcGroup.YizuJingwei] = rwtNpcGroup[tNpcGroup.YizuJingwei] or {}   --翼族警卫
rwtNpcGroup[tNpcGroup.YizuJingwei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Daomin] = rwtNpcGroup[tNpcGroup.Daomin] or {}				--遇袭岛民
rwtNpcGroup[tNpcGroup.Daomin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc

rwtNpcGroup[tNpcGroup.Trap_Xuncha] = rwtNpcGroup[tNpcGroup.Trap_Xuncha] or {}	
rwtNpcGroup[tNpcGroup.Trap_Xuncha]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.Trap_XianChang] = rwtNpcGroup[tNpcGroup.Trap_XianChang] or {} 
rwtNpcGroup[tNpcGroup.Trap_XianChang]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.Trap_KuangDong] = rwtNpcGroup[tNpcGroup.Trap_KuangDong] or {} 
rwtNpcGroup[tNpcGroup.Trap_KuangDong]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.Trap_Shamojuren] = rwtNpcGroup[tNpcGroup.Trap_Shamojuren] or {}	
rwtNpcGroup[tNpcGroup.Trap_Shamojuren]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.Trap_Box] = rwtNpcGroup[tNpcGroup.Trap_Box] or {} 
rwtNpcGroup[tNpcGroup.Trap_Box]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.Trap_Jixieshixiang] = rwtNpcGroup[tNpcGroup.Trap_Jixieshixiang] or {} 
rwtNpcGroup[tNpcGroup.Trap_Jixieshixiang]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.Collect_XianchangFujin] = rwtNpcGroup[tNpcGroup.Collect_XianchangFujin] or {}     
rwtNpcGroup[tNpcGroup.Collect_XianchangFujin]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_JuShi_1] = rwtNpcGroup[tNpcGroup.Collect_JuShi_1] or {}     
rwtNpcGroup[tNpcGroup.Collect_JuShi_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_JuShi_2] = rwtNpcGroup[tNpcGroup.Collect_JuShi_2] or {}     
rwtNpcGroup[tNpcGroup.Collect_JuShi_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_PuBu] = rwtNpcGroup[tNpcGroup.Collect_PuBu] or {}     
rwtNpcGroup[tNpcGroup.Collect_PuBu]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_Box] = rwtNpcGroup[tNpcGroup.Collect_Box] or {}     
rwtNpcGroup[tNpcGroup.Collect_Box]["Type"] = CONST_NPCGROUP_TYPE.Collect

--GENID
local tGenId = {}
tGenId.Trap_Xuncha = 20050228
tGenId.Trap_XianChang = 20050229
tGenId.Trap_KuangDong = 20050230
tGenId.Collect_XianchangFujin = 20050231
tGenId.Collect_JuShi_1 = 20050232
tGenId.Collect_JuShi_2 = 20050233
tGenId.Collect_PuBu = 20050234
tGenId.Collect_Box = 20050235
tGenId.YizuXianzhi = 20050236
tGenId.YizuJingwei = 20050237
tGenId.Daomin = 20050238
tGenId.Xiaoying = 20050239
tGenId.Kuyefeng = 20050240
tGenId.Shamojuren = 20050241
tGenId.Box = 20050242
tGenId.Jixieshixiang = 20050243
tGenId.Trap_Shamojuren = 20050244
tGenId.Trap_Box = 20050245
tGenId.Trap_Jixieshixiang = 20050246
tGenId.JieJi = 20050036
tGenId.LuoFu = 20050128
tGenId.BiDuoMao = 2001658

local tPos = {}
tPos.Trap_Xuncha = "38.10,11.67,-27.32"

-- nAiHaoShenDianTask
rwtTask[tPatrolTaskId_Budong.AcceptTask] = {}
rwtTask[tPatrolTaskId_Budong.AcceptTask]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.AcceptTask]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.AcceptTask]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tPatrolTaskId_Budong.AcceptTask]["AcceptDialogId"] = tDialog.AcceptDialog
rwtTask[tPatrolTaskId_Budong.AcceptTask]["ReqTrap1"] = tNpcGroup.Trap_Xuncha
rwtTask[tPatrolTaskId_Budong.AcceptTask]["PatrolFirstTask"] = 1
rwtTask[tPatrolTaskId_Budong.AcceptTask]["PatrolAfterTask"] = {tPatrolTaskId_Budong.Task1_CG,tPatrolTaskId_Budong.Task2_CG}
rwtTask[tPatrolTaskId_Budong.AcceptTask]["PatrolTaskAreaId"] = nMapId
rwtTask[tPatrolTaskId_Budong.AcceptTask]["PatrolTaskTownId"] = nTownId
rwtTask[tPatrolTaskId_Budong.AcceptTask]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.AcceptTask]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.AcceptTask]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_Xuncha
rwtTask[tPatrolTaskId_Budong.AcceptTask]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.AcceptTask]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tPatrolTaskId_Budong.AcceptTask]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.AcceptTask]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.AcceptTask]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.AcceptTask]["StartAutoWay"]["FindWayPos"] = tPos.Trap_Xuncha

rwtTask[tPatrolTaskId_Budong.Task1_CG] = {}
rwtTask[tPatrolTaskId_Budong.Task1_CG]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_CG]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_CG]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolTaskId_Budong.Task1_CG]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_1
rwtTask[tPatrolTaskId_Budong.Task1_CG]["DialogId"] = tDialog.CG_1
rwtTask[tPatrolTaskId_Budong.Task1_CG]["ReqTrap1" ]= tNpcGroup.Trap_Xuncha
rwtTask[tPatrolTaskId_Budong.Task1_CG]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_CG]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task1_CG]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_Xuncha
rwtTask[tPatrolTaskId_Budong.Task1_CG]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_CG]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_CG]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_CG]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task1_CG]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_CG]["StartAutoWay"]["FindWayPos"] = tPos.Trap_Xuncha

rwtTask[tPatrolTaskId_Budong.Task1_1] = {}
rwtTask[tPatrolTaskId_Budong.Task1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task1_1]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_2
rwtTask[tPatrolTaskId_Budong.Task1_1]["TaskNpc"] = tNpc.JieJi
rwtTask[tPatrolTaskId_Budong.Task1_1]["DialogId"] = tDialog.Task_1_1
rwtTask[tPatrolTaskId_Budong.Task1_1]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_1]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_1]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.JieJi
rwtTask[tPatrolTaskId_Budong.Task1_1]["StartAutoWay"]["FindWayGenId"] = tGenId.JieJi

rwtTask[tPatrolTaskId_Budong.Task1_2] = {}
rwtTask[tPatrolTaskId_Budong.Task1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task1_2]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_3
rwtTask[tPatrolTaskId_Budong.Task1_2]["TaskNpc"] = tNpc.LuoFu
rwtTask[tPatrolTaskId_Budong.Task1_2]["DialogId"] = tDialog.Task_1_2
rwtTask[tPatrolTaskId_Budong.Task1_2]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.LuoFu
rwtTask[tPatrolTaskId_Budong.Task1_2]["StartAutoWay"]["FindWayGenId"] = tGenId.LuoFu

rwtTask[tPatrolTaskId_Budong.Task1_3] = {}
rwtTask[tPatrolTaskId_Budong.Task1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolTaskId_Budong.Task1_3]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_4
rwtTask[tPatrolTaskId_Budong.Task1_3]["DialogId"] = tDialog.Task_1_3
rwtTask[tPatrolTaskId_Budong.Task1_3]["ReqTrap1" ]= tNpcGroup.Trap_XianChang
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_XianChang
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][2]["GenId"] = tGenId.YizuJingwei
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][3] = {}
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][3]["GenId"] = tGenId.Daomin
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_3]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_3]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task1_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_3]["StartAutoWay"]["FindWayPos"] = "35,5.9,0"

rwtTask[tPatrolTaskId_Budong.Task1_4] = {}
rwtTask[tPatrolTaskId_Budong.Task1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrolTaskId_Budong.Task1_4]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_5
rwtTask[tPatrolTaskId_Budong.Task1_4]["DialogId"] = tDialog.Task_1_4
rwtTask[tPatrolTaskId_Budong.Task1_4]["ReqCollectId1"] = tNpcGroup.Collect_XianchangFujin
rwtTask[tPatrolTaskId_Budong.Task1_4]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task1_4]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_XianchangFujin
rwtTask[tPatrolTaskId_Budong.Task1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_4]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_4]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task1_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_4]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_XianchangFujin
rwtTask[tPatrolTaskId_Budong.Task1_4]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_XianchangFujin

rwtTask[tPatrolTaskId_Budong.Task1_5] = {}
rwtTask[tPatrolTaskId_Budong.Task1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolTaskId_Budong.Task1_5]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_6
rwtTask[tPatrolTaskId_Budong.Task1_5]["DialogId"] = tDialog.Task_1_5
rwtTask[tPatrolTaskId_Budong.Task1_5]["ReqTrap1" ]= tNpcGroup.Trap_KuangDong
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_KuangDong
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Xiaoying
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][3] = {}
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][3]["GenId"] = tGenId.Kuyefeng
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][3]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_5]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task1_5]["MonsterGroupGenId"] = tGenId.Xiaoying
rwtTask[tPatrolTaskId_Budong.Task1_5]["KillMonsterGroup1" ]= tMonsterGroup.Xiaoying
rwtTask[tPatrolTaskId_Budong.Task1_5]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_5]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task1_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_5]["StartAutoWay"]["FindWayPos"] = "-8,-5.46,22"

rwtTask[tPatrolTaskId_Budong.Task1_6] = {}
rwtTask[tPatrolTaskId_Budong.Task1_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task1_6]["NextTaskId" ]= tPatrolTaskId_Budong.Task1_Complete
rwtTask[tPatrolTaskId_Budong.Task1_6]["TaskNpc"] = tNpc.LuoFu
rwtTask[tPatrolTaskId_Budong.Task1_6]["DialogId"] = tDialog.Task_1_6
rwtTask[tPatrolTaskId_Budong.Task1_6]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_6]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task1_6]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task1_6]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.LuoFu
rwtTask[tPatrolTaskId_Budong.Task1_6]["StartAutoWay"]["FindWayGenId"] = tGenId.LuoFu

rwtTask[tPatrolTaskId_Budong.Task1_Complete] = {}
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["DialogId"] = tDialog.Task_1_7
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["TaskNpc"] = tNpc.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["PatrolLastTask"] = 1 
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["StartAutoWay"]["FindWayMapId"] = nZilvMapId
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task1_Complete]["StartAutoWay"]["FindWayGenId"] = tGenId.BiDuoMao

rwtTask[tPatrolTaskId_Budong.Task2_CG] = {}
rwtTask[tPatrolTaskId_Budong.Task2_CG]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_CG]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_CG]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tPatrolTaskId_Budong.Task2_CG]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_Option
rwtTask[tPatrolTaskId_Budong.Task2_CG]["DialogId"] = tDialog.CG_2
rwtTask[tPatrolTaskId_Budong.Task2_CG]["ReqTrap1" ]= tNpcGroup.Trap_Xuncha
rwtTask[tPatrolTaskId_Budong.Task2_CG]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_CG]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_CG]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_Xuncha
rwtTask[tPatrolTaskId_Budong.Task2_CG]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_CG]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_CG]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_CG]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task2_CG]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_CG]["StartAutoWay"]["FindWayPos"] = tPos.Trap_Xuncha

rwtTask[tPatrolTaskId_Budong.Task2_Option] = {}
rwtTask[tPatrolTaskId_Budong.Task2_Option]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_Option]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_Option]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tPatrolTaskId_Budong.Task2_Option]["TaskNpc"] = tNpc.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_Option]["DialogId"] = tDialog.Task_2_1
rwtTask[tPatrolTaskId_Budong.Task2_Option]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_Option]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_Option]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_Option]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_Option]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tPatrolTaskId_Budong.Task2_Option]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_Option]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_Option]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_Option]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_Option]["StartAutoWay"]["FindWayGenId"] = tGenId.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_Option]["OptionTask1"] = tPatrolTaskId_Budong.Task2_1_1 --选项1任务
rwtTask[tPatrolTaskId_Budong.Task2_Option]["OptionTask2"] = tPatrolTaskId_Budong.Task2_2_1 --选项2任务

rwtTask[tPatrolTaskId_Budong.Task2_1_1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tPatrolTaskId_Budong.Task2_1_1]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_1_2
rwtTask[tPatrolTaskId_Budong.Task2_1_1]["AcceptDialogId"] = tDialog.Task_2_2
rwtTask[tPatrolTaskId_Budong.Task2_1_1]["DialogId"] = tDialog.Task_2_2

rwtTask[tPatrolTaskId_Budong.Task2_1_2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_1_3
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["DialogId"] = tDialog.Task_2_3
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["ReqCollectId1"] = tNpcGroup.Collect_JuShi_1
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_JuShi_1
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_JuShi_1
rwtTask[tPatrolTaskId_Budong.Task2_1_2]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_JuShi_1

rwtTask[tPatrolTaskId_Budong.Task2_1_3] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_1_4
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["DialogId"] = tDialog.Task_2_4
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["ReqCollectId1"] = tNpcGroup.Collect_JuShi_2
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_JuShi_2
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_JuShi_2
rwtTask[tPatrolTaskId_Budong.Task2_1_3]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_JuShi_2

rwtTask[tPatrolTaskId_Budong.Task2_1_4] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_1_5
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["ReqTrap1" ]= tNpcGroup.Trap_Shamojuren
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DialogId"] = tDialog.Task_2_5
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Shamojuren
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_Shamojuren
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["MonsterGroupGenId"] = tGenId.Shamojuren
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["KillMonsterGroup1" ]= tMonsterGroup.Shamojuren
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_4]["StartAutoWay"]["FindWayPos"] = "9.80,21.73,-58.91"

function CopyMap_PatrolTask_Budong_ShamojurenDead()
    rwOpenNpcChatDialog(tDialog.Task_2_6)
end
--小怪死亡触发
rwtMonsterGroup_Func[tMonsterGroup.Shamojuren] = rwtMonsterGroup_Func[tMonsterGroup.Shamojuren] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup.Shamojuren],CopyMap_PatrolTask_Budong_ShamojurenDead)

rwtTask[tPatrolTaskId_Budong.Task2_1_5] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_1_Complete
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["TaskNpc"] = tNpc.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["DialogId"] = tDialog.Task_2_7
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_1_5]["StartAutoWay"]["FindWayGenId"] = tGenId.YizuXianzhi

rwtTask[tPatrolTaskId_Budong.Task2_1_Complete] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["DialogId"] = tDialog.Task_2_8
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["TaskNpc"] = tNpc.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["PatrolLastTask"] = 1 
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["StartAutoWay"]["FindWayMapId"] = nZilvMapId
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task2_1_Complete]["StartAutoWay"]["FindWayGenId"] = tGenId.BiDuoMao

rwtTask[tPatrolTaskId_Budong.Task2_2_1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tPatrolTaskId_Budong.Task2_2_1]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_2
rwtTask[tPatrolTaskId_Budong.Task2_2_1]["AcceptDialogId"] = tDialog.Task_2_9
rwtTask[tPatrolTaskId_Budong.Task2_2_1]["DialogId"] = tDialog.Task_2_9

rwtTask[tPatrolTaskId_Budong.Task2_2_2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_Option
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["DialogId"] = tDialog.Task_2_10
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["ReqCollectId1"] = tNpcGroup.Collect_PuBu
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_PuBu
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_PuBu
rwtTask[tPatrolTaskId_Budong.Task2_2_2]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_PuBu

rwtTask[tPatrolTaskId_Budong.Task2_2_Option] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["DialogId"] = tDialog.Task_2_11
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["ReqCollectId1"] = tNpcGroup.Collect_Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Collect_Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["OptionTask1"] = tPatrolTaskId_Budong.Task2_2_Option_1_1 --选项1任务
rwtTask[tPatrolTaskId_Budong.Task2_2_Option]["OptionTask2"] = tPatrolTaskId_Budong.Task2_2_Option_2_1 --选项2任务

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_Option_1_2
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["ReqTrap1" ]= tNpcGroup.Trap_Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DialogId"] = tDialog.Task_2_12
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["MonsterGroupGenId"] = tGenId.Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["KillMonsterGroup1" ]= tMonsterGroup.Box
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_1]["StartAutoWay"]["FindWayPos"] = "-13.83,-5.46,22.60"

function CopyMap_PatrolTask_Budong_BoxDead()
    rwOpenNpcChatDialog(tDialog.Task_2_13)
end
--小怪死亡触发
rwtMonsterGroup_Func[tMonsterGroup.Box] = rwtMonsterGroup_Func[tMonsterGroup.Box] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup.Box],CopyMap_PatrolTask_Budong_BoxDead)

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_Option_1_Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["TaskNpc"] = tNpc.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["DialogId"] = tDialog.Task_2_14
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_2]["StartAutoWay"]["FindWayGenId"] = tGenId.YizuXianzhi

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["DialogId"] = tDialog.Task_2_15
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["TaskNpc"] = tNpc.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["PatrolLastTask"] = 1 
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["StartAutoWay"]["FindWayMapId"] = nZilvMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_1_Complete]["StartAutoWay"]["FindWayGenId"] = tGenId.BiDuoMao

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_Option_2_2
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1]["AcceptDialogId"] = tDialog.Task_2_16
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_1]["DialogId"] = tDialog.Task_2_16

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_Option_2_3
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["ReqTrap1" ]= tNpcGroup.Trap_Jixieshixiang
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DialogId"] = tDialog.Task_2_17
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Jixieshixiang
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][2] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_Jixieshixiang
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["MonsterGroupGenId"] = tGenId.Jixieshixiang
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["KillMonsterGroup1" ]= tMonsterGroup.Jixieshixiang
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_2]["StartAutoWay"]["FindWayPos"] = "-6.83,16.83,-81.77"

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["NextTaskId" ]= tPatrolTaskId_Budong.Task2_2_Option_2_Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["TaskNpc"] = tNpc.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["DialogId"] = tDialog.Task_2_18
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["DynaNpcGroupGen"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.YizuXianzhi
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_3]["StartAutoWay"]["FindWayGenId"] = tGenId.YizuXianzhi

rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["Title"] = tLuaText[LANGUAGE_CONFIG][21588]
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["DialogId"] = tDialog.Task_2_19
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["TaskNpc"] = tNpc.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["PatrolLastTask"] = 1 
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["StartAutoWay"] = {}
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["StartAutoWay"]["FindWayMapId"] = nZilvMapId
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.BiDuoMao
rwtTask[tPatrolTaskId_Budong.Task2_2_Option_2_Complete]["StartAutoWay"]["FindWayGenId"] = tGenId.BiDuoMao