--region [MercenaryTask]FengCheZhen
--Purpose:		风车镇佣兵任务
--Creator: 		张圆
--Created:		2018-11-15
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-03-10 $
--RCS-ID:		$Revision: 2 $
--endregion


local nFengCheZhenMercenaryTask_6 =  20136       --灵魂画手
local nFengCheZhenMercenaryTask_7 =  20137       --灵魂画手
local nFengCheZhenMercenaryTask_8 =  20138       --灵魂画手
local nFengCheZhenMercenaryTask_9 =  20139       --灵魂画手
local nFengCheZhenMercenaryTask_10 = 20140       --灵魂画手
local nFengCheZhenMercenaryTask_26 = 20156       --驱逐哥布林
local nFengCheZhenMercenaryTask_27 = 20157       --驱逐哥布林
local nFengCheZhenMercenaryTask_28 = 20158       --驱逐哥布林
local nFengCheZhenMercenaryTask_29 = 20159       --驱逐哥布林
local nFengCheZhenMercenaryTask_30 = 20160       --驱逐哥布林
local nFengCheZhenMercenaryTask_31 = 20161       --风车银杏
local nFengCheZhenMercenaryTask_32 = 20162       --风车银杏
local nFengCheZhenMercenaryTask_33 = 20163       --风车银杏
local nFengCheZhenMercenaryTask_34 = 20164       --风车银杏
local nFengCheZhenMercenaryTask_35 = 20165       --风车银杏
local nFengCheZhenMercenaryTask_36 = 20166       --清除匪患
local nFengCheZhenMercenaryTask_37 = 20167       --清除匪患
local nFengCheZhenMercenaryTask_38 = 20168       --清除匪患
local nFengCheZhenMercenaryTask_39 = 20169       --清除匪患
local nFengCheZhenMercenaryTask_40 = 20170       --清除匪患
local nFengCheZhenMercenaryTask_41 = 20171       --疯狂的先驱者1号
local nFengCheZhenMercenaryTask_42 = 20172       --疯狂的先驱者1号
local nFengCheZhenMercenaryTask_43 = 20173       --疯狂的先驱者1号
local nFengCheZhenMercenaryTask_44 = 20174       --疯狂的先驱者1号
local nFengCheZhenMercenaryTask_45 = 20175       --疯狂的先驱者1号
local nFengCheZhenMercenaryTask_46 = 20176       --盗猎
local nFengCheZhenMercenaryTask_47 = 20177       --盗猎
local nFengCheZhenMercenaryTask_48 = 20178       --盗猎
local nFengCheZhenMercenaryTask_49 = 20179       --盗猎
local nFengCheZhenMercenaryTask_50 = 20180       --盗猎


--新增佣兵委托任务
local tFengCheZhenMercenaryTask = {}
--风车维护员
tFengCheZhenMercenaryTask.NewAdd1 = 20376
tFengCheZhenMercenaryTask.NewAdd2 = 20377
tFengCheZhenMercenaryTask.NewAdd3 = 20378
tFengCheZhenMercenaryTask.NewAdd4 = 20379
tFengCheZhenMercenaryTask.NewAdd5 = 20380

--黑心商家
tFengCheZhenMercenaryTask.NewAdd6 = 20381
tFengCheZhenMercenaryTask.NewAdd7 = 20382
tFengCheZhenMercenaryTask.NewAdd8 = 20383
tFengCheZhenMercenaryTask.NewAdd9 = 20384
tFengCheZhenMercenaryTask.NewAdd10 = 20385

--驱赶拦路劫匪
tFengCheZhenMercenaryTask.NewAdd11 = 20386
tFengCheZhenMercenaryTask.NewAdd12 = 20387
tFengCheZhenMercenaryTask.NewAdd13 = 20388
tFengCheZhenMercenaryTask.NewAdd14 = 20389
tFengCheZhenMercenaryTask.NewAdd15 = 20390



--NPC
local nNpcgroup_YinyouShiren = 20083
local nNpcgroup_DijingShangren = 20084
local nNpcgroup_Xianquzhe = 20085 
--采集
local nCollect = 60048

local nCollect_NewAdd1 = 60222  --新增任务检查风车采集物
local nCollect_NewAdd1_GenId = 20010053

--陷阱
local nTrap_Kubola = 30131
local nTrap_Anke = 30132 
local nTrap_Yinyou = 30133
local nTrap_Dijing = 30134
local nTrap_Anlei1 = 30135
local nTrap_Anlei2 = 30136
local nTrap_Anlei3 = 30137
local nTrap_Anlei4 = 30138
local nTrap_Anlei5 = 30139
local nTrap_Xianqu = 30140
local nTrap_Goblin = 30055
--GenID 
local nGenId_Trapkubola = 2001156
local nGenId_TrapAnke = 2001157
local nGenId_TrapYinyou = 2001158
local nGenId_TrapDijing = 2001159
local nGenId_TrapAnlei1 = 2001160
local nGenId_TrapAnlei2 = 2001161
local nGenId_TrapAnlei3 = 2001162
local nGenId_TrapAnlei4 = 2001163
local nGenId_TrapAnlei5 = 2001164
local nGenId_TrapXianqu = 2001165
local nGenId_TrapGoblin = 2001180

local nGenId_Collect = 2001166

local nGenId_NPC_Yinyou = 2001167
local nGenId_NPC_Dijing = 2001168
local nGenId_NPC_Xianqu = 2001169

local nGenId_Monster_Anlei1 =2001170
local nGenId_Monster_Anlei2 =2001171
local nGenId_Monster_Anlei3 =2001172
local nGenId_Monster_Anlei4 =2001173
local nGenId_Monster_Goblin =2001174
local nGenId_Monster_GLveduozhe1 = 2001175
local nGenId_Monster_GLveduozhe2 = 2001176
local nGenId_Monster_GLveduozhe3 = 2001177
local nGenId_Monster_GLveduozhe4 = 2001178
local nGenId_Monster_Xianquzhe = 2001179
--新增GEN
local nGenId_Monster_Goblin_New = 2001759
local nGenId_Monster_Toulie_New = 2001760

--2020新增
local tGenId = {}
tGenId.Npc_Toulie_2 = 20010306
tGenId.Trap_Toulie = 20010307
tGenId.Npc_Toulie_1 = 20010308
tGenId.Npc_HaZhaKe = 20010309

local tNpc = {}
tNpc.HaZhaKe = 3011

local tNpcGroup = {}
tNpcGroup.Trap_Toulie = 30739
tNpcGroup.HaZhaKe = 21169

rwtNpcGroup[tNpcGroup.Trap_Toulie] = rwtNpcGroup[tNpcGroup.Trap_Toulie] or {} 
rwtNpcGroup[tNpcGroup.Trap_Toulie]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tNpcGroup.HaZhaKe] = rwtNpcGroup[tNpcGroup.HaZhaKe] or {} 
rwtNpcGroup[tNpcGroup.HaZhaKe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.HaZhaKe]["NpcId"] = tNpc.HaZhaKe



