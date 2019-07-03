--陷阱  30354
--任务ID 35007 - 35010
--任务Index   9。 32-35
--Gen  2001914 - 2001916
--对话ID 10816- 10819

--task
local nTask_Adventure_SMBZ_1 = 35007
local nTask_Adventure_SMBZ_2 = 35008
local nTask_Adventure_SMBZ_3 = 35009
local nTask_Adventure_SMBZ_4 = 35010

--npc
local nTrap_SMBZ = 30354
local nGenId_Trap_SMBZ = 2001915

local nNpc_GBLShangRen = 3060
local nNpcGroup_ShangRen = 20332
local nGenId_NpcGroup_ShangRen = 2001914

--monster
local nMonsterGroup_SangShi = 900275
local nGenId_MonsterGroup_SangShi = 2001916

--postion
local sPos_BaoZang = "-45.24,0.10,-58.64"



-- rwtNpcGroup[nTrap_SMBZ2] = rwtNpcGroup[nTrap_SMBZ2] or {}  
-- rwtNpcGroup[nTrap_SMBZ2]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[nTrap_SMBZ2]["TrapAcceptTask"] = nTask_Adventure_SMBZ_1
-- rwtNpcGroup[nTrap_SMBZ2]["TrapDeleteGen"] = nGenId_Trap_SMBZ2

--奇遇触发

rwtNpcGroup[30392] = rwtNpcGroup[30392] or {}
rwtNpcGroup[30392]["Type"] = CONST_NPCGROUP_TYPE.Adventure
rwtNpcGroup[30392]["TrapAcceptTask"] = 35007
rwtNpcGroup[30392]["AdventureJudgeType"] = {}
-- rwtNpcGroup[30392]["AdventureJudgeType"][1] = {}
-- rwtNpcGroup[30392]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.HEROOTHER
-- rwtNpcGroup[30392]["AdventureJudgeType"][1]["AllFightHero"] = {101,201,301}
rwtNpcGroup[30392]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30392]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtNpcGroup[30392]["AdventureJudgeType"][1]["Value"] = 0.5

rwtNpcGroup[nTrap_SMBZ] = rwtNpcGroup[nTrap_SMBZ] or {}  
rwtNpcGroup[nTrap_SMBZ]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_ShangRen] = rwtNpcGroup[nNpcGroup_ShangRen] or {}  
rwtNpcGroup[nNpcGroup_ShangRen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_ShangRen]["NpcId"]= nNpc_GBLShangRen

rwtNpc[nNpc_GBLShangRen] =rwtNpc[nNpc_GBLShangRen] or {}


--region Logic
-- function Adventure_CreateTrap_MeiJiuJiaNiang()
--     if rwTaskGetFinishMask(10187) == 1 and rwTaskGetFinishMask(nTask_Adventure_Meijiu_1) ~= 1 then       
--        rwPrintLog("生成奇遇陷阱")
--        if not rwHasGenEvent (nGenId_Trap_WangGong) then 
--             rwAddGenEvent (nGenId_Trap_WangGong)
--        end
--     end   
-- end
-- rwtSceneLoad_Func[1001] = rwtSceneLoad_Func[1001] or {}
-- table.insert(rwtSceneLoad_Func[1001],Adventure_CreateTrap_MeiJiuJiaNiang)    --插入切图函数

-----------------------------------------------任务流程-----------------------------------------------------------

rwtTask[nTask_Adventure_SMBZ_1] = {}
rwtTask[nTask_Adventure_SMBZ_1]["Title"]= tLuaText[LANGUAGE_CONFIG][20094]
-- rwtTask[nTask_Adventure_SMBZ_1]["PreTaskId" ]= 0
rwtTask[nTask_Adventure_SMBZ_1]["NextTaskId"]= nTask_Adventure_SMBZ_2
rwtTask[nTask_Adventure_SMBZ_1]["DialogId"]= 10816
rwtTask[nTask_Adventure_SMBZ_1]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_SMBZ_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTask_Adventure_SMBZ_1]["TaskNpc"] = nNpc_GBLShangRen
rwtTask[nTask_Adventure_SMBZ_1]["DynaNpcGroupGen"] = {}
rwtTask[nTask_Adventure_SMBZ_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nTask_Adventure_SMBZ_1]["DynaNpcGroupGen"][1]["GenId"] = nGenId_NpcGroup_ShangRen
rwtTask[nTask_Adventure_SMBZ_1]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nTask_Adventure_SMBZ_1]["IsClickComplete"] = 0


