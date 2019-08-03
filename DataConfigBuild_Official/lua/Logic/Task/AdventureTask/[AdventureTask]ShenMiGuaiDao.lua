--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--bY:Syl

--endregion

----********************************* 数据定义 *************************************----

--任务ID
local nShenMiGuaiDao_1 = 35015   --神秘怪盗的目标
local nShenMiGuaiDao_2 = 35016   --态度不佳的委托人  
local nShenMiGuaiDao_3 = 35017   --交锋！怪盗莉莉
local nShenMiGuaiDao_4 = 35018   --出乎意料的结局

--NPC
local nNpcId_GuiZuShiZhe = 3309       --贵族侍者
local nNpcId_GuiZuPuRen = 3310        --贵族的仆人
local nNpcId_ShenMiGD = 3311      	  --神秘怪盗
local nNPC_Tailei = 102  			  --泰雷

local nNpcGroup_GuiZuShiZhe = 20335			--贵族侍者
local nNpcGroup_GenId_GuiZuShiZhe = 2001931

--陷阱
local nNpcGroup_Trap1 = 30365
local nNpcGroup_GenId_Trap1 = 2001932
local nNpcGroup_Trap3 = 30366
local nNpcGroup_GenId_Trap3 = 2001933

--对白
local nDialog_Task1 = 10922			--神秘怪盗的目标
local nDialog_Task2 = 10923         --态度不佳的委托人
local nDialog_Task3 = 10924         --交锋！怪盗莉莉
local nDialog_Task4 = 10925         --出乎意料的结局

--怪物
local nMonster_1 = 9000175
local nMonsterGroup_1 = 900277
local nMonsterGroup_GenId_1 = 2001935

--其他
local nMapId = 1000


----********************************* 配置 *************************************----

--陷阱
rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nNpcGroup_Trap1] or {}
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap3] = rwtNpcGroup[nNpcGroup_Trap3] or {}
rwtNpcGroup[nNpcGroup_Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap

--NPC
rwtNpcGroup[nNpcGroup_GuiZuShiZhe] = {}     --贵族侍者
rwtNpcGroup[nNpcGroup_GuiZuShiZhe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_GuiZuShiZhe]["NpcId"]= nNpcId_GuiZuShiZhe

rwtNpc[nNpcId_GuiZuShiZhe] = rwtNpc[nNpcId_GuiZuShiZhe] or {}
rwtNpc[nNpcId_GuiZuShiZhe]["DialogId"] = nDialog_Task2


--奇遇触发
rwtNpcGroup[30395] = rwtNpcGroup[30395] or {}
rwtNpcGroup[30395]["Type"] = CONST_NPCGROUP_TYPE.Adventure
rwtNpcGroup[30395]["TrapAcceptTask"] = 35015
rwtNpcGroup[30395]["AdventureJudgeType"] = {}
rwtNpcGroup[30395]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30395]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.PROBABILITY
rwtNpcGroup[30395]["AdventureJudgeType"][1]["Value"] = -1
--[[
rwtNpcGroup[30395]["AdventureJudgeType"][1] = {}
rwtNpcGroup[30395]["AdventureJudgeType"][1]["Type"] = CONST_ADVENTURE_TYPE.TASKFINISH
rwtNpcGroup[30395]["AdventureJudgeType"][1]["TaskFinish"] = {10148}
--]]


----********************************* 任务 *************************************----

