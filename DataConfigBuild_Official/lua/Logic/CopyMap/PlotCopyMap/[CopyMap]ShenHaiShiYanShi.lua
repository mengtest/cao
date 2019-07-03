--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--深海实验室副本

--endregion

-------------------------------------------------- 数据定义 ------------------------------------------------------------
--副本ID
local nCopyMapId = 3073

--宝箱
local nNpcGroup_Box1 = 40158
local nNpcGroup_Box2 = 40203
local nNpcGroup_Box3 = 40251

local nNpcGroup_Box_Gen1 = 3073001
local nNpcGroup_Box_Gen2 = 3073016
local nNpcGroup_Box_Gen3 = 3073017
local nNpcGroup_Box_Gen4 = 3073018			--怪物


--Npc  气泡：1071  talk 10086
local nNpc_XiaoYuRen = 3521
local nNpc_YangBoShi = 3522
local nNpc_MoXiYa = 3523


local nNpcGroup_XiaoYuRen = 20496
local nNpcGroup_XiaoYuRen_Gen = 3073002

local nNpcGroup_BoShi = 20508
local nNpcGroup_BoShi_Gen = 3073014

--机关
local nNpcGroup_Value = 1057
local nNpcGroup_Value_Gen = 3073003

--陷阱
local nNpcGroup_Trap1 = 30502				--上层吊篮				
local nNpcGroup_GenId_Trap1 = 3073004

local nNpcGroup_Trap2 = 30503				--下层吊篮				
local nNpcGroup_GenId_Trap2 = 3073005

local nNpcGroup_Trap3 = 30504				--空气墙前				
local nNpcGroup_GenId_Trap3 = 3073006

local nNpcGroup_Trap4 = 30505				--博士前				
local nNpcGroup_GenId_Trap4 = 3073007

------怪物--------

local nMonster_1 = 1000510	 			--怪物1     100176 1000831
local nMonsterGroup_1 = 200352 
local nMonsterGroup_1_Gen = 3073008

local nMonster_2 = 1000511 					--精英 海魔    100177 1000832
local nMonsterGroup_2 = 200353 
local nMonsterGroup_2_Gen = 3073009

local nMonster_3 = 1000512 					--合成怪 怪2   100178 1000833
local nMonsterGroup_3 = 200354 
local nMonsterGroup_3_Gen = 3073010

local nMonster_4 = 1000513 					--J博士    100179
local nMonsterGroup_4 = 200355 
local nMonsterGroup_4_Gen = 3073011

local nMonster_5 = 1000514					--默希娅   100180
local nMonsterGroup_5 = 200356
local nMonsterGroup_5_Gen = 3073012

local nMonster_6 = 1000748				--宝箱怪物 10020   蜗居鱼妖帕普 战后对白： 100217
local nMonsterGroup_6 = 200436
local nMonsterGroup_6_Gen = 3073015


--对白
local nDialog_1 = 6167 	--进副本
local nDialog_2 = 6168 	--海魔战后 100157
local nDialog_3 = 6169 	--空气墙前
local nDialog_4 = 6170 	--博士前 陷阱前
local nDialog_5 = 6171 	--博士前  陷阱后
local nDialog_6 = 6172 	--博士战后 100158
local nDialog_7 = 6173 	--默希娅战前 100159
local nDialog_8 = 6174 	--默希娅战后 100160

--奖励
local nAward_Box_1 = 1000343
local nAward_Box_2 = 1000472

--接入主线
--切换剧情、普通本任务
local nChangeNpcTaskID = 10525
local nNpcGroup_GenId_CopyMap = 3073013

-------------------------------------------------- 声明 ---------------------------------------------------------------

--进入副本NPC  3073013
rwtNpcGroup[50047] = {}
rwtNpcGroup[50047]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50047]["UnlockDialog"] =   6175 
rwtNpcGroup[50047]["Dialog"] =   6176
rwtNpcGroup[50047]["CopyMapList"] = {nCopyMapId}


--宝箱
rwtNpcGroup[nNpcGroup_Box1] = rwtNpcGroup[nNpcGroup_Box1] or {}  
rwtNpcGroup[nNpcGroup_Box1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box1
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1  

rwtNpcGroup[nNpcGroup_Box3] = rwtNpcGroup[nNpcGroup_Box3] or {}  
rwtNpcGroup[nNpcGroup_Box3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box3]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box3
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_2  

rwtNpcGroup[nNpcGroup_Box2] = rwtNpcGroup[nNpcGroup_Box2] or {}  
rwtNpcGroup[nNpcGroup_Box2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box2]["NotDel"] = 1
rwtNpcGroup[nNpcGroup_Box2]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[nNpcGroup_Box2]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_6_Gen

function CopyMap_ShenHai_BaoXiangGuai()
	if rwHasGenEvent(nNpcGroup_Box_Gen4) then
		rwDelGenEvent(nNpcGroup_Box_Gen4)
    end
end

rwtMonsterGroup_Func[nMonsterGroup_6] = rwtMonsterGroup_Func[nMonsterGroup_6] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_6],CopyMap_ShenHai_BaoXiangGuai)

