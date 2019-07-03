--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--树心城副本（剧情）


--endregion

--=====================副本相关======================
--genid分配
--NPC组：3044001-3044100
--怪物组：3044101-3044200
--机关：3044201-3044300

--副本内玩家数据
local tCopyMap_ShuXinChengUserData = {}
local nUserId = nil


--副本ID
--第一层
local nCopyMap_Floor1 = 3044
--第二层
local nCopyMap_Floor2 = 3045
--第三层
local nCopyMap_Floor3 = 3046

--进入副本时需要创建的NPC、monster列表
local tDynaGenId = {}

--进入副本NPC
local nNpcGroup_CopyMap = 50028
local nNpcGroup_GenId_CopyMap = 3044001

--切换剧情、普通本任务
local nChangeNpcTaskID = 10405


--==============================数据定义=============================
-------------------------对白、动画-----------------------------
--对白
local nDialog_1 = 5263     --进入副本对白
local nDialog_2 = 5264     --魅魔战斗前对白
local nDialog_3 = 5265     --魅魔战斗后对白(动画)
local nDialog_4 = 5266     --精灵战士战斗后对白
local nDialog_5 = 5267     --石像鬼战斗前对白
local nDialog_6 = 5268     --蜘蛛女王艾达
local nDialog_7 = 5269     --蜘蛛女王战后对白
local nDialog_8 = 5270     --精灵弓箭手战斗后对白
local nDialog_9 = 5271     --进入第三层后出现机关的动画对白1
local nDialog_10 = 5272     --进入第三层后出现机关的动画对白2
local nDialog_11 = 5273   --进入第三层后出现机关的动画对白3
local nDialog_12 = 5280     --石像鬼战斗后对白
local nDialog_CopyLock1 = 5278     --未接到主线时对白
local nDialog_CopyLock2 = 5279     --完成主线未接受佣兵对白


--动画
--local nOperPlay_1 = 16201       --蜘蛛女王场景动画
--local nOperPlay_2 = 16001       --查看精灵动画
local nOperPlay_3 = 16101       --第二层魅魔战斗后动画
local nOperPlay_4 = 16002       --第三层陷阱动画
--------------------------NPC组-----------------------------
--陷阱
--4个传送点
local nTrapFloor_1 = 30346       --1层-2层
local nTrapFloor_1_GenId = 3044002
local nTrapFloor_2 = 30347       --2层-1层
local nTrapFloor_2_GenId = 3044003
local nTrapFloor_3 = 30348       --2层-3层
local nTrapFloor_3_GenId = 3044004
--local nTrapFloor_4 = 30349       --3层-2层
--local nTrapFloor_4_GenId = 3044005

--local nTrap_5 = 30350            --boss剧情
--local nTrap_5_GenId = 3044006
--table.insert(tDynaGenId,nTrap_5_GenId)

--第二层查看精灵剑士动画陷阱
local nTrap_6 = 30356           
local nTrap_6_GenId = 3044009
table.insert(tDynaGenId,nTrap_6_GenId)

--宝箱
--local nTreaBox_1 = 40082
--local nTreaBox_1_GenId = 3044007
--table.insert(tDynaGenId,nTreaBox_1_GenId)

--local nTreaBox_2 = 40083
--local nTreaBox_2_GenId = 3044008
--table.insert(tDynaGenId,nTreaBox_2_GenId)
local tTreaBox = {}
local tTreaBoxGen = {}
--第一层固定刷怪物宝箱，第二层第一个位置固定刷普通宝箱，后面2个随机一个怪物宝箱和普通宝箱，第三层固定刷普通宝箱

--树海迷箱（普通）(固定生成)
tTreaBox.Box1 = 40082
tTreaBoxGen.Box1 = 3044007
tTreaBox.Box2 = 40249
tTreaBoxGen.Box2 = 3044008
table.insert(tDynaGenId,tTreaBoxGen.Box1)
table.insert(tDynaGenId,tTreaBoxGen.Box2)
--树海迷箱（怪物宝箱）
tTreaBox.MonsterBox1 = 40083
--固定生成1个怪物宝箱
tTreaBoxGen.MonsterBox1 = 3044010
table.insert(tDynaGenId,tTreaBoxGen.MonsterBox1)

--树海迷箱（普通）(随机生成)
tTreaBox.Box3 = 40250
--2个普通宝箱随机1个
tTreaBoxGen.RandomBox1 = {3044011,3044012}
--剩下一个生成怪物宝箱
tTreaBox.MonsterBox2 = 40206
tTreaBoxGen.RandomBox2 = 3044013