--神秘怪盗的目标
rwtTask[nShenMiGuaiDao_1] = {}
rwtTask[nShenMiGuaiDao_1]["Title"]= tLuaText[LANGUAGE_CONFIG][20098]
rwtTask[nShenMiGuaiDao_1]["NextTaskId"]= nShenMiGuaiDao_2
rwtTask[nShenMiGuaiDao_1]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nShenMiGuaiDao_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nShenMiGuaiDao_1]["DialogId"]= nDialog_Task1
rwtTask[nShenMiGuaiDao_1]["ReqTrap1"]= nNpcGroup_Trap1 
rwtTask[nShenMiGuaiDao_1]["DynaNpcGroupGen"] = {}
rwtTask[nShenMiGuaiDao_1]["DynaNpcGroupGen"][1] = {}
rwtTask[nShenMiGuaiDao_1]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap1
rwtTask[nShenMiGuaiDao_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nShenMiGuaiDao_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 


--态度不佳的委托人
rwtTask[nShenMiGuaiDao_2] = {}
rwtTask[nShenMiGuaiDao_2]["Title"]= tLuaText[LANGUAGE_CONFIG][20098]
rwtTask[nShenMiGuaiDao_2]["PreTaskId"] = nShenMiGuaiDao_1
rwtTask[nShenMiGuaiDao_2]["NextTaskId"]= nShenMiGuaiDao_3
rwtTask[nShenMiGuaiDao_2]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nShenMiGuaiDao_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nShenMiGuaiDao_2]["TaskNpc"] = nNpcId_GuiZuShiZhe
rwtTask[nShenMiGuaiDao_2]["DynaNpcGroupGen"] = {}
rwtTask[nShenMiGuaiDao_2]["DynaNpcGroupGen"][1] = {}
rwtTask[nShenMiGuaiDao_2]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_GuiZuShiZhe
rwtTask[nShenMiGuaiDao_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nShenMiGuaiDao_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nShenMiGuaiDao_2]["DialogId" ]= nDialog_Task2
rwtTask[nShenMiGuaiDao_2]["StartAutoWay"] = {}
rwtTask[nShenMiGuaiDao_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nShenMiGuaiDao_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nShenMiGuaiDao_2]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_GuiZuShiZhe
rwtTask[nShenMiGuaiDao_2]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_GuiZuShiZhe

--交锋！怪盗莉莉
rwtTask[nShenMiGuaiDao_3] = {}
rwtTask[nShenMiGuaiDao_3]["Title"]= tLuaText[LANGUAGE_CONFIG][20098]
rwtTask[nShenMiGuaiDao_3]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nShenMiGuaiDao_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nShenMiGuaiDao_3]["PreTaskId"] = nShenMiGuaiDao_2
rwtTask[nShenMiGuaiDao_3]["NextTaskId"]= nShenMiGuaiDao_4
rwtTask[nShenMiGuaiDao_3]["ReqTrap1"] = nNpcGroup_Trap3
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"] = {}
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][1] = {}
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_1
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][2] = {}
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][2]["GenId"] = nNpcGroup_GenId_Trap3
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][2]["MapId"] = nMapId
rwtTask[nShenMiGuaiDao_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[nShenMiGuaiDao_3]["DialogId"] = nDialog_Task3 
rwtTask[nShenMiGuaiDao_3]["KillMonsterGroup1" ]= nMonsterGroup_1
rwtTask[nShenMiGuaiDao_3]["MonsterGroupGenId"] = nMonsterGroup_GenId_1
rwtTask[nShenMiGuaiDao_3]["StartAutoWay"] = {}
rwtTask[nShenMiGuaiDao_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[nShenMiGuaiDao_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[nShenMiGuaiDao_3]["StartAutoWay"]["FindWayGenId"] = nMonsterGroup_GenId_1
rwtTask[nShenMiGuaiDao_3]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroup_1

--出乎意料的结局
rwtTask[nShenMiGuaiDao_4] = {}
rwtTask[nShenMiGuaiDao_4]["Title"]= tLuaText[LANGUAGE_CONFIG][20098]
rwtTask[nShenMiGuaiDao_4]["PreTaskId"] = nShenMiGuaiDao_3
rwtTask[nShenMiGuaiDao_4]["TaskType"] = CONST_TASK_TYPE.ADVENTURE
rwtTask[nShenMiGuaiDao_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nShenMiGuaiDao_4]["AutoTaskDialog" ]= nDialog_Task4
rwtTask[nShenMiGuaiDao_4]["DialogId" ]= nDialog_Task4
rwtTask[nShenMiGuaiDao_4]["Awards"] = {}
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"] = {}
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"][1] = {}
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000372
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[nShenMiGuaiDao_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nShenMiGuaiDao_4
