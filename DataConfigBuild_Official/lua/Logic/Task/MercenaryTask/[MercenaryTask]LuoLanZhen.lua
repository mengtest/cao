--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--罗兰镇佣兵任务


--endregion

--**************************************数据****************************************
--罗兰镇佣兵任务城镇ID
local nMercenaryTownId = 200102

-----任务----
local nStartTaskId = 20080
local nTaskParam = 5

--任务ID
--返回任务ID组，包含1-5品级的任务
function LuoLanZhenMercenaryTask_GetTaskId(nTaskBeginId)
   local tTaskId = {}
   for i = 1,5 do
        tTaskId[i] = nTaskBeginId + i - 1
   end
   return tTaskId
end
--会长的信件
local tLuoLanZhenMercenaryTask1 = {20080,20081,20082,20083,20084}
--工会的物资
local tLuoLanZhenMercenaryTask2 = {20085,20086,20087,20088,20089}
--捉迷藏的小女孩   
local tLuoLanZhenMercenaryTask3 = {20090,20091,20092,20093,20094}
--护送糕点
local tLuoLanZhenMercenaryTask4 = {20095,20096,20097,20098,20099}
--驱逐玫瑰团追随者
local tLuoLanZhenMercenaryTask5 = {20100,20101,20102,20103,20104}
--黑吃黑
local tLuoLanZhenMercenaryTask6 = {20105,20106,20107,20108,20109}  --夺回被抢物资
--盗贼奸细
local tLuoLanZhenMercenaryTask7 = {20110,20111,20112,20113,20114}
--烦恼的机器人
local tLuoLanZhenMercenaryTask8 = {20115,20116,20117,20118,20119}
--雷鸣大陆志（二）
local tLuoLanZhenMercenaryTask9 = {20120,20121,20122,20123,20124}
--解救小女孩
local tLuoLanZhenMercenaryTask10 = {20125,20126,20127,20128,20129}
--local tLuoLanZhenMercenaryTask10 = LuoLanZhenMercenaryTask_GetTaskId(nStartTaskId+nTaskParam*10)

-------新增任务-----
--护送逃脱的镇民
local tLuoLanZhenMercenaryTask_NewAdd1 = {20356,20357,20358,20359,20360}
--追缉盗贼
local tLuoLanZhenMercenaryTask_NewAdd2 = {20361,20362,20363,20364,20365}
--罗兰大帝的光芒
local tLuoLanZhenMercenaryTask_NewAdd3 = {20366,20367,20368,20369,20370}
--联盟通缉令
local tLuoLanZhenMercenaryTask_NewAdd4 = {20371,20372,20373,20374,20375}


-------------对白ID-------------
--会长的信件
local nLuoLanZhenMercenaryTask1_Dialog1 = 10206 --接受任务对白
local nLuoLanZhenMercenaryTask1_Dialog2 = 10207 --完成任务对白
--工会的物资
local nLuoLanZhenMercenaryTask2_Dialog1 = 10208 --接受任务对白
local nLuoLanZhenMercenaryTask2_Dialog2 = 10209 --完成任务对白
--捉迷藏的小女孩
local nLuoLanZhenMercenaryTask3_Dialog1 = 10210 --接受任务对白
local nLuoLanZhenMercenaryTask3_Dialog2 = 10211 --完成任务对白
--护送糕点师
local nLuoLanZhenMercenaryTask4_Dialog1 = 10212 --接受任务对白
local nLuoLanZhenMercenaryTask4_Dialog2 = 10213 --完成任务对白
--驱逐玫瑰团追随者
local nLuoLanZhenMercenaryTask5_Dialog1 = 10214 --接受任务对白
--黑吃黑
local nLuoLanZhenMercenaryTask6_Dialog1 = 10215 --接受任务对白
--盗贼奸细
local nLuoLanZhenMercenaryTask8_Dialog1 = 10216 --接受任务对白
local nLuoLanZhenMercenaryTask8_Dialog2 = 10221 --完成任务对白
--烦恼的机器人
local nLuoLanZhenMercenaryTask9_Dialog1 = 10217 --接受任务对白
local nLuoLanZhenMercenaryTask9_Dialog2 = 10218 --完成任务对白
--雷鸣大陆志（二）
local nLuoLanZhenMercenaryTask10_Dialog1 = 10219 --接受任务对白
--解救小女孩
local nLuoLanZhenMercenaryTask11_Dialog1 = 10220 --接受任务对白
--暗雷怪战斗前对白
local nDialog_WarriorBeforeBattle = 11042


-----新增任务相关对白-----
--护送逃脱的镇民
local nLuoLanZhenMercenaryTask_NewAdd1_AcceptDialog = 11293 --接受任务对白
local nLuoLanZhenMercenaryTask_NewAdd1_Dialog = 11294 --完成任务对白
--追缉盗贼
local nLuoLanZhenMercenaryTask_NewAdd2_AcceptDialog = 11295 --接受任务对白
--罗兰大帝的光芒
local nLuoLanZhenMercenaryTask_NewAdd3_AcceptDialog = 11296 --接受任务对白
--联盟通缉令
local nLuoLanZhenMercenaryTask_NewAdd4_AcceptDialog = 11297 --接受任务对白

--护送逃脱的镇民怪物战前对白
local nDialogBeforeBattle_NewAdd1 = 11298
-------------NPC组-----------------------
-----陷阱---------
local tTrap_Warriors = {}       --部落战士触发陷阱
tTrap_Warriors[1] = 30141
tTrap_Warriors[2] = 30142
--tTrap_Warriors[3] = 30143

local tTrap_Warriors_GenId_1 = 2001459       --部落战士触发陷阱
local tTrap_Warriors_GenId_2 = 2001460       --部落战士触发陷阱
local tTrap_Warriors_GenId = {}
tTrap_Warriors_GenId[1] = 2001459
tTrap_Warriors_GenId[2] = 2001460
--tTrap_Warriors_GenId[3] = 2001461

---------新增任务陷阱--------
--护送逃脱的镇民任务陷阱
local tTrap_NewAdd1 = {30452,30453}
local tTrap_NewAdd1_GenId = {20010046,20010047}

------NPC---------
local nNpcGroup_DaWei = 20050         --大卫（原有）

local nNpcGroup_Clerk = 20066         --公会办事员(永久)
local nNpcGroup_Clerk_GenId = 2001441        

local nNpcGroup_Girl = 20067         --小女孩
local nNpcGroup_Girl_GenId = 2001442

local nNpcGroup_YouEr = 20071  --芙妮
local nNpcGroup_YouEr_GenId = 2001449  

local nNpcGroup_Conquest = 20072         --康奎斯特
local nNpcGroup_Conquest_GenId = 2001450   

local nSingleNpc_MaiTi = 20051 --镇民麦提
local nSingleNpc_MaiTi_GenId = 2001383  
    
---------采集物-----------
--历史石碑
local nCollect_Stela = 60050
local nCollect_Stela_GenId = 2001462

--新增任务采集物
--罗兰大帝雕像
local nCollect_NewAdd3 = 60221
local nCollect_NewAdd3_GenId = 20010048

-------------Monster组-----------
local nMonster_Warriors = 900151             --部落战士
local tMonster_Warriors_GenId = {}
tMonster_Warriors_GenId[1] = 2001451
tMonster_Warriors_GenId[2] = 2001452
local tMonster_Warriors_GenId_1 = 2001451
local tMonster_Warriors_GenId_2 = 2001452

