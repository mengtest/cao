--region *.lua
--Date 10/30
--副本ID 3034
--副本传送NPC 50004
--怪物ID 5个 1001051-1001060
--怪物组ID 8个 200121-200130
--物品ID 3个 7000031-7000051
--对话ID 2个 5021-5022
--陷阱ID 2个 30071- 30075
--NPCID1 个 3068
--NPCGROUP 20041-20045
--宝箱ID 40007
--GenID 3034001 - 
--endregion

local nCopyMapMissId_1 = 3034
local sPos_MagicWallReload ="-234.86,-21,-41.56"

local nTarget1 = 60031
local nTarget2 = 60032

local nChangeNpcTask = 10221
local nTempDataId = 1189
-------------------NPC群组ID-----------------
local nTrapId_1 = 30071  --发现萨米尔在吸收贪婪处的陷阱 
local nTrapId_2 = 30072  --水晶球处的陷阱

local nTrapId_3 = 30073  --魔法墙1
local nTrapId_4 = 30074  --魔法墙2
local nTrapId_5 = 30075  --结界
local nTrapId_Left = 30173 --左侧障碍
local nTrapId_Up = 30174 --萨米尔上方障碍
local nTrapId_Spairs = 30175 --楼梯障碍

local tLoadGenId = {}


local nNpc_Group_Samier = 20092
local nNpc_Group_DialogShuijing = 20093

local nNpc_Group_Shuijing = 60055  --水晶柱

local nNpc_Group_Tanlan = 20111 --贪婪
--宝箱ID
local nPandoraBox_1 = 40188
local nPandoraBox_2 = 40189
--奖励
local nAward_id_1 = 1000374
local nAward_id_2 = 1000457
 

--怪物组ID

local nMonsterGroup_1 =200121 -- 怪物组1
local nMonsterGroup_2 =200122 -- 怪物组2
local nMonsterGroup_3 =200123 -- 怪物组3
local nMonsterGroup_Heiqishi =200124 -- 黑骑士佩兰
local nMonsterGroup_5 =200128 --萨米尔ID
local nMonsterGroup_6 =200094 --怪物组5
local nMonsterGroup_7 =200095 --怪物组6
local nMonsterGroup_8 =200096 --怪物组7

local nMonsterGroup_Fashi =200125 --虚灵恶法师
local nMonsterGroup_Shixin = 200126 --狮心魔骑巴兹

local nMonsterGroup_Box = 200421 -- 宝箱怪
--机关ID
local nValveBarLeft = 1000
local nValveBarUp = 1001
local nValveBarStairs = 1002
local nValveSamier = 1003
local nValveDoor = 1004
local nValveWall = 1005
local nValveCrystal = 1006  

--GenID
local nGenId_Npcgroup_Rukou = 3034001
local nTrap_GenId_1 = 3034002 --发现萨米尔在吸收贪婪处的陷阱
local nTrap_GenId_2 = 3034003 --水晶球处的陷阱

local nTrap_GenId_3 = 3034004 --魔法墙1
local nTrap_GenId_4 = 3034005 --魔法墙2
local nTrap_GenId_5 = 3034006 --结界
table.insert(tLoadGenId,nTrap_GenId_1)

table.insert(tLoadGenId,nTrap_GenId_3)
--宝箱GENID
local nBoxGenId_1 = 3034036 
local nBoxGenId_2 = 3034037
local nBoxGenId_3 = 3034038

local nBoxGenId_Monster = 3034039  --怪物宝箱Genid

--3034009 - 3034015  4小怪+3精英
local nGenId_Monster_Fashi = 3034013
local nGenId_Monster_Shixin = 3034014
local nGenId_Monster_Samier = 3034016
local nGenId_Monster_Box = 3034035 --宝箱怪

local nGenId_Npcgroup_Samier = 3034017
local nGenId_Npcgroup_DialogShuijing = 3034018
local nGenId_Collect_Shuijingzhu = 3034019

table.insert(tLoadGenId,nGenId_Npcgroup_Samier)
table.insert(tLoadGenId,nGenId_Monster_Box)



--新GENID
--障碍处陷阱
local nGenId_Trap_ValveLeft = 3034020       --萨米尔左侧陷阱
local nGenId_Trap_ValveUp = 3034021         --萨米尔左侧陷阱
local nGenId_Trap_ValveSpairs = 3034022     --楼梯处陷阱
--贪婪GENID
local nGenId_Npcgroup_Tanlan = 3034023      --贪婪
--机关GENID
local nGenId_Valve_Left = 3034024           --萨米尔左侧障碍物
local nGenId_Valve_Up = 3034025             --萨米尔上册障碍物
local nGenId_Valve_Spairs = 3034026         --楼梯障碍物
local nGenId_Valve_Samier = 3034027         --萨米尔结界
local nGenId_Valve_Door = 3034028           --暗黑法师门
local nGenId_Valve_Wall = 3034029           --暗黑法师气墙
local nGenId_Valve_Crystal = 3034030        --水晶柱
table.insert(tLoadGenId,nGenId_Trap_ValveLeft)
table.insert(tLoadGenId,nGenId_Trap_ValveUp)
table.insert(tLoadGenId,nGenId_Npcgroup_Tanlan)
table.insert(tLoadGenId,nGenId_Valve_Left)
table.insert(tLoadGenId,nGenId_Valve_Up)
table.insert(tLoadGenId,nGenId_Valve_Samier)
table.insert(tLoadGenId,nGenId_Valve_Door)