---------------npcid---------------
local nNpc_1 = 3288     --精灵族剑士
local nNpc_2 = 3289     --蜘蛛女王艾达	
local nNpc_3 = 3293     --精灵弓箭手	

--------------------------monster_group------------------------------
local nMonsterGroup_1 = 200263       --魅魔
local nMonsterGroup_1_GenId = 3044101

local nMonsterGroup_2 = 200264       --精灵战士
local tMonsterGroup_2_GenId = {3044102,3044106}

local nMonsterGroup_3 = 200265         --精灵弓箭手
local tMonsterGroup_3_GenId = {3044103,3044107}

local nMonsterGroup_4 = 200266       --恶魔修帝
local nMonsterGroup_4_GenId = 3044104

local nMonsterGroup_5 = 200267       --绿林花妖
local tMonsterGroup_5_GenId = {3044105,3044108}

--local nMonsterGroup_7 = 200269       --精灵弓箭手
--local nMonsterGroup_7_GenId = 3044107
--table.insert(tMonsterGroup_JingLing,nMonsterGroup_7)

--local nMonsterGroup_8 = 200270       --绿林花妖

local nMonsterGroup_6 = 200268       --双枪毒蝎
local nMonsterGroup_6_GenId = {3044110,3044111,3044112,3044113}

local nMonsterGroup_Boss = 200271       --蜘蛛女王
local nMonsterGroup_Boss_GenId = 3044109

--利齿魔箱（固定生成）
local nMonsterGroup_BoxMonster_1 = 200439
local nMonsterGroup_BoxMonster_GenId_1 = 3044114
--利齿魔箱（随机生成）
local nMonsterGroup_BoxMonster_2 = 200440
local nMonsterGroup_BoxMonster_GenId_2 = 3044115
-------------------------monster------------------------------
local nMonster_1 = 1000255        --绿林花妖
local nMonster_2 = 1000256        --精灵战士
local nMonster_3 = 1000257        --精灵弓箭手
local nMonster_4 = 1000258        --魅魔
local nMonster_5 = 1000259        --恶魔修帝.
local nMonster_6 = 1000271        --蝎子
local nMonster_Boss = 1000260     --蜘蛛女王

--利齿魔箱（固定生成）
local nMonste_BoxMonster_1 = 1000751
--利齿魔箱（随机生成）
local nMonste_BoxMonster_2 = 1000752

---------------------------坐标点---------------------
--1层-2层电梯切图后坐标
local sPos_1To2 = "820.03,13.63,91.74"
--2层-1层电梯切图后坐标
local sPos_2To1 = "1055.50,-0.99,149.73"
--2层-3层电梯切图后坐标
local sPos_2To3 = "39.31,14.17,60.78"
----3层-2层电梯切图后坐标
--local sPos_3To2 = "1055.50,-0.99,149.73"


-------------------------------奖励id---------------
local tAwardId = {}
--普通宝箱奖励
--普通宝箱1
tAwardId.NormalBox1 = 1000099
--普通宝箱2
tAwardId.NormalBox2 = 1000470
--普通宝箱3
tAwardId.NormalBox3 = 1000471
--宝箱怪奖励
tAwardId.BoxMonster = 1000100

--魅魔掉落奖励
local nAwardId_MeiMo = 1000163

--石像鬼掉落奖励
local nAwardId_ShiXiangGui = 1000164

--BOSS掉落奖励
local nAwardId_Boss = 1000165

--副本通关奖励
local nAwardId_PassMap = 1000166

-------------------------------副本目标---------------
--进入第二层
local nCopyTarget_1 = 60022
--击败魅魔
local nCopyTarget_2 = 60023
--击败石像鬼
local nCopyTarget_3 = 60024
--下一站，树心殿
local nCopyTarget_5 = 60070
--击败蜘蛛女王
local nCopyTarget_4 = 60055

---------------------------机关id--------------------
--进入第三层动画后出现怨灵墙
local nValve_1 = 1031
local nValve_1_GenId = 3044201

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
rwtCopyMapMission[nCopyMap_Floor1]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMap_Floor1]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID

rwtCopyMapMission[nCopyMap_Floor1]["TargetStepNum"] = 5 
rwtCopyMapMission[nCopyMap_Floor1]["Target1"] = {nCopyTarget_1}
rwtCopyMapMission[nCopyMap_Floor1]["Target2"] = {nCopyTarget_2}
rwtCopyMapMission[nCopyMap_Floor1]["Target3"] = {nCopyTarget_3}
rwtCopyMapMission[nCopyMap_Floor1]["Target4"] = {nCopyTarget_5}
rwtCopyMapMission[nCopyMap_Floor1]["Target5"] = {nCopyTarget_4}
rwtCopyMapMission[nCopyMap_Floor1]["Target99"] = {60072}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_1
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = false
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "Oper_4_State"
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = false
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "Valve1_State"

rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tTreaBoxGen.RandomBox1[1]
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "737.40,11.79,141.58"
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tTreaBoxGen.RandomBox1[2]
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "703.46,12.72,198.11"
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMap_Floor1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tTreaBoxGen.RandomBox2

--rwtCopyMapMission[nCopyMap_Floor1]["MapInitFunc"] = function()
--    CopyMap_ShuXinCheng_InitMap()
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

----3层-2层
--rwtNpcGroup[nTrapFloor_4] = rwtNpcGroup[nTrapFloor_4] or {}
--rwtNpcGroup[nTrapFloor_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrapFloor_4]["TrapFunc"] = function()
--    rwChangeScene(nCopyMap_Floor2,sPos_2To3)
--end

----Boss剧情陷阱
--rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}
--rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_5]["TrapFunc"] = function()
--    --对白代替
----    rwOpenNpcChatDialog(nDialog_6)
--    rwStoryTrigger(nOperPlay_1,2,0)
--    --触发剧情后删除陷阱
--    if rwHasGenEvent(nTrap_5_GenId) then
--        rwDelGenEvent(nTrap_5_GenId)
--    end
--end

--第二层查看精灵剑士动画陷阱
rwtNpcGroup[nTrap_6] = rwtNpcGroup[nTrap_6] or {}
rwtNpcGroup[nTrap_6]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_6]["DelTrap"] = 1
rwtNpcGroup[nTrap_6]["Awards"] = {}  
rwtNpcGroup[nTrap_6]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nOperPlay_3
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_6]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

---------------宝箱------------------
--普通宝箱1
rwtNpcGroup[tTreaBox.Box1] = rwtNpcGroup[tTreaBox.Box1] or {}
rwtNpcGroup[tTreaBox.Box1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tTreaBox.Box1]["Awards"] = {}
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"] = {}
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreaBox.Box1
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTreaBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalBox1 
--普通宝箱2
rwtNpcGroup[tTreaBox.Box2] = rwtNpcGroup[tTreaBox.Box2] or {}
rwtNpcGroup[tTreaBox.Box2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tTreaBox.Box2]["Awards"] = {}
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"] = {}
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreaBox.Box2
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTreaBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalBox2
--普通宝箱3
rwtNpcGroup[tTreaBox.Box3] = rwtNpcGroup[tTreaBox.Box3] or {}
rwtNpcGroup[tTreaBox.Box3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tTreaBox.Box3]["Awards"] = {}
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"] = {}
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTreaBox.Box3
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTreaBox.Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalBox3

--怪物宝箱（固定生成）
rwtNpcGroup[tTreaBox.MonsterBox1] = rwtNpcGroup[tTreaBox.MonsterBox1] or {}
rwtNpcGroup[tTreaBox.MonsterBox1]["NotDel"] = 1
rwtNpcGroup[tTreaBox.MonsterBox1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tTreaBox.MonsterBox1]["Awards"] = {}
rwtNpcGroup[tTreaBox.MonsterBox1]["Awards"]["Events"] = {}
rwtNpcGroup[tTreaBox.MonsterBox1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreaBox.MonsterBox1]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTreaBox.MonsterBox1]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_BoxMonster_GenId_1 --宝箱怪物

function CopyMap_ShuXinCheng_DelBox1()
    if rwHasGenEvent(tTreaBoxGen.MonsterBox1) then
        rwDelGenEvent(tTreaBoxGen.MonsterBox1)
    end
end
rwtMonsterGroup_Func[nMonsterGroup_BoxMonster_1] = rwtMonsterGroup_Func[nMonsterGroup_BoxMonster_1] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_BoxMonster_1],CopyMap_ShuXinCheng_DelBox1)

--怪物宝箱(随机生成)
rwtNpcGroup[tTreaBox.MonsterBox2] = rwtNpcGroup[tTreaBox.MonsterBox2] or {}
rwtNpcGroup[tTreaBox.MonsterBox2]["NotDel"] = 1
rwtNpcGroup[tTreaBox.MonsterBox2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tTreaBox.MonsterBox2]["Awards"] = {}
rwtNpcGroup[tTreaBox.MonsterBox2]["Awards"]["Events"] = {}
rwtNpcGroup[tTreaBox.MonsterBox2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTreaBox.MonsterBox2]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTreaBox.MonsterBox2]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_BoxMonster_GenId_2 --宝箱怪物

