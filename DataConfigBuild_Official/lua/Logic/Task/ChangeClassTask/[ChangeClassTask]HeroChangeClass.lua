--HeroChangeClass *.lua
--Date
--英雄转职任务



--endregion



----***************************数据定义***************************--
local tChangeClassReq = {}
    tChangeClassReq[1] = {}
    tChangeClassReq[1]["ReqLev"] = 20
    tChangeClassReq[1]["ReqRank"] = 0
    tChangeClassReq[2] = {}
    tChangeClassReq[2]["ReqLev"] = 30
    tChangeClassReq[2]["ReqRank"] = 0
    tChangeClassReq[3] = {}
    tChangeClassReq[3]["ReqLev"] = 40
    tChangeClassReq[3]["ReqRank"] = 0
    tChangeClassReq[4] = {}
    tChangeClassReq[4]["ReqLev"] = 50
    tChangeClassReq[4]["ReqRank"] = 0
    tChangeClassReq[5] = {}
    tChangeClassReq[5]["ReqLev"] = 60
    tChangeClassReq[5]["ReqRank"] = 0
    tChangeClassReq[6] = {}
    tChangeClassReq[6]["ReqLev"] = 70
    tChangeClassReq[6]["ReqRank"] = 0

function rw_GetChangeClassReqInfo(nClass)
    if rwChkInt(nClass) then
        return tChangeClassReq[nClass]
    end
end


local nTask_10101 = 30000
local nTask_10102 = 30001
local nTask_10103 = 30002
local nTask_10104 = 30021
local nTask_10105 = 30022
local nTask_10106 = 30023
local nTask_10201 = 30003
local nTask_10202 = 30004
local nTask_10203 = 30005
local nTask_10301 = 30006
local nTask_10302 = 30007
local nTask_10303 = 30008
local nTask_20101 = 30009
local nTask_20102 = 30010
local nTask_20103 = 30011
local nTask_30101 = 30012
local nTask_30102 = 30013
local nTask_30103 = 30014
local nTask_30201 = 30015
local nTask_30202 = 30016
local nTask_30203 = 30017

local tHeroTask = {}
tHeroTask[101] = {}
tHeroTask[101]["task1"] = nTask_10101
tHeroTask[101]["task2"] = nTask_10102
tHeroTask[101]["task3"] = nTask_10103
tHeroTask[101]["task4"] = nTask_10104
tHeroTask[101]["task5"] = nTask_10105
tHeroTask[101]["task6"] = nTask_10106

tHeroTask[102] = {}
tHeroTask[102]["task1"] = nTask_10201
tHeroTask[102]["task2"] = nTask_10202
tHeroTask[102]["task3"] = nTask_10203

tHeroTask[103] = {}
tHeroTask[103]["task1"] = nTask_10301
tHeroTask[103]["task2"] = nTask_10302
tHeroTask[103]["task3"] = nTask_10303

tHeroTask[201] = {}
tHeroTask[201]["task1"] = nTask_20101
tHeroTask[201]["task2"] = nTask_20102
tHeroTask[201]["task3"] = nTask_20103

tHeroTask[301] = {}
tHeroTask[301]["task1"] = nTask_30101
tHeroTask[301]["task2"] = nTask_30102
tHeroTask[301]["task3"] = nTask_30103

tHeroTask[302] = {}
tHeroTask[302]["task1"] = nTask_30201
tHeroTask[302]["task2"] = nTask_30202
tHeroTask[302]["task3"] = nTask_30203

function rw_GetChangeClassTaskByHero(nHeroType)
    if rwChkInt(nHeroType) then
        return tHeroTask[nHeroType]
    end
end


----***************************任务配置***************************--
-------------------101西蒙-----------------
rwtTask[nTask_10101] = {}
rwtTask[nTask_10101]["Title"] = tLuaText[LANGUAGE_CONFIG][20109]
rwtTask[nTask_10101]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10101]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10101]["DialogId"] = 10030
rwtTask[nTask_10101]["HeroId"] = 101
--rwtTask[nTask_10101]["TaskNpc"] = 1000

rwtTask[nTask_10102] = {}
rwtTask[nTask_10102]["Title"] = tLuaText[LANGUAGE_CONFIG][20110]
rwtTask[nTask_10102]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10102]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10102]["DialogId"] = 10031
rwtTask[nTask_10102]["HeroId"] = 101
--rwtTask[nTask_10102]["TaskNpc"] = 1000

rwtTask[nTask_10103] = {}
rwtTask[nTask_10103]["Title"] = tLuaText[LANGUAGE_CONFIG][20111]
rwtTask[nTask_10103]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10103]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10103]["DialogId"] = 10032
rwtTask[nTask_10103]["HeroId"] = 101
--rwtTask[nTask_10103]["TaskNpc"] = 1000

rwtTask[nTask_10104] = {}
rwtTask[nTask_10104]["Title"] = tLuaText[LANGUAGE_CONFIG][20112]
rwtTask[nTask_10104]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10104]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10104]["DialogId"] = 10436
rwtTask[nTask_10104]["HeroId"] = 101

rwtTask[nTask_10105] = {}
rwtTask[nTask_10105]["Title"] = tLuaText[LANGUAGE_CONFIG][20113]
rwtTask[nTask_10105]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10105]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10105]["DialogId"] = 10437
rwtTask[nTask_10105]["HeroId"] = 101

rwtTask[nTask_10106] = {}
rwtTask[nTask_10106]["Title"] = tLuaText[LANGUAGE_CONFIG][20114]
rwtTask[nTask_10106]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10106]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10106]["DialogId"] = 10438
rwtTask[nTask_10106]["HeroId"] = 101