--机关 
tValve[nValveBarLeft] = tValve[nValveBarLeft] or {}
tValve[nValveBarLeft]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValveBarUp] = tValve[nValveBarUp] or {}
tValve[nValveBarUp]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValveBarStairs] = tValve[nValveBarStairs] or {}
tValve[nValveBarStairs]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValveSamier] = tValve[nValveSamier] or {}
tValve[nValveSamier]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValveDoor] = tValve[nValveDoor] or {}
tValve[nValveDoor]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValveWall] = tValve[nValveWall] or {}
tValve[nValveWall]["Type"] = CONST_VALVE_TYPE.MAGICARRAY



--对话ID 
local nDialogID_1 = 5023
local nDialogID_2 = 5024

--简单难度副本
rwtCopyMapMission[nCopyMapMissId_1] = rwtCopyMapMission[nCopyMapMissId_1] or {}
rwtCopyMapMission[nCopyMapMissId_1]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapMissId_1]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapMissId_1]["Target2"] = {nTarget2}
rwtCopyMapMission[nCopyMapMissId_1]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapMissId_1]["EnterNpcMap"] = 2002 --传送NPC所在地图
rwtCopyMapMission[nCopyMapMissId_1]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapMissId_1]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapMissId_1]["EnterNpcGen"] = 3034001 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapMissId_1]["NotCreate"] = 1 --解锁副本前不开放副本
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogID_1
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["DynCreate"] = tLoadGenId
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2003
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Pos"] = "-234.65,-20.53,-30.06"
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Angle"] = "112.405"
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {} ----------------------随机NPC
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = nBoxGenId_1
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-202.06,-21.17,-22.63"
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 180 
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = nBoxGenId_2
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-182.33,-21.17,9.64"
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 180
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = nBoxGenId_3
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-137.90,-21.25,7.87"
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 45
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nBoxGenId_Monster	
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["SetValue"] = 1
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapMissId_1]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["SetValue"] = 1

--传送副本NPC
rwtNpcGroup[50004] = rwtNpcGroup[50004] or {}
rwtNpcGroup[50004]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50004]["UnlockDialog"] = 5215
rwtNpcGroup[50004]["Dialog"] = 5209
rwtNpcGroup[50004]["CopyMapList"] = {nCopyMapMissId_1}
--副本目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20066]
rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroup_Fashi
rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][20067]
rwtTarget[nTarget2]["KillMonsterGroup"] = nMonsterGroup_5
rwtTarget[nTarget2]["ReqCount"] = 1



--法师死亡事件处理
function CopyMap_MoZuZhiXin_DelJiejie()
    --rwSpecialStatus_AddEffect(7,0,2003,"-234.65,-20.53,-30.06","112.405")
    --添加萨米尔怪物
    if not rwHasGenEvent(nGenId_Monster_Samier) then
        rwAddGenEvent(nGenId_Monster_Samier)
    end  
    --移除门陷阱
    if rwHasGenEvent(nTrap_GenId_3) then 
        rwDelGenEvent(nTrap_GenId_3)
    end
    --添加结界陷阱   
    if not rwHasGenEvent(nTrap_GenId_5) then
        rwAddGenEvent(nTrap_GenId_5)
    end   
    --关闭结界
    rwUpdateValveData(nGenId_Valve_Samier,1) 
    --开门
    rwUpdateValveData(nGenId_Valve_Door,1)   
    rwSpecialStatus_RemoveEffect(7,0,2003)
    rwStoryTrigger(15503,2,1)
    --rwSpecialStatus_AddEffect(7,0,2003,"-234.65,-20.53,-30.06","112.405")

end
rwtMonsterGroup_Func[nMonsterGroup_Fashi] = rwtMonsterGroup_Func[nMonsterGroup_Fashi] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Fashi],CopyMap_MoZuZhiXin_DelJiejie)
--BOSS死亡触发
function CopyMap_MzzxSamierDead()
    --rwPrintLog("萨米尔死亡，副本通关")
    --rwSpecialStatus_RemoveEffect(7,0,2003)
    rwStoryTrigger(15504,2,1)
--    rwLinkPassCopyMap(3034)
end

rwtMonsterGroup_Func[nMonsterGroup_5] = rwtMonsterGroup_Func[nMonsterGroup_5] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_5],CopyMap_MzzxSamierDead)

