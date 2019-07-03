--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--树心城副本（普通）


--endregion

--=====================副本相关======================
--genid分配
--NPC组：3048001-3048100
--怪物组：3048101-3048200
--机关：3048201-3048300

--副本内玩家数据
local tCopyMap_NorMalShuXinChengUserData = {}
local nUserId = nil


--副本ID
--第一层
local nCopyMap_Floor1 = 3048
--第二层
local nCopyMap_Floor2 = 3049
--第三层
local nCopyMap_Floor3 = 3050

--进入副本时需要创建的NPC、monster列表
local tDynaGenId = {}

--进入副本NPC
local nNpcGroup_CopyMap = 50030
local nNpcGroup_GenId_CopyMap = 3048001

--切换剧情、普通本任务
local nChangeNpcTaskID = 10405

--==============================数据定义=============================
-------------------------对白、动画-----------------------------
--对白
local nDialog_1 = 5274     --进入副本对白
local nDialog_2 = 5275     --精灵剑士战后对白
local nDialog_3 = 5276     --精灵射手战后对白
local nDialog_4 = 5277     --打败boss后对白
local nDialog_CopyLock1 = 5278     --未接到主线时对白
local nDialog_CopyLock2 = 5279     --完成主线未接受佣兵对白


--------------------------NPC组-----------------------------
--陷阱
--4个传送点
local nTrapFloor_1 = 30357       --1层-2层
local nTrapFloor_1_GenId = 3048002
local nTrapFloor_2 = 30358       --2层-1层
local nTrapFloor_2_GenId = 3048003
local nTrapFloor_3 = 30359       --2层-3层
local nTrapFloor_3_GenId = 3048004

--------------------------monster_group------------------------------
local nMonsterGroup_1 = 200279       --魅魔
local nMonsterGroup_1_GenId = 3048101

local nMonsterGroup_2 = 200280       --精灵战士
local tMonsterGroup_2_GenId = {3048102,3048103}

local nMonsterGroup_3 = 200281         --精灵弓箭手
local tMonsterGroup_3_GenId = {3048104,3048105}

local nMonsterGroup_4 = 200282       --恶魔修帝
local nMonsterGroup_4_GenId = 3048106

local nMonsterGroup_5 = 200283       --绿林花妖
local tMonsterGroup_5_GenId = {3048107,3048108}

local nMonsterGroup_6 = 200284       --双枪毒蝎
local nMonsterGroup_6_GenId = {3048109,3048110,3048111,3048112}

local nMonsterGroup_Boss = 200285       --蜘蛛女王
local nMonsterGroup_Boss_GenId = 3048113


-------------------------monster------------------------------
local nMonster_1 = 1000272        --绿林花妖
local nMonster_2 = 1000273        --精灵战士
local nMonster_3 = 1000274        --精灵弓箭手
local nMonster_4 = 1000275        --魅魔
local nMonster_5 = 1000276        --恶魔修帝.
local nMonster_6 = 1000277        --蝎子
local nMonster_Boss = 1000278     --蜘蛛女王


---------------------------坐标点---------------------
--1层-2层电梯切图后坐标
local sPos_1To2 = "820.03,13.63,91.74"
--2层-1层电梯切图后坐标
local sPos_2To1 = "1055.50,-0.99,149.73"
--2层-3层电梯切图后坐标
local sPos_2To3 = "39.31,14.17,60.78"


-------------------------------副本目标---------------
--进入第二层
local nCopyTarget_1 = 60047
--击败魅魔
local nCopyTarget_2 = 60048
--击败石像鬼
local nCopyTarget_3 = 60049
--下一个目标
local nCopyTarget_5 = 60071
--击败蜘蛛女王
local nCopyTarget_4 = 60050

---------------------------机关id--------------------
--第三层怨灵墙
local nValve_1 = 1033
local nValve_1_GenId = 3048201
table.insert(tDynaGenId,nValve_1_GenId)

