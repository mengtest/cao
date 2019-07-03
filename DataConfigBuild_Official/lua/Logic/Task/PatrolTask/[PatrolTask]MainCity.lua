--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--卡诺萨巡查

--endregion


----***************************数据定义***************************----

----------任务ID------
local nMainCityTask_XunCha = 50218	--触发巡查


-- 巡查线一
local tMainCityTask_XunCha1  = {}
tMainCityTask_XunCha1.Task1 = 50219      --  前往执行巡查工作
tMainCityTask_XunCha1.Task2 = 50220      --  和矮人小贩对话
tMainCityTask_XunCha1.Task3 = 50221      --  勘察失窃地点
tMainCityTask_XunCha1.Task4 = 50222      --  和附近居民对话
tMainCityTask_XunCha1.Task5 = 50223      --  去湖畔镇查找线索
tMainCityTask_XunCha1.Task6 = 50224      --  到储物室查找线索
tMainCityTask_XunCha1.Task7 = 50225      --  找出可疑窃贼
tMainCityTask_XunCha1.Task8 = 50226      --  找到真凶
tMainCityTask_XunCha1.Task9 = 50227      --  回复矮人小贩
tMainCityTask_XunCha1.Task10 = 50228     --  返回联盟交接任务
tMainCityTask_XunCha1.Task11 = 50267     --  到卡诺萨城打听线索

-- 巡查线二
local tMainCityTask_XunCha2  = {}
tMainCityTask_XunCha2.Task1 = 50229      --  前往执行巡查工作
tMainCityTask_XunCha2.Task2 = 50230      --  和女剑士玛塔对话
tMainCityTask_XunCha2.Task3 = 50231      --  婉拒玛塔的邀请
tMainCityTask_XunCha2.Task4 = 50232      --  查看公告板
tMainCityTask_XunCha2.Task5 = 50233      --  战胜进击哥布林（0/1)
tMainCityTask_XunCha2.Task6 = 50234      --  和铁臂安道夫对话
tMainCityTask_XunCha2.Task7 = 50235      --  返回联盟交接任务
tMainCityTask_XunCha2.Task8 = 50236      --  战胜女剑士
tMainCityTask_XunCha2.Task9 = 50237      --  和玛塔解释
tMainCityTask_XunCha2.Task10 = 50238     --  继续巡查卡诺萨城
tMainCityTask_XunCha2.Task11 = 50239     --  继续巡查卡诺萨城
tMainCityTask_XunCha2.Task12 = 50240     --  返回联盟交接任务

----------NpcGroup------
--npcGroup
local nNpcGroup_Npc1 = 20115
local nNpcGroup_GenId_Npc1 = 2001658
--trap
local nNpcGroup_Trap1  =  30430   --接受任务陷阱
local nNpcGroup_GenId_Trap1  = 1000149
local nNpcGroup_Trap2  = 30425    --巡查点1陷阱
local nNpcGroup_GenId_Trap2  = 1000144
local nNpcGroup_Trap3  = 30426   --巡查点2陷阱
local nNpcGroup_GenId_Trap3  = 1000145
local nNpcGroup_Trap4  = 30427  --黑商头目战斗陷阱
local nNpcGroup_GenId_Trap4  = 1000146
local nNpcGroup_Trap5  =  30428  --哥布林战斗陷阱
local nNpcGroup_GenId_Trap5  = 1000147
local nNpcGroup_Trap6  =  30429  --女剑士玛塔战斗陷阱
local nNpcGroup_GenId_Trap6  =  1000148
--采集
local nNpcGroup_Collect_KanCha = 60212
local nNpcGroup_GenId_KanCha_1 = 1000137

local nNpcGroup_Collect_GongGao = 60213
local nNpcGroup_GenId_GongGao_1 = 1000138

local nNpcGroup_Collect_XunCha =  60214
local nNpcGroup_GenId_XunCha_1 = 1000139
local nNpcGroup_GenId_XunCha_2 = 1000140

--建筑
local nNpcGroup_Build_1 = 10018
local nNpcGroup_GenId_Build_1 = 2001991
--monster
local nMonsterGroup_1 = 900313   --冒险家小眼镜
local nMonsterGroup_GenId_1 = 1000141
local nMonsterGroup_2 = 900314   --大哥布林
local nMonsterGroup_GenId_2 = 1000142
local nMonsterGroup_3 = 900315  --女剑士玛塔
local nMonsterGroup_GenId_3 = 1000143