local tDialog = {}
tDialog.Toulie = 13343
tDialog.Fengche = 13345
tDialog.HaZhaKe = 13346
tDialog.XianQuBattleAfter = 13342
tDialog.DaoZeiBattleAfter = 13344
tDialog.HeiXinBattleAfter = 13347
tDialog.JieFeiBattleAfter = 13349

--怪物组ID
local nMonster_Anlei1 = 900154
local nMonster_Anlei2 = 900155
local nMonster_Anlei3 = 900156
local nMonster_Anlei4 = 900157
local nMonster_Goblin = 900158
local nMonster_Lveduo = 900159
local nMonster_Xianqu = 900163
--新增怪物
local nMonster_Goblin_New = 900209 
local nMonster_Toulie_New = 900210

-----新增任务怪物
--地精
local nMonsterGroup_NewAdd2 = 900326 
local nMonsterGroup_NewAdd2_GenId = 20010054 
--劫匪
local nMonsterGroup_NewAdd3 = 900327 
local nMonsterGroup_NewAdd3_GenId = 20010055
--鹿角兽队长
local nMonsterGroup_NewAdd4 = 900328 
local nMonsterGroup_NewAdd4_GenId = 20010056

local nMonster_NewAdd2 = 9000243
local nMonster_NewAdd3 = 9000244
local nMonster_NewAdd4 = 9000245
------------------------------------------对白id-----------------
--护送陷阱战前对白
--local nDialog_TrapMonsterDialog = 11043


--新增任务对白
--接受任务对白
local nAcceptDialog_NewAdd1 = 11299
local nAcceptDialog_NewAdd2 = 11300
local nAcceptDialog_NewAdd3 = 11301

--NPC_Group
--陷阱
rwtNpcGroup[nTrap_Kubola] = rwtNpcGroup[nTrap_Kubola] or {} 
rwtNpcGroup[nTrap_Kubola]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Anke] = rwtNpcGroup[nTrap_Anke] or {} 
rwtNpcGroup[nTrap_Anke]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Yinyou] = rwtNpcGroup[nTrap_Yinyou] or {} 
rwtNpcGroup[nTrap_Yinyou]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Dijing] = rwtNpcGroup[nTrap_Dijing] or {} 
rwtNpcGroup[nTrap_Dijing]["Type"] = CONST_NPCGROUP_TYPE.Trap

--NPC
local nNpc_Kubola = 3008
rwtNpc[nNpc_Kubola] = rwtNpc[nNpc_Kubola] or {}
local nNpc_Anke = 3009
rwtNpc[nNpc_Anke] = rwtNpc[nNpc_Anke] or {}
local nNpc_Yinyou = 3059
rwtNpc[nNpc_Yinyou] = rwtNpc[nNpc_Yinyou] or {}
local nNpc_Xianqu = 3051
rwtNpc[nNpc_Xianqu] = rwtNpc[nNpc_Xianqu] or {}
function ChecklocalTaskTF_Mucai()
    --rwPrintLog("开始检查是否护送木材任务")
    if rwTaskChkUserInTask(nFengCheZhenMercenaryTask_16)then
        return true
    elseif rwTaskChkUserInTask(nFengCheZhenMercenaryTask_17) then
        return true
    elseif rwTaskChkUserInTask(nFengCheZhenMercenaryTask_18) then
        return true
    elseif rwTaskChkUserInTask(nFengCheZhenMercenaryTask_19) then
        return true   
    elseif rwTaskChkUserInTask(nFengCheZhenMercenaryTask_20) then 
        return true
    end
    --rwPrintLog("不在任务中")
    return false
end


--rwtNpcGroup[nTrap_Anlei1] = rwtNpcGroup[nTrap_Anlei1] or {} 
--rwtNpcGroup[nTrap_Anlei1]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_Anlei1]["EscortMonsterGroupGen"] = nGenId_Monster_Anlei1
--rwtNpcGroup[nTrap_Anlei1]["EscortDialog"] = nDialog_TrapMonsterDialog

--rwtNpcGroup[nTrap_Anlei1]["TrapFunc"] = function ()
--    if ChecklocalTaskTF_Mucai()  then
--        if rwHasGenEvent (nGenId_TrapAnlei1) then 
--           rwDelGenEvent (nGenId_TrapAnlei1)
--        end
--        rwAutoBattle(nGenId_Monster_Anlei1)
--    end
--end

--rwtNpcGroup[nTrap_Anlei2] = rwtNpcGroup[nTrap_Anlei2] or {} 
--rwtNpcGroup[nTrap_Anlei2]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_Anlei2]["EscortMonsterGroupGen"] = nGenId_Monster_Anlei2
--rwtNpcGroup[nTrap_Anlei2]["EscortDialog"] = nDialog_TrapMonsterDialog

--rwtDialog[nDialog_TrapMonsterDialog] = rwtDialog[nDialog_TrapMonsterDialog] or {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
--rwtDialog[nDialog_TrapMonsterDialog]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true

--rwtNpcGroup[nTrap_Anlei2]["TrapFunc"] = function ()
--    if ChecklocalTaskTF_Mucai()  then
--        if rwHasGenEvent (nGenId_TrapAnlei2) then 
--           rwDelGenEvent (nGenId_TrapAnlei2)
--        end
--        rwAutoBattle(nGenId_Monster_Anlei2)
--    end
--end

--rwtNpcGroup[nTrap_Anlei3] = rwtNpcGroup[nTrap_Anlei3] or {} 
--rwtNpcGroup[nTrap_Anlei3]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_Anlei3]["TrapFunc"] = function ()
--    if ChecklocalTaskTF_Mucai()  then
--        rwAutoBattle(nGenId_Monster_Anlei3)
--    end
--end
--rwtNpcGroup[nTrap_Anlei4] = rwtNpcGroup[nTrap_Anlei4] or {} 
--rwtNpcGroup[nTrap_Anlei4]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_Anlei4]["TrapFunc"] = function ()
--    if ChecklocalTaskTF_Mucai()  then
--        rwAutoBattle(nGenId_Monster_Anlei4)
--    end
--end
--rwtNpcGroup[nTrap_Anlei5] = rwtNpcGroup[nTrap_Anlei5] or {} 
--rwtNpcGroup[nTrap_Anlei5]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_Anlei5]["TrapFunc"] = function ()
--    if ChecklocalTaskTF_Mucai()  then
--        rwAutoBattle(nGenId_Monster_Anlei5)
--    end
--end

