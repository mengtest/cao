
--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--暗月城前置任务
--by:Nizw

--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

local nTempdata = 1234
local nTaskPre = 10350
--任务ID
local tTask = {}
tTask.nAnYueChengPre_1 = 70219 --禁卫军的紧急招募函  阅读招募函        
tTask.nAnYueChengPre_2 = 70220 --禁卫军的秘密任务    前往报道        
tTask.nAnYueChengPre_3 = 70221 --禁卫军的秘密任务    收集样本        
tTask.nAnYueChengPre_4 = 70222 --禁卫军的秘密任务    上交样本        
tTask.nAnYueChengPre_5 = 70223 --后续的考验         拜访特罗德        
tTask.nAnYueChengPre_6 = 70224 --神秘试炼场         寻找泰雷        
tTask.nAnYueChengPre_7 = 70225 --神秘试炼场         寻找泰雷        
tTask.nAnYueChengPre_8 = 70226 --黯月城             通关黯月城        
tTask.nAnYueChengPre_9 = 70227 --体验报告           汇报特罗德        


--对话ID
local tDialog = {}
tDialog.nTask1 = 12862
tDialog.nTask2 = 12863
tDialog.nTask3 = 12864
tDialog.nTask4 = 12865
tDialog.nTask5 = 12866
tDialog.nTask6 = 12867
tDialog.nTask6_1 = 12869
tDialog.nTask7 = 12868
tDialog.nTask8 = 12963
tDialog.nTask9 = 12870

--怪物：
local nMonsterGroup_WZlang = 900585
local nMonsterGroup_WZxion = 900586
local nMonsterGroup_DZluja = 900587
local nMonsterGroup_AHhunn = 900588
local nMonsterGroup_KHapup = 900589

--Npc
local nNPCGroup_SaLind = 20947
local nNPCGroup_TaiLie = 20949
local nNPCGroup_TeLuo1 = 20228
local nNPCGroup_TeLuo2 = 20948
local nNPCGroup_TrapMa = 30658

local nNPC_SaLind = 3816
local nNPC_TaiLie = 3818
local nNPC_TeLuo1 = 3028
local nNPC_TeLuo2 = 3817

local tGenId = {}
tGenId.Monster_WZlang = 2002036
tGenId.Monster_WZxion = 2002037
tGenId.Monster_DZluja = 2002038
tGenId.Monster_AHhunn = 2002039
tGenId.Monster_KHapup = 2002040

tGenId.NPCGroup_SaLind = 2002035
tGenId.NPCGroup_TaiLie = 20010252
tGenId.NPCGroup_TeLuo1 = 1000047
tGenId.NPCGroup_TeLuo2 = 20010251
tGenId.NPCGroup_TrapMa = 2002041


-------------------------------------------- 配置 ----------------------------------------------

rwtNpcGroup[nNPCGroup_SaLind] = rwtNpcGroup[nNPCGroup_SaLind] or {} 
rwtNpcGroup[nNPCGroup_SaLind]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_SaLind]["NpcId"] = nNPC_SaLind
rwtNpc[nNPC_SaLind] = rwtNpc[nNPC_SaLind] or {}

rwtNpcGroup[nNPCGroup_TaiLie] = rwtNpcGroup[nNPCGroup_TaiLie] or {} 
rwtNpcGroup[nNPCGroup_TaiLie]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_TaiLie]["NpcId"] = nNPC_TaiLie
rwtNpc[nNPC_TaiLie] = rwtNpc[nNPC_TaiLie] or {}

rwtNpcGroup[nNPCGroup_TeLuo2] = rwtNpcGroup[nNPCGroup_TeLuo2] or {} 
rwtNpcGroup[nNPCGroup_TeLuo2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNPCGroup_TeLuo2]["NpcId"] = nNPC_TeLuo2
rwtNpc[nNPC_TeLuo2] = rwtNpc[nNPC_TeLuo2] or {}

rwtNpcGroup[nNPCGroup_TrapMa] = rwtNpcGroup[nNPCGroup_TrapMa] or {} 
rwtNpcGroup[nNPCGroup_TrapMa]["Type"] = CONST_NPCGROUP_TYPE.Trap


