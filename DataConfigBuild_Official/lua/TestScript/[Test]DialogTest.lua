--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

local nTaskTest1 = 80012
local nTaskTest2 = 80013
local nTaskTest3 = 80014


rwtTask[nTaskTest1] = {}
rwtTask[nTaskTest1]["Title" ]= "偷披风的小贼"--返回哀嚎神殿
rwtTask[nTaskTest1]["TaskNpc"] = 3074
rwtTask[nTaskTest1]["DynaNpcGroupGen"] = {2001149}
rwtTask[nTaskTest1]["DynaNpcGroupMapId"] = 2001
rwtTask[nTaskTest1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nTaskTest1]["IsClickComplete"] = 0
rwtTask[nTaskTest1]["DialogId"] = 10637
rwtTask[nTaskTest1]["OptionTask1"] = nTaskTest2
rwtTask[nTaskTest1]["OptionTask2"] = nTaskTest3

--rwtDialog[10637] = {}
--rwtDialog[10637]["OptionFunc1"] = function()
--    rwPrintLog("OptionFunc1111111111")
--    rwTaskSetFinish(nTaskTest1)
--    ENUM_TASK_TEMPLATE[rwtTask[nTaskTest1]["TaskDetailType"]]:create(nTaskTest2):AcceptTask()
--    --rwLinkTaskAccept(nTaskTest2)
--end
--rwtDialog[10637]["OptionFunc2"] = function()
--    rwTaskSetFinish(nTaskTest1) 
--    rwLinkTaskAccept(nTaskTest3)
--end



rwtTask[nTaskTest2] = {}
rwtTask[nTaskTest2]["Title"] = "赫丽的踪迹" --盘问先驱者1号
--rwtTask[nTaskTest2]["PreTaskId"] = nTaskTest1
rwtTask[nTaskTest2]["DialogId"] = 10250
rwtTask[nTaskTest2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTaskTest2]["TaskNpc"] = 3074
rwtTask[nTaskTest2]["DynaNpcGroupGen"] = {2001149}
rwtTask[nTaskTest2]["DynaNpcGroupMapId"] = 2001
rwtTask[nTaskTest2]["IsClickComplete"] = 0


rwtTask[nTaskTest3] = {}
rwtTask[nTaskTest3]["Title"] = "赫丽的踪迹" --寻找赫丽
--rwtTask[nTaskTest3]["PreTaskId"] = nTaskTest1
rwtTask[nTaskTest3]["DialogId"] = 10251
rwtTask[nTaskTest3]["ReqTrap1" ]= 30172
rwtTask[nTaskTest3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[nTaskTest3]["DynaNpcGroupGen"] = {2001535}
rwtTask[nTaskTest3]["DynaNpcGroupMapId"] = 2001
rwtTask[nTaskTest3]["StartAutoWay"] = {}
rwtTask[nTaskTest3]["StartAutoWay"]["MapId"] = 2001
rwtTask[nTaskTest3]["StartAutoWay"]["Pos"] = "-62.04,0.05,-152.74"
rwtTask[nTaskTest3]["IsClickComplete"] = 0

----------------------------------
--服务端下发对白测试
local tTestServerDialog = {}

--仅一句对白
tTestServerDialog.Test1 = {}
tTestServerDialog.Test1["Text"] = {}
tTestServerDialog.Test1["Text"]["DialogId"] = 60897
tTestServerDialog.Test1["Text"]["Content"] = "服务端下发对白测试，<br>当前对白仅一句，<br>对白结束后关闭对白界面"
tTestServerDialog.Test1["Text"]["TalkId"] = 101 
tTestServerDialog.Test1["Text"]["LeftId"] = 101 
tTestServerDialog.Test1["Text"]["LeftFace"] = 0

--多句对白
tTestServerDialog.Test2 = {}
tTestServerDialog.Test2[1] = {}
tTestServerDialog.Test2[1]["Text"] = {}
tTestServerDialog.Test2[1]["Text"]["DialogId"] = 60898
tTestServerDialog.Test2[1]["Text"]["Content"] = "服务端下发对白测试，<br>该对白共3句，当前为第1句"
tTestServerDialog.Test2[1]["Text"]["TalkId"] = 101 
tTestServerDialog.Test2[1]["Text"]["LeftId"] = 101 
tTestServerDialog.Test2[1]["Text"]["HasMore"] = 1 
tTestServerDialog.Test2[2] = {}
tTestServerDialog.Test2[2]["Text"] = {}
tTestServerDialog.Test2[2]["Text"]["DialogId"] = 60898
tTestServerDialog.Test2[2]["Text"]["Content"] = "服务端下发对白测试，<br>该对白共3句，当前为第2句"
tTestServerDialog.Test2[2]["Text"]["TalkId"] = 201 
tTestServerDialog.Test2[2]["Text"]["Rightid"] = 201 
tTestServerDialog.Test2[2]["Text"]["HasMore"] = 1 
tTestServerDialog.Test2[3] = {}
tTestServerDialog.Test2[3]["Text"] = {}
tTestServerDialog.Test2[3]["Text"]["DialogId"] = 60898
tTestServerDialog.Test2[3]["Text"]["Content"] = "服务端下发对白测试，<br>该对白共3句，当前为第3句，<br>当前对白结束后关闭对白界面"
tTestServerDialog.Test2[3]["Text"]["TalkId"] = 101 
tTestServerDialog.Test2[3]["Text"]["LeftId"] = 101 


--单句对白测试
function rwTest_DialogTest_ServerDialog_Test1()
	rwNpcDialogText(tTestServerDialog.Test1["Text"],"</F>rwTest_DialogTest_ServerDialog_Test1_DialogEnd")
end

function rwTest_DialogTest_ServerDialog_Test1_DialogEnd()
	rwSendSystemMessage("对白结束")
end



function rwTest_DialogTest_ServerDialog_Test4()
	rwNpcDialogText(tTestServerDialog.Test2[3]["Text"])
end
function rwTest_DialogTest_ServerDialog_Test3()
	rwNpcDialogText(tTestServerDialog.Test2[2]["Text"],"</F>rwTest_DialogTest_ServerDialog_Test4")
end
--多句对白测试
function rwTest_DialogTest_ServerDialog_Test2()
	rwNpcDialogText(tTestServerDialog.Test2[1]["Text"],"</F>rwTest_DialogTest_ServerDialog_Test3")
end
----多句对白测试
--function rwTest_DialogTest_ServerDialog_Test2()
--	rwNpcDialogText(tTestServerDialog.Test2[1]["Text"])
--end

--rwtDialog[60898] = rwtDialog[60898] or {}
--rwtDialog[60898]["DialogEnd"] = function()
--    rwNpcDialogText(tTestServerDialog.Test2[3]["Text"])
--end