rwtNpcGroup[nTrap_Xianqu] = rwtNpcGroup[nTrap_Xianqu] or {} 
rwtNpcGroup[nTrap_Xianqu]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_Goblin] = rwtNpcGroup[nTrap_Goblin] or {} 
rwtNpcGroup[nTrap_Goblin]["Type"] = CONST_NPCGROUP_TYPE.Trap

--采集NPC
rwtNpcGroup[nCollect] = rwtNpcGroup[nCollect] or {}
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect


rwtNpcGroup[nCollect_NewAdd1] = rwtNpcGroup[nCollect_NewAdd1] or {}
rwtNpcGroup[nCollect_NewAdd1]["Type"] = CONST_NPCGROUP_TYPE.Collect


--任务


rwtTask[nFengCheZhenMercenaryTask_6] = {}
rwtTask[nFengCheZhenMercenaryTask_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20587]
rwtTask[nFengCheZhenMercenaryTask_6]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_6]["TaskQuality"] = 1
rwtTask[nFengCheZhenMercenaryTask_6]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_6]["TaskNpc"] = nNpc_Anke
rwtTask[nFengCheZhenMercenaryTask_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nFengCheZhenMercenaryTask_6]["DialogId"] = 10300
rwtTask[nFengCheZhenMercenaryTask_6]["AcceptDialogId"] = 10299
rwtTask[nFengCheZhenMercenaryTask_6]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_6]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_6]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_6]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_6]["StartAutoWay"]["FindWayGroupId"] = 20058
rwtTask[nFengCheZhenMercenaryTask_6]["StartAutoWay"]["FindWayGenId"] =  2001413

rwtTask[nFengCheZhenMercenaryTask_7] = {}
rwtTask[nFengCheZhenMercenaryTask_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20587]
rwtTask[nFengCheZhenMercenaryTask_7]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_7]["TaskQuality"] = 2
rwtTask[nFengCheZhenMercenaryTask_7]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_7]["TaskNpc"] = nNpc_Anke
rwtTask[nFengCheZhenMercenaryTask_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nFengCheZhenMercenaryTask_7]["DialogId"] = 10300
rwtTask[nFengCheZhenMercenaryTask_7]["AcceptDialogId"] = 10299
rwtTask[nFengCheZhenMercenaryTask_7]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_7]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_7]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_7]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_7]["StartAutoWay"]["FindWayGroupId"] = 20058
rwtTask[nFengCheZhenMercenaryTask_7]["StartAutoWay"]["FindWayGenId"] =  2001413

rwtTask[nFengCheZhenMercenaryTask_8] = {}
rwtTask[nFengCheZhenMercenaryTask_8]["Title"] = tLuaText[LANGUAGE_CONFIG][20587]
rwtTask[nFengCheZhenMercenaryTask_8]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_8]["TaskQuality"] = 3
rwtTask[nFengCheZhenMercenaryTask_8]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_8]["TaskNpc"] = nNpc_Anke
rwtTask[nFengCheZhenMercenaryTask_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nFengCheZhenMercenaryTask_8]["DialogId"] = 10300
rwtTask[nFengCheZhenMercenaryTask_8]["AcceptDialogId"] = 10299
rwtTask[nFengCheZhenMercenaryTask_8]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_8]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_8]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_8]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_8]["StartAutoWay"]["FindWayGroupId"] = 20058
rwtTask[nFengCheZhenMercenaryTask_8]["StartAutoWay"]["FindWayGenId"] =  2001413

rwtTask[nFengCheZhenMercenaryTask_9] = {}
rwtTask[nFengCheZhenMercenaryTask_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20587]
rwtTask[nFengCheZhenMercenaryTask_9]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_9]["TaskQuality"] = 4
rwtTask[nFengCheZhenMercenaryTask_9]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_9]["TaskNpc"] = nNpc_Anke
rwtTask[nFengCheZhenMercenaryTask_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nFengCheZhenMercenaryTask_9]["DialogId"] = 10300
rwtTask[nFengCheZhenMercenaryTask_9]["AcceptDialogId"] = 10299
rwtTask[nFengCheZhenMercenaryTask_9]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_9]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_9]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_9]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_9]["StartAutoWay"]["FindWayGroupId"] = 20058
rwtTask[nFengCheZhenMercenaryTask_9]["StartAutoWay"]["FindWayGenId"] =  2001413

rwtTask[nFengCheZhenMercenaryTask_10] = {}
rwtTask[nFengCheZhenMercenaryTask_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20587]
rwtTask[nFengCheZhenMercenaryTask_10]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_10]["TaskQuality"] = 5
rwtTask[nFengCheZhenMercenaryTask_10]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_10]["TaskNpc"] = nNpc_Anke
rwtTask[nFengCheZhenMercenaryTask_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nFengCheZhenMercenaryTask_10]["DialogId"] = 10300
rwtTask[nFengCheZhenMercenaryTask_10]["AcceptDialogId"] = 10299
rwtTask[nFengCheZhenMercenaryTask_10]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_10]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_10]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_10]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_10]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_10]["StartAutoWay"]["FindWayGroupId"] = 20058
rwtTask[nFengCheZhenMercenaryTask_10]["StartAutoWay"]["FindWayGenId"] =  2001413



rwtTask[nFengCheZhenMercenaryTask_26] = {}
rwtTask[nFengCheZhenMercenaryTask_26]["Title"] = tLuaText[LANGUAGE_CONFIG][20602]
rwtTask[nFengCheZhenMercenaryTask_26]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_26]["TaskQuality"] = 1
rwtTask[nFengCheZhenMercenaryTask_26]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_26]["KillMonsterGroup1"] = nMonster_Goblin_New  --黑袍哥布林片区怪
rwtTask[nFengCheZhenMercenaryTask_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_26]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"] = {}
rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"][1] = {}
rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Goblin_New
rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_26]["AwardGroupId"] = 5
rwtTask[nFengCheZhenMercenaryTask_26]["AcceptDialogId"] = 10306
rwtTask[nFengCheZhenMercenaryTask_26]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_26]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_26]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_26]["StartAutoWay"]["FindWayGroupId"] = 900209
rwtTask[nFengCheZhenMercenaryTask_26]["StartAutoWay"]["FindWayGenId"] =  2001759


rwtTask[nFengCheZhenMercenaryTask_27] = {}
rwtTask[nFengCheZhenMercenaryTask_27]["Title"] = tLuaText[LANGUAGE_CONFIG][20602]
rwtTask[nFengCheZhenMercenaryTask_27]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_27]["TaskQuality"] = 2
rwtTask[nFengCheZhenMercenaryTask_27]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_27]["KillMonsterGroup1"] = nMonster_Goblin_New
rwtTask[nFengCheZhenMercenaryTask_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_27]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_27]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_27]["AwardGroupId"] = 5
rwtTask[nFengCheZhenMercenaryTask_27]["AcceptDialogId"] = 10306
rwtTask[nFengCheZhenMercenaryTask_27]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_27]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_27]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_27]["StartAutoWay"]["FindWayGroupId"] = 900209
rwtTask[nFengCheZhenMercenaryTask_27]["StartAutoWay"]["FindWayGenId"] =  2001759