--================================================================
--阅读招募函
rwtTask[tTask.nAnYueChengPre_1] = {}
rwtTask[tTask.nAnYueChengPre_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21830]
rwtTask[tTask.nAnYueChengPre_1]["PreTaskId"] = nTaskPre
rwtTask[tTask.nAnYueChengPre_1]["NextTaskId"] = tTask.nAnYueChengPre_2
rwtTask[tTask.nAnYueChengPre_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask.nAnYueChengPre_1]["DialogId"]= tDialog.nTask1


--前往报道
rwtTask[tTask.nAnYueChengPre_2] = {}
rwtTask[tTask.nAnYueChengPre_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21831]
rwtTask[tTask.nAnYueChengPre_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_2]["PreTaskId"] = tTask.nAnYueChengPre_1
rwtTask[tTask.nAnYueChengPre_2]["NextTaskId"] = tTask.nAnYueChengPre_3
rwtTask[tTask.nAnYueChengPre_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nAnYueChengPre_2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nAnYueChengPre_2]["TaskNpc"] = nNPC_SaLind
rwtTask[tTask.nAnYueChengPre_2]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_2]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tTask.nAnYueChengPre_2]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_2]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_2]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nAnYueChengPre_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nAnYueChengPre_2]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_2]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel


--收集样本
rwtTask[tTask.nAnYueChengPre_3] = {}
rwtTask[tTask.nAnYueChengPre_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][21832]
rwtTask[tTask.nAnYueChengPre_3]["PreTaskId" ]= tTask.nAnYueChengPre_2
rwtTask[tTask.nAnYueChengPre_3]["NextTaskId" ]= tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
-- rwtTask[tTask.nAnYueChengPre_3]["IsClickComplete"] = 1
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_WZlang
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Monster_WZxion
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][2]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][3]["GenId"] = tGenId.Monster_DZluja
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][3]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][4]["GenId"] = tGenId.Monster_AHhunn
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][4]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][5] = {}
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][5]["GenId"] = tGenId.Monster_KHapup
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][5]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_3]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask.nAnYueChengPre_3]["KillMonsterGroup1"] = nMonsterGroup_1
-- rwtTask[tTask.nAnYueChengPre_3]["MonsterGroupGenId"] = nMonsterGroup_1_Gen
-- rwtTask[tTask.nAnYueChengPre_3]["ReqTrap1"]= nTrap_2
-- -- rwtTask[tTask.nAnYueChengPre_3]["AcceptDialogId"] = tDialog.nAcceptTask3
-- rwtTask[tTask.nAnYueChengPre_3]["DialogId"]= tDialog.nTask3
rwtTask[tTask.nAnYueChengPre_3]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask.nAnYueChengPre_3]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tTask.nAnYueChengPre_3]["StartAutoWay"]["FindWayPos"] = "-19.96,1.93,11.69"

function CopyMap_AnYueChengPre()
    local nUserId = rwUserGetId()
    local ran = rwGetRandInt(3,5)
    local num = 0
    if rwTempDataIsExist(nTempdata,nUserId) then
        num = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data1,nUserId)
    end
    rwUserTempDataSet(nTempdata,ran+num,CONST_TEMP_DATA.Data1,nUserId)
    if ran+num>=10 then
        rwTaskSetData(tTask.nAnYueChengPre_3,CONST_TASK_INFO_INDEX.TASK_DATA1,10)
        local nTaskDetailType =rwtTask[tTask.nAnYueChengPre_3]["TaskDetailType"]
        ENUM_TASK_TEMPLATE[nTaskDetailType]:create(tTask.nAnYueChengPre_3):CompleteTask()
    else
        rwTaskSetData(tTask.nAnYueChengPre_3,CONST_TASK_INFO_INDEX.TASK_DATA1,ran+num)
    end
end
rwtMonsterGroup_Func[nMonsterGroup_WZlang] = rwtMonsterGroup_Func[nMonsterGroup_WZlang] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_WZlang],CopyMap_AnYueChengPre)
rwtMonsterGroup_Func[nMonsterGroup_WZxion] = rwtMonsterGroup_Func[nMonsterGroup_WZxion] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_WZxion],CopyMap_AnYueChengPre)
rwtMonsterGroup_Func[nMonsterGroup_DZluja] = rwtMonsterGroup_Func[nMonsterGroup_DZluja] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_DZluja],CopyMap_AnYueChengPre)
rwtMonsterGroup_Func[nMonsterGroup_AHhunn] = rwtMonsterGroup_Func[nMonsterGroup_AHhunn] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_AHhunn],CopyMap_AnYueChengPre)
rwtMonsterGroup_Func[nMonsterGroup_KHapup] = rwtMonsterGroup_Func[nMonsterGroup_KHapup] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_KHapup],CopyMap_AnYueChengPre)