----------对白ID------
local nDialog_XunCha =  11201        --接受巡查任务对白

local nDialog_XunCha1_1 =  11225     --巡查线1动画对白
local nDialog_XunCha1_2 =  11204     --和矮人小贩对话
local nDialog_XunCha1_3 =  11205     --勘察失窃地点
local nDialog_XunCha1_4 =  11206     --和附近居民对话
local nDialog_XunCha1_5 =  11207     --去湖畔镇查找线索
local nDialog_XunCha1_6 =  11208     --到储物室查找线索
local nDialog_XunCha1_7 =  11227     --找出可疑窃贼
local nDialog_XunCha1_8 =  11209     --找到真凶
local nDialog_XunCha1_9 =  11210     --回复矮人小贩
local nDialog_XunCha1_10 = 11211     --返回联盟交接任务
local nDialog_XunCha1_11  = 11228    --接任务“找出可疑窃贼”后对白
 	
local nDialog_XunCha2_1 =  11226    --巡查线2动画对白
local nDialog_XunCha2_2 =  11214    --和女剑士玛塔对话
local nDialog_XunCha2_3 =  11215    --选项1-婉拒玛塔的邀请
local nDialog_XunCha2_4 =  11216    --选项1-查看公告板
local nDialog_XunCha2_5 =  11217    --哥布林大战前对白
local nDialog_XunCha2_6 =  11218   --选项1-和铁臂安道夫对话 
local nDialog_XunCha2_7 =  11219   --选项1-返回联盟交接任务 
local nDialog_XunCha2_8 =  11220   --选项2-战胜女剑士 
local nDialog_XunCha2_9 =  11221  --选项2-和玛塔解释 
local nDialog_XunCha2_10 =  11222  --选项2-继续巡查卡诺萨城 
local nDialog_XunCha2_11 =  11223  --选项2-继续巡查卡诺萨城 
local nDialog_XunCha2_12 =  11224  --选项2-返回联盟交接任务

rwtNpcGroup[nNpcGroup_Collect_KanCha] = rwtNpcGroup[nNpcGroup_Collect_KanCha] or {}    
rwtNpcGroup[nNpcGroup_Collect_KanCha]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nNpcGroup_Collect_GongGao] = rwtNpcGroup[nNpcGroup_Collect_GongGao] or {}    
rwtNpcGroup[nNpcGroup_Collect_GongGao]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nNpcGroup_Collect_XunCha] = rwtNpcGroup[nNpcGroup_Collect_XunCha] or {}    
rwtNpcGroup[nNpcGroup_Collect_XunCha]["Type"] = CONST_NPCGROUP_TYPE.Collect 

rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nNpcGroup_Trap1] or {} 
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap


rwtNpcGroup[nNpcGroup_Trap2] = rwtNpcGroup[nNpcGroup_Trap2] or {}   
rwtNpcGroup[nNpcGroup_Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap3] = rwtNpcGroup[nNpcGroup_Trap3] or {}   
rwtNpcGroup[nNpcGroup_Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap4] = rwtNpcGroup[nNpcGroup_Trap4] or {} 
rwtNpcGroup[nNpcGroup_Trap4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap5] = rwtNpcGroup[nNpcGroup_Trap5] or {}   
rwtNpcGroup[nNpcGroup_Trap5]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nNpcGroup_Trap6] = rwtNpcGroup[nNpcGroup_Trap6] or {}   
rwtNpcGroup[nNpcGroup_Trap6]["Type"] = CONST_NPCGROUP_TYPE.Trap

--统一为湖畔镇101解谜屋
rwtNpcGroup[nNpcGroup_Build_1] = rwtNpcGroup[nNpcGroup_Build_1] or {}   
rwtNpcGroup[nNpcGroup_Build_1]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[nNpcGroup_Build_1]["PuzzleId"] = 107


--[[
function MainCityPatrolTask_CopyMapNpcCreat_HuPanZhePuzzle()
   if  rwTaskChkUserInTask(tMainCityTask_XunCha1.Task6) or rwTaskChkUserInTask(tMainCityTask_XunCha1.Task7) or rwTaskChkUserInTask(tMainCityTask_XunCha1.Task11)then  
        rwDelGenEvent(2001113)
        rwAddGenEvent(2001991)
   else
        rwAddGenEvent(2001113)
        rwDelGenEvent(2001991)
   end   
end

rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],MainCityPatrolTask_CopyMapNpcCreat_HuPanZhePuzzle)    --插入切图函数
--]]