-------------------------------其他数据-----------
--BUFF列表(临时)
local tStatus = {500502,500602,500701,501001}
--==============================逻辑=================================
--------------------------副本相关----------------------
--进入副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["UnlockDialog"] = nDialog_CopyLock1
rwtNpcGroup[nNpcGroup_CopyMap]["Dialog"] = nDialog_CopyLock2
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMap_Floor1}


--副本
rwtCopyMapMission[nCopyMap_Floor1] = rwtCopyMapMission[nCopyMap_Floor1] or {}
rwtCopyMapMission[nCopyMap_Floor1]["ReqLev"] = 1
rwtCopyMapMission[nCopyMap_Floor1]["Difficulty"] = 1

rwtCopyMapMission[nCopyMap_Floor1]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMap_Floor1]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMap_Floor1]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMap_Floor1]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID

rwtCopyMapMission[nCopyMap_Floor1]["TargetStepNum"] = 5 
rwtCopyMapMission[nCopyMap_Floor1]["Target1"] = {nCopyTarget_1}
rwtCopyMapMission[nCopyMap_Floor1]["Target2"] = {nCopyTarget_2}
rwtCopyMapMission[nCopyMap_Floor1]["Target3"] = {nCopyTarget_3}
rwtCopyMapMission[nCopyMap_Floor1]["Target4"] = {nCopyTarget_5}
rwtCopyMapMission[nCopyMap_Floor1]["Target5"] = {nCopyTarget_4}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_1
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId

--rwtCopyMapMission[nCopyMap_Floor1]["MapInitFunc"] = function()
--    CopyMap_NorMalShuXinCheng_InitMap()
--end

---------------------副本电梯（陷阱）-----------------------------
--1层-2层
rwtNpcGroup[nTrapFloor_1] = rwtNpcGroup[nTrapFloor_1] or {}
rwtNpcGroup[nTrapFloor_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapFloor_1]["TrapChangeScene"] = {}    
rwtNpcGroup[nTrapFloor_1]["TrapChangeScene"]["MapId"] = nCopyMap_Floor2  
rwtNpcGroup[nTrapFloor_1]["TrapChangeScene"]["Pos"] = sPos_1To2   

--2层-1层
rwtNpcGroup[nTrapFloor_2] = rwtNpcGroup[nTrapFloor_2] or {}
rwtNpcGroup[nTrapFloor_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapFloor_2]["TrapChangeScene"] = {}    
rwtNpcGroup[nTrapFloor_2]["TrapChangeScene"]["MapId"] = nCopyMap_Floor1  
rwtNpcGroup[nTrapFloor_2]["TrapChangeScene"]["Pos"] = sPos_2To1   

--2层-3层
rwtNpcGroup[nTrapFloor_3] = rwtNpcGroup[nTrapFloor_3] or {}
rwtNpcGroup[nTrapFloor_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapFloor_3]["TrapChangeScene"] = {}    
rwtNpcGroup[nTrapFloor_3]["TrapChangeScene"]["MapId"] = nCopyMap_Floor3  
rwtNpcGroup[nTrapFloor_3]["TrapChangeScene"]["Pos"] = sPos_2To3   


----------------------对白-------------------------
rwtDialog[nDialog_2] = rwtDialog[nDialog_2] or {}
rwtDialog[nDialog_2]["DialogEndInit"] = {}
rwtDialog[nDialog_2]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_2]["DialogEndInit"]["Events"][1]["UserMsg"] = {}
rwtDialog[nDialog_2]["DialogEndInit"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10019]

rwtDialog[nDialog_3] = rwtDialog[nDialog_3] or {}
rwtDialog[nDialog_3]["DialogEndInit"] = {}
rwtDialog[nDialog_3]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_3]["DialogEndInit"]["Events"][1]["UserMsg"] = {}
rwtDialog[nDialog_3]["DialogEndInit"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10019]


----------------------副本目标-------------------------
--进入第二层
rwtTarget[nCopyTarget_1] = {}
rwtTarget[nCopyTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20036]
rwtTarget[nCopyTarget_1]["ReqTrap"] = nTrapFloor_1
rwtTarget[nCopyTarget_1]["ReqCount"] = 1