--tMonster_Warriors_GenId[3] = 2001453

local nMonster_CaoYuanYouXia = 900211      --玫瑰团追随者
local nMonster_CaoYuanYouXia_GenId = 2001761      --玫瑰团追随者

local nMonster_DaoZei  = 900212             --玫瑰团流浪者
local nMonster_DaoZei_GenId  = 2001762             --玫瑰团流浪者

local nMonster_Spy = 900152              --奸细
local nMonster_Spy_GenId = 2001454

local nMonster_FengHou = 900153           --毒刃蜂后
local nMonster_FengHou_GenId = 2001458

-----------新增任务怪-------
--陷阱怪盗贼
local nMonsterGroup_NewAdd1 = 900323
local tMonsterGroup_NewAdd1_GenId = {20010049,20010050}
--追缉盗贼任务怪
local nMonsterGroup_NewAdd2 = 900324
local nMonsterGroup_NewAdd2_GenId = 20010051
--黑色荆棘
local nMonsterGroup_NewAdd4 = 900325
local nMonsterGroup_NewAdd4_GenId = 20010052

local nMonster_NewAdd1 = 9000240
local nMonster_NewAdd2 = 9000241
local nMonster_NewAdd4 = 9000242
-------------NPC------------------------
local nNpc_DaWei = 3004         --大卫
local nNpc_Clerk = 3052          --公会办事员(永久)
local nNpc_Girl  = 3053        --小女孩
local nNpc_MaiTi = 3002         --麦提
----盗贼奸细任务

local nNpc_YouEr  = 3057  --芙妮 


local nNpc_Conquest = 3058    --康奎斯特

--新增任务对白NPC
local nNpc_DouPeng = 3411       --斗篷女盗贼

--****************************************逻辑*********************************************
-------陷阱----------
--护送糕点师暗雷怪
for i = 1,#tTrap_Warriors do
    rwtNpcGroup[tTrap_Warriors[i]] = rwtNpcGroup[tTrap_Warriors[i]] or {}
    rwtNpcGroup[tTrap_Warriors[i]]["Type"] = CONST_NPCGROUP_TYPE.Trap
    rwtNpcGroup[tTrap_Warriors[i]]["EscortMonsterGroupGen"] = tMonster_Warriors_GenId[i]
    rwtNpcGroup[tTrap_Warriors[i]]["EscortDialog"] = nDialog_WarriorBeforeBattle

--    rwtNpcGroup[tTrap_Warriors[i]]["TrapFunc"] = function (nTrapType,nTrapId)
--        if not rwHasGenEvent(tMonster_Warriors_GenId[i]) then
--            rwAddGenEvent(tMonster_Warriors_GenId[i])
--        end
--        rwAutoBattle(tMonster_Warriors_GenId[i])
--        rwDelGenEvent(tTrap_Warriors_GenId[i])
--    end
end

rwtDialog[nDialog_WarriorBeforeBattle] = rwtDialog[nDialog_WarriorBeforeBattle] or {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true


--护送逃脱的镇民陷阱
for i = 1,#tTrap_NewAdd1 do
    rwtNpcGroup[tTrap_NewAdd1[i]] = rwtNpcGroup[tTrap_NewAdd1[i]] or {}
    rwtNpcGroup[tTrap_NewAdd1[i]]["Type"] = CONST_NPCGROUP_TYPE.Trap
    rwtNpcGroup[tTrap_NewAdd1[i]]["EscortMonsterGroupGen"] = tMonsterGroup_NewAdd1_GenId[i]
    rwtNpcGroup[tTrap_NewAdd1[i]]["EscortDialog"] = nDialogBeforeBattle_NewAdd1
end

rwtDialog[nDialogBeforeBattle_NewAdd1] = rwtDialog[nDialogBeforeBattle_NewAdd1] or {}
rwtDialog[nDialogBeforeBattle_NewAdd1]["DialogEndInit"] = {}
rwtDialog[nDialogBeforeBattle_NewAdd1]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogBeforeBattle_NewAdd1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogBeforeBattle_NewAdd1]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[nDialogBeforeBattle_NewAdd1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true

----NPC组---------
--公会办事员
rwtNpcGroup[nNpcGroup_Clerk] = rwtNpcGroup[nNpcGroup_Clerk] or {}
rwtNpcGroup[nNpcGroup_Clerk]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Clerk]["NpcId"]= nNpc_Clerk

--小女孩
rwtNpcGroup[nNpcGroup_Girl] = rwtNpcGroup[nNpcGroup_Girl] or {}
rwtNpcGroup[nNpcGroup_Girl]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Girl]["NpcId"]= nNpc_Girl

--尤儿
rwtNpcGroup[nNpcGroup_YouEr] = rwtNpcGroup[nNpcGroup_YouEr] or {}
rwtNpcGroup[nNpcGroup_YouEr]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_YouEr]["NpcId"]= nNpc_YouEr

--康奎斯特
rwtNpcGroup[nNpcGroup_Conquest] = rwtNpcGroup[nNpcGroup_Conquest] or {}
rwtNpcGroup[nNpcGroup_Conquest]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Conquest]["NpcId"]= nNpc_Conquest

-------NPC---------
--公会办事员
rwtNpc[nNpc_Clerk] = rwtNpc[nNpc_Clerk] or {}

--小女孩
rwtNpc[nNpc_Girl] = rwtNpc[nNpc_Girl] or {}

--尤儿
rwtNpc[nNpc_YouEr] = rwtNpc[nNpc_YouEr] or {}

--康奎斯特(永久)
rwtNpc[nNpc_Conquest] = rwtNpc[nNpc_Conquest] or {} 

----对白-------
----盗贼奸细
--for i = 1,4 do
--    rwtDialog[tLuoLanZhenMercenaryTask7_SpyTalk[i]] = rwtDialog[tLuoLanZhenMercenaryTask7_SpyTalk[i]] or {}
--    rwtDialog[tLuoLanZhenMercenaryTask7_SpyTalk[i]]["DialogEnd"] = function()
--       if not rwHasGenEvent(nMonster_Spy_GenId) then
--            rwAddGenEvent(nMonster_Spy_GenId,tMonster_Spy_Region[i])
--       end
--       rwAutoBattle(nMonster_Spy_GenId)
--    end
--end

--烦恼的机器人
rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2] = rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2] or {}
rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2]["DialogEndInit"] = {}
rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2]["DialogEndInit"]["Events"] = {}
rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2]["DialogEndInit"]["Events"][1]["DynCreate"] = {}
rwtDialog[nLuoLanZhenMercenaryTask9_Dialog2]["DialogEndInit"]["Events"][1]["DynCreate"][1] = nMonster_FengHou_GenId


-----------采集物--------
rwtNpcGroup[nCollect_Stela] = rwtNpcGroup[nCollect_Stela] or {}
rwtNpcGroup[nCollect_Stela]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nCollect_NewAdd3] = rwtNpcGroup[nCollect_NewAdd3] or {}
rwtNpcGroup[nCollect_NewAdd3]["Type"] = CONST_NPCGROUP_TYPE.Collect

---------怪物--------------
--奸细死亡后删除NPC
function MercenaryTask_LuoLanZhen_SpyDead()
    if rwHasGenEvent(nNpcGroup_YouEr_GenId) then
        rwDelGenEvent(nNpcGroup_YouEr_GenId)
    end