----******************************任务***************************----
-----------------------------------------接取巡查任务---------------------------------
--出发巡查
rwtTask[nMainCityTask_XunCha] = {}
rwtTask[nMainCityTask_XunCha]["Title"] = tLuaText[LANGUAGE_CONFIG][20980]
rwtTask[nMainCityTask_XunCha]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[nMainCityTask_XunCha]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityTask_XunCha]["AcceptDialogId"] = nDialog_XunCha
rwtTask[nMainCityTask_XunCha]["DialogId"] = nDialog_XunCha
rwtTask[nMainCityTask_XunCha]["TaskNpc"] = 3080
rwtTask[nMainCityTask_XunCha]["PatrolFirstTask"] = 1
rwtTask[nMainCityTask_XunCha]["PatrolAfterTask"] = {tMainCityTask_XunCha2.Task1,tMainCityTask_XunCha1.Task1}
rwtTask[nMainCityTask_XunCha]["PatrolTaskAreaId"] = 2001
rwtTask[nMainCityTask_XunCha]["PatrolTaskTownId"] = 200105 
rwtTask[nMainCityTask_XunCha]["StartAutoWay"] = {}
rwtTask[nMainCityTask_XunCha]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityTask_XunCha]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[nMainCityTask_XunCha]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[nMainCityTask_XunCha]["StartAutoWay"]["FindWayGenId"] = 2001658


-----------------------------------------巡查线一：卡诺萨城中的窃贼---------------------------------
rwtTask[tMainCityTask_XunCha1.Task1] = {}
rwtTask[tMainCityTask_XunCha1.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20981]
rwtTask[tMainCityTask_XunCha1.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainCityTask_XunCha1.Task1]["NextTaskId" ]= tMainCityTask_XunCha1.Task2
rwtTask[tMainCityTask_XunCha1.Task1]["DialogId"] = nDialog_XunCha1_1
rwtTask[tMainCityTask_XunCha1.Task1]["ReqTrap1" ]= nNpcGroup_Trap2
rwtTask[tMainCityTask_XunCha1.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha1.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha1.Task1]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap2
rwtTask[tMainCityTask_XunCha1.Task1]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha1.Task1]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task1]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tMainCityTask_XunCha1.Task1]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task1]["StartAutoWay"]["FindWayPos"] = "-55.58,23.23,68.46"

rwtTask[tMainCityTask_XunCha1.Task2] = {}
rwtTask[tMainCityTask_XunCha1.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][20982]
rwtTask[tMainCityTask_XunCha1.Task2]["NextTaskId"] = tMainCityTask_XunCha1.Task3
rwtTask[tMainCityTask_XunCha1.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha1.Task2]["TaskNpc"] = 3357
rwtTask[tMainCityTask_XunCha1.Task2]["DialogId"] = nDialog_XunCha1_2
rwtTask[tMainCityTask_XunCha1.Task2]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha1.Task2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task2]["StartAutoWay"]["FindWayGroupId"] = 20382
rwtTask[tMainCityTask_XunCha1.Task2]["StartAutoWay"]["FindWayGenId"] = 1000112 
rwtTask[tMainCityTask_XunCha1.Task2]["IsClickComplete"] = 0                                                       

rwtTask[tMainCityTask_XunCha1.Task3] = {}
rwtTask[tMainCityTask_XunCha1.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20983]
rwtTask[tMainCityTask_XunCha1.Task3]["NextTaskId"] = tMainCityTask_XunCha1.Task4
rwtTask[tMainCityTask_XunCha1.Task3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainCityTask_XunCha1.Task3]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task3]["ReqCollectId1"] = nNpcGroup_Collect_KanCha
rwtTask[tMainCityTask_XunCha1.Task3]["DialogId"] = nDialog_XunCha1_3 
rwtTask[tMainCityTask_XunCha1.Task3]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha1.Task3]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha1.Task3]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_KanCha_1
rwtTask[tMainCityTask_XunCha1.Task3]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha1.Task3]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task3]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tMainCityTask_XunCha1.Task3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task3]["StartAutoWay"]["FindWayPos"] = "22.97,22.63,86.46"

