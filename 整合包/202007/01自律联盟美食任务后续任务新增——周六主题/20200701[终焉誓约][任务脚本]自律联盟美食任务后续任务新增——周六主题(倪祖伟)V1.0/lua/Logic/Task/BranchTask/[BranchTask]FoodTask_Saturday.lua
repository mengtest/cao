--region [BranchTask]FoodTask_Saturday.lua
--Purpose:		周六美食任务
--Creator: 		倪祖伟
--Created:		2019-10-10
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-7-02 $
--RCS-ID:		$Revision: 4 $
--endregion

--地图ID
local nMapId = 1000

--美食任务奖励
local nFoodTaskAwardID = 2000621

local tTask = {}
tTask.nZaoCan1_1 = 70409 --伦纳德早餐           --彩蛋
tTask.nZaoCan1_2 = 70410 --吉拉早餐
tTask.nWuCan2_1  = 70411 --铁臂安道夫午餐
tTask.nWuCan2_2  = 70412 --与铁臂安道夫对话     --彩蛋
tTask.nWanCan3_1 = 70413 --与吉拉对话
tTask.nWanCan3_2 = 70414 --与艾赛尔对话         --彩蛋
tTask.nWanCan3_3_0= 70650 --找艾赛尔确认情况,,,
tTask.nWanCan3_3_1= 70651 --找艾赛尔确认情况,,,
tTask.nWanCan3_3_2= 70652 --拒绝康普茶,,,
tTask.nWanCan3_3_3= 70653 --品尝康普茶,,,


--对话ID 	13076	13085
local tDialog = {}
--tDialog.nTask1_1_LunNaDe = nil--伦纳德自己的任务无对白
tDialog.nTask1_2_LunNaDe = 13113
tDialog.nTask2_1_LunNaDe = 13116
tDialog.nTask2_2_LunNaDe = 13117
tDialog.nTask3_1_LunNaDe = 13120
tDialog.nTask3_2_LunNaDe = 13121
-- tDialog.nTask3_3_LunNaDe = 13770


tDialog.nTask1_1 = 13114
tDialog.nTask1_2 = 13115
tDialog.nTask2_1 = 13118
tDialog.nTask2_2 = 13119
tDialog.nTask3_1 = 13122
tDialog.nTask3_2 = 13123
tDialog.nTask3_3_0 = 13770
tDialog.nTask3_3_1 = 13771
tDialog.nTask3_3_2 = 13772
tDialog.nTask3_3_3 = 13773

--NPCID
local tSingleNpc = {}

tSingleNpc.nNpc_nLunNaDe = 3043
tSingleNpc.nNpcGroup_nLunNaDe = 20113
tSingleNpc.nNpcGroup_GenId_nLunNaDe = 2001656

tSingleNpc.nNpc_nAnDaoFu = 3005
tSingleNpc.nNpcGroup_nAnDaoFu = 20112
tSingleNpc.nNpcGroup_GenId_nAnDaoFu = 2001655

tSingleNpc.nNpc_nJiLa = 3042
tSingleNpc.nNpcGroup_nJiLa = 20114
tSingleNpc.nNpcGroup_GenId_nJiLa = 2001657

tSingleNpc.nNpc_nBiDuoMao = 3080
tSingleNpc.nNpcGroup_nBiDuoMao = 20115
tSingleNpc.nNpcGroup_GenId_nBiDuoMao = 2001658

tSingleNpc.nNpc_nAiSaiEr = 3101
tSingleNpc.nNpcGroup_nAiSaiEr = 20116
tSingleNpc.nNpcGroup_GenId_nAiSaiEr = 2001659



--伦纳德早餐
rwtTask[tTask.nZaoCan1_1] = {}
rwtTask[tTask.nZaoCan1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nZaoCan1_1]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nZaoCan1_1]["StartNpc"] = tSingleNpc.nNpc_nLunNaDe
rwtTask[tTask.nZaoCan1_1]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday  
rwtTask[tTask.nZaoCan1_1]["FoodTaskTime"] = CONST_FOOD_TIME.Breakfast  
rwtTask[tTask.nZaoCan1_1]["FoodTaskLevel"] = 1  
rwtTask[tTask.nZaoCan1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZaoCan1_1]["IsClickComplete"] = 0
rwtTask[tTask.nZaoCan1_1]["TaskNpc"] = tSingleNpc.nNpc_nLunNaDe
rwtTask[tTask.nZaoCan1_1]["DialogId"] = tDialog.nTask1_1
rwtTask[tTask.nZaoCan1_1]["AutoTaskDialog"] = tDialog.nTask1_1

--吉拉早餐
rwtTask[tTask.nZaoCan1_2] = {}
rwtTask[tTask.nZaoCan1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nZaoCan1_2]["StartNpc"] = tSingleNpc.nNpc_nJiLa
rwtTask[tTask.nZaoCan1_2]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday
rwtTask[tTask.nZaoCan1_2]["FoodTaskTime"] = CONST_FOOD_TIME.Breakfast
rwtTask[tTask.nZaoCan1_2]["FoodTaskLevel"] = 1
rwtTask[tTask.nZaoCan1_2]["FoodTaskEgg"] = CONST_FOOD_EGG.IsEgg
rwtTask[tTask.nZaoCan1_2]["FoodTaskLunNaDeDialog"] = tDialog.nTask1_2_LunNaDe
rwtTask[tTask.nZaoCan1_2]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nZaoCan1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZaoCan1_2]["IsClickComplete"] = 0
rwtTask[tTask.nZaoCan1_2]["TaskNpc"] = tSingleNpc.nNpc_nJiLa
rwtTask[tTask.nZaoCan1_2]["DialogId"] = tDialog.nTask1_2
rwtTask[tTask.nZaoCan1_2]["AutoTaskDialog"] = tDialog.nTask1_2

--铁臂安道夫午餐
rwtTask[tTask.nWuCan2_1] = {}
rwtTask[tTask.nWuCan2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWuCan2_1]["StartNpc"] = tSingleNpc.nNpc_nAnDaoFu
rwtTask[tTask.nWuCan2_1]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday
rwtTask[tTask.nWuCan2_1]["FoodTaskTime"] = CONST_FOOD_TIME.Lunch
rwtTask[tTask.nWuCan2_1]["FoodTaskLevel"] = 2
rwtTask[tTask.nWuCan2_1]["FoodTaskEgg"] = CONST_FOOD_EGG.IsEgg 
rwtTask[tTask.nWuCan2_1]["FoodTaskLunNaDeDialog"] = tDialog.nTask2_1_LunNaDe
rwtTask[tTask.nWuCan2_1]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWuCan2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWuCan2_1]["IsClickComplete"] = 0
rwtTask[tTask.nWuCan2_1]["TaskNpc"] = tSingleNpc.nNpc_nAnDaoFu
rwtTask[tTask.nWuCan2_1]["DialogId"] = tDialog.nTask2_1
rwtTask[tTask.nWuCan2_1]["AutoTaskDialog"] = tDialog.nTask2_1

--比多猫午餐
rwtTask[tTask.nWuCan2_2] = {}
rwtTask[tTask.nWuCan2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWuCan2_2]["StartNpc"] = tSingleNpc.nNpc_nBiDuoMao
rwtTask[tTask.nWuCan2_2]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday
rwtTask[tTask.nWuCan2_2]["FoodTaskTime"] = CONST_FOOD_TIME.Lunch
rwtTask[tTask.nWuCan2_2]["FoodTaskLevel"] = 1
rwtTask[tTask.nWuCan2_2]["FoodTaskEgg"] = CONST_FOOD_EGG.IsEgg --彩蛋任务
rwtTask[tTask.nWuCan2_2]["FoodTaskLunNaDeDialog"] = tDialog.nTask2_2_LunNaDe
rwtTask[tTask.nWuCan2_2]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWuCan2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWuCan2_2]["IsClickComplete"] = 0
rwtTask[tTask.nWuCan2_2]["TaskNpc"] = tSingleNpc.nNpc_nBiDuoMao
rwtTask[tTask.nWuCan2_2]["DialogId"] = tDialog.nTask2_2
rwtTask[tTask.nWuCan2_2]["AutoTaskDialog"] = tDialog.nTask2_2

--吉拉晚餐
rwtTask[tTask.nWanCan3_1] = {}
rwtTask[tTask.nWanCan3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWanCan3_1]["StartNpc"] = tSingleNpc.nNpc_nJiLa
rwtTask[tTask.nWanCan3_1]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday
rwtTask[tTask.nWanCan3_1]["FoodTaskTime"] = CONST_FOOD_TIME.Dinner
rwtTask[tTask.nWanCan3_1]["FoodTaskLevel"] = 1
rwtTask[tTask.nWanCan3_1]["FoodTaskEgg"] = CONST_FOOD_EGG.NoEgg
rwtTask[tTask.nWanCan3_1]["FoodTaskLunNaDeDialog"] = tDialog.nTask3_1_LunNaDe
rwtTask[tTask.nWanCan3_1]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWanCan3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWanCan3_1]["IsClickComplete"] = 0
rwtTask[tTask.nWanCan3_1]["TaskNpc"] = tSingleNpc.nNpc_nJiLa
rwtTask[tTask.nWanCan3_1]["DialogId"] = tDialog.nTask3_1
rwtTask[tTask.nWanCan3_1]["AutoTaskDialog"] = tDialog.nTask3_1

--与艾赛尔晚餐
rwtTask[tTask.nWanCan3_2] = {}
rwtTask[tTask.nWanCan3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWanCan3_2]["StartNpc"] = tSingleNpc.nNpc_nAiSaiEr
rwtTask[tTask.nWanCan3_2]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday
rwtTask[tTask.nWanCan3_2]["FoodTaskTime"] = CONST_FOOD_TIME.Dinner
rwtTask[tTask.nWanCan3_2]["FoodTaskLevel"] = 2
rwtTask[tTask.nWanCan3_2]["FoodTaskEgg"] = CONST_FOOD_EGG.IsEgg   --彩蛋任务
rwtTask[tTask.nWanCan3_2]["FoodTaskLunNaDeDialog"] = tDialog.nTask3_2_LunNaDe
rwtTask[tTask.nWanCan3_2]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWanCan3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWanCan3_2]["IsClickComplete"] = 0
rwtTask[tTask.nWanCan3_2]["TaskNpc"] = tSingleNpc.nNpc_nAiSaiEr
rwtTask[tTask.nWanCan3_2]["DialogId"] = tDialog.nTask3_2
rwtTask[tTask.nWanCan3_2]["AutoTaskDialog"] = tDialog.nTask3_2

--品尝康普茶
rwtTask[tTask.nWanCan3_3_0] = {}
rwtTask[tTask.nWanCan3_3_0]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWanCan3_3_0]["StartNpc"] = tSingleNpc.nNpc_nLunNaDe
rwtTask[tTask.nWanCan3_3_0]["NextTaskId"] = tTask.nWanCan3_3_1
rwtTask[tTask.nWanCan3_3_0]["FoodTaskWeek"] = CONST_FOOD_TIME.Saturday
rwtTask[tTask.nWanCan3_3_0]["FoodTaskTime"] = CONST_FOOD_TIME.Dinner
rwtTask[tTask.nWanCan3_3_0]["FoodTaskLevel"] = 3
rwtTask[tTask.nWanCan3_3_0]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWanCan3_3_0]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWanCan3_3_0]["TaskNpc"] = tSingleNpc.nNpc_nLunNaDe
rwtTask[tTask.nWanCan3_3_0]["DialogId"] = tDialog.nTask3_3_0
rwtTask[tTask.nWanCan3_3_0]["AutoTaskDialog"] = tDialog.nTask3_3_0
rwtTask[tTask.nWanCan3_3_0]["NotLastFoodTask"] = 1

--品尝康普茶
rwtTask[tTask.nWanCan3_3_1] = {}
rwtTask[tTask.nWanCan3_3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWanCan3_3_1]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWanCan3_3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[tTask.nWanCan3_3_1]["TaskNpc"] = tSingleNpc.nNpc_nAiSaiEr
rwtTask[tTask.nWanCan3_3_1]["DialogId"] = tDialog.nTask3_3_1
-- rwtTask[tTask.nWanCan3_3_1]["AutoTaskDialog"] = tDialog.nTask3_3_1
rwtTask[tTask.nWanCan3_3_1]["NotLastFoodTask"] = 1
rwtTask[tTask.nWanCan3_3_1]["OptionTask1"] = tTask.nWanCan3_3_2
rwtTask[tTask.nWanCan3_3_1]["OptionTask2"] = tTask.nWanCan3_3_3

--拒绝
rwtTask[tTask.nWanCan3_3_2] = {}
rwtTask[tTask.nWanCan3_3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWanCan3_3_2]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWanCan3_3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWanCan3_3_2]["IsClickComplete"] = 0
rwtTask[tTask.nWanCan3_3_2]["TaskNpc"] = tSingleNpc.nNpc_nAiSaiEr
rwtTask[tTask.nWanCan3_3_2]["DialogId"] = tDialog.nTask3_3_2
rwtTask[tTask.nWanCan3_3_2]["AutoTaskDialog"] = tDialog.nTask3_3_2

rwtTask[tTask.nWanCan3_3_3] = {}
rwtTask[tTask.nWanCan3_3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][40030]
rwtTask[tTask.nWanCan3_3_3]["TaskType"] = CONST_TASK_TYPE.FOOD
rwtTask[tTask.nWanCan3_3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nWanCan3_3_3]["IsClickComplete"] = 0
rwtTask[tTask.nWanCan3_3_3]["TaskNpc"] = tSingleNpc.nNpc_nAiSaiEr
rwtTask[tTask.nWanCan3_3_3]["DialogId"] = tDialog.nTask3_3_3
rwtTask[tTask.nWanCan3_3_3]["AutoTaskDialog"] = tDialog.nTask3_3_3


--[[
    备注
    第三个晚餐任务nWanCan3_3_0，在伦纳德身上（不是最后一个任务）
    接与艾赛尔对话任务，
    并有两个选项对白任务
    选项2含有动画，镜头移动到主城口的咖啡，伦纳德那小姐姐喝茶
]]
