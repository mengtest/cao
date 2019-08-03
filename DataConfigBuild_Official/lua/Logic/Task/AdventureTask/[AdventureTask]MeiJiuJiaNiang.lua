--陷阱  30353
--采集物  60121
--任务ID 10431 - 10435
--任务Index   9。 26-30
--Gen  2001908 - 2001909
--对话ID 10811- 10815


--region data
local nTask_Adventure_Meijiu_1 = 10431
local nTask_Adventure_Meijiu_2 = 10432
local nTask_Adventure_Meijiu_3 = 10433
local nTask_Adventure_Meijiu_4 = 10434
local nTask_Adventure_Meijiu_5 = 10435

local nTrap_WangGong = 30353
local nGenId_Trap_WangGong = 2001908

local nCollect_HuiZhang = 60121
local nGenId_Collect_HuiZhang = 2001909


-- rwtNpcGroup[nTrap_WangGong] = rwtNpcGroup[nTrap_WangGong] or {}  
-- rwtNpcGroup[nTrap_WangGong]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[nTrap_WangGong]["TrapAcceptTask"] = nTask_Adventure_Meijiu_1
-- rwtNpcGroup[nTrap_WangGong]["TrapDeleteGen"] = nGenId_Trap_WangGong

local nAward_Id = 2000370

--奇遇触发

rwtNpcGroup[30393] = rwtNpcGroup[30393] or {}
rwtNpcGroup[30393]["Type"] = CONST_NPCGROUP_TYPE.Adventure
rwtNpcGroup[30393]["TrapAcceptTask"] = 10431
rwtNpcGroup[30393]["AdventureJudgeType"] = {}
rwtNpcGroup[30393]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30393]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtNpcGroup[30393]["AdventureJudgeType"][1]["Value"] = -1
--[[
rwtNpcGroup[30393]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30393]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.TASKFINISH
rwtNpcGroup[30393]["AdventureJudgeType"][1]["TaskFinish"] = {10187}
--]]

rwtNpcGroup[nCollect_HuiZhang] = rwtNpcGroup[nCollect_HuiZhang] or {}  
rwtNpcGroup[nCollect_HuiZhang]["Type"] = CONST_NPCGROUP_TYPE.Collect

local nNpc_TuNvLang = 3193
local nNpcGroup_TuNvLang = 20234
local nGen_TuNvLang = 1000053

local nNpc_AnDaoFu = 3005
local nNpcGroup_AnDaoFu = 20112
local nGen_AnDaoFu = 2001655
--endregion


--region Logic
-- function Adventure_CreateTrap_MeiJiuJiaNiang()
    -- if rwTaskGetFinishMask(10187) == 1 and rwTaskGetFinishMask(nTask_Adventure_Meijiu_1) ~= 1 then       
       -- rwPrintLog("生成奇遇陷阱")
       -- if not rwHasGenEvent (nGenId_Trap_WangGong) then 
            -- rwAddGenEvent (nGenId_Trap_WangGong)
       -- end
    -- end   
-- end
-- rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000] or {}
-- table.insert(rwtSceneLoad_Func[1000],Adventure_CreateTrap_MeiJiuJiaNiang)    --插入切图函数

-----------------------------------------------任务流程-----------------------------------------------------------

rwtTask[nTask_Adventure_Meijiu_1] = {}
rwtTask[nTask_Adventure_Meijiu_1]["Title" ]= tLuaText[LANGUAGE_CONFIG][20085] 
rwtTask[nTask_Adventure_Meijiu_1]["PreTaskId" ]= 10187
rwtTask[nTask_Adventure_Meijiu_1]["NextTaskId" ]= nTask_Adventure_Meijiu_2
rwtTask[nTask_Adventure_Meijiu_1]["DialogId" ]= 10811
rwtTask[nTask_Adventure_Meijiu_1]["AcceptDialogId"] = 10811
rwtTask[nTask_Adventure_Meijiu_1]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_Meijiu_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nTask_Adventure_Meijiu_1]["ReqTrap1" ]= 30393 --nTrap_WangGong
rwtTask[nTask_Adventure_Meijiu_1]["TaskNpc"] = nNpc_AnDaoFu
rwtTask[nTask_Adventure_Meijiu_1]["IsClickComplete"] = 0