rwtTask[nFengCheZhenMercenaryTask_28] = {}
rwtTask[nFengCheZhenMercenaryTask_28]["Title"] = tLuaText[LANGUAGE_CONFIG][20602]
rwtTask[nFengCheZhenMercenaryTask_28]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_28]["TaskQuality"] = 3
rwtTask[nFengCheZhenMercenaryTask_28]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_28]["KillMonsterGroup1"] = nMonster_Goblin_New
rwtTask[nFengCheZhenMercenaryTask_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_28]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_28]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_28]["AwardGroupId"] = 5
rwtTask[nFengCheZhenMercenaryTask_28]["AcceptDialogId"] = 10306
rwtTask[nFengCheZhenMercenaryTask_28]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_28]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_28]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_28]["StartAutoWay"]["FindWayGroupId"] = 900209
rwtTask[nFengCheZhenMercenaryTask_28]["StartAutoWay"]["FindWayGenId"] =  2001759

rwtTask[nFengCheZhenMercenaryTask_29] = {}
rwtTask[nFengCheZhenMercenaryTask_29]["Title"] = tLuaText[LANGUAGE_CONFIG][20602]
rwtTask[nFengCheZhenMercenaryTask_29]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_29]["TaskQuality"] = 4
rwtTask[nFengCheZhenMercenaryTask_29]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_29]["KillMonsterGroup1"] = nMonster_Goblin_New
rwtTask[nFengCheZhenMercenaryTask_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_29]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_29]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_29]["AwardGroupId"] = 5
rwtTask[nFengCheZhenMercenaryTask_29]["AcceptDialogId"] = 10306
rwtTask[nFengCheZhenMercenaryTask_29]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_29]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_29]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_29]["StartAutoWay"]["FindWayGroupId"] = 900209
rwtTask[nFengCheZhenMercenaryTask_29]["StartAutoWay"]["FindWayGenId"] =  2001759

rwtTask[nFengCheZhenMercenaryTask_30] = {}
rwtTask[nFengCheZhenMercenaryTask_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20602]
rwtTask[nFengCheZhenMercenaryTask_30]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_30]["TaskQuality"] = 5
rwtTask[nFengCheZhenMercenaryTask_30]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_30]["KillMonsterGroup1"] = nMonster_Goblin_New
rwtTask[nFengCheZhenMercenaryTask_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_30]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_26]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_30]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_30]["AwardGroupId"] = 5
rwtTask[nFengCheZhenMercenaryTask_30]["AcceptDialogId"] = 10306
rwtTask[nFengCheZhenMercenaryTask_30]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_30]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_30]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_30]["StartAutoWay"]["FindWayGroupId"] = 900209
rwtTask[nFengCheZhenMercenaryTask_30]["StartAutoWay"]["FindWayGenId"] =  2001759



rwtTask[nFengCheZhenMercenaryTask_31] = {}
rwtTask[nFengCheZhenMercenaryTask_31]["Title"] = tLuaText[LANGUAGE_CONFIG][20607]
rwtTask[nFengCheZhenMercenaryTask_31]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nFengCheZhenMercenaryTask_31]["TaskQuality"] = 1
rwtTask[nFengCheZhenMercenaryTask_31]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_31]["ReqCollectId1"] = nCollect
--rwtTask[nFengCheZhenMercenaryTask_31]["ReqCollectCount1"] = 1
rwtTask[nFengCheZhenMercenaryTask_31]["AwardGroupId"] = 1
rwtTask[nFengCheZhenMercenaryTask_31]["AcceptDialogId"] = 10307
rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"] = {}
rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"][1] = {}
rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Collect
rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_31]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_31]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_31]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_31]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_31]["StartAutoWay"]["FindWayGroupId"] = 60048
rwtTask[nFengCheZhenMercenaryTask_31]["StartAutoWay"]["FindWayGenId"] =  2001166
--rwtTask[nFengCheZhenMercenaryTask_30]["AwardFunc"] = function()
--    if rwHasGenEvent(nGenId_Collect) then
--        rwDelGenEvent(nGenId_Collect)
--    end
--end

rwtTask[nFengCheZhenMercenaryTask_32] = {}
rwtTask[nFengCheZhenMercenaryTask_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20607]
rwtTask[nFengCheZhenMercenaryTask_32]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nFengCheZhenMercenaryTask_32]["TaskQuality"] = 2
rwtTask[nFengCheZhenMercenaryTask_32]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_32]["ReqCollectId1"] = nCollect
--rwtTask[nFengCheZhenMercenaryTask_32]["ReqCollectCount1"] = 1
rwtTask[nFengCheZhenMercenaryTask_32]["AwardGroupId"] = 1
rwtTask[nFengCheZhenMercenaryTask_32]["AcceptDialogId"] = 10307
rwtTask[nFengCheZhenMercenaryTask_32]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_32]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_32]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_32]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_32]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_32]["StartAutoWay"]["FindWayGroupId"] = 60048
rwtTask[nFengCheZhenMercenaryTask_32]["StartAutoWay"]["FindWayGenId"] =  2001166

rwtTask[nFengCheZhenMercenaryTask_33] = {}
rwtTask[nFengCheZhenMercenaryTask_33]["Title"] = tLuaText[LANGUAGE_CONFIG][20607]
rwtTask[nFengCheZhenMercenaryTask_33]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nFengCheZhenMercenaryTask_33]["TaskQuality"] = 3
rwtTask[nFengCheZhenMercenaryTask_33]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_33]["ReqCollectId1"] = nCollect
--rwtTask[nFengCheZhenMercenaryTask_33]["ReqCollectCount1"] = 1
rwtTask[nFengCheZhenMercenaryTask_33]["AwardGroupId"] = 1
rwtTask[nFengCheZhenMercenaryTask_33]["AcceptDialogId"] = 10307
rwtTask[nFengCheZhenMercenaryTask_33]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_33]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_33]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_33]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_33]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_33]["StartAutoWay"]["FindWayGroupId"] = 60048
rwtTask[nFengCheZhenMercenaryTask_33]["StartAutoWay"]["FindWayGenId"] =  2001166