function CopyMap_MzzxBoxMonsterDead ()
	if rwHasGenEvent(nBoxGenId_Monster) then
		rwDelGenEvent(nBoxGenId_Monster)
	end
	local nVal = rwTempDataGetValue(nTempDataId)
	if nVal == 0 then
		rwTempDataSet(nTempDataId,1)
		rwOpenNpcChatDialog(6392)
	end	
end
rwtMonsterGroup_Func[nMonsterGroup_Box] = rwtMonsterGroup_Func[nMonsterGroup_Box] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Box],CopyMap_MzzxBoxMonsterDead)

--萨米尔陷阱
rwtNpcGroup[nTrapId_1] = rwtNpcGroup[nTrapId_1] or {}
rwtNpcGroup[nTrapId_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_1]["Awards"] = {}  
rwtNpcGroup[nTrapId_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 15502
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[nTrapId_1]["Awards"]["Events"][1]["DynDelete"] = {nTrap_GenId_1}       

--魔法墙陷阱1
rwtNpcGroup[nTrapId_3] = rwtNpcGroup[nTrapId_3] or {}
rwtNpcGroup[nTrapId_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_3]["Awards"] = {}  
rwtNpcGroup[nTrapId_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrapId_3]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtNpcGroup[nTrapId_3]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtNpcGroup[nTrapId_3]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10023]
rwtNpcGroup[nTrapId_3]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1  

--魔法墙陷阱2
rwtNpcGroup[nTrapId_4] = rwtNpcGroup[nTrapId_4] or {}
rwtNpcGroup[nTrapId_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_4]["Awards"] = {}  
rwtNpcGroup[nTrapId_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrapId_4]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtNpcGroup[nTrapId_4]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtNpcGroup[nTrapId_4]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10024]
rwtNpcGroup[nTrapId_4]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1  

--结界陷阱
rwtNpcGroup[nTrapId_5] = rwtNpcGroup[nTrapId_5] or {}
rwtNpcGroup[nTrapId_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_5]["TrapFunc"] = function()    
    --rwPrintLog("结界陷阱触发")
    if rwHasGenEvent (nGenId_Monster_Samier) then
        --rwPrintLog("存在透明怪萨米尔")
        rwOpenNpcChatDialog(5024,CONST_NPCCHAT_TYPE.NPC)
    end
end
rwtDialog[5024] = {}
rwtDialog[5024]["CloseDialog"] = 1
rwtDialog[5024]["DialogEndInit"] = {}
rwtDialog[5024]["DialogEndInit"]["Events"] = {}
rwtDialog[5024]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5024]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5024]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_Monster_Samier

--障碍左
rwtNpcGroup[nTrapId_Left] = rwtNpcGroup[nTrapId_Left] or {}
rwtNpcGroup[nTrapId_Left]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_Left]["Awards"] = {}  
rwtNpcGroup[nTrapId_Left]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_Left]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrapId_Left]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtNpcGroup[nTrapId_Left]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtNpcGroup[nTrapId_Left]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10023] 
rwtNpcGroup[nTrapId_Left]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

--障碍上
rwtNpcGroup[nTrapId_Up] = rwtNpcGroup[nTrapId_Up] or {}
rwtNpcGroup[nTrapId_Up]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_Up]["Awards"] = {}  
rwtNpcGroup[nTrapId_Up]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_Up]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrapId_Up]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtNpcGroup[nTrapId_Up]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtNpcGroup[nTrapId_Up]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10023]  
rwtNpcGroup[nTrapId_Up]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

--障碍楼梯
rwtNpcGroup[nTrapId_Spairs] = rwtNpcGroup[nTrapId_Spairs] or {}
rwtNpcGroup[nTrapId_Spairs]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrapId_Spairs]["Awards"] = {}  
rwtNpcGroup[nTrapId_Spairs]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrapId_Spairs]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrapId_Spairs]["Awards"]["Events"][1]["UserMsg"] = {}  
rwtNpcGroup[nTrapId_Spairs]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2  
rwtNpcGroup[nTrapId_Spairs]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10023]  
rwtNpcGroup[nTrapId_Spairs]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

--普通宝箱
rwtNpcGroup[nPandoraBox_1] = rwtNpcGroup[nPandoraBox_1] or {}
rwtNpcGroup[nPandoraBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nPandoraBox_1]["Awards"] = {}  
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["ChkEventCond"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_id_1
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nPandoraBox_1
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempDataId
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["AwardId"] = nAward_id_2
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["ActionId"] = nPandoraBox_1
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = nTempDataId
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[nPandoraBox_1]["Awards"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 1



--怪物宝箱
rwtNpcGroup[nPandoraBox_2] = rwtNpcGroup[nPandoraBox_2] or {}
rwtNpcGroup[nPandoraBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nPandoraBox_2]["NotDel"] = 1
rwtNpcGroup[nPandoraBox_2]["Awards"] = {}  
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[nPandoraBox_2]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = nGenId_Monster_Box


