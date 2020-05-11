
--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--战斗力前置任务
--by:Nizw

--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

--任务ID
local tTask = {}
tTask.nZhanDouLiPre_1 = 70293 --自律联盟的福利      向安道夫了解福利        
tTask.nZhanDouLiPre_2 = 70294 --自律联盟的福利      什么是比多仪？        
tTask.nZhanDouLiPre_3 = 70295 --自律联盟的福利      比多仪的使用        

    

--对话ID
local tDialog = {}
tDialog.nTask1 = 12875
tDialog.nTask2 = 12876
tDialog.nTask3 = 12881

tDialog.buttn1 = 12878
tDialog.buttn2 = 12879
tDialog.buttn3 = 12880

function rwZhanDouLiPreTask_Btn1()
    rwOpenNpcChatDialog(tDialog.buttn1)
end
function rwZhanDouLiPreTask_Btn2()
    rwOpenNpcChatDialog(tDialog.buttn2)
end
function rwZhanDouLiPreTask_Btn3()
    rwOpenNpcChatDialog(tDialog.buttn3)
end
function rwZhanDouLiPreTask_Btn4()
    rwOpenNpcChatDialog(tDialog.nTask3,CONST_NPCCHAT_TYPE.TASK,tTask.nZhanDouLiPre_3)
end

local tDialogOption = {}
tDialogOption[1]={}
tDialogOption[1]["Text"]={}
tDialogOption[1]["Text"] = {}
tDialogOption[1]["Text"]["DialogId"] = 12877
tDialogOption[1]["Text"]["Content"] = "但影响战力的因素千奇百怪，连大叔我也不能打包票说出<br>每个人的战力。比多仪，就能用数据把战力展示出来。"
tDialogOption[1]["Text"]["TalkId"] = 3005
tDialogOption[1]["Text"]["LeftId"] = 3005
tDialogOption[1]["Option"] = {}
tDialogOption[1]["Option"][1] = {}
tDialogOption[1]["Option"][1]["Text"] = "它的工作原理是什么？"
tDialogOption[1]["Option"][1]["Func"] = "</F>rwZhanDouLiPreTask_Btn1"
tDialogOption[1]["Option"][2] = {}
tDialogOption[1]["Option"][2]["Text"] = "它的评定维度有哪些？"
tDialogOption[1]["Option"][2]["Func"] = "</F>rwZhanDouLiPreTask_Btn2"
tDialogOption[1]["Option"][3] = {}
tDialogOption[1]["Option"][3]["Text"] = "我要怎么使用它？"
tDialogOption[1]["Option"][3]["Func"] = "</F>rwZhanDouLiPreTask_Btn3"
tDialogOption[1]["Option"][4] = {}
tDialogOption[1]["Option"][4]["Text"] = "原来是这个！我了解过！"
tDialogOption[1]["Option"][4]["Func"] = "</F>rwZhanDouLiPreTask_Btn4"


rwtDialog[tDialog.buttn1] = rwtDialog[tDialog.buttn1] or {}
rwtDialog[tDialog.buttn1]["DialogEnd"] = function ()
    rwNpcDialogText(tDialogOption[1]["Text"])
    rwNpcDialogOption(tDialogOption[1]["Option"])
end

rwtDialog[tDialog.buttn2] = rwtDialog[tDialog.buttn2] or {}
rwtDialog[tDialog.buttn2]["DialogEnd"] = function ()
    rwNpcDialogText(tDialogOption[1]["Text"])
    rwNpcDialogOption(tDialogOption[1]["Option"])
end

rwtDialog[tDialog.buttn3] = rwtDialog[tDialog.buttn3] or {}
rwtDialog[tDialog.buttn3]["DialogEnd"] = function ()
    rwNpcDialogText(tDialogOption[1]["Text"])
    rwNpcDialogOption(tDialogOption[1]["Option"])
end


--Npc
local nNPCGroup_AnDaoFu = 20112
local nNPC_AnDaoFu = 3005

--================================================================
--向安道夫了解福利
rwtTask[tTask.nZhanDouLiPre_1] = {}
rwtTask[tTask.nZhanDouLiPre_1]["Title"]= tLuaText[LANGUAGE_CONFIG][21870]
rwtTask[tTask.nZhanDouLiPre_1]["PreTaskId"] = 10270
rwtTask[tTask.nZhanDouLiPre_1]["NextTaskId"] = tTask.nZhanDouLiPre_2
rwtTask[tTask.nZhanDouLiPre_1]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZhanDouLiPre_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZhanDouLiPre_1]["DialogId"]= tDialog.nTask1
rwtTask[tTask.nZhanDouLiPre_1]["TaskNpc"]= nNPC_AnDaoFu


--什么是比多仪？
rwtTask[tTask.nZhanDouLiPre_2] = {}
rwtTask[tTask.nZhanDouLiPre_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21870]
rwtTask[tTask.nZhanDouLiPre_2]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZhanDouLiPre_2]["PreTaskId"] = tTask.nZhanDouLiPre_1
rwtTask[tTask.nZhanDouLiPre_2]["NextTaskId"] = tTask.nZhanDouLiPre_3
rwtTask[tTask.nZhanDouLiPre_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZhanDouLiPre_2]["DialogId"] = tDialog.nTask2
rwtTask[tTask.nZhanDouLiPre_2]["TaskNpc"] = nNPC_AnDaoFu
rwtTask[tTask.nZhanDouLiPre_2]["AutoTaskDialog"] = tDialog.nTask2
rwtTask[tTask.nZhanDouLiPre_2]["DialogueEndFunc"] = function()
    rwNpcDialogText(tDialogOption[1]["Text"])
    rwNpcDialogOption(tDialogOption[1]["Option"])
end



--比多仪的使用
rwtTask[tTask.nZhanDouLiPre_3] = {}
rwtTask[tTask.nZhanDouLiPre_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21870]
rwtTask[tTask.nZhanDouLiPre_3]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tTask.nZhanDouLiPre_3]["PreTaskId"] = tTask.nZhanDouLiPre_2
-- rwtTask[tTask.nZhanDouLiPre_3]["NextTaskId"] = tTask.nZhanDouLiPre_3
rwtTask[tTask.nZhanDouLiPre_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask.nZhanDouLiPre_3]["DialogId"] = tDialog.nTask3
rwtTask[tTask.nZhanDouLiPre_3]["TaskNpc"] = nNPC_AnDaoFu