rwtTask[nTask_Adventure_SMBZ_2] = {}
rwtTask[nTask_Adventure_SMBZ_2]["Title"]= tLuaText[LANGUAGE_CONFIG][20095]
rwtTask[nTask_Adventure_SMBZ_2]["PreTaskId"]= nTask_Adventure_SMBZ_1
rwtTask[nTask_Adventure_SMBZ_2]["NextTaskId"]= nTask_Adventure_SMBZ_3
rwtTask[nTask_Adventure_SMBZ_2]["DialogId"]= 10817
rwtTask[nTask_Adventure_SMBZ_2]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_SMBZ_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nTask_Adventure_SMBZ_2]["ReqTrap1" ]= nTrap_SMBZ
rwtTask[nTask_Adventure_SMBZ_2]["DynaNpcGroupGen"] = {}
rwtTask[nTask_Adventure_SMBZ_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nTask_Adventure_SMBZ_2]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_SMBZ
rwtTask[nTask_Adventure_SMBZ_2]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nTask_Adventure_SMBZ_2]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_SMBZ_2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[nTask_Adventure_SMBZ_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_2]["StartAutoWay"]["FindWayPos"] = sPos_BaoZang
rwtTask[nTask_Adventure_SMBZ_2]["IsClickComplete"] = 0


rwtTask[nTask_Adventure_SMBZ_3] = {}
rwtTask[nTask_Adventure_SMBZ_3]["Title"]= tLuaText[LANGUAGE_CONFIG][20096] 
rwtTask[nTask_Adventure_SMBZ_3]["PreTaskId"]= nTask_Adventure_SMBZ_2
rwtTask[nTask_Adventure_SMBZ_3]["NextTaskId"]= nTask_Adventure_SMBZ_4
rwtTask[nTask_Adventure_SMBZ_3]["DialogId"]= 10818
rwtTask[nTask_Adventure_SMBZ_3]["ReqTrap1"] = nTrap_SMBZ
rwtTask[nTask_Adventure_SMBZ_3]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_SMBZ_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"] = {}
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_SMBZ
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][2] = {}
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][2]["GenId"] = nGenId_MonsterGroup_SangShi
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nTask_Adventure_SMBZ_3]["MonsterGroupGenId"] = nGenId_MonsterGroup_SangShi
rwtTask[nTask_Adventure_SMBZ_3]["KillMonsterGroup1"]= nMonsterGroup_SangShi
rwtTask[nTask_Adventure_SMBZ_3]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_SMBZ_3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[nTask_Adventure_SMBZ_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_3]["StartAutoWay"]["FindWayPos"] = sPos_BaoZang
-- rwtTask[nTask_Adventure_SMBZ_3]["IsClickComplete"] = 1


rwtTask[nTask_Adventure_SMBZ_4] = {}
rwtTask[nTask_Adventure_SMBZ_4]["Title"]= tLuaText[LANGUAGE_CONFIG][20097]
rwtTask[nTask_Adventure_SMBZ_4]["PreTaskId"]= nTask_Adventure_SMBZ_3
rwtTask[nTask_Adventure_SMBZ_4]["NextTaskId"]= nTask_Adventure_Meijiu_5
rwtTask[nTask_Adventure_SMBZ_4]["DialogId"]= 10819
rwtTask[nTask_Adventure_SMBZ_4]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nTask_Adventure_SMBZ_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nTask_Adventure_SMBZ_4]["ReqTrap1" ]= nTrap_SMBZ
rwtTask[nTask_Adventure_SMBZ_4]["DynaNpcGroupGen"] = {}
rwtTask[nTask_Adventure_SMBZ_4]["DynaNpcGroupGen"][1] = {}
rwtTask[nTask_Adventure_SMBZ_4]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Trap_SMBZ
rwtTask[nTask_Adventure_SMBZ_4]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nTask_Adventure_SMBZ_4]["StartAutoWay"] = {}
rwtTask[nTask_Adventure_SMBZ_4]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[nTask_Adventure_SMBZ_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nTask_Adventure_SMBZ_4]["StartAutoWay"]["FindWayPos"] = sPos_BaoZang
rwtTask[nTask_Adventure_SMBZ_4]["IsClickComplete"] = 0

rwtTask[nTask_Adventure_SMBZ_4]["Awards"] = {}
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"] = {}
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"][1] = {}
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000373
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nTask_Adventure_SMBZ_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nTask_Adventure_SMBZ_4