rwtTask[nFengCheZhenMercenaryTask_34] = {}
rwtTask[nFengCheZhenMercenaryTask_34]["Title"] = tLuaText[LANGUAGE_CONFIG][20607]
rwtTask[nFengCheZhenMercenaryTask_34]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nFengCheZhenMercenaryTask_34]["TaskQuality"] = 4
rwtTask[nFengCheZhenMercenaryTask_34]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_34]["ReqCollectId1"] = nCollect
--rwtTask[nFengCheZhenMercenaryTask_34]["ReqCollectCount1"] = 1
rwtTask[nFengCheZhenMercenaryTask_34]["AwardGroupId"] = 1
rwtTask[nFengCheZhenMercenaryTask_34]["AcceptDialogId"] = 10307
rwtTask[nFengCheZhenMercenaryTask_34]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_34]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_34]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_34]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_34]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_34]["StartAutoWay"]["FindWayGroupId"] = 60048
rwtTask[nFengCheZhenMercenaryTask_34]["StartAutoWay"]["FindWayGenId"] =  2001166

rwtTask[nFengCheZhenMercenaryTask_35] = {}
rwtTask[nFengCheZhenMercenaryTask_35]["Title"] = tLuaText[LANGUAGE_CONFIG][20607]
rwtTask[nFengCheZhenMercenaryTask_35]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nFengCheZhenMercenaryTask_35]["TaskQuality"] = 5
rwtTask[nFengCheZhenMercenaryTask_35]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_35]["ReqCollectId1"] = nCollect
--rwtTask[nFengCheZhenMercenaryTask_35]["ReqCollectCount1"] = 1
rwtTask[nFengCheZhenMercenaryTask_35]["AwardGroupId"] = 1
rwtTask[nFengCheZhenMercenaryTask_35]["AcceptDialogId"] = 10307
rwtTask[nFengCheZhenMercenaryTask_35]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_31]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_35]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_35]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_35]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_35]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_35]["StartAutoWay"]["FindWayGroupId"] = 60048
rwtTask[nFengCheZhenMercenaryTask_35]["StartAutoWay"]["FindWayGenId"] =  2001166


rwtTask[nFengCheZhenMercenaryTask_36] = {}
rwtTask[nFengCheZhenMercenaryTask_36]["Title"] = tLuaText[LANGUAGE_CONFIG][20612]
rwtTask[nFengCheZhenMercenaryTask_36]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_36]["TaskQuality"] = 1
rwtTask[nFengCheZhenMercenaryTask_36]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_36]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_36]["AcceptDialogId"] = 10308
rwtTask[nFengCheZhenMercenaryTask_36]["KillMonsterGroup1"] = nMonster_Lveduo
rwtTask[nFengCheZhenMercenaryTask_36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_36]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"] = {}
rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"][1] = {}
rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_GLveduozhe1
rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_36]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_36]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_36]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_36]["StartAutoWay"]["FindWayGroupId"] = 900159
rwtTask[nFengCheZhenMercenaryTask_36]["StartAutoWay"]["FindWayGenId"] =  2001175


rwtTask[nFengCheZhenMercenaryTask_37] = {}
rwtTask[nFengCheZhenMercenaryTask_37]["Title"] = tLuaText[LANGUAGE_CONFIG][20612]
rwtTask[nFengCheZhenMercenaryTask_37]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_37]["TaskQuality"] = 2
rwtTask[nFengCheZhenMercenaryTask_37]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_37]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_37]["AcceptDialogId"] = 10308
rwtTask[nFengCheZhenMercenaryTask_37]["KillMonsterGroup1"] = nMonster_Lveduo
rwtTask[nFengCheZhenMercenaryTask_37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_37]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_37]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_37]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_37]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_37]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_37]["StartAutoWay"]["FindWayGroupId"] = 900159
rwtTask[nFengCheZhenMercenaryTask_37]["StartAutoWay"]["FindWayGenId"] =  2001175


rwtTask[nFengCheZhenMercenaryTask_38] = {}
rwtTask[nFengCheZhenMercenaryTask_38]["Title"] = tLuaText[LANGUAGE_CONFIG][20612]
rwtTask[nFengCheZhenMercenaryTask_38]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_38]["TaskQuality"] = 3
rwtTask[nFengCheZhenMercenaryTask_38]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_38]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_38]["AcceptDialogId"] = 10308
rwtTask[nFengCheZhenMercenaryTask_38]["KillMonsterGroup1"] = nMonster_Lveduo
rwtTask[nFengCheZhenMercenaryTask_38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_38]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_38]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_38]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_38]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_38]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_38]["StartAutoWay"]["FindWayGroupId"] = 900159
rwtTask[nFengCheZhenMercenaryTask_38]["StartAutoWay"]["FindWayGenId"] =  2001175


rwtTask[nFengCheZhenMercenaryTask_39] = {}
rwtTask[nFengCheZhenMercenaryTask_39]["Title"] = tLuaText[LANGUAGE_CONFIG][20612]
rwtTask[nFengCheZhenMercenaryTask_39]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_39]["TaskQuality"] = 4
rwtTask[nFengCheZhenMercenaryTask_39]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_39]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_39]["AcceptDialogId"] = 10308
rwtTask[nFengCheZhenMercenaryTask_39]["KillMonsterGroup1"] = nMonster_Lveduo
rwtTask[nFengCheZhenMercenaryTask_39]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_39]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_39]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_39]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_39]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_39]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_39]["StartAutoWay"]["FindWayGroupId"] = 900159
rwtTask[nFengCheZhenMercenaryTask_39]["StartAutoWay"]["FindWayGenId"] =  2001175


rwtTask[nFengCheZhenMercenaryTask_40] = {}
rwtTask[nFengCheZhenMercenaryTask_40]["Title"] = tLuaText[LANGUAGE_CONFIG][20612]
rwtTask[nFengCheZhenMercenaryTask_40]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_40]["TaskQuality"] = 5
rwtTask[nFengCheZhenMercenaryTask_40]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_40]["AwardGroupId"] = 2
rwtTask[nFengCheZhenMercenaryTask_40]["AcceptDialogId"] = 10308
rwtTask[nFengCheZhenMercenaryTask_40]["KillMonsterGroup1"] = nMonster_Lveduo
rwtTask[nFengCheZhenMercenaryTask_40]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_40]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_40]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_36]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_40]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_40]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nFengCheZhenMercenaryTask_40]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_40]["StartAutoWay"]["FindWayGroupId"] = 900159
rwtTask[nFengCheZhenMercenaryTask_40]["StartAutoWay"]["FindWayGenId"] =  2001175