function CopyMap_ShuXinCheng_DelBox2()
    if rwHasGenEvent(tTreaBoxGen.RandomBox2) then
        rwDelGenEvent(tTreaBoxGen.RandomBox2)
    end
end
rwtMonsterGroup_Func[nMonsterGroup_BoxMonster_2] = rwtMonsterGroup_Func[nMonsterGroup_BoxMonster_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_BoxMonster_2],CopyMap_ShuXinCheng_DelBox2)
-----------函数-------------------

----------------------怪物------------------------
----精灵族怪物战斗胜利后出对白和加buff，对白后出提示
----精灵战士
--rwtMonsterGroup[nMonsterGroup_2] = rwtMonsterGroup[nMonsterGroup_2] or {}
--rwtMonsterGroup[nMonsterGroup_2]["BattleWin"] = function(nMonsterGroupId,nMonsterGroupType,nGenId)
--    --战斗胜利后弹出精灵族感谢对白
--    rwOpenNpcChatDialog(nDialog_4)
--    --加buff
--    local nBuffId = CopyMap_ShuXinCheng_CheckBuff()
--    rwStatusAdd(nBuffId)
--end

----精灵弓箭手
--rwtMonsterGroup[nMonsterGroup_3] = rwtMonsterGroup[nMonsterGroup_3] or {}
--rwtMonsterGroup[nMonsterGroup_3]["BattleWin"] = function(nMonsterGroupId,nMonsterGroupType,nGenId)
--    --战斗胜利后弹出精灵族感谢对白
--    rwOpenNpcChatDialog(nDialog_8)
--    --加buff
--    local nBuffId = CopyMap_ShuXinCheng_CheckBuff()
--    rwStatusAdd(nBuffId)
--end

----魅魔
--rwtMonsterGroup[nMonsterGroup_1] = rwtMonsterGroup[nMonsterGroup_1] or {}
--rwtMonsterGroup[nMonsterGroup_1]["BattleWin"] = function(nMonsterGroupId,nMonsterGroupType,nGenId)
--    --战斗胜利播放动画
--    rwStoryTrigger(nOperPlay_3,2)
--end
----------------------对白-------------------------
rwtDialog[nDialog_4] = rwtDialog[nDialog_4] or {}
rwtDialog[nDialog_4]["DialogEndInit"] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"][1]["UserMsg"] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10019]

rwtDialog[nDialog_8] = rwtDialog[nDialog_8] or {}
rwtDialog[nDialog_8]["DialogEndInit"] = {}
rwtDialog[nDialog_8]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_8]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_8]["DialogEndInit"]["Events"][1]["UserMsg"] = {}
rwtDialog[nDialog_8]["DialogEndInit"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10019]


----------------------副本目标-------------------------
--树心城，解封！
rwtTarget[nCopyTarget_1] = {}
rwtTarget[nCopyTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20069]
rwtTarget[nCopyTarget_1]["ReqTrap"] = nTrapFloor_1
rwtTarget[nCopyTarget_1]["ReqCount"] = 1
--击败魅魔
rwtTarget[nCopyTarget_2] = {}
rwtTarget[nCopyTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20070]
rwtTarget[nCopyTarget_2]["KillMonsterGroup"] = nMonsterGroup_1
rwtTarget[nCopyTarget_2]["ReqCount"] = 1
--击败石像鬼
rwtTarget[nCopyTarget_3] = {}
rwtTarget[nCopyTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20071]
rwtTarget[nCopyTarget_3]["KillMonsterGroup"] = nMonsterGroup_4
rwtTarget[nCopyTarget_3]["ReqCount"] = 1
--下一站，树心殿
rwtTarget[nCopyTarget_5] = {}
rwtTarget[nCopyTarget_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20072]
rwtTarget[nCopyTarget_5]["ReqTrap"] = nTrapFloor_3
rwtTarget[nCopyTarget_5]["ReqCount"] = 1
--击败蜘蛛女王
rwtTarget[nCopyTarget_4] = {}
rwtTarget[nCopyTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20073]
rwtTarget[nCopyTarget_4]["KillMonsterGroup"] = nMonsterGroup_Boss
rwtTarget[nCopyTarget_4]["ReqCount"] = 1



