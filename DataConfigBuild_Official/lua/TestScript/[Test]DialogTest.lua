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