rwtTask[tMainCityTask_XunCha1.Task4] = {}
rwtTask[tMainCityTask_XunCha1.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20984]
rwtTask[tMainCityTask_XunCha1.Task4]["NextTaskId"] = tMainCityTask_XunCha1.Task5
rwtTask[tMainCityTask_XunCha1.Task4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha1.Task4]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task4]["TaskNpc"] = 3197
rwtTask[tMainCityTask_XunCha1.Task4]["DialogId"] = nDialog_XunCha1_4 
rwtTask[tMainCityTask_XunCha1.Task4]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task4]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha1.Task4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task4]["StartAutoWay"]["FindWayGroupId"] = 20238
rwtTask[tMainCityTask_XunCha1.Task4]["StartAutoWay"]["FindWayGenId"] = 1000057 

rwtTask[tMainCityTask_XunCha1.Task5] = {}
rwtTask[tMainCityTask_XunCha1.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][20985]
rwtTask[tMainCityTask_XunCha1.Task5]["NextTaskId"] = tMainCityTask_XunCha1.Task6 
rwtTask[tMainCityTask_XunCha1.Task5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha1.Task5]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task5]["TaskNpc"] = 3044
rwtTask[tMainCityTask_XunCha1.Task5]["DialogId"] = nDialog_XunCha1_5
rwtTask[tMainCityTask_XunCha1.Task5]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task5]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha1.Task5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMainCityTask_XunCha1.Task5]["StartAutoWay"]["FindWayGroupId"] = 10006
rwtTask[tMainCityTask_XunCha1.Task5]["StartAutoWay"]["FindWayGenId"] = 2001134 

rwtTask[tMainCityTask_XunCha1.Task6] = {}
rwtTask[tMainCityTask_XunCha1.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][20986] 
rwtTask[tMainCityTask_XunCha1.Task6]["PuzzleTitle"] = tLuaText[LANGUAGE_CONFIG][40013]
rwtTask[tMainCityTask_XunCha1.Task6]["NextTaskId"] = tMainCityTask_XunCha1.Task11
rwtTask[tMainCityTask_XunCha1.Task6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tMainCityTask_XunCha1.Task6]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task6]["ReqPuzzleId"] = 101
rwtTask[tMainCityTask_XunCha1.Task6]["ReqPuzzleObj"] = 101004
rwtTask[tMainCityTask_XunCha1.Task6]["ReqPuzzleEnterDialog"] = 12020
rwtTask[tMainCityTask_XunCha1.Task6]["ReqPuzzleEndDialog"] = nDialog_XunCha1_6
rwtTask[tMainCityTask_XunCha1.Task6]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task6]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMainCityTask_XunCha1.Task6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMainCityTask_XunCha1.Task6]["StartAutoWay"]["FindWayPos"] = "-7.79,0.05,-15.66"
rwtTask[tMainCityTask_XunCha1.Task6]["IsClickComplete"] = 1  

rwtTask[tMainCityTask_XunCha1.Task11] = {}
rwtTask[tMainCityTask_XunCha1.Task11]["Title"] = tLuaText[LANGUAGE_CONFIG][21538]
rwtTask[tMainCityTask_XunCha1.Task11]["AcceptDialogId"] = nDialog_XunCha1_11
rwtTask[tMainCityTask_XunCha1.Task11]["NextTaskId"] = tMainCityTask_XunCha1.Task7 
rwtTask[tMainCityTask_XunCha1.Task11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha1.Task11]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task11]["TaskNpc"] = 3366
rwtTask[tMainCityTask_XunCha1.Task11]["DialogId"] = 11378
rwtTask[tMainCityTask_XunCha1.Task11]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task11]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha1.Task11]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task11]["StartAutoWay"]["FindWayGroupId"] = 20391
rwtTask[tMainCityTask_XunCha1.Task11]["StartAutoWay"]["FindWayGenId"] = 1000121



rwtTask[tMainCityTask_XunCha1.Task7] = {}
rwtTask[tMainCityTask_XunCha1.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][20987]
rwtTask[tMainCityTask_XunCha1.Task7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tMainCityTask_XunCha1.Task7]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task7]["DialogId"] = nDialog_XunCha1_7
rwtTask[tMainCityTask_XunCha1.Task7]["TaskNpc"] =  3359
rwtTask[tMainCityTask_XunCha1.Task7]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task7]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha1.Task7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task7]["StartAutoWay"]["FindWayGroupId"] = 20384
rwtTask[tMainCityTask_XunCha1.Task7]["StartAutoWay"]["FindWayGenId"] = 1000114
rwtTask[tMainCityTask_XunCha1.Task7]["OptionTask1"] = tMainCityTask_XunCha1.Task8  --选项1任务