--==============================函数=================================
--随机buff
function CopyMap_ShuXinCheng_CheckBuff()
    local nRandom = math.random(1,#tStatus)
    local nBuffId = tStatus[nRandom]
    return nBuffId
end

--精灵剑士死亡函数
function CopyMap_ShuXinCheng_JianShiBeKill()
    --战斗胜利后弹出精灵族感谢对白
    rwOpenNpcChatDialog(nDialog_4)
    --加buff
    local nBuffId = CopyMap_ShuXinCheng_CheckBuff()
    rwStatusAdd(nBuffId)
end
rwtMonsterGroup_Func[nMonsterGroup_2] = rwtMonsterGroup_Func[nMonsterGroup_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_2],CopyMap_ShuXinCheng_JianShiBeKill)


--精灵弓箭手死亡函数
function CopyMap_ShuXinCheng_SheShouBeKill()
    --战斗胜利后弹出精灵族感谢对白
    rwOpenNpcChatDialog(nDialog_8)
    --加buff
    local nBuffId = CopyMap_ShuXinCheng_CheckBuff()
    rwStatusAdd(nBuffId)
end
rwtMonsterGroup_Func[nMonsterGroup_3] = rwtMonsterGroup_Func[nMonsterGroup_3] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_3],CopyMap_ShuXinCheng_SheShouBeKill)


--恶魔修帝死亡函数
function CopyMap_ShuXinCheng_EMoXiuDiBeKill()
    --击败怪物后生成前往第三层的电梯
    if not rwHasGenEvent(nTrapFloor_3_GenId) then
        rwAddGenEvent(nTrapFloor_3_GenId)
    end
    
end
rwtMonsterGroup_Func[nMonsterGroup_4] = rwtMonsterGroup_Func[nMonsterGroup_4] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_4],CopyMap_ShuXinCheng_EMoXiuDiBeKill)

----boss死亡函数
--function CopyMap_ShuXinCheng_BossBeKill()
--    --Boss死亡后通关副本
--    rwLinkPassCopyMap(nCopyMap_Floor1)
--end
--rwtMonsterGroup_Func[nMonsterGroup_Boss] = rwtMonsterGroup_Func[nMonsterGroup_Boss] or {}
--table.insert(rwtMonsterGroup_Func[nMonsterGroup_Boss],CopyMap_ShuXinCheng_BossBeKill)

--进入第三层后播放动画


--第三层动画结束函数
function CopyMap_ShuXinCheng_PlayOper_4_End()
--    --创建怨灵墙
--    local nUserId = rwUserGetId()
--    if rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and not rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Valve1_State"] then
--        rwAddGenEvent(nValve_1_GenId)
--        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Valve1_State"] = true
--    end
    rwAddGenEvent(nValve_1_GenId)
end
rwtCGFinish[nOperPlay_4] = rwtCGFinish[nOperPlay_4] or {}
table.insert(rwtCGFinish[nOperPlay_4],CopyMap_ShuXinCheng_PlayOper_4_End)

--副本初始化
--function CopyMap_ShuXinCheng_InitMap()
--    rwPrintLog("树心城副本初始化开始")
--    --进入副本播放对白
--    rwOpenNpcChatDialog(nDialog_1)
--    nUserId = rwUserGetId()
--    tCopyMap_ShuXinChengUserData[nUserId] = {}
--    --创建副本NPC组
--    for _,v in pairs(tDynaGenId) do
--        if not rwHasGenEvent(v) then
--            rwAddGenEvent(v)
--        end
--    end
--    --场景动画初始状态为未播放
--    tCopyMap_ShuXinChengUserData[nUserId]["Oper_4_State"] = false
--    --怨灵墙机关初始状态为未创建
--    tCopyMap_ShuXinChengUserData[nUserId]["Valve1_State"] = false
--    rwPrintLog("树心城副本初始化完毕")
--end

function CopyMap_ShuXinCheng_PlayOper_4()
--    local nUserId = rwUserGetId()
--    if rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and not rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Oper_4_State"] then
--        rwStoryTrigger(nOperPlay_4,2,0)
--        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Oper_4_State"] = true
--    end
    rwStoryTrigger(nOperPlay_4,2,0)
    
end
rwtChangeSceneSucc_Func[nCopyMap_Floor3] = rwtChangeSceneSucc_Func[nCopyMap_Floor3] or {}
table.insert(rwtChangeSceneSucc_Func[nCopyMap_Floor3],CopyMap_ShuXinCheng_PlayOper_4)