--上交样本
rwtTask[tTask.nAnYueChengPre_4] = {}
rwtTask[tTask.nAnYueChengPre_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21833]
rwtTask[tTask.nAnYueChengPre_4]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_4]["PreTaskId"] = tTask.nAnYueChengPre_3
rwtTask[tTask.nAnYueChengPre_4]["NextTaskId"] = tTask.nAnYueChengPre_5
rwtTask[tTask.nAnYueChengPre_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nAnYueChengPre_4]["DialogId"] = tDialog.nTask4
rwtTask[tTask.nAnYueChengPre_4]["TaskNpc"] = nNPC_SaLind
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_4]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPCGroup_SaLind
rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tTask.nAnYueChengPre_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--拜访特罗德
rwtTask[tTask.nAnYueChengPre_5] = {}
rwtTask[tTask.nAnYueChengPre_5]["Title"]= tLuaText[LANGUAGE_CONFIG][21834]
rwtTask[tTask.nAnYueChengPre_5]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nAnYueChengPre_5]["PreTaskId"]= tTask.nAnYueChengPre_4
rwtTask[tTask.nAnYueChengPre_5]["NextTaskId"]= tTask.nAnYueChengPre_7
rwtTask[tTask.nAnYueChengPre_5]["DialogId"]= tDialog.nTask6_1--nTask5
rwtTask[tTask.nAnYueChengPre_5]["TaskNpc"]= nNPC_TeLuo1
rwtTask[tTask.nAnYueChengPre_5]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask.nAnYueChengPre_5]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_TeLuo1
rwtTask[tTask.nAnYueChengPre_5]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_TeLuo2
rwtTask[tTask.nAnYueChengPre_5]["DialogueEndFunc"]=function()
    rwEnterMap(2001,"40.16,-0.04,-33.71")
end

--寻找泰雷
-- rwtTask[tTask.nAnYueChengPre_6] = {}
-- rwtTask[tTask.nAnYueChengPre_6]["Title"] = tLuaText[LANGUAGE_CONFIG][218385]
-- rwtTask[tTask.nAnYueChengPre_6]["TaskType"] = CONST_TASK_TYPE.SIDE
-- rwtTask[tTask.nAnYueChengPre_6]["PreTaskId"] = tTask.nAnYueChengPre_5
-- rwtTask[tTask.nAnYueChengPre_6]["NextTaskId"] = tTask.nAnYueChengPre_7
-- rwtTask[tTask.nAnYueChengPre_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tTask.nAnYueChengPre_6]["DialogId"] = tDialog.nTask6_1--tDialog.nTask6
-- rwtTask[tTask.nAnYueChengPre_6]["ReqTrap1"]= nNPCGroup_TrapMa
-- rwtTask[tTask.nAnYueChengPre_6]["StartAutoWay"] = {}
-- rwtTask[tTask.nAnYueChengPre_6]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask.nAnYueChengPre_6]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[tTask.nAnYueChengPre_6]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_TrapMa
-- rwtTask[tTask.nAnYueChengPre_6]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_TrapMa
-- rwtTask[tTask.nAnYueChengPre_6]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask.nAnYueChengPre_6]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask.nAnYueChengPre_6]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPCGroup_TrapMa
-- rwtTask[tTask.nAnYueChengPre_6]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[tTask.nAnYueChengPre_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask.nAnYueChengPre_6]["DialogueEndFunc"]=function()
--     rwEnterMap(2001,"40.16,-0.04,-33.71")
-- end