rwtTask[tMainCityTask_XunCha1.Task8] = {}
rwtTask[tMainCityTask_XunCha1.Task8]["Title"] = tLuaText[LANGUAGE_CONFIG][20988]
rwtTask[tMainCityTask_XunCha1.Task8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainCityTask_XunCha1.Task8]["NextTaskId"] = tMainCityTask_XunCha1.Task9
rwtTask[tMainCityTask_XunCha1.Task8]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task8]["ReqTrap1"] =  nNpcGroup_Trap4
rwtTask[tMainCityTask_XunCha1.Task8]["DialogId"] = nDialog_XunCha1_8
rwtTask[tMainCityTask_XunCha1.Task8]["MonsterGroupGenId"] = nMonsterGroup_GenId_1
rwtTask[tMainCityTask_XunCha1.Task8]["KillMonsterGroup1" ] = nMonsterGroup_1
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][1]["GenId"] =  nMonsterGroup_GenId_1--怪物
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][2]["GenId"] =  nNpcGroup_GenId_Trap4--陷阱
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha1.Task8]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha1.Task8]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task8]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Trap4
rwtTask[tMainCityTask_XunCha1.Task8]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_GenId_Trap4

rwtTask[tMainCityTask_XunCha1.Task9] = {}
rwtTask[tMainCityTask_XunCha1.Task9]["Title"] = tLuaText[LANGUAGE_CONFIG][20989]
rwtTask[tMainCityTask_XunCha1.Task9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha1.Task9]["NextTaskId"] = tMainCityTask_XunCha1.Task10
rwtTask[tMainCityTask_XunCha1.Task9]["IsClickComplete"] = 0
rwtTask[tMainCityTask_XunCha1.Task9]["DialogId"] = nDialog_XunCha1_9
rwtTask[tMainCityTask_XunCha1.Task9]["TaskNpc"] = 3357
rwtTask[tMainCityTask_XunCha1.Task9]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha1.Task9]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha1.Task9]["StartAutoWay"]["FindWayGroupId"] =  20382
rwtTask[tMainCityTask_XunCha1.Task9]["StartAutoWay"]["FindWayGenId"] = 1000112

rwtTask[tMainCityTask_XunCha1.Task10] = {}
rwtTask[tMainCityTask_XunCha1.Task10]["Title"] = tLuaText[LANGUAGE_CONFIG][20990]
rwtTask[tMainCityTask_XunCha1.Task10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha1.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha1.Task10]["TaskNpc"] = 3080
rwtTask[tMainCityTask_XunCha1.Task10]["DialogId"] = nDialog_XunCha1_10
rwtTask[tMainCityTask_XunCha1.Task10]["PatrolLastTask"] = 1  
rwtTask[tMainCityTask_XunCha1.Task10]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha1.Task10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha1.Task10]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tMainCityTask_XunCha1.Task10]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tMainCityTask_XunCha1.Task10]["StartAutoWay"]["FindWayGenId"] = 2001658


-----------------------------------------巡查线二：卡诺萨的女剑士-----------------------------------
rwtTask[tMainCityTask_XunCha2.Task1] = {}
rwtTask[tMainCityTask_XunCha2.Task1]["Title"] = tLuaText[LANGUAGE_CONFIG][20991]
rwtTask[tMainCityTask_XunCha2.Task1]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMainCityTask_XunCha2.Task1]["NextTaskId" ]= tMainCityTask_XunCha2.Task2
rwtTask[tMainCityTask_XunCha2.Task1]["DialogId"] = nDialog_XunCha2_1
rwtTask[tMainCityTask_XunCha2.Task1]["ReqTrap1" ]= nNpcGroup_Trap3
rwtTask[tMainCityTask_XunCha2.Task1]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha2.Task1]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task1]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap3
rwtTask[tMainCityTask_XunCha2.Task1]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task1]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task1]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tMainCityTask_XunCha2.Task1]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task1]["StartAutoWay"]["FindWayPos"] = "50.16,22.79,68.86"