--击败魅魔
rwtTarget[nCopyTarget_2] = {}
rwtTarget[nCopyTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20037]
rwtTarget[nCopyTarget_2]["KillMonsterGroup"] = nMonsterGroup_1
rwtTarget[nCopyTarget_2]["ReqCount"] = 1
--击败石像鬼
rwtTarget[nCopyTarget_3] = {}
rwtTarget[nCopyTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20038]
rwtTarget[nCopyTarget_3]["KillMonsterGroup"] = nMonsterGroup_4
rwtTarget[nCopyTarget_3]["ReqCount"] = 1
--下一个目标
rwtTarget[nCopyTarget_5] = {}
rwtTarget[nCopyTarget_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20039]
rwtTarget[nCopyTarget_5]["ReqTrap"] = nTrapFloor_3
rwtTarget[nCopyTarget_5]["ReqCount"] = 1
--击败蜘蛛女王
rwtTarget[nCopyTarget_4] = {}
rwtTarget[nCopyTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20040]
rwtTarget[nCopyTarget_4]["KillMonsterGroup"] = nMonsterGroup_Boss
rwtTarget[nCopyTarget_4]["ReqCount"] = 1



--==============================函数=================================
--随机buff
function CopyMap_NorMalShuXinCheng_CheckBuff()
    local nRandom = math.random(#tStatus)
    local nBuffId = tStatus[nRandom]
    return nBuffId
end

--精灵剑士死亡函数
function CopyMap_NorMalShuXinCheng_JianShiBeKill()
    --战斗胜利后弹出精灵族感谢对白
    rwOpenNpcChatDialog(nDialog_2)
    --加buff
    local nBuffId = CopyMap_NorMalShuXinCheng_CheckBuff()
    rwStatusAdd(nBuffId)
end
rwtMonsterGroup_Func[nMonsterGroup_2] = rwtMonsterGroup_Func[nMonsterGroup_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_2],CopyMap_NorMalShuXinCheng_JianShiBeKill)


--精灵弓箭手死亡函数
function CopyMap_NorMalShuXinCheng_SheShouBeKill()
    --战斗胜利后弹出精灵族感谢对白
    rwOpenNpcChatDialog(nDialog_3)
    --加buff
    local nBuffId = CopyMap_NorMalShuXinCheng_CheckBuff()
    rwStatusAdd(nBuffId)
end
rwtMonsterGroup_Func[nMonsterGroup_3] = rwtMonsterGroup_Func[nMonsterGroup_3] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_3],CopyMap_NorMalShuXinCheng_SheShouBeKill)

--恶魔修帝死亡函数
function CopyMap_ShuXinCheng_EMoXiuDiBeKill()
    --击败怪物后生成前往第三层的电梯
    if not rwHasGenEvent(nTrapFloor_3_GenId) then
        rwAddGenEvent(nTrapFloor_3_GenId)
    end
    
end
rwtMonsterGroup_Func[nMonsterGroup_4] = rwtMonsterGroup_Func[nMonsterGroup_4] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_4],CopyMap_ShuXinCheng_EMoXiuDiBeKill)

--boss死亡函数
function CopyMap_NorMalShuXinCheng_BossBeKill()
    --Boss死亡后通关副本
    rwLinkPassCopyMap(nCopyMap_Floor1)
end
rwtMonsterGroup_Func[nMonsterGroup_Boss] = rwtMonsterGroup_Func[nMonsterGroup_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Boss],CopyMap_NorMalShuXinCheng_BossBeKill)

----副本初始化
--function CopyMap_NorMalShuXinCheng_InitMap()
--    rwPrintLog("树心城普通副本初始化开始")
--    --进入副本播放对白
--    rwOpenNpcChatDialog(nDialog_1)
--    --创建副本NPC组
--    for _,v in pairs(tDynaGenId) do
--        if not rwHasGenEvent(v) then
--            rwAddGenEvent(v)
--        end
--    end
--    rwPrintLog("树心城普通副本初始化完毕")
--end