--陷阱
rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nNpcGroup_Trap1] or {} --吊篮1-->2
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[nNpcGroup_Trap1]["ChangeMap"] = {3073,"60.97,-9.28,4.10"}

rwtNpcGroup[nNpcGroup_Trap2] = rwtNpcGroup[nNpcGroup_Trap2] or {} --吊篮2-->1
rwtNpcGroup[nNpcGroup_Trap2]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
rwtNpcGroup[nNpcGroup_Trap2]["ChangeMap"] = {3073,"56.20,-0.01,13.18"}

rwtNpcGroup[nNpcGroup_Trap3] = rwtNpcGroup[nNpcGroup_Trap3] or {}
rwtNpcGroup[nNpcGroup_Trap3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nNpcGroup_Trap3]["DelTrap"] = 1
rwtNpcGroup[nNpcGroup_Trap3]["Awards"] = {}  
rwtNpcGroup[nNpcGroup_Trap3]["Awards"]["Events"] = {}           
rwtNpcGroup[nNpcGroup_Trap3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Trap3]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nNpcGroup_Trap3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_3

rwtNpcGroup[nNpcGroup_Trap4] = rwtNpcGroup[nNpcGroup_Trap4] or {}
rwtNpcGroup[nNpcGroup_Trap4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nNpcGroup_Trap4]["DelTrap"] = 1
rwtNpcGroup[nNpcGroup_Trap4]["Awards"] = {}  
rwtNpcGroup[nNpcGroup_Trap4]["Awards"]["Events"] = {}           
rwtNpcGroup[nNpcGroup_Trap4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Trap4]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}          
rwtNpcGroup[nNpcGroup_Trap4]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 16802  
rwtNpcGroup[nNpcGroup_Trap4]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0  

function CopyMap_ShenHai_BoShi_Death()
	rwUpdateValveData(3073003,1,0,0)
	if rwHasGenEvent(nNpcGroup_GenId_Trap3) then
		rwDelGenEvent(nNpcGroup_GenId_Trap3)
    end
	if not rwHasGenEvent(nNpcGroup_BoShi_Gen) then
		rwAddGenEvent(nNpcGroup_BoShi_Gen)
    end
end

rwtMonsterGroup_Func[nMonsterGroup_4] = rwtMonsterGroup_Func[nMonsterGroup_4] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_4],CopyMap_ShenHai_BoShi_Death)


-------------------------------------------------- 副本 ---------------------------------------------------------------

rwtTarget[60130] = {}
rwtTarget[60130]["Title"] = tLuaText[LANGUAGE_CONFIG][21297]
rwtTarget[60130]["KillMonsterGroup"] = nMonsterGroup_2
rwtTarget[60130]["ReqCount"] = 1

rwtTarget[60131] = {}
rwtTarget[60131]["Title"] = tLuaText[LANGUAGE_CONFIG][21298]
rwtTarget[60131]["ReqTrap"] = nNpcGroup_Trap4
rwtTarget[60131]["ReqCount"] = 1

rwtTarget[60132] = {}
rwtTarget[60132]["Title"] = tLuaText[LANGUAGE_CONFIG][21299]
rwtTarget[60132]["KillMonsterGroup"] = nMonsterGroup_4
rwtTarget[60132]["ReqCount"] = 1

rwtTarget[60133] = {}
rwtTarget[60133]["Title"] = tLuaText[LANGUAGE_CONFIG][21300]
rwtTarget[60133]["KillMonsterGroup"] = nMonsterGroup_5
rwtTarget[60133]["ReqCount"] = 1


rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 4
rwtCopyMapMission[nCopyMapId]["Target1"] = {60130}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60131}
rwtCopyMapMission[nCopyMapId]["Target3"] = {60132}
rwtCopyMapMission[nCopyMapId]["Target4"] = {60133}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10525  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3073013 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_1

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = nNpcGroup_Box_Gen2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "71.37,-9.29,-5.9"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 310.19
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = nNpcGroup_Box_Gen3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "81.84,-8.015,44.32"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 139.3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nNpcGroup_Box_Gen4
