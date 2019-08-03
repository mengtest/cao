--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--解谜测试


--endregion

--local tPuzzleEvent = {}
    --tPuzzleEvent[10000] = {}
    --tPuzzleEvent[10000][100001] = {100017}
    --tPuzzleEvent[10000][100002] = {100017}
    --tPuzzleEvent[10000][100003] = {100017}
    tPuzzleEvent[100001] = {100017}
    tPuzzleEvent[100002] = {100017}
    tPuzzleEvent[100003] = {100017}

function Test_Open(nId)
    nId = nId or 100000
    rwPuzzleOpen(nId)
end


--@luacall </F>Test_Open

--**********************************解谜功能验证************************
--解谜屋id
local nPuzzle_1 = 104   --解谜屋A
local nPuzzle_2 = 105   --解谜屋B

--任务
local nTask_Test1 = 80017
local nTask_Test2 = 80018
--对白
local nDialog_Open = 10986      --打开解谜屋A时对白
local nDialog_End = 10987      --找到解谜屋A任务物件时对白
local nDialog_ClickObj = 10988      --点击物件104002对白
local nDialog_EnterPuzzleA_HasTask = 10989      --带有任务nTask_Test1进入解谜屋A时对白

--掩码
local nTemp_Award = 1092   --获得奖励的掩码