rwtTask[tMainCityTask_XunCha2.Task2] = {}
rwtTask[tMainCityTask_XunCha2.Task2]["Title"] = tLuaText[LANGUAGE_CONFIG][20992]
rwtTask[tMainCityTask_XunCha2.Task2]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tMainCityTask_XunCha2.Task2]["TaskNpc"] = 3196
rwtTask[tMainCityTask_XunCha2.Task2]["DialogId"] = nDialog_XunCha2_2
rwtTask[tMainCityTask_XunCha2.Task2]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task2]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha2.Task2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task2]["StartAutoWay"]["FindWayGroupId"] = 20237
rwtTask[tMainCityTask_XunCha2.Task2]["StartAutoWay"]["FindWayGenId"] = 1000056
rwtTask[tMainCityTask_XunCha2.Task2]["OptionTask1"] = tMainCityTask_XunCha2.Task3  --选项1任务
rwtTask[tMainCityTask_XunCha2.Task2]["OptionTask2"] = tMainCityTask_XunCha2.Task8  --选项2任务

--选项1任务
rwtTask[tMainCityTask_XunCha2.Task3] = {}
rwtTask[tMainCityTask_XunCha2.Task3]["Title"] = tLuaText[LANGUAGE_CONFIG][20993]
rwtTask[tMainCityTask_XunCha2.Task3]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC--改为直接npc对白
rwtTask[tMainCityTask_XunCha2.Task3]["NextTaskId" ]= tMainCityTask_XunCha2.Task4
rwtTask[tMainCityTask_XunCha2.Task3]["TaskNpc"] = 3196
rwtTask[tMainCityTask_XunCha2.Task3]["AcceptDialogId"] = nDialog_XunCha2_3
rwtTask[tMainCityTask_XunCha2.Task3]["DialogId"] = nDialog_XunCha2_3
--rwtTask[tMainCityTask_XunCha2.Task3]["ReqTrap1" ]=  nNpcGroup_Trap6
--rwtTask[tmaincitytask_xuncha2.task3]["dynanpcgroupgen"] = {}
--rwtTask[tmaincitytask_xuncha2.task3]["dynanpcgroupgen"][1] = {}
--rwtTask[tmaincitytask_xuncha2.task3]["dynanpcgroupgen"][1]["genid"] = nnpcgroup_genid_trap6
--rwtTask[tmaincitytask_xuncha2.task3]["dynanpcgroupgen"][1]["mapid"] = 1000
--rwtTask[tmaincitytask_xuncha2.task3]["dynanpcgroupgen"][1]["deltype"] = const_task_info_deltype.complete
rwtTask[tMainCityTask_XunCha2.Task3]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task3]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha2.Task3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task3]["StartAutoWay"]["FindWayGroupId"] = 20237
rwtTask[tMainCityTask_XunCha2.Task3]["StartAutoWay"]["FindWayGenId"] = 1000056


rwtTask[tMainCityTask_XunCha2.Task4] = {}
rwtTask[tMainCityTask_XunCha2.Task4]["Title"] = tLuaText[LANGUAGE_CONFIG][20994]
rwtTask[tMainCityTask_XunCha2.Task4]["NextTaskId"] = tMainCityTask_XunCha2.Task5
rwtTask[tMainCityTask_XunCha2.Task4]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainCityTask_XunCha2.Task4]["DialogId"] = nDialog_XunCha2_4
rwtTask[tMainCityTask_XunCha2.Task4]["ReqCollectId1"] = nNpcGroup_Collect_GongGao   
rwtTask[tMainCityTask_XunCha2.Task4]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha2.Task4]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task4]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_GongGao_1
rwtTask[tMainCityTask_XunCha2.Task4]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[tMainCityTask_XunCha2.Task4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task4]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha2.Task4]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[tMainCityTask_XunCha2.Task4]["StartAutoWay"]["FindWayGroupId"] =  nNpcGroup_Collect_GongGao
rwtTask[tMainCityTask_XunCha2.Task4]["StartAutoWay"]["FindWayGenId"] =   nNpcGroup_GenId_GongGao_1