--寻找泰雷
rwtTask[tTask.nAnYueChengPre_7] = {}
rwtTask[tTask.nAnYueChengPre_7]["Title"] = tLuaText[LANGUAGE_CONFIG][218385]
rwtTask[tTask.nAnYueChengPre_7]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_7]["PreTaskId"] = tTask.nAnYueChengPre_5
rwtTask[tTask.nAnYueChengPre_7]["NextTaskId"] = tTask.nAnYueChengPre_8
rwtTask[tTask.nAnYueChengPre_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nAnYueChengPre_7]["DialogId"] = tDialog.nTask7
rwtTask[tTask.nAnYueChengPre_7]["TaskNpc"]= nNPC_TaiLie
rwtTask[tTask.nAnYueChengPre_7]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nAnYueChengPre_7]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_TaiLie
rwtTask[tTask.nAnYueChengPre_7]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_TaiLie
rwtTask[tTask.nAnYueChengPre_7]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nAnYueChengPre_7]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nAnYueChengPre_7]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPCGroup_TaiLie
rwtTask[tTask.nAnYueChengPre_7]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nAnYueChengPre_7]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask.nAnYueChengPre_7]["DialogueEndFunc"]=function()
    rwEnterMap(3153)
end

--黯月城
rwtTask[tTask.nAnYueChengPre_8] = {}
rwtTask[tTask.nAnYueChengPre_8]["Title"] = tLuaText[LANGUAGE_CONFIG][218385]
rwtTask[tTask.nAnYueChengPre_8]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_8]["PreTaskId"] = tTask.nAnYueChengPre_7
rwtTask[tTask.nAnYueChengPre_8]["NextTaskId"] = tTask.nAnYueChengPre_9
rwtTask[tTask.nAnYueChengPre_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTask.nAnYueChengPre_8]["DialogId"] = tDialog.nTask8
-- rwtTask[tTask.nAnYueChengPre_8]["AutoTaskDialog"] = tDialog.nTask8
rwtTask[tTask.nAnYueChengPre_8]["TaskNpc"]= nNPC_TaiLie
rwtTask[tTask.nAnYueChengPre_8]["nEnterCopyMapId"] = 3153
rwtTask[tTask.nAnYueChengPre_8]["PassCopyMap1"] = {3153}
rwtTask[tTask.nAnYueChengPre_8]["PassCopyMapCount1"] = 1
-- rwtTask[tTask.nAnYueChengPre_8]["IsClickComplete"] = 1
rwtTask[tTask.nAnYueChengPre_8]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nAnYueChengPre_8]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nAnYueChengPre_8]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPCGroup_TaiLie
rwtTask[tTask.nAnYueChengPre_8]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nAnYueChengPre_8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask.nAnYueChengPre_8]["StartAutoWay"] = {}
-- rwtTask[tTask.nAnYueChengPre_8]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask.nAnYueChengPre_8]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask.nAnYueChengPre_8]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_TaiLie
-- rwtTask[tTask.nAnYueChengPre_8]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_TaiLie

--体验报告
rwtTask[tTask.nAnYueChengPre_9] = {}
rwtTask[tTask.nAnYueChengPre_9]["Title"] = tLuaText[LANGUAGE_CONFIG][218385]
rwtTask[tTask.nAnYueChengPre_9]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nAnYueChengPre_9]["PreTaskId"] = tTask.nAnYueChengPre_8
-- rwtTask[tTask.nAnYueChengPre_9]["NextTaskId"] = tTask.nAnYueChengPre_8
rwtTask[tTask.nAnYueChengPre_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nAnYueChengPre_9]["DialogId"] = tDialog.nTask9
rwtTask[tTask.nAnYueChengPre_9]["TaskNpc"]= nNPC_TeLuo2
rwtTask[tTask.nAnYueChengPre_9]["StartAutoWay"] = {}
rwtTask[tTask.nAnYueChengPre_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask.nAnYueChengPre_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask.nAnYueChengPre_9]["StartAutoWay"]["FindWayGroupId"] = nNPCGroup_TeLuo2
rwtTask[tTask.nAnYueChengPre_9]["StartAutoWay"]["FindWayGenId"] = tGenId.NPCGroup_TeLuo2
rwtTask[tTask.nAnYueChengPre_9]["DynaNpcGroupGen"] = {}
rwtTask[tTask.nAnYueChengPre_9]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask.nAnYueChengPre_9]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPCGroup_TeLuo2
rwtTask[tTask.nAnYueChengPre_9]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask.nAnYueChengPre_9]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask.nAnYueChengPre_9]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.MULTI_HERO_COPYMAP}   --多英雄解锁


function moqi()
    rwAddUserRecordData_System_Unlock(CONST_SYSTEM_FUNCTION.MULTI_HERO_COPYMAP)
end