rwtTask[nTask_Adventure_Meijiu_2] = {}
rwtTask[nTask_Adventure_Meijiu_2]["Title" ]= tLuaText[LANGUAGE_CONFIG][20086]
rwtTask[nTask_Adventure_Meijiu_2]["PreTaskId" ]= nTask_Adventure_Meijiu_1
rwtTask[nTask_Adventure_Meijiu_2]["NextTaskId" ]= nTask_Adventure_Meijiu_3
rwtTask[nTask_Adventure_Meijiu_2]["DialogId" ]= 10812
rwtTask[nTask_Adventure_Meijiu_2]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_Meijiu_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTask_Adventure_Meijiu_2]["TaskNpc"] = nNpc_TuNvLang
rwtTask[nTask_Adventure_Meijiu_2]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_Meijiu_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTask_Adventure_Meijiu_2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTask_Adventure_Meijiu_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_TuNvLang
rwtTask[nTask_Adventure_Meijiu_2]["StartAutoWay"]["FindWayGenId"] = nGen_TuNvLang
rwtTask[nTask_Adventure_Meijiu_2]["IsClickComplete"] = 0


rwtTask[nTask_Adventure_Meijiu_3] = {}
rwtTask[nTask_Adventure_Meijiu_3]["Title" ]= tLuaText[LANGUAGE_CONFIG][20087]
rwtTask[nTask_Adventure_Meijiu_3]["PreTaskId" ]= nTask_Adventure_Meijiu_2
rwtTask[nTask_Adventure_Meijiu_3]["NextTaskId" ]= nTask_Adventure_Meijiu_4
rwtTask[nTask_Adventure_Meijiu_3]["DialogId" ]= 10813
rwtTask[nTask_Adventure_Meijiu_3]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_Meijiu_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nTask_Adventure_Meijiu_3]["ReqCollectId1"] = nCollect_HuiZhang
rwtTask[nTask_Adventure_Meijiu_3]["DynaNpcGroupGen"] = {}
rwtTask[nTask_Adventure_Meijiu_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nTask_Adventure_Meijiu_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Collect_HuiZhang 
rwtTask[nTask_Adventure_Meijiu_3]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nTask_Adventure_Meijiu_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[nTask_Adventure_Meijiu_3]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_Meijiu_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTask_Adventure_Meijiu_3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTask_Adventure_Meijiu_3]["StartAutoWay"]["FindWayGroupId"] = nCollect_HuiZhang
rwtTask[nTask_Adventure_Meijiu_3]["StartAutoWay"]["FindWayGenId"] = nGenId_Collect_HuiZhang
rwtTask[nTask_Adventure_Meijiu_3]["IsClickComplete"] = 0

rwtTask[nTask_Adventure_Meijiu_4] = {}
rwtTask[nTask_Adventure_Meijiu_4]["Title" ]= tLuaText[LANGUAGE_CONFIG][20088]
rwtTask[nTask_Adventure_Meijiu_4]["PreTaskId" ]= nTask_Adventure_Meijiu_3
rwtTask[nTask_Adventure_Meijiu_4]["NextTaskId" ]= nTask_Adventure_Meijiu_5
rwtTask[nTask_Adventure_Meijiu_4]["DialogId" ]= 10814
rwtTask[nTask_Adventure_Meijiu_4]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_Meijiu_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTask_Adventure_Meijiu_4]["TaskNpc"] = nNpc_TuNvLang
rwtTask[nTask_Adventure_Meijiu_4]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_Meijiu_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTask_Adventure_Meijiu_4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTask_Adventure_Meijiu_4]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_TuNvLang
rwtTask[nTask_Adventure_Meijiu_4]["StartAutoWay"]["FindWayGenId"] = nGen_TuNvLang
rwtTask[nTask_Adventure_Meijiu_4]["IsClickComplete"] = 0

rwtTask[nTask_Adventure_Meijiu_5] = {}
rwtTask[nTask_Adventure_Meijiu_5]["Title" ]= tLuaText[LANGUAGE_CONFIG][20089]
rwtTask[nTask_Adventure_Meijiu_5]["PreTaskId" ]= nTask_Adventure_Meijiu_4
rwtTask[nTask_Adventure_Meijiu_5]["DialogId" ]= 10815
rwtTask[nTask_Adventure_Meijiu_5]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_Meijiu_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTask_Adventure_Meijiu_5]["TaskNpc"] = nNpc_AnDaoFu
rwtTask[nTask_Adventure_Meijiu_5]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_Meijiu_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nTask_Adventure_Meijiu_5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nTask_Adventure_Meijiu_5]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_AnDaoFu
rwtTask[nTask_Adventure_Meijiu_5]["StartAutoWay"]["FindWayGenId"] = nGen_AnDaoFu
rwtTask[nTask_Adventure_Meijiu_5]["IsClickComplete"] = 0
rwtTask[nTask_Adventure_Meijiu_5]["Awards"] = {}
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"] = {}
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"][1] = {}
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Id
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nTask_Adventure_Meijiu_5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTask_Adventure_Meijiu_5

--endregion


