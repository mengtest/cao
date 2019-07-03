--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--任务测试


--endregion


------***************************数据定义***************************--
---------------------任务ID-----------------
--local nTestTask_1 = 9991
--local nTestTask_2 = 9992

---------------------怪物ID-----------------
--local nMonsterType_1 = 99991   --任务1杀怪ID   90000008
--local nMonsterType_2 = 99992    --原有怪物ID及任务2杀怪ID   90000001

--------------------陷阱ID-------------------
--local  nTrapType_1 = 9901   --接受任务1
--local  nTrapType_2 = 9902   --接受任务2

----function LoginTest()
----  rwTaskAdd(nTestTask_1, 4, 1)
----end
----table.insert(tUserLoginAction,LoginTest)


--local nNpcGroup_9903 = 9903  --卡诺萨城(切屏点)

--rwtNpcGroup[nNpcGroup_9903] = {} --卡诺萨城(切屏点)
--rwtNpcGroup[nNpcGroup_9903]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[nNpcGroup_9903]["ChangeMap"] = {1000,"-1.28,-5.56,28.65",AddMonster}

---------------------nTestTask_1-----------------
--rwtTask[nTestTask_1] = {}
--rwtTask[nTestTask_1]["Title"] = "测试任务1"
----rwtTask[nTestTask_1]["NextTaskId"] = nTestTask_2

--rwtTask[nTestTask_1]["AcceptFunc"] = function ()
--    if not rwHasGenEvent(nMonsterType_1) then
--        rwAddGenEvent(nMonsterType_1)
--    end
--end

--rwtTask[nTestTask_1]["KillMonster1"] = 10006
--rwtTask[nTestTask_1]["KillMonsterCount1"] = 1

--rwtTask[nTestTask_1]["FinishAward"] = {}
--rwtTask[nTestTask_1]["FinishAward"]["Awards"] = {}

--rwtTask[nTestTask_1]["AwardFunc"] = function()

--end



---------------------nTestTask_2-----------------
--rwtTask[nTestTask_2] = {}
--rwtTask[nTestTask_2]["Title"] = "测试任务2"
----rwtTask[nTestTask_2]["PreTaskId"] = nTestTask_1
----rwtTask[nTestTask_2]["StartAutoway"] = function ()
----    rwPrintLog("测试任务2接受函数")
----    if not rwHasGenEvent(nMonsterType_2) then
----        rwPrintLog("添加测试怪2")
----        rwAddGenEvent(nMonsterType_2)
----    end
----end

--rwtTask[nTestTask_2]["AcceptFunc"] = function ()
--    rwPrintLog("测试任务2接受函数")
--    if not rwHasGenEvent(nMonsterType_2) then
--        rwPrintLog("添加测试怪2")
--        rwAddGenEvent(nMonsterType_2)
--    end
--end

--rwtTask[nTestTask_2]["KillMonster1"] = 10003
--rwtTask[nTestTask_2]["KillMonsterCount1"] = 1

--rwtTask[nTestTask_2]["FinishAward"] = {}
--rwtTask[nTestTask_2]["FinishAward"]["Awards"] = {}

--rwtTask[nTestTask_2]["AwardFunc"] = function()

--end



--rwMonsterTypeAI[10006] = rwMonsterTypeAI[10006] or {}
--rwMonsterTypeAI[10006]["InterfaceBeKill"] = function()
--    rwPrintLog("测试怪1死亡")
--    if rwHasGenEvent(nMonsterType_2) then
--         rwDelGenEvent(nMonsterType_2)
--    end
--end

--rwMonsterTypeAI[10003] = rwMonsterTypeAI[10003] or {}
--rwMonsterTypeAI[10003]["InterfaceBeKill"] = function()
--        rwPrintLog("测试怪2死亡")
----        if not rwHasGenEvent(nMonsterType_2) then
----        rwAddGenEvent(nMonsterType_2)
----    end
--end

--rwtNpcGroup[nTrapType_1] = rwtNpcGroup[nTrapType_1] or {}
--rwtNpcGroup[nTrapType_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrapType_1]["TrapFunc"] = function(nTrapId)
--    if not rwTaskIsAccept(9991) then
--        rwPrintLog("接受测试任务1")
--        rwLinkTaskAccept(9991)
--    elseif rwTaskIsSuccess(9991) then
--        rwTaskDelete(9991)
--        rwPrintLog("重新接受测试任务1")
--        rwLinkTaskAccept(9991)
--    end  
--end

--rwtNpcGroup[nTrapType_2] = rwtNpcGroup[nTrapType_2] or {}
--rwtNpcGroup[nTrapType_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrapType_2]["TrapFunc"] = function(nTrapId)
--    if not rwTaskIsAccept(9992) then
--        rwPrintLog("接受测试任务2")
--        rwLinkTaskAccept(9992)
--    elseif rwTaskIsSuccess(9992) then
--        rwTaskDelete(9992)
--        rwPrintLog("重新接受测试任务2")
--        rwLinkTaskAccept(9992)
--    end  
--end

---倒计时类型任务测试
local nTestTask_CountDown = 89999
local nTestTask_CountDown_Next = 80015
local nTestTask_CountDown_3 = 80016

rwtTask[nTestTask_CountDown] = {}
rwtTask[nTestTask_CountDown]["Title"] = "倒计时类型任务测试"
rwtTask[nTestTask_CountDown]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTestTask_CountDown]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
rwtTask[nTestTask_CountDown]["TaskFinishTime"]  = 86500
rwtTask[nTestTask_CountDown]["IsClickComplete"] = 1
rwtTask[nTestTask_CountDown]["NextTaskId"] = nTestTask_CountDown_Next




rwtTask[nTestTask_CountDown_Next] = {}
rwtTask[nTestTask_CountDown_Next]["Title"] = "倒计时类型任务测试后续"
rwtTask[nTestTask_CountDown_Next]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTestTask_CountDown_Next]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nTestTask_CountDown_Next]["IsClickComplete"] = 1
--rwtTask[nTestTask_CountDown_Next]["PreTaskId"] = nTestTask_CountDown

rwtTask[nTestTask_CountDown_3] = {}
rwtTask[nTestTask_CountDown_3]["Title"] = "倒计时类型任务测试"
rwtTask[nTestTask_CountDown_3]["TaskType"] = CONST_TASK_TYPE.REWARD
rwtTask[nTestTask_CountDown_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
rwtTask[nTestTask_CountDown_3]["ServerFinishTaskTime"]  = 100
rwtTask[nTestTask_CountDown_3]["IsClickComplete"] = 1
rwtTask[nTestTask_CountDown_3]["NextTaskId"] = nTestTask_CountDown_Next