rwtTask[tMainCityTask_XunCha2.Task5] = {}
rwtTask[tMainCityTask_XunCha2.Task5]["Title"] = tLuaText[LANGUAGE_CONFIG][20995]
rwtTask[tMainCityTask_XunCha2.Task5]["NextTaskId"] = tMainCityTask_XunCha2.Task6
rwtTask[tMainCityTask_XunCha2.Task5]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainCityTask_XunCha2.Task5]["ReqTrap1"] = nNpcGroup_Trap5
rwtTask[tMainCityTask_XunCha2.Task5]["DialogId"] = nDialog_XunCha2_5
rwtTask[tMainCityTask_XunCha2.Task5]["MonsterGroupGenId"] = nMonsterGroup_GenId_2       
rwtTask[tMainCityTask_XunCha2.Task5]["KillMonsterGroup1"] = nMonsterGroup_2 
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_Trap5 
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][1]["MapId"] =  2001
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_2 
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][2]["MapId"] =  2001
rwtTask[tMainCityTask_XunCha2.Task5]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task5]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha2.Task5]["StartAutoWay"]["FindWayMapId"] =  2001
rwtTask[tMainCityTask_XunCha2.Task5]["StartAutoWay"]["FindWayGroupId"] =  nNpcGroup_Trap5
rwtTask[tMainCityTask_XunCha2.Task5]["StartAutoWay"]["FindWayGenId"] =   nNpcGroup_GenId_Trap5


rwtTask[tMainCityTask_XunCha2.Task6] = {}
rwtTask[tMainCityTask_XunCha2.Task6]["Title"] = tLuaText[LANGUAGE_CONFIG][20996]       --获得联盟宝箱奖1
rwtTask[tMainCityTask_XunCha2.Task6]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha2.Task6]["NextTaskId"] = tMainCityTask_XunCha2.Task7
rwtTask[tMainCityTask_XunCha2.Task6]["TaskNpc"] = 3005 
rwtTask[tMainCityTask_XunCha2.Task6]["DialogId"] = nDialog_XunCha2_6 
rwtTask[tMainCityTask_XunCha2.Task6]["StartAutoWay"] = {}                                            
rwtTask[tMainCityTask_XunCha2.Task6]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha2.Task6]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tMainCityTask_XunCha2.Task6]["StartAutoWay"]["FindWayGroupId"] = 20112
rwtTask[tMainCityTask_XunCha2.Task6]["StartAutoWay"]["FindWayGenId"] =  2001655
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"] = {}
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"] = {}
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000192
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMainCityTask_XunCha2.Task6]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMainCityTask_XunCha2.Task6


rwtTask[tMainCityTask_XunCha2.Task7] = {}
rwtTask[tMainCityTask_XunCha2.Task7]["Title"] = tLuaText[LANGUAGE_CONFIG][20997]
rwtTask[tMainCityTask_XunCha2.Task7]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha2.Task7]["TaskNpc"] = 3080
rwtTask[tMainCityTask_XunCha2.Task7]["DialogId"] = nDialog_XunCha2_7
rwtTask[tMainCityTask_XunCha2.Task7]["PatrolLastTask"] = 1 
rwtTask[tMainCityTask_XunCha2.Task7]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task7]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tMainCityTask_XunCha2.Task7]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tMainCityTask_XunCha2.Task7]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tMainCityTask_XunCha2.Task7]["StartAutoWay"]["FindWayGenId"] = 2001658

--选项二任务
rwtTask[tMainCityTask_XunCha2.Task8] = {}
rwtTask[tMainCityTask_XunCha2.Task8]["Title"] = tLuaText[LANGUAGE_CONFIG][20998]
rwtTask[tMainCityTask_XunCha2.Task8]["NextTaskId"] = tMainCityTask_XunCha2.Task9
rwtTask[tMainCityTask_XunCha2.Task8]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMainCityTask_XunCha2.Task8]["AcceptDialogId"] = nDialog_XunCha2_8
rwtTask[tMainCityTask_XunCha2.Task8]["DialogId"] = nDialog_XunCha2_8
rwtTask[tMainCityTask_XunCha2.Task8]["ReqTrap1"] = nNpcGroup_Trap6
rwtTask[tMainCityTask_XunCha2.Task8]["MonsterGroupGenId"] = nMonsterGroup_GenId_3
rwtTask[tMainCityTask_XunCha2.Task8]["KillMonsterGroup1" ]=  nMonsterGroup_3
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][1]["GenId"] =  nNpcGroup_GenId_Trap6
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][1]["MapId"] =   1000
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][2] = {}
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][2]["MapId"] =   1000
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][2]["GenId"] =  nMonsterGroup_GenId_3
rwtTask[tMainCityTask_XunCha2.Task8]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task8]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task8]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMainCityTask_XunCha2.Task8]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[tMainCityTask_XunCha2.Task8]["StartAutoWay"]["FindWayGroupId"] =  nMonsterGroup_3
rwtTask[tMainCityTask_XunCha2.Task8]["StartAutoWay"]["FindWayGenId"] =   nMonsterGroup_GenId_3
                                                                                                                                        