rwtTask[nFengCheZhenMercenaryTask_41] = {}
rwtTask[nFengCheZhenMercenaryTask_41]["Title"] = tLuaText[LANGUAGE_CONFIG][20617]
rwtTask[nFengCheZhenMercenaryTask_41]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_41]["TaskQuality"] = 1
rwtTask[nFengCheZhenMercenaryTask_41]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_41]["AwardGroupId"] = 3
rwtTask[nFengCheZhenMercenaryTask_41]["AcceptDialogId"] = 10309
rwtTask[nFengCheZhenMercenaryTask_41]["DialogId"] = 10310
rwtTask[nFengCheZhenMercenaryTask_41]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_41]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_41]["KillMonsterGroup1"] = nMonster_Xianqu
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"] = {}
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][1] = {}
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Xianquzhe
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][2] = {}
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][2]["GenId"] = nGenId_NPC_Xianqu
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_41]["TaskNpc"] = nNpc_Xianqu
rwtTask[nFengCheZhenMercenaryTask_41]["MonsterGroupGenId"] = nGenId_Monster_Xianquzhe
rwtTask[nFengCheZhenMercenaryTask_41]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_41]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_41]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_41]["StartAutoWay"]["FindWayGroupId"] = 20085
rwtTask[nFengCheZhenMercenaryTask_41]["StartAutoWay"]["FindWayGenId"] =  2001169
rwtTask[nFengCheZhenMercenaryTask_41]["IsMercenaryBattleDialog"] = tDialog.XianQuBattleAfter

rwtTask[nFengCheZhenMercenaryTask_42] = {}
rwtTask[nFengCheZhenMercenaryTask_42]["Title"] = tLuaText[LANGUAGE_CONFIG][20617]
rwtTask[nFengCheZhenMercenaryTask_42]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_42]["TaskQuality"] = 2
rwtTask[nFengCheZhenMercenaryTask_42]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_42]["AwardGroupId"] = 3
rwtTask[nFengCheZhenMercenaryTask_42]["AcceptDialogId"] = 10309
rwtTask[nFengCheZhenMercenaryTask_42]["DialogId"] = 10310
rwtTask[nFengCheZhenMercenaryTask_42]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_42]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_42]["KillMonsterGroup1"] = nMonster_Xianqu
rwtTask[nFengCheZhenMercenaryTask_42]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_42]["TaskNpc"] = nNpc_Xianqu
rwtTask[nFengCheZhenMercenaryTask_42]["MonsterGroupGenId"] = nGenId_Monster_Xianquzhe
rwtTask[nFengCheZhenMercenaryTask_42]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_42]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_42]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_42]["StartAutoWay"]["FindWayGroupId"] = 20085
rwtTask[nFengCheZhenMercenaryTask_42]["StartAutoWay"]["FindWayGenId"] =  2001169
rwtTask[nFengCheZhenMercenaryTask_42]["IsMercenaryBattleDialog"] = tDialog.XianQuBattleAfter

rwtTask[nFengCheZhenMercenaryTask_43] = {}
rwtTask[nFengCheZhenMercenaryTask_43]["Title"] = tLuaText[LANGUAGE_CONFIG][20617]
rwtTask[nFengCheZhenMercenaryTask_43]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_43]["TaskQuality"] = 3
rwtTask[nFengCheZhenMercenaryTask_43]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_43]["AwardGroupId"] = 3
rwtTask[nFengCheZhenMercenaryTask_43]["AcceptDialogId"] = 10309
rwtTask[nFengCheZhenMercenaryTask_43]["DialogId"] = 10310
rwtTask[nFengCheZhenMercenaryTask_43]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_43]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_43]["KillMonsterGroup1"] = nMonster_Xianqu
rwtTask[nFengCheZhenMercenaryTask_43]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_43]["TaskNpc"] = nNpc_Xianqu
rwtTask[nFengCheZhenMercenaryTask_43]["MonsterGroupGenId"] = nGenId_Monster_Xianquzhe
rwtTask[nFengCheZhenMercenaryTask_43]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_43]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_43]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_43]["StartAutoWay"]["FindWayGroupId"] = 20085
rwtTask[nFengCheZhenMercenaryTask_43]["StartAutoWay"]["FindWayGenId"] =  2001169
rwtTask[nFengCheZhenMercenaryTask_43]["IsMercenaryBattleDialog"] = tDialog.XianQuBattleAfter

rwtTask[nFengCheZhenMercenaryTask_44] = {}
rwtTask[nFengCheZhenMercenaryTask_44]["Title"] = tLuaText[LANGUAGE_CONFIG][20617]
rwtTask[nFengCheZhenMercenaryTask_44]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_44]["TaskQuality"] = 4
rwtTask[nFengCheZhenMercenaryTask_44]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_44]["AwardGroupId"] = 3
rwtTask[nFengCheZhenMercenaryTask_44]["AcceptDialogId"] = 10309
rwtTask[nFengCheZhenMercenaryTask_44]["DialogId"] = 10310
rwtTask[nFengCheZhenMercenaryTask_44]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_44]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_44]["KillMonsterGroup1"] = nMonster_Xianqu
rwtTask[nFengCheZhenMercenaryTask_44]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_44]["TaskNpc"] = nNpc_Xianqu
rwtTask[nFengCheZhenMercenaryTask_44]["MonsterGroupGenId"] = nGenId_Monster_Xianquzhe
rwtTask[nFengCheZhenMercenaryTask_44]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_44]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_44]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_44]["StartAutoWay"]["FindWayGroupId"] = 20085
rwtTask[nFengCheZhenMercenaryTask_44]["StartAutoWay"]["FindWayGenId"] =  2001169
rwtTask[nFengCheZhenMercenaryTask_44]["IsMercenaryBattleDialog"] = tDialog.XianQuBattleAfter

rwtTask[nFengCheZhenMercenaryTask_45] = {}
rwtTask[nFengCheZhenMercenaryTask_45]["Title"] = tLuaText[LANGUAGE_CONFIG][20617]
rwtTask[nFengCheZhenMercenaryTask_45]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_45]["TaskQuality"] = 5
rwtTask[nFengCheZhenMercenaryTask_45]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_45]["AwardGroupId"] = 3
rwtTask[nFengCheZhenMercenaryTask_45]["AcceptDialogId"] = 10309
rwtTask[nFengCheZhenMercenaryTask_45]["DialogId"] = 10310
rwtTask[nFengCheZhenMercenaryTask_45]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_45]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_45]["KillMonsterGroup1"] = nMonster_Xianqu
rwtTask[nFengCheZhenMercenaryTask_45]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_41]["DynaNpcGroupGen"]
rwtTask[nFengCheZhenMercenaryTask_45]["TaskNpc"] = nNpc_Xianqu
rwtTask[nFengCheZhenMercenaryTask_45]["MonsterGroupGenId"] = nGenId_Monster_Xianquzhe
rwtTask[nFengCheZhenMercenaryTask_45]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_45]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_45]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_45]["StartAutoWay"]["FindWayGroupId"] = 20085
rwtTask[nFengCheZhenMercenaryTask_45]["StartAutoWay"]["FindWayGenId"] =  2001169
rwtTask[nFengCheZhenMercenaryTask_45]["IsMercenaryBattleDialog"] = tDialog.XianQuBattleAfter