end
rwtMonsterGroup_Func[nMonster_Spy] = rwtMonsterGroup_Func[nMonster_Spy] or {}
table.insert(rwtMonsterGroup_Func[nMonster_Spy],MercenaryTask_LuoLanZhen_SpyDead)
--蜂后死亡后删除NPC
function MercenaryTask_LuoLanZhen_FengHouDead()
    if rwHasGenEvent(nNpcGroup_Conquest_GenId) then
        rwDelGenEvent(nNpcGroup_Conquest_GenId)
    end
end
rwtMonsterGroup_Func[nMonster_FengHou] = rwtMonsterGroup_Func[nMonster_FengHou] or {}
table.insert(rwtMonsterGroup_Func[nMonster_FengHou],MercenaryTask_LuoLanZhen_FengHouDead)
--****************************************任务*******************************************
-------会长的信件------
--品质D
rwtTask[tLuoLanZhenMercenaryTask1[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask1[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20677]
rwtTask[tLuoLanZhenMercenaryTask1[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask1[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask1[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask1[1]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask1[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask1_Dialog1
rwtTask[tLuoLanZhenMercenaryTask1[1]]["DialogId"] = nLuoLanZhenMercenaryTask1_Dialog2
rwtTask[tLuoLanZhenMercenaryTask1[1]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask1[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask1[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask1[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask1[1]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask1[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask1[1]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质C
rwtTask[tLuoLanZhenMercenaryTask1[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask1[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20678]
rwtTask[tLuoLanZhenMercenaryTask1[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask1[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask1[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask1[2]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask1[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask1_Dialog1
rwtTask[tLuoLanZhenMercenaryTask1[2]]["DialogId"] = nLuoLanZhenMercenaryTask1_Dialog2
rwtTask[tLuoLanZhenMercenaryTask1[2]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask1[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask1[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask1[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask1[2]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask1[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask1[2]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质B
rwtTask[tLuoLanZhenMercenaryTask1[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask1[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20679]
rwtTask[tLuoLanZhenMercenaryTask1[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask1[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask1[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask1[3]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask1[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask1_Dialog1
rwtTask[tLuoLanZhenMercenaryTask1[3]]["DialogId"] = nLuoLanZhenMercenaryTask1_Dialog2
rwtTask[tLuoLanZhenMercenaryTask1[3]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask1[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask1[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask1[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask1[3]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask1[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask1[3]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质A
rwtTask[tLuoLanZhenMercenaryTask1[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask1[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20680]
rwtTask[tLuoLanZhenMercenaryTask1[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask1[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask1[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask1[4]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask1[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask1_Dialog1
rwtTask[tLuoLanZhenMercenaryTask1[4]]["DialogId"] = nLuoLanZhenMercenaryTask1_Dialog2
rwtTask[tLuoLanZhenMercenaryTask1[4]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask1[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask1[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask1[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask1[4]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask1[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask1[4]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质S
rwtTask[tLuoLanZhenMercenaryTask1[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask1[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20681]
rwtTask[tLuoLanZhenMercenaryTask1[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask1[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask1[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask1[5]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask1[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask1_Dialog1
rwtTask[tLuoLanZhenMercenaryTask1[5]]["DialogId"] = nLuoLanZhenMercenaryTask1_Dialog2
rwtTask[tLuoLanZhenMercenaryTask1[5]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask1[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask1[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask1[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask1[5]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask1[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask1[5]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"


-------工会的物资------
--品质D
rwtTask[tLuoLanZhenMercenaryTask2[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask2[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20682]
rwtTask[tLuoLanZhenMercenaryTask2[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask2[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask2[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask2[1]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask2[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask2_Dialog1
rwtTask[tLuoLanZhenMercenaryTask2[1]]["DialogId"] = nLuoLanZhenMercenaryTask2_Dialog2
rwtTask[tLuoLanZhenMercenaryTask2[1]]["TaskNpc"] = nNpc_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask2[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask2[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask2[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask2[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask2[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Clerk_GenId
--品质C
rwtTask[tLuoLanZhenMercenaryTask2[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask2[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20683]
rwtTask[tLuoLanZhenMercenaryTask2[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask2[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask2[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask2[2]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask2[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask2_Dialog1
rwtTask[tLuoLanZhenMercenaryTask2[2]]["DialogId"] = nLuoLanZhenMercenaryTask2_Dialog2
rwtTask[tLuoLanZhenMercenaryTask2[2]]["TaskNpc"] = nNpc_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask2[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask2[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask2[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask2[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask2[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Clerk_GenId
--品质B
rwtTask[tLuoLanZhenMercenaryTask2[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask2[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20684]
rwtTask[tLuoLanZhenMercenaryTask2[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask2[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask2[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask2[3]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask2[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask2_Dialog1
rwtTask[tLuoLanZhenMercenaryTask2[3]]["DialogId"] = nLuoLanZhenMercenaryTask2_Dialog2
rwtTask[tLuoLanZhenMercenaryTask2[3]]["TaskNpc"] = nNpc_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask2[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask2[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask2[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask2[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask2[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Clerk_GenId
--品质A
rwtTask[tLuoLanZhenMercenaryTask2[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask2[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20685]
rwtTask[tLuoLanZhenMercenaryTask2[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask2[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask2[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask2[4]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask2[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask2_Dialog1
rwtTask[tLuoLanZhenMercenaryTask2[4]]["DialogId"] = nLuoLanZhenMercenaryTask2_Dialog2
rwtTask[tLuoLanZhenMercenaryTask2[4]]["TaskNpc"] = nNpc_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask2[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask2[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask2[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask2[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask2[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Clerk_GenId
--品质S
rwtTask[tLuoLanZhenMercenaryTask2[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask2[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20686]
rwtTask[tLuoLanZhenMercenaryTask2[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask2[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask2[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask2[5]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask2[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask2_Dialog1
rwtTask[tLuoLanZhenMercenaryTask2[5]]["DialogId"] = nLuoLanZhenMercenaryTask2_Dialog2
rwtTask[tLuoLanZhenMercenaryTask2[5]]["TaskNpc"] = nNpc_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask2[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask2[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask2[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask2[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask2[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Clerk
rwtTask[tLuoLanZhenMercenaryTask2[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Clerk_GenId

-------捉迷藏的小女孩------
--品质D
rwtTask[tLuoLanZhenMercenaryTask3[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask3[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20687]
rwtTask[tLuoLanZhenMercenaryTask3[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask3[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask3[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask3[1]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask3[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask3_Dialog1
rwtTask[tLuoLanZhenMercenaryTask3[1]]["DialogId"] = nLuoLanZhenMercenaryTask3_Dialog2
rwtTask[tLuoLanZhenMercenaryTask3[1]]["TaskNpc"] = nNpc_Girl
rwtTask[tLuoLanZhenMercenaryTask3[1]]["TaskQuality"] = 1

rwtTask[tLuoLanZhenMercenaryTask3[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask3[1]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Girl_GenId
rwtTask[tLuoLanZhenMercenaryTask3[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask3[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask3[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask3[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Girl
rwtTask[tLuoLanZhenMercenaryTask3[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Girl_GenId

--品质C
rwtTask[tLuoLanZhenMercenaryTask3[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask3[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20688]
rwtTask[tLuoLanZhenMercenaryTask3[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask3[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask3[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask3[2]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask3[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask3_Dialog1
rwtTask[tLuoLanZhenMercenaryTask3[2]]["DialogId"] = nLuoLanZhenMercenaryTask3_Dialog2
rwtTask[tLuoLanZhenMercenaryTask3[2]]["TaskNpc"] = nNpc_Girl
rwtTask[tLuoLanZhenMercenaryTask3[2]]["TaskQuality"] = 2

rwtTask[tLuoLanZhenMercenaryTask3[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask3[2]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Girl_GenId
rwtTask[tLuoLanZhenMercenaryTask3[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask3[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask3[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask3[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Girl
rwtTask[tLuoLanZhenMercenaryTask3[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Girl_GenId

--品质B
rwtTask[tLuoLanZhenMercenaryTask3[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask3[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20689]
rwtTask[tLuoLanZhenMercenaryTask3[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask3[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask3[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask3[3]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask3[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask3_Dialog1
rwtTask[tLuoLanZhenMercenaryTask3[3]]["DialogId"] = nLuoLanZhenMercenaryTask3_Dialog2
rwtTask[tLuoLanZhenMercenaryTask3[3]]["TaskNpc"] = nNpc_Girl
rwtTask[tLuoLanZhenMercenaryTask3[3]]["TaskQuality"] = 3

rwtTask[tLuoLanZhenMercenaryTask3[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask3[3]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Girl_GenId
rwtTask[tLuoLanZhenMercenaryTask3[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask3[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask3[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask3[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Girl
rwtTask[tLuoLanZhenMercenaryTask3[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Girl_GenId

--品质A
rwtTask[tLuoLanZhenMercenaryTask3[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask3[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20690]
rwtTask[tLuoLanZhenMercenaryTask3[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask3[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask3[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask3[4]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask3[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask3_Dialog1
rwtTask[tLuoLanZhenMercenaryTask3[4]]["DialogId"] = nLuoLanZhenMercenaryTask3_Dialog2
rwtTask[tLuoLanZhenMercenaryTask3[4]]["TaskNpc"] = nNpc_Girl
rwtTask[tLuoLanZhenMercenaryTask3[4]]["TaskQuality"] = 4

rwtTask[tLuoLanZhenMercenaryTask3[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask3[4]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Girl_GenId
rwtTask[tLuoLanZhenMercenaryTask3[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask3[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask3[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask3[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Girl
rwtTask[tLuoLanZhenMercenaryTask3[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Girl_GenId

--品质S
rwtTask[tLuoLanZhenMercenaryTask3[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask3[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20691]
rwtTask[tLuoLanZhenMercenaryTask3[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask3[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask3[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask3[5]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask3[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask3_Dialog1
rwtTask[tLuoLanZhenMercenaryTask3[5]]["DialogId"] = nLuoLanZhenMercenaryTask3_Dialog2
rwtTask[tLuoLanZhenMercenaryTask3[5]]["TaskNpc"] = nNpc_Girl
rwtTask[tLuoLanZhenMercenaryTask3[5]]["TaskQuality"] = 5

rwtTask[tLuoLanZhenMercenaryTask3[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask3[5]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Girl_GenId
rwtTask[tLuoLanZhenMercenaryTask3[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask3[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask3[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask3[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask3[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask3[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Girl
rwtTask[tLuoLanZhenMercenaryTask3[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Girl_GenId

-------护送糕点------
--品质D
rwtTask[tLuoLanZhenMercenaryTask4[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask4[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20692]
rwtTask[tLuoLanZhenMercenaryTask4[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask4[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask4[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask4[1]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask4[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask4_Dialog1
rwtTask[tLuoLanZhenMercenaryTask4[1]]["DialogId"] = nLuoLanZhenMercenaryTask4_Dialog2
rwtTask[tLuoLanZhenMercenaryTask4[1]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask4[1]]["TaskQuality"] = 1


--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][1]["GenId"] = tMonster_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][2]["GenId"] = tMonster_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[1]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhenMercenaryTask4[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask4[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask4[1]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask4[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask4[1]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质C
rwtTask[tLuoLanZhenMercenaryTask4[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask4[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20693]
rwtTask[tLuoLanZhenMercenaryTask4[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask4[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask4[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask4[2]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask4[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask4_Dialog1
rwtTask[tLuoLanZhenMercenaryTask4[2]]["DialogId"] = nLuoLanZhenMercenaryTask4_Dialog2
rwtTask[tLuoLanZhenMercenaryTask4[2]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask4[2]]["TaskQuality"] = 2

--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][1]["GenId"] = tMonster_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][2]["GenId"] = tMonster_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[2]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask4[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask4[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask4[2]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask4[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask4[2]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质B
rwtTask[tLuoLanZhenMercenaryTask4[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask4[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20694]
rwtTask[tLuoLanZhenMercenaryTask4[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask4[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask4[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask4[3]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask4[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask4_Dialog1
rwtTask[tLuoLanZhenMercenaryTask4[3]]["DialogId"] = nLuoLanZhenMercenaryTask4_Dialog2
rwtTask[tLuoLanZhenMercenaryTask4[3]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask4[3]]["TaskQuality"] = 3

--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][1]["GenId"] = tMonster_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][2]["GenId"] = tMonster_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[3]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask4[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask4[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask4[3]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask4[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask4[3]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质A
rwtTask[tLuoLanZhenMercenaryTask4[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask4[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20695]
rwtTask[tLuoLanZhenMercenaryTask4[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask4[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask4[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask4[4]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask4[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask4_Dialog1
rwtTask[tLuoLanZhenMercenaryTask4[4]]["DialogId"] = nLuoLanZhenMercenaryTask4_Dialog2
rwtTask[tLuoLanZhenMercenaryTask4[4]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask4[4]]["TaskQuality"] = 4

--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][1]["GenId"] = tMonster_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][2]["GenId"] = tMonster_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[4]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask4[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask4[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask4[4]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask4[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask4[4]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"
--品质S
rwtTask[tLuoLanZhenMercenaryTask4[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask4[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20696]
rwtTask[tLuoLanZhenMercenaryTask4[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask4[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask4[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask4[5]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask4[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask4_Dialog1
rwtTask[tLuoLanZhenMercenaryTask4[5]]["DialogId"] = nLuoLanZhenMercenaryTask4_Dialog2
rwtTask[tLuoLanZhenMercenaryTask4[5]]["TaskNpc"] = nNpc_DaWei
rwtTask[tLuoLanZhenMercenaryTask4[5]]["TaskQuality"] = 5

--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][1]["GenId"] = tMonster_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][2]["GenId"] = tMonster_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_Warriors_GenId_1
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_Warriors_GenId_2
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask4[5]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tLuoLanZhenMercenaryTask4[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask4[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask4[5]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tLuoLanZhenMercenaryTask4[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask4[5]]["StartAutoWay"]["FindWayPos"] = "-85.19,2.58,26.72"

-------驱逐玫瑰团------
--品质D
rwtTask[tLuoLanZhenMercenaryTask5[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask5[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20697]
rwtTask[tLuoLanZhenMercenaryTask5[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask5[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask5[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask5[1]]["AwardGroupId"] = 5
rwtTask[tLuoLanZhenMercenaryTask5[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask5_Dialog1
rwtTask[tLuoLanZhenMercenaryTask5[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask5[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask5[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask5[1]]["KillMonsterGroup1" ]= nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[1]]["MonsterGroupGenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask5[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask5[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_CaoYuanYouXia_GenId

--品质C
rwtTask[tLuoLanZhenMercenaryTask5[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask5[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20698]
rwtTask[tLuoLanZhenMercenaryTask5[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask5[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask5[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask5[2]]["AwardGroupId"] = 5
rwtTask[tLuoLanZhenMercenaryTask5[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask5_Dialog1
rwtTask[tLuoLanZhenMercenaryTask5[2]]["TaskQuality"] = 2

rwtTask[tLuoLanZhenMercenaryTask5[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask5[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask5[2]]["KillMonsterGroup1" ]= nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[2]]["MonsterGroupGenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask5[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask5[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_CaoYuanYouXia_GenId
--品质B
rwtTask[tLuoLanZhenMercenaryTask5[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask5[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20699]
rwtTask[tLuoLanZhenMercenaryTask5[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask5[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask5[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask5[3]]["AwardGroupId"] = 5
rwtTask[tLuoLanZhenMercenaryTask5[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask5_Dialog1
rwtTask[tLuoLanZhenMercenaryTask5[3]]["TaskQuality"] = 3

rwtTask[tLuoLanZhenMercenaryTask5[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask5[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhenMercenaryTask5[3]]["KillMonsterGroup1" ]= nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[3]]["MonsterGroupGenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask5[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask5[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_CaoYuanYouXia_GenId
--品质A
rwtTask[tLuoLanZhenMercenaryTask5[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask5[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20700]
rwtTask[tLuoLanZhenMercenaryTask5[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask5[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask5[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask5[4]]["AwardGroupId"] = 5
rwtTask[tLuoLanZhenMercenaryTask5[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask5_Dialog1
rwtTask[tLuoLanZhenMercenaryTask5[4]]["TaskQuality"] = 4

rwtTask[tLuoLanZhenMercenaryTask5[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask5[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask5[4]]["KillMonsterGroup1" ]= nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[4]]["MonsterGroupGenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask5[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask5[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_CaoYuanYouXia_GenId
--品质S
rwtTask[tLuoLanZhenMercenaryTask5[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask5[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20701]
rwtTask[tLuoLanZhenMercenaryTask5[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask5[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask5[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask5[5]]["AwardGroupId"] = 5
rwtTask[tLuoLanZhenMercenaryTask5[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask5_Dialog1
rwtTask[tLuoLanZhenMercenaryTask5[5]]["TaskQuality"] = 5

rwtTask[tLuoLanZhenMercenaryTask5[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask5[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhenMercenaryTask5[5]]["KillMonsterGroup1" ]= nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[5]]["MonsterGroupGenId"] = nMonster_CaoYuanYouXia_GenId
rwtTask[tLuoLanZhenMercenaryTask5[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask5[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask5[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask5[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask5[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_CaoYuanYouXia
rwtTask[tLuoLanZhenMercenaryTask5[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_CaoYuanYouXia_GenId

-------黑吃黑------
--品质D
rwtTask[tLuoLanZhenMercenaryTask6[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask6[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20702]
rwtTask[tLuoLanZhenMercenaryTask6[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask6[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask6[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask6[1]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask6[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask6_Dialog1
rwtTask[tLuoLanZhenMercenaryTask6[1]]["TaskQuality"] = 1

rwtTask[tLuoLanZhenMercenaryTask6[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask6[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask6[1]]["KillMonsterGroup1" ]= nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[1]]["MonsterGroupGenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask6[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask6[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_DaoZei_GenId

--品质C
rwtTask[tLuoLanZhenMercenaryTask6[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask6[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20703]
rwtTask[tLuoLanZhenMercenaryTask6[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask6[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask6[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask6[2]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask6[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask6_Dialog1
rwtTask[tLuoLanZhenMercenaryTask6[2]]["TaskQuality"] = 2

rwtTask[tLuoLanZhenMercenaryTask6[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask6[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask6[2]]["KillMonsterGroup1" ]= nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[2]]["MonsterGroupGenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask6[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask6[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_DaoZei_GenId
--品质B
rwtTask[tLuoLanZhenMercenaryTask6[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask6[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20704]
rwtTask[tLuoLanZhenMercenaryTask6[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask6[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask6[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask6[3]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask6[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask6_Dialog1
rwtTask[tLuoLanZhenMercenaryTask6[3]]["TaskQuality"] = 3

rwtTask[tLuoLanZhenMercenaryTask6[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask6[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask6[3]]["KillMonsterGroup1" ]= nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[3]]["MonsterGroupGenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask6[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask6[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_DaoZei_GenId
--品质A
rwtTask[tLuoLanZhenMercenaryTask6[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask6[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20705]
rwtTask[tLuoLanZhenMercenaryTask6[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask6[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask6[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask6[4]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask6[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask6_Dialog1
rwtTask[tLuoLanZhenMercenaryTask6[4]]["TaskQuality"] = 4

rwtTask[tLuoLanZhenMercenaryTask6[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask6[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask6[4]]["KillMonsterGroup1" ]= nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[4]]["MonsterGroupGenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask6[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask6[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_DaoZei_GenId
--品质S
rwtTask[tLuoLanZhenMercenaryTask6[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask6[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20706]
rwtTask[tLuoLanZhenMercenaryTask6[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask6[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask6[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask6[5]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask6[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask6_Dialog1
rwtTask[tLuoLanZhenMercenaryTask6[5]]["TaskQuality"] = 5

rwtTask[tLuoLanZhenMercenaryTask6[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask6[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhenMercenaryTask6[5]]["KillMonsterGroup1" ]= nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[5]]["MonsterGroupGenId"] = nMonster_DaoZei_GenId
rwtTask[tLuoLanZhenMercenaryTask6[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask6[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask6[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tLuoLanZhenMercenaryTask6[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask6[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_DaoZei
rwtTask[tLuoLanZhenMercenaryTask6[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_DaoZei_GenId

-------盗贼奸细------
--品质D
rwtTask[tLuoLanZhenMercenaryTask7[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask7[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20707]
rwtTask[tLuoLanZhenMercenaryTask7[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask7[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask7[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask7[1]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask7[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask8_Dialog1
rwtTask[tLuoLanZhenMercenaryTask7[1]]["TaskQuality"] = 1

rwtTask[tLuoLanZhenMercenaryTask7[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask7[1]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_YouEr_GenId
rwtTask[tLuoLanZhenMercenaryTask7[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask7[1]]["KillMonsterGroup1" ]= nMonster_Spy
rwtTask[tLuoLanZhenMercenaryTask7[1]]["MonsterGroupGenId"] = nMonster_Spy_GenId
rwtTask[tLuoLanZhenMercenaryTask7[1]]["TaskNpc"] = nNpc_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[1]]["DialogId" ]= nLuoLanZhenMercenaryTask8_Dialog2
rwtTask[tLuoLanZhenMercenaryTask7[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask7[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask7[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_YouEr_GenId
--rwtTask[tLuoLanZhenMercenaryTask7[1]]["DialogueEndFunc"] = function(nNpcId)
--    if not rwHasGenEvent(nMonster_Spy_GenId) then
--        rwAddGenEvent(nMonster_Spy_GenId)
--    end
--    rwAutoBattle(nMonster_Spy_GenId)
--end


--品质C
rwtTask[tLuoLanZhenMercenaryTask7[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask7[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20708]
rwtTask[tLuoLanZhenMercenaryTask7[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask7[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask7[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask7[2]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask7[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask8_Dialog1
rwtTask[tLuoLanZhenMercenaryTask7[2]]["TaskQuality"] = 2

rwtTask[tLuoLanZhenMercenaryTask7[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask7[2]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_YouEr_GenId
rwtTask[tLuoLanZhenMercenaryTask7[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask7[2]]["KillMonsterGroup1" ]= nMonster_Spy
rwtTask[tLuoLanZhenMercenaryTask7[2]]["MonsterGroupGenId"] = nMonster_Spy_GenId
rwtTask[tLuoLanZhenMercenaryTask7[2]]["TaskNpc"] = nNpc_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[2]]["DialogId" ]= nLuoLanZhenMercenaryTask8_Dialog2
rwtTask[tLuoLanZhenMercenaryTask7[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask7[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask7[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_YouEr_GenId
--rwtTask[tLuoLanZhenMercenaryTask7[2]]["DialogueEndFunc"] = function(nNpcId)
--    if not rwHasGenEvent(nMonster_Spy_GenId) then
--        rwAddGenEvent(nMonster_Spy_GenId)
--    end
--    rwAutoBattle(nMonster_Spy_GenId)
--end

--品质B
rwtTask[tLuoLanZhenMercenaryTask7[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask7[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20709]
rwtTask[tLuoLanZhenMercenaryTask7[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask7[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask7[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask7[3]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask7[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask8_Dialog1
rwtTask[tLuoLanZhenMercenaryTask7[3]]["TaskQuality"] = 3

rwtTask[tLuoLanZhenMercenaryTask7[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask7[3]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_YouEr_GenId
rwtTask[tLuoLanZhenMercenaryTask7[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask7[3]]["KillMonsterGroup1" ]= nMonster_Spy
rwtTask[tLuoLanZhenMercenaryTask7[3]]["MonsterGroupGenId"] = nMonster_Spy_GenId
rwtTask[tLuoLanZhenMercenaryTask7[3]]["TaskNpc"] = nNpc_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[3]]["DialogId" ]= nLuoLanZhenMercenaryTask8_Dialog2
rwtTask[tLuoLanZhenMercenaryTask7[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask7[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask7[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_YouEr_GenId
--rwtTask[tLuoLanZhenMercenaryTask7[3]]["DialogueEndFunc"] = function(nNpcId)
--    if not rwHasGenEvent(nMonster_Spy_GenId) then
--        rwAddGenEvent(nMonster_Spy_GenId)
--    end
--    rwAutoBattle(nMonster_Spy_GenId)
--end

--品质A
rwtTask[tLuoLanZhenMercenaryTask7[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask7[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20710]
rwtTask[tLuoLanZhenMercenaryTask7[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask7[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask7[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask7[4]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask7[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask8_Dialog1
rwtTask[tLuoLanZhenMercenaryTask7[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask7[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask7[4]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_YouEr_GenId
rwtTask[tLuoLanZhenMercenaryTask7[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask7[4]]["KillMonsterGroup1" ]= nMonster_Spy
rwtTask[tLuoLanZhenMercenaryTask7[4]]["MonsterGroupGenId"] = nMonster_Spy_GenId
rwtTask[tLuoLanZhenMercenaryTask7[4]]["TaskNpc"] = nNpc_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[4]]["DialogId" ]= nLuoLanZhenMercenaryTask8_Dialog2
rwtTask[tLuoLanZhenMercenaryTask7[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask7[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask7[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_YouEr_GenId
--rwtTask[tLuoLanZhenMercenaryTask7[4]]["DialogueEndFunc"] = function(nNpcId)
--    if not rwHasGenEvent(nMonster_Spy_GenId) then
--        rwAddGenEvent(nMonster_Spy_GenId)
--    end
--    rwAutoBattle(nMonster_Spy_GenId)
--end

--品质S
rwtTask[tLuoLanZhenMercenaryTask7[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask7[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20711]
rwtTask[tLuoLanZhenMercenaryTask7[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask7[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask7[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask7[5]]["AwardGroupId"] = 2
rwtTask[tLuoLanZhenMercenaryTask7[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask8_Dialog1
rwtTask[tLuoLanZhenMercenaryTask7[5]]["TaskQuality"] = 5

rwtTask[tLuoLanZhenMercenaryTask7[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask7[5]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_YouEr_GenId
rwtTask[tLuoLanZhenMercenaryTask7[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask7[5]]["KillMonsterGroup1" ]= nMonster_Spy
rwtTask[tLuoLanZhenMercenaryTask7[5]]["MonsterGroupGenId"] = nMonster_Spy_GenId
rwtTask[tLuoLanZhenMercenaryTask7[5]]["TaskNpc"] = nNpc_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[5]]["DialogId" ]= nLuoLanZhenMercenaryTask8_Dialog2
rwtTask[tLuoLanZhenMercenaryTask7[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask7[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask7[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask7[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask7[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_YouEr
rwtTask[tLuoLanZhenMercenaryTask7[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_YouEr_GenId
--rwtTask[tLuoLanZhenMercenaryTask7[5]]["DialogueEndFunc"] = function(nNpcId)
--    if not rwHasGenEvent(nMonster_Spy_GenId) then
--        rwAddGenEvent(nMonster_Spy_GenId)
--    end
--    rwAutoBattle(nMonster_Spy_GenId)
--end

-------烦恼的机器人------
--品质D
rwtTask[tLuoLanZhenMercenaryTask8[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask8[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20712]
rwtTask[tLuoLanZhenMercenaryTask8[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask8[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask8[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask8[1]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask8[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask9_Dialog1
rwtTask[tLuoLanZhenMercenaryTask8[1]]["DialogId"] = nLuoLanZhenMercenaryTask9_Dialog2
rwtTask[tLuoLanZhenMercenaryTask8[1]]["TaskNpc"] = nNpc_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[1]]["TaskQuality"] = 1

rwtTask[tLuoLanZhenMercenaryTask8[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask8[1]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Conquest_GenId
rwtTask[tLuoLanZhenMercenaryTask8[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask8[1]]["KillMonsterGroup1" ]= nMonster_FengHou
rwtTask[tLuoLanZhenMercenaryTask8[1]]["MonsterGroupGenId"] = nMonster_FengHou_GenId
rwtTask[tLuoLanZhenMercenaryTask8[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask8[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask8[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Conquest_GenId
--rwtTask[tLuoLanZhenMercenaryTask8[1]]["DialogueEndFunc"] = function () 
--    if not rwHasGenEvent(nMonster_FengHou_GenId) then
--        rwAddGenEvent(nMonster_FengHou_GenId)
--    end
--    rwAutoBattle(nMonster_FengHou_GenId)
--end
--品质C
rwtTask[tLuoLanZhenMercenaryTask8[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask8[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20713]
rwtTask[tLuoLanZhenMercenaryTask8[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask8[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask8[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask8[2]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask8[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask9_Dialog1
rwtTask[tLuoLanZhenMercenaryTask8[2]]["DialogId"] = nLuoLanZhenMercenaryTask9_Dialog2
rwtTask[tLuoLanZhenMercenaryTask8[2]]["TaskNpc"] = nNpc_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[2]]["TaskQuality"] = 2

rwtTask[tLuoLanZhenMercenaryTask8[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask8[2]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Conquest_GenId
rwtTask[tLuoLanZhenMercenaryTask8[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask8[2]]["KillMonsterGroup1" ]= nMonster_FengHou
rwtTask[tLuoLanZhenMercenaryTask8[2]]["MonsterGroupGenId"] = nMonster_FengHou_GenId
rwtTask[tLuoLanZhenMercenaryTask8[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask8[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask8[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Conquest_GenId

--rwtTask[tLuoLanZhenMercenaryTask8[2]]["DialogueEndFunc"] = function () 
--    if not rwHasGenEvent(nMonster_FengHou_GenId) then
--        rwDelGenEvent(nMonster_FengHou_GenId)
--    end
--    rwAutoBattle(nMonster_FengHou_GenId)
--end
--品质B
rwtTask[tLuoLanZhenMercenaryTask8[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask8[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20714]
rwtTask[tLuoLanZhenMercenaryTask8[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask8[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask8[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask8[3]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask8[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask9_Dialog1
rwtTask[tLuoLanZhenMercenaryTask8[3]]["DialogId"] = nLuoLanZhenMercenaryTask9_Dialog2
rwtTask[tLuoLanZhenMercenaryTask8[3]]["TaskNpc"] = nNpc_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[3]]["TaskQuality"] = 3

rwtTask[tLuoLanZhenMercenaryTask8[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask8[3]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Conquest_GenId
rwtTask[tLuoLanZhenMercenaryTask8[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask8[3]]["KillMonsterGroup1" ]= nMonster_FengHou
rwtTask[tLuoLanZhenMercenaryTask8[3]]["MonsterGroupGenId"] = nMonster_FengHou_GenId
rwtTask[tLuoLanZhenMercenaryTask8[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask8[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask8[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Conquest_GenId
--rwtTask[tLuoLanZhenMercenaryTask8[3]]["DialogueEndFunc"] = function () 
--    if not rwHasGenEvent(nMonster_FengHou_GenId) then
--        rwDelGenEvent(nMonster_FengHou_GenId)
--    end
--    rwAutoBattle(nMonster_FengHou_GenId)
--end
--品质A
rwtTask[tLuoLanZhenMercenaryTask8[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask8[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20715]
rwtTask[tLuoLanZhenMercenaryTask8[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask8[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask8[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask8[4]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask8[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask9_Dialog1
rwtTask[tLuoLanZhenMercenaryTask8[4]]["DialogId"] = nLuoLanZhenMercenaryTask9_Dialog2
rwtTask[tLuoLanZhenMercenaryTask8[4]]["TaskNpc"] = nNpc_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[4]]["TaskQuality"] = 4

rwtTask[tLuoLanZhenMercenaryTask8[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask8[4]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Conquest_GenId
rwtTask[tLuoLanZhenMercenaryTask8[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask8[4]]["KillMonsterGroup1" ]= nMonster_FengHou
rwtTask[tLuoLanZhenMercenaryTask8[4]]["MonsterGroupGenId"] = nMonster_FengHou_GenId
rwtTask[tLuoLanZhenMercenaryTask8[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask8[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask8[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Conquest_GenId
--rwtTask[tLuoLanZhenMercenaryTask8[4]]["DialogueEndFunc"] = function () 
--    if not rwHasGenEvent(nMonster_FengHou_GenId) then
--        rwDelGenEvent(nMonster_FengHou_GenId)
--    end
--    rwAutoBattle(nMonster_FengHou_GenId)
--end
--品质S
rwtTask[tLuoLanZhenMercenaryTask8[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask8[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20716]
rwtTask[tLuoLanZhenMercenaryTask8[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask8[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask8[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask8[5]]["AwardGroupId"] = 3
rwtTask[tLuoLanZhenMercenaryTask8[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask9_Dialog1
rwtTask[tLuoLanZhenMercenaryTask8[5]]["DialogId"] = nLuoLanZhenMercenaryTask9_Dialog2
rwtTask[tLuoLanZhenMercenaryTask8[5]]["TaskNpc"] = nNpc_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[5]]["TaskQuality"] = 5

rwtTask[tLuoLanZhenMercenaryTask8[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask8[5]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_Conquest_GenId
rwtTask[tLuoLanZhenMercenaryTask8[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask8[5]]["KillMonsterGroup1" ]= nMonster_FengHou
rwtTask[tLuoLanZhenMercenaryTask8[5]]["MonsterGroupGenId"] = nMonster_FengHou_GenId
rwtTask[tLuoLanZhenMercenaryTask8[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask8[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask8[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask8[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask8[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Conquest
rwtTask[tLuoLanZhenMercenaryTask8[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Conquest_GenId
--rwtTask[tLuoLanZhenMercenaryTask8[5]]["DialogueEndFunc"] = function () 
--    if not rwHasGenEvent(nMonster_FengHou_GenId) then
--        rwDelGenEvent(nMonster_FengHou_GenId)
--    end
--    rwAutoBattle(nMonster_FengHou_GenId)
--end

-------雷鸣大陆志（二）------
--品质D
rwtTask[tLuoLanZhenMercenaryTask9[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask9[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20717]
rwtTask[tLuoLanZhenMercenaryTask9[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask9[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask9[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask9[1]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask9[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask10_Dialog1
rwtTask[tLuoLanZhenMercenaryTask9[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask9[1]]["ReqCollectId1"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[1]]["ReqCollectCount1"] = 1

rwtTask[tLuoLanZhenMercenaryTask9[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask9[1]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_Stela_GenId
rwtTask[tLuoLanZhenMercenaryTask9[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask9[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask9[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask9[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[1]]["StartAutoWay"]["FindWayGroupId"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[1]]["StartAutoWay"]["FindWayGenId"] = nCollect_Stela_GenId

--品质C
rwtTask[tLuoLanZhenMercenaryTask9[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask9[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20718]
rwtTask[tLuoLanZhenMercenaryTask9[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask9[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask9[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask9[2]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask9[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask10_Dialog1
rwtTask[tLuoLanZhenMercenaryTask9[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask9[2]]["ReqCollectId1"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[2]]["ReqCollectCount1"] = 1

rwtTask[tLuoLanZhenMercenaryTask9[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask9[2]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_Stela_GenId
rwtTask[tLuoLanZhenMercenaryTask9[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tLuoLanZhenMercenaryTask9[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask9[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask9[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[2]]["StartAutoWay"]["FindWayGroupId"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[2]]["StartAutoWay"]["FindWayGenId"] = nCollect_Stela_GenId
--品质B
rwtTask[tLuoLanZhenMercenaryTask9[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask9[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20719]
rwtTask[tLuoLanZhenMercenaryTask9[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask9[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask9[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask9[3]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask9[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask10_Dialog1
rwtTask[tLuoLanZhenMercenaryTask9[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask9[3]]["ReqCollectId1"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[3]]["ReqCollectCount1"] = 1
rwtTask[tLuoLanZhenMercenaryTask9[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask9[3]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_Stela_GenId
rwtTask[tLuoLanZhenMercenaryTask9[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask9[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask9[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask9[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[3]]["StartAutoWay"]["FindWayGroupId"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[3]]["StartAutoWay"]["FindWayGenId"] = nCollect_Stela_GenId
--品质A
rwtTask[tLuoLanZhenMercenaryTask9[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask9[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20720]
rwtTask[tLuoLanZhenMercenaryTask9[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask9[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask9[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask9[4]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask9[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask10_Dialog1
rwtTask[tLuoLanZhenMercenaryTask9[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask9[4]]["ReqCollectId1"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[4]]["ReqCollectCount1"] = 1

rwtTask[tLuoLanZhenMercenaryTask9[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask9[4]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_Stela_GenId
rwtTask[tLuoLanZhenMercenaryTask9[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask9[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask9[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask9[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[4]]["StartAutoWay"]["FindWayGroupId"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[4]]["StartAutoWay"]["FindWayGenId"] = nCollect_Stela_GenId
--品质S
rwtTask[tLuoLanZhenMercenaryTask9[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask9[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20721]
rwtTask[tLuoLanZhenMercenaryTask9[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask9[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask9[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask9[5]]["AwardGroupId"] = 4
rwtTask[tLuoLanZhenMercenaryTask9[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask10_Dialog1
rwtTask[tLuoLanZhenMercenaryTask9[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask9[5]]["ReqCollectId1"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[5]]["ReqCollectCount1"] = 1

rwtTask[tLuoLanZhenMercenaryTask9[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask9[5]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_Stela_GenId
rwtTask[tLuoLanZhenMercenaryTask9[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask9[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask9[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask9[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask9[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask9[5]]["StartAutoWay"]["FindWayGroupId"] = nCollect_Stela
rwtTask[tLuoLanZhenMercenaryTask9[5]]["StartAutoWay"]["FindWayGenId"] = nCollect_Stela_GenId


--------------------------------新增任务
-------瓦莉尔的心意------
--品质D
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21177]--"护送逃脱的镇民"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_Dialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["TaskNpc"] = nNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["AwardGroupId"] = 5

--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroup_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][2]["GenId"] = tMonsterGroup_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[1]]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_MaiTi_GenId

--品质C
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21178]--"护送逃脱的镇民"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_Dialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["TaskNpc"] = nNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["AwardGroupId"] = 5

--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroup_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][2]["GenId"] = tMonsterGroup_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[2]]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_MaiTi_GenId

--品质B
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21179]--"护送逃脱的镇民"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_Dialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["TaskNpc"] = nNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["AwardGroupId"] = 5

--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroup_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][2]["GenId"] = tMonsterGroup_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[3]]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_MaiTi_GenId

--品质A
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21180]--"护送逃脱的镇民"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_Dialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["TaskNpc"] = nNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["AwardGroupId"] = 5

--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroup_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][2]["GenId"] = tMonsterGroup_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[4]]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_MaiTi_GenId

--品质S
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21181]--"护送逃脱的镇民"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DialogId"] = nLuoLanZhenMercenaryTask_NewAdd1_Dialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["TaskNpc"] = nNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["AwardGroupId"] = 5

--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][1]["GenId"] = tMonsterGroup_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][2] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][2]["GenId"] = tMonsterGroup_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][3]["GenId"] = tTrap_NewAdd1_GenId[1]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][4] = {}
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][4]["GenId"] = tTrap_NewAdd1_GenId[2]
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][4]["MapId"] = 2001
--rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["StartAutoWay"]["FindWayGroupId"] = nSingleNpc_MaiTi
rwtTask[tLuoLanZhenMercenaryTask_NewAdd1[5]]["StartAutoWay"]["FindWayGenId"] = nSingleNpc_MaiTi_GenId


-------追缉盗贼------
--品质D
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][21182]--"追缉盗贼"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd2_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质C
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][21183]--"追缉盗贼"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd2_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质B
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][21184]--"追缉盗贼"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd2_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质A
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][21185]--"追缉盗贼"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd2_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质S
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][21186]--"追缉盗贼"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd2_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["AwardGroupId"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd2_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd2[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

-------罗兰大帝的光芒------
--品质D
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21187]--"罗兰大帝的光芒"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd3_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["ReqCollectId1"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["ReqCollectCount1"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["AwardGroupId"] = 2

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd3_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[1]]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd3_GenId

--品质C
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21188]--"罗兰大帝的光芒"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd3_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["ReqCollectId1"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["ReqCollectCount1"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["AwardGroupId"] = 2

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd3_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[2]]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd3_GenId
--品质B
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21189]--"罗兰大帝的光芒"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd3_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["ReqCollectId1"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["ReqCollectCount1"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["AwardGroupId"] = 2

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd3_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[3]]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd3_GenId
--品质A
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21190]--"罗兰大帝的光芒"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd3_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["ReqCollectId1"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["ReqCollectCount1"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["AwardGroupId"] = 2

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd3_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[4]]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd3_GenId
--品质S
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21191]--"罗兰大帝的光芒"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd3_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["ReqCollectId1"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["ReqCollectCount1"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["AwardGroupId"] = 2

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_NewAdd3_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["StartAutoWay"]["FindWayGroupId"] = nCollect_NewAdd3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd3[5]]["StartAutoWay"]["FindWayGenId"] = nCollect_NewAdd3_GenId

-------联盟通缉令------
--品质D
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][21192]--"联盟通缉令"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["TaskQuality"] = 1
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd4_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["AwardGroupId"] = 6
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质C
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][21193]--"联盟通缉令"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["TaskQuality"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd4_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["AwardGroupId"] = 6
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质B
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][21194]--"联盟通缉令"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["TaskQuality"] = 3
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd4_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["AwardGroupId"] = 6
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质A
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][21195]--"联盟通缉令"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["TaskQuality"] = 4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd4_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["AwardGroupId"] = 6
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--品质S
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][21196]--"联盟通缉令"
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["TaskQuality"] = 5
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["AcceptDialogId"] = nLuoLanZhenMercenaryTask_NewAdd4_AcceptDialog
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["MonsterGroupGenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["KillMonsterGroup1" ] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["AwardGroupId"] = 6
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["IsClickComplete"] = 0
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["StartAutoWay"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_NewAdd4
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["DynaNpcGroupGen"] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_NewAdd4_GenId
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tLuoLanZhenMercenaryTask_NewAdd4[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