rwtTask[tMainCityTask_XunCha2.Task9] = {}
rwtTask[tMainCityTask_XunCha2.Task9]["Title"] = tLuaText[LANGUAGE_CONFIG][20999]
rwtTask[tMainCityTask_XunCha2.Task9]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha2.Task9]["NextTaskId"] = tMainCityTask_XunCha2.Task10
rwtTask[tMainCityTask_XunCha2.Task9]["TaskNpc"] = 3196
rwtTask[tMainCityTask_XunCha2.Task9]["DialogId"] = nDialog_XunCha2_9
rwtTask[tMainCityTask_XunCha2.Task9]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task9]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tMainCityTask_XunCha2.Task9]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task9]["StartAutoWay"]["FindWayPos"] = "-42.92,22.78,69.47"

rwtTask[tMainCityTask_XunCha2.Task10] = {}
rwtTask[tMainCityTask_XunCha2.Task10]["Title"] = tLuaText[LANGUAGE_CONFIG][21000]
rwtTask[tMainCityTask_XunCha2.Task10]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainCityTask_XunCha2.Task10]["NextTaskId"] = tMainCityTask_XunCha2.Task11
rwtTask[tMainCityTask_XunCha2.Task10]["DialogId"] =  nDialog_XunCha2_10
rwtTask[tMainCityTask_XunCha2.Task10]["ReqCollectId1"] = nNpcGroup_Collect_XunCha 
rwtTask[tMainCityTask_XunCha2.Task10]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha2.Task10]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task10]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_XunCha_1 
rwtTask[tMainCityTask_XunCha2.Task10]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task10]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task10]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task10]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tMainCityTask_XunCha2.Task10]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task10]["StartAutoWay"]["FindWayPos"] = "-68.52,21.08,3.97"

rwtTask[tMainCityTask_XunCha2.Task11] = {}
rwtTask[tMainCityTask_XunCha2.Task11]["Title"] = tLuaText[LANGUAGE_CONFIG][21001]
rwtTask[tMainCityTask_XunCha2.Task11]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tMainCityTask_XunCha2.Task11]["NextTaskId"] = tMainCityTask_XunCha2.Task12
rwtTask[tMainCityTask_XunCha2.Task11]["DialogId"] =  nDialog_XunCha2_11
rwtTask[tMainCityTask_XunCha2.Task11]["ReqCollectId1"] = nNpcGroup_Collect_XunCha 
rwtTask[tMainCityTask_XunCha2.Task11]["DynaNpcGroupGen"] = {}
rwtTask[tMainCityTask_XunCha2.Task11]["DynaNpcGroupGen"][1] = {}
rwtTask[tMainCityTask_XunCha2.Task11]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_GenId_XunCha_2 
rwtTask[tMainCityTask_XunCha2.Task11]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMainCityTask_XunCha2.Task11]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task11]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tMainCityTask_XunCha2.Task11]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMainCityTask_XunCha2.Task11]["StartAutoWay"]["FindWayPos"] = "-68.61,20.66,135.79"

rwtTask[tMainCityTask_XunCha2.Task12] = {}
rwtTask[tMainCityTask_XunCha2.Task12]["Title"] = tLuaText[LANGUAGE_CONFIG][21002]
rwtTask[tMainCityTask_XunCha2.Task12]["TaskType"] = CONST_TASK_TYPE.PATROL
rwtTask[tMainCityTask_XunCha2.Task12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMainCityTask_XunCha2.Task12]["TaskNpc"] = 3080
rwtTask[tMainCityTask_XunCha2.Task12]["DialogId"] = nDialog_XunCha2_12
rwtTask[tMainCityTask_XunCha2.Task12]["PatrolLastTask"] = 1 
rwtTask[tMainCityTask_XunCha2.Task12]["StartAutoWay"] = {}
rwtTask[tMainCityTask_XunCha2.Task12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMainCityTask_XunCha2.Task12]["StartAutoWay"]["FindWayMapId"] = 1001
rwtTask[tMainCityTask_XunCha2.Task12]["StartAutoWay"]["FindWayGroupId"] = 20115
rwtTask[tMainCityTask_XunCha2.Task12]["StartAutoWay"]["FindWayGenId"] = 2001658