rwtTask[nFengCheZhenMercenaryTask_46] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["Title"] = tLuaText[LANGUAGE_CONFIG][20622]
rwtTask[nFengCheZhenMercenaryTask_46]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_46]["TaskQuality"] = 1
rwtTask[nFengCheZhenMercenaryTask_46]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_46]["KillMonsterGroup1"] = nMonster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_46]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_46]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_46]["ReqTrap1"] = tNpcGroup.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_46]["DialogId"] = tDialog.Toulie
rwtTask[nFengCheZhenMercenaryTask_46]["MonsterGroupGenId"] = nGenId_Monster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][1] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][2] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_Toulie_2
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][3] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][3]["GenId"] = tGenId.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][3]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][4] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][4]["GenId"] = tGenId.Npc_Toulie_1
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][4]["MapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nFengCheZhenMercenaryTask_46]["AwardGroupId"] = 4
rwtTask[nFengCheZhenMercenaryTask_46]["AcceptDialogId"] = 10311
rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"] = {}
rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]["FindWayGenId"] =  tGenId.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_46]["IsMercenaryBattleDialog"] = tDialog.DaoZeiBattleAfter

rwtTask[nFengCheZhenMercenaryTask_47] = {}
rwtTask[nFengCheZhenMercenaryTask_47]["Title"] = tLuaText[LANGUAGE_CONFIG][20622]
rwtTask[nFengCheZhenMercenaryTask_47]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_47]["TaskQuality"] = 2
rwtTask[nFengCheZhenMercenaryTask_47]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_47]["KillMonsterGroup1"] = nMonster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_47]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_47]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"]  
rwtTask[nFengCheZhenMercenaryTask_47]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_47]["AwardGroupId"] = 4
rwtTask[nFengCheZhenMercenaryTask_47]["AcceptDialogId"] = 10311
rwtTask[nFengCheZhenMercenaryTask_47]["StartAutoWay"] = rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]
rwtTask[nFengCheZhenMercenaryTask_47]["ReqTrap1"] = tNpcGroup.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_47]["DialogId"] = tDialog.Toulie
rwtTask[nFengCheZhenMercenaryTask_47]["MonsterGroupGenId"] = nGenId_Monster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_47]["IsMercenaryBattleDialog"] = tDialog.DaoZeiBattleAfter

rwtTask[nFengCheZhenMercenaryTask_48] = {}
rwtTask[nFengCheZhenMercenaryTask_48]["Title"] = tLuaText[LANGUAGE_CONFIG][20622]
rwtTask[nFengCheZhenMercenaryTask_48]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_48]["TaskQuality"] = 3
rwtTask[nFengCheZhenMercenaryTask_48]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_48]["KillMonsterGroup1"] = nMonster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_48]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_48]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"]  
rwtTask[nFengCheZhenMercenaryTask_48]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_48]["AwardGroupId"] = 4
rwtTask[nFengCheZhenMercenaryTask_48]["AcceptDialogId"] = 10311
rwtTask[nFengCheZhenMercenaryTask_48]["StartAutoWay"] = rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]
rwtTask[nFengCheZhenMercenaryTask_48]["ReqTrap1"] = tNpcGroup.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_48]["DialogId"] = tDialog.Toulie
rwtTask[nFengCheZhenMercenaryTask_48]["MonsterGroupGenId"] = nGenId_Monster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_48]["IsMercenaryBattleDialog"] = tDialog.DaoZeiBattleAfter

rwtTask[nFengCheZhenMercenaryTask_49] = {}
rwtTask[nFengCheZhenMercenaryTask_49]["Title"] = tLuaText[LANGUAGE_CONFIG][20622]
rwtTask[nFengCheZhenMercenaryTask_49]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_49]["TaskQuality"] = 4
rwtTask[nFengCheZhenMercenaryTask_49]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_49]["KillMonsterGroup1"] = nMonster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_49]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_49]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"]  
rwtTask[nFengCheZhenMercenaryTask_49]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_49]["AwardGroupId"] = 4
rwtTask[nFengCheZhenMercenaryTask_49]["AcceptDialogId"] = 10311
rwtTask[nFengCheZhenMercenaryTask_49]["StartAutoWay"] = rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]
rwtTask[nFengCheZhenMercenaryTask_49]["ReqTrap1"] = tNpcGroup.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_49]["DialogId"] = tDialog.Toulie
rwtTask[nFengCheZhenMercenaryTask_49]["MonsterGroupGenId"] = nGenId_Monster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_49]["IsMercenaryBattleDialog"] = tDialog.DaoZeiBattleAfter

rwtTask[nFengCheZhenMercenaryTask_50] = {}
rwtTask[nFengCheZhenMercenaryTask_50]["Title"] = tLuaText[LANGUAGE_CONFIG][20622]
rwtTask[nFengCheZhenMercenaryTask_50]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nFengCheZhenMercenaryTask_50]["TaskQuality"] = 5
rwtTask[nFengCheZhenMercenaryTask_50]["MercenaryTownId"] = 200103
rwtTask[nFengCheZhenMercenaryTask_50]["KillMonsterGroup1"] = nMonster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_50]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nFengCheZhenMercenaryTask_50]["DynaNpcGroupGen"] = rwtTask[nFengCheZhenMercenaryTask_46]["DynaNpcGroupGen"]  
rwtTask[nFengCheZhenMercenaryTask_50]["IsClickComplete"] = 0
rwtTask[nFengCheZhenMercenaryTask_50]["AwardGroupId"] = 4
rwtTask[nFengCheZhenMercenaryTask_50]["AcceptDialogId"] = 10311
rwtTask[nFengCheZhenMercenaryTask_50]["StartAutoWay"] = rwtTask[nFengCheZhenMercenaryTask_46]["StartAutoWay"]
rwtTask[nFengCheZhenMercenaryTask_50]["ReqTrap1"] = tNpcGroup.Trap_Toulie
rwtTask[nFengCheZhenMercenaryTask_50]["DialogId"] = tDialog.Toulie
rwtTask[nFengCheZhenMercenaryTask_50]["MonsterGroupGenId"] = nGenId_Monster_Toulie_New
rwtTask[nFengCheZhenMercenaryTask_50]["IsMercenaryBattleDialog"] = tDialog.DaoZeiBattleAfter