-------------------102泰雷-----------------
rwtTask[nTask_10201] = {}
rwtTask[nTask_10201]["Title"] = tLuaText[LANGUAGE_CONFIG][20115]
rwtTask[nTask_10201]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10201]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10201]["DialogId"] = 10033
rwtTask[nTask_10201]["HeroId"] = 102
--rwtTask[nTask_10201]["TaskNpc"] = 1000

rwtTask[nTask_10202] = {}
rwtTask[nTask_10202]["Title"] = tLuaText[LANGUAGE_CONFIG][20116]
rwtTask[nTask_10202]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10202]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10202]["DialogId"] = 10034
rwtTask[nTask_10202]["HeroId"] = 102
--rwtTask[nTask_10202]["TaskNpc"] = 1000

rwtTask[nTask_10203] = {}
rwtTask[nTask_10203]["Title"] = tLuaText[LANGUAGE_CONFIG][20117]
rwtTask[nTask_10203]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10203]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10203]["DialogId"] = 10035
rwtTask[nTask_10203]["HeroId"] = 102
--rwtTask[nTask_10203]["TaskNpc"] = 1000

-------------------103兰奇-----------------
rwtTask[nTask_10301] = {}
rwtTask[nTask_10301]["Title"] = tLuaText[LANGUAGE_CONFIG][20118]
rwtTask[nTask_10301]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10301]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10301]["DialogId"] = 10036
rwtTask[nTask_10301]["HeroId"] = 103
--rwtTask[nTask_10301]["TaskNpc"] = 1000

rwtTask[nTask_10302] = {}
rwtTask[nTask_10302]["Title"] = tLuaText[LANGUAGE_CONFIG][20119]
rwtTask[nTask_10302]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10302]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10302]["DialogId"] = 10037
rwtTask[nTask_10302]["HeroId"] = 103
--rwtTask[nTask_10302]["TaskNpc"] = 1000

rwtTask[nTask_10303] = {}
rwtTask[nTask_10303]["Title"] = tLuaText[LANGUAGE_CONFIG][20120]
rwtTask[nTask_10303]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_10303]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_10303]["DialogId"] = 10038
rwtTask[nTask_10303]["HeroId"] = 103
--rwtTask[nTask_10303]["TaskNpc"] = 1000

-------------------201温丽-----------------
rwtTask[nTask_20101] = {}
rwtTask[nTask_20101]["Title"] = tLuaText[LANGUAGE_CONFIG][20121]
rwtTask[nTask_20101]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_20101]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_20101]["DialogId"] = 10039
rwtTask[nTask_20101]["HeroId"] = 201
--rwtTask[nTask_20101]["TaskNpc"] = 1000

rwtTask[nTask_20102] = {}
rwtTask[nTask_20102]["Title"] = tLuaText[LANGUAGE_CONFIG][20122]
rwtTask[nTask_20102]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_20102]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_20102]["DialogId"] = 10040
rwtTask[nTask_20102]["HeroId"] = 201
--rwtTask[nTask_20102]["TaskNpc"] = 1000

rwtTask[nTask_20103] = {}
rwtTask[nTask_20103]["Title"] = tLuaText[LANGUAGE_CONFIG][20123]
rwtTask[nTask_20103]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_20103]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_20103]["DialogId"] = 10041
rwtTask[nTask_20103]["HeroId"] = 201
--rwtTask[nTask_20103]["TaskNpc"] = 1000

-------------------301艾琳娜-----------------
rwtTask[nTask_30101] = {}
rwtTask[nTask_30101]["Title"] = tLuaText[LANGUAGE_CONFIG][20124]
rwtTask[nTask_30101]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_30101]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_30101]["DialogId"] = 10042
rwtTask[nTask_30101]["HeroId"] = 301
--rwtTask[nTask_30101]["TaskNpc"] = 1000

rwtTask[nTask_30102] = {}
rwtTask[nTask_30102]["Title"] = tLuaText[LANGUAGE_CONFIG][20125]
rwtTask[nTask_30102]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_30102]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_30102]["DialogId"] = 10043
rwtTask[nTask_30102]["HeroId"] = 301
--rwtTask[nTask_30102]["TaskNpc"] = 1000

rwtTask[nTask_30103] = {}
rwtTask[nTask_30103]["Title"] = tLuaText[LANGUAGE_CONFIG][20126]
rwtTask[nTask_30103]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_30103]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_30103]["DialogId"] = 10044
rwtTask[nTask_30103]["HeroId"] = 301
--rwtTask[nTask_30103]["TaskNpc"] = 1000

-------------------302玫瑰舞姬-----------------
rwtTask[nTask_30201] = {}
rwtTask[nTask_30201]["Title"] = tLuaText[LANGUAGE_CONFIG][20127]
rwtTask[nTask_30201]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_30201]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_30201]["DialogId"] = 10045
rwtTask[nTask_30201]["HeroId"] = 302
--rwtTask[nTask_30201]["TaskNpc"] = 1000

rwtTask[nTask_30202] = {}
rwtTask[nTask_30202]["Title"] = tLuaText[LANGUAGE_CONFIG][20128]
rwtTask[nTask_30202]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_30202]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_30202]["DialogId"] = 10046
rwtTask[nTask_30202]["HeroId"] = 302
--rwtTask[nTask_30202]["TaskNpc"] = 1000

rwtTask[nTask_30203] = {}
rwtTask[nTask_30203]["Title"] = tLuaText[LANGUAGE_CONFIG][20129]
rwtTask[nTask_30203]["TaskType"] = CONST_TASK_TYPE.CHANGE_CLASS
rwtTask[nTask_30203]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[nTask_30203]["DialogId"] = 10047
rwtTask[nTask_30203]["HeroId"] = 302
--rwtTask[nTask_30203]["TaskNpc"] = 1000