--================测试任务=============
--含打开对白
rwtTask[nTask_Test1] = {}
rwtTask[nTask_Test1]["Title"]= "含打开对白解谜测试" 
rwtTask[nTask_Test1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[nTask_Test1]["IsClickComplete"] = 1
rwtTask[nTask_Test1]["ReqPuzzleId"] = 104
rwtTask[nTask_Test1]["ReqPuzzleObj"] = 104003
rwtTask[nTask_Test1]["ReqPuzzleEnterDialog"] = nDialog_EnterPuzzleA_HasTask
rwtTask[nTask_Test1]["ReqPuzzleEndDialog"] = nDialog_End



--不含打开对白
rwtTask[nTask_Test2] = {}
rwtTask[nTask_Test2]["Title"]= "不含打开对白解谜测试" 
rwtTask[nTask_Test2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[nTask_Test2]["IsClickComplete"] = 1
rwtTask[nTask_Test2]["ReqPuzzleId"] = 105
rwtTask[nTask_Test2]["ReqPuzzleObj"] = 105102


--======================NPC===============
local nPuzzle_Npc = 90001
local nPuzzle_Npc_GenId = 2001948

rwtNpcGroup[nPuzzle_Npc] = {}
rwtNpcGroup[nPuzzle_Npc]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[nPuzzle_Npc]["PuzzleId"] = 104


--================解谜屋=============
--解谜屋A
tPuzzleEvent[nPuzzle_1] = {}
tPuzzleEvent[nPuzzle_1]["OpenDialog"] = nDialog_Open

tPuzzleEvent[nPuzzle_1][104001] = {} --普通物品，触发物件说明（一开始就出现）
tPuzzleEvent[nPuzzle_1][104001]["SuccMsg"] = 104100

tPuzzleEvent[nPuzzle_1][104002] = {} --普通物品，触发对白（一开始就出现）
tPuzzleEvent[nPuzzle_1][104002]["ClickDialog"] = nDialog_ClickObj

tPuzzleEvent[nPuzzle_1][104003] = {} --点击后完成任务nTask_Test1（一开始就出现，身上没有任务时打开解谜屋时隐藏）
tPuzzleEvent[nPuzzle_1][104003]["InTask"] = nTask_Test1
tPuzzleEvent[nPuzzle_1][104003]["RemoveSelf"] = 104101

tPuzzleEvent[nPuzzle_1][104004] = {} --点击后发放奖励（一开始就出现）
tPuzzleEvent[nPuzzle_1][104004]["AwardFlag"] = nTemp_Award  
tPuzzleEvent[nPuzzle_1][104004]["AwardMsg"] = 104102
tPuzzleEvent[nPuzzle_1][104004]["AwardId"] = 6000000

tPuzzleEvent[nPuzzle_1][104005] = {} --点击后播放光效（一开始就出现）
tPuzzleEvent[nPuzzle_1][104005]["AddEffect"] = 104103

tPuzzleEvent[nPuzzle_1][104006] = {} --点击后移除光效（一开始就出现）
tPuzzleEvent[nPuzzle_1][104006]["RemoveEffect"] = 104104

tPuzzleEvent[nPuzzle_1][104007] = {} --点击后移除自身（一开始就出现）
tPuzzleEvent[nPuzzle_1][104007]["RemoveSelf"] = 104105

tPuzzleEvent[nPuzzle_1][104008] = {} --点击弹出解谜屋B（一开始就出现）
tPuzzleEvent[nPuzzle_1][104008]["ExitPuzzle"] = 104106 --退出解谜
tPuzzleEvent[nPuzzle_1][104008]["OpenPuzzle"] = 105


--解谜屋B
tPuzzleEvent[nPuzzle_2] = {}

tPuzzleEvent[nPuzzle_2][105001] = {} --点击后使105002变为可点击（一开始就出现）
tPuzzleEvent[nPuzzle_2][105001]["InitClickState"] = 1 --初始可点击
tPuzzleEvent[nPuzzle_2][105001]["TurnClickable"] = {105002} --点击后将105002变为可点击
tPuzzleEvent[nPuzzle_2][105001]["SuccMsg"] = 105106        --点击成功后弹出消息

tPuzzleEvent[nPuzzle_2][105002] = {} --可点击时弹出提示（一开始就出现，但点击后无反应，可点击时点击后将105001变为不可点击）
tPuzzleEvent[nPuzzle_2][105002]["InitClickState"] = 0 --初始不可点击
tPuzzleEvent[nPuzzle_2][105002]["TurnUnClickable"] = {105001}--点击后将105001变为不可点击
tPuzzleEvent[nPuzzle_2][105002]["SuccMsg"] = 105107         --点击成功后弹出消息

tPuzzleEvent[nPuzzle_2][105003] = {} --点击后其他位置出现105103（一开始就出现）
tPuzzleEvent[nPuzzle_2][105003]["AddPicture"] = 105103         --点击成功后弹出消息
tPuzzleEvent[nPuzzle_2][105003]["SuccMsg"] = 105108         --点击成功后弹出消息
                                                  
tPuzzleEvent[nPuzzle_2][105004] = {} --点击后进入战斗（一开始就出现）
tPuzzleEvent[nPuzzle_2][105004]["EnterBattle"] = 2001558         --点击进入战斗
                          
tPuzzleEvent[nPuzzle_2][105005] = {} --点击后进入副本（一开始就出现）
tPuzzleEvent[nPuzzle_2][105005]["EnterCopyMap"] = 3032         --点击进入副本
                          
tPuzzleEvent[nPuzzle_2][105006] = {} --点击后删除自身并在当前位置添加105101（一开始就出现，身上没有任务时打开解谜屋时隐藏）
tPuzzleEvent[nPuzzle_2][105006]["InTask"] = nTask_Test2
tPuzzleEvent[nPuzzle_2][105006]["AddPicture"] = 105101
tPuzzleEvent[nPuzzle_2][105006]["RemoveSelf"] = 105110
                          
tPuzzleEvent[nPuzzle_2][105101] = {} --点击后删除自身并在当前位置添加105102
tPuzzleEvent[nPuzzle_2][105101]["AddPicture"] = 105102
tPuzzleEvent[nPuzzle_2][105101]["RemoveSelf"] = 105111
                          
tPuzzleEvent[nPuzzle_2][105102] = {} --点击后完成任务nTask_Test2
tPuzzleEvent[nPuzzle_2][105102]["RemoveSelf"] = 105112

tPuzzleEvent[nPuzzle_2][105103] = {} --点击后弹出提示
tPuzzleEvent[nPuzzle_2][105103]["SuccMsg"] = 105113        --点击成功后弹出提示







--3642(废弃NPCId)
--解谜选项和对白后打开测试
local nTestTask_Puzzle1 = 80051
local nTestTask_Puzzle2 = 80052
local nTestTask_Puzzle3 = 80053
local nTestTask_Puzzle4 = 80054
local nTestTask_Puzzle_Dialog = 11972

rwtNpcGroup[90004] = rwtNpcGroup[90004] or {}   
rwtNpcGroup[90004]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[90004]["PuzzleId"] = 101
rwtNpcGroup[90004]["DialogId"] = 1680

rwtNpcGroup[90005] = rwtNpcGroup[90005] or {}   
rwtNpcGroup[90005]["Type"] = CONST_NPCGROUP_TYPE.Npc
rwtNpcGroup[90005]["DialogId"] = 1680


rwtTask[nTestTask_Puzzle1] = {}
rwtTask[nTestTask_Puzzle1]["Title"] = "测试任务1"
rwtTask[nTestTask_Puzzle1]["NextTaskId"] = 0
rwtTask[nTestTask_Puzzle1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[nTestTask_Puzzle1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTestTask_Puzzle1]["IsClickComplete"] = 1
rwtTask[nTestTask_Puzzle1]["DialogId"] = 1680

rwtTask[nTestTask_Puzzle2] = {}
rwtTask[nTestTask_Puzzle2]["Title"] = "测试任务2"
rwtTask[nTestTask_Puzzle2]["NextTaskId"] = 0
rwtTask[nTestTask_Puzzle2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[nTestTask_Puzzle2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTestTask_Puzzle2]["IsClickComplete"] = 1
rwtTask[nTestTask_Puzzle2]["DialogId"] = 1680