-------风车维护员------
--品质D
rwtTask[tFengCheZhenMercenaryTask.NewAdd1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["Title" ]= tLuaText[LANGUAGE_CONFIG][21137]--"风车维护员"
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["AcceptDialogId"] = nAcceptDialog_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["DialogId"] = tDialog.Fengche
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["TaskQuality"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["ReqCollectId1"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["ReqCollectCount1"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["AwardGroupId"] = 5

rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd1_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd1]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd1_GenId

--品质C
rwtTask[tFengCheZhenMercenaryTask.NewAdd2] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["Title" ]= tLuaText[LANGUAGE_CONFIG][21137]--"风车维护员"
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["AcceptDialogId"] = nAcceptDialog_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["DialogId"] = tDialog.Fengche
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["TaskQuality"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["ReqCollectId1"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["ReqCollectCount1"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["AwardGroupId"] = 5

rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd1_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd2]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd1_GenId

--品质B
rwtTask[tFengCheZhenMercenaryTask.NewAdd3] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21137]--"风车维护员"
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["AcceptDialogId"] = nAcceptDialog_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["DialogId"] = tDialog.Fengche
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["TaskQuality"] = 3
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["ReqCollectId1"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["ReqCollectCount1"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["AwardGroupId"] = 5

rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd1_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd3]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd1_GenId

--品质A
rwtTask[tFengCheZhenMercenaryTask.NewAdd4] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["Title" ]= tLuaText[LANGUAGE_CONFIG][21137]--"风车维护员"
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["AcceptDialogId"] = nAcceptDialog_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["DialogId"] = tDialog.Fengche
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["TaskQuality"] = 4
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["ReqCollectId1"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["ReqCollectCount1"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["AwardGroupId"] = 5

rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd1_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd4]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd1_GenId

--品质S
rwtTask[tFengCheZhenMercenaryTask.NewAdd5] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["Title" ]= tLuaText[LANGUAGE_CONFIG][21137]--"风车维护员"
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["AcceptDialogId"] = nAcceptDialog_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["DialogId"] = tDialog.Fengche
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["TaskQuality"] = 5
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["ReqCollectId1"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["ReqCollectCount1"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["AwardGroupId"] = 5

rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd1_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd1
rwtTask[tFengCheZhenMercenaryTask.NewAdd5]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd1_GenId


--黑心商家
rwtTask[tFengCheZhenMercenaryTask.NewAdd6] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["Title"] = tLuaText[LANGUAGE_CONFIG][21142]
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["TaskQuality"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["AcceptDialogId"] = nAcceptDialog_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["KillMonsterGroup1"] = nMonsterGroup_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["AwardGroupId"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]["FindWayGroupId"] = tNpcGroup.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]["FindWayGenId"] =  tGenId.Npc_HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["TaskNpc"] = tNpc.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DialogId"] = tDialog.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][2] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Npc_HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["IsMercenaryBattleDialog"] = tDialog.HeiXinBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd7] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["Title"] = tLuaText[LANGUAGE_CONFIG][21142]
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["TaskQuality"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["AcceptDialogId"] = nAcceptDialog_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["KillMonsterGroup1"] = nMonsterGroup_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["AwardGroupId"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["StartAutoWay"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["DynaNpcGroupGen"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["TaskNpc"] = tNpc.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["DialogId"] = tDialog.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd7]["IsMercenaryBattleDialog"] = tDialog.HeiXinBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd8] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["Title"] = tLuaText[LANGUAGE_CONFIG][21142]
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["TaskQuality"] = 3
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["AcceptDialogId"] = nAcceptDialog_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["KillMonsterGroup1"] = nMonsterGroup_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["AwardGroupId"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["StartAutoWay"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["DynaNpcGroupGen"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["TaskNpc"] = tNpc.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["DialogId"] = tDialog.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd8]["IsMercenaryBattleDialog"] = tDialog.HeiXinBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd9] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["Title"] = tLuaText[LANGUAGE_CONFIG][21142]
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["TaskQuality"] = 4
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["AcceptDialogId"] = nAcceptDialog_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["KillMonsterGroup1"] = nMonsterGroup_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["AwardGroupId"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["StartAutoWay"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["DynaNpcGroupGen"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["TaskNpc"] = tNpc.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["DialogId"] = tDialog.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd9]["IsMercenaryBattleDialog"] = tDialog.HeiXinBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd10] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["Title"] = tLuaText[LANGUAGE_CONFIG][21142]
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["TaskQuality"] = 5
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["AcceptDialogId"] = nAcceptDialog_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["KillMonsterGroup1"] = nMonsterGroup_NewAdd2
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["AwardGroupId"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["StartAutoWay"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["StartAutoWay"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["DynaNpcGroupGen"] = rwtTask[tFengCheZhenMercenaryTask.NewAdd6]["DynaNpcGroupGen"]
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["TaskNpc"] = tNpc.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["DialogId"] = tDialog.HaZhaKe
rwtTask[tFengCheZhenMercenaryTask.NewAdd10]["IsMercenaryBattleDialog"] = tDialog.HeiXinBattleAfter

-------驱赶拦路劫匪---------
rwtTask[tFengCheZhenMercenaryTask.NewAdd11] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["Title"] = tLuaText[LANGUAGE_CONFIG][21147]--"驱赶拦路劫匪"
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["TaskQuality"] = 1
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["AcceptDialogId"] = nAcceptDialog_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["KillMonsterGroup1"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["MonsterGroupGenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["AwardGroupId"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd11]["IsMercenaryBattleDialog"] = tDialog.JieFeiBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd12] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["Title"] = tLuaText[LANGUAGE_CONFIG][21147]--"驱赶拦路劫匪"
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["TaskQuality"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["AcceptDialogId"] = nAcceptDialog_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["KillMonsterGroup1"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["MonsterGroupGenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["AwardGroupId"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd12]["IsMercenaryBattleDialog"] = tDialog.JieFeiBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd13] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["Title"] = tLuaText[LANGUAGE_CONFIG][21147]--"驱赶拦路劫匪"
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["TaskQuality"] = 3
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["AcceptDialogId"] = nAcceptDialog_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["KillMonsterGroup1"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["MonsterGroupGenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["AwardGroupId"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd13]["IsMercenaryBattleDialog"] = tDialog.JieFeiBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd14] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["Title"] = tLuaText[LANGUAGE_CONFIG][21147]--"驱赶拦路劫匪"
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["TaskQuality"] = 4
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["AcceptDialogId"] = nAcceptDialog_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["KillMonsterGroup1"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["MonsterGroupGenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["AwardGroupId"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd14]["IsMercenaryBattleDialog"] = tDialog.JieFeiBattleAfter

rwtTask[tFengCheZhenMercenaryTask.NewAdd15] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["Title"] = tLuaText[LANGUAGE_CONFIG][21147]--"驱赶拦路劫匪"
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["TaskQuality"] = 5
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["MercenaryTownId"] = 200103
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["AcceptDialogId"] = nAcceptDialog_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["IsClickComplete"] = 0
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["KillMonsterGroup1"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["MonsterGroupGenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["AwardGroupId"] = 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["StartAutoWay"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd3
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["DynaNpcGroupGen"] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["DynaNpcGroupGen"][1] = {}
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd3_GenId
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tFengCheZhenMercenaryTask.NewAdd15]["IsMercenaryBattleDialog"] = tDialog.JieFeiBattleAfter
