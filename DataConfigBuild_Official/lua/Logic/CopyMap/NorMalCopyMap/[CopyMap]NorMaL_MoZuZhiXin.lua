--region 备注
--魔族之心单人普通副本
--副本NPC 50015 
--monster_group 5个 200197 - 200201
--monster 5 1000170-1000174
--宝箱  40048
--剧情陷阱 2  30286  -30287
--机关 3 1021 - 1023
--gen_event  12 3026001 - 3026012
--副本奖励ID 1000033
--endregion

local nCopyMapMissId = 3026
local nCopyMap_EnterNPC = 50015
--对话ID 
local nDialogId_EnterMap = 5193
local nDialogId_MonsterDead =  6891 --5194 

local nChangeNpcTask = 10221 

local nTarget = 60033
-------------------NPC群组ID-----------------
--local nTrapId_1 = 30286  --剧情陷阱1
--local nTrapId_2 = 30287  --剧情陷阱2

--宝箱ID
--local nNpc_Group_Box = 40048
--机关ID
local nValve_Left = 1021
local nValve_Up = 1022
local nValve_Door = 1023

--怪物组ID

local nMonster_Group_Juren = 200197
local nMonster_Group_Lujiao1 = 200198
local nMonster_Group_Lujiao2 = 200199
local nMonster_Group_Shihun = 200200
local nMonster_Group_Boss = 200201

--GenID
local nGenId_Npcgroup_Rukou = 3026001  --副本入口NPC
local nGenId_Trap_1 = 3026002 --剧情陷阱1
local nGenId_Trap_2 = 3026003 --剧情陷阱2

local nGenId_Box = 3026004 --宝箱GENID

local nGenId_Valve_Left  = 3026005
local nGenId_Valve_Up  = 3026006
local nGenId_Valve_Door  = 3026007
--怪物gen
local nGenId_Monster_Juren = 3026008
local nGenId_Monster_Lujiao1 = 3026009
local nGenId_Monster_Lujiao2 = 3026010
local nGenId_Monster_Shihun = 3026011
local nGenId_Monster_Boss = 3026012
tInitInfo = {}
--table.insert(tInitInfo,nGenId_Box)
table.insert(tInitInfo,nGenId_Valve_Left)
table.insert(tInitInfo,nGenId_Valve_Up)
table.insert(tInitInfo,nGenId_Valve_Door)

--------------------------------------------------机关声明-----------------------------------------------------------
--机关 
tValve[nValve_Left] = tValve[nValve_Left] or {}
tValve[nValve_Left]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValve_Up] = tValve[nValve_Up] or {}
tValve[nValve_Up]["Type"] = CONST_VALVE_TYPE.MAGICARRAY

tValve[nValve_Door] = tValve[nValve_Door] or {}
tValve[nValve_Door]["Type"] = CONST_VALVE_TYPE.MAGICARRAY
--------------------------------------------------------------------------------------------------------------------------------
--传送副本NPC
rwtNpcGroup[nCopyMap_EnterNPC] = rwtNpcGroup[nCopyMap_EnterNPC] or {}
rwtNpcGroup[nCopyMap_EnterNPC]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nCopyMap_EnterNPC]["CopyMapList"] = {nCopyMapMissId}
--rwtNpcGroup[nCopyMap_EnterNPC]["UnlockDialog"] = 1231
--rwtNpcGroup[nCopyMap_EnterNPC]["Dialog"] = 1230

--简单难度副本
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["EnterNpcMap"] = 2002 --传送NPC所在地图
rwtCopyMapMission[nCopyMapMissId]["ChangeNpcTask"] = nChangeNpcTask  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapMissId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapMissId]["EnterNpcGen"] = 3026001 --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
--rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_EnterMap
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tInitInfo
--rwtCopyMapMission[nCopyMapMissId]["MapInitFunc"] = function()
--    rwOpenNpcChatDialog(nDialogId_EnterMap,CONST_NPCCHAT_TYPE.COPYMAP)   
--    for i,v in pairs (tInitInfo) do
--        if not rwHasGenEvent (v) then
--            rwAddGenEvent (v)
--        end
--    end 
--end
--副本目标
rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][20034]
rwtTarget[nTarget]["KillMonsterGroup"] = nMonster_Group_Boss
rwtTarget[nTarget]["ReqCount"] = 1

function CopyMap_NormalMozuzhixinBossDead()
    rwOpenNpcChatDialog(nDialogId_MonsterDead,CONST_NPCCHAT_TYPE.COPYMAP)
--    rwLinkPassCopyMap(nCopyMapMissId) 
end
rwtMonsterGroup_Func[nMonster_Group_Boss] = rwtMonsterGroup_Func[nMonster_Group_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonster_Group_Boss],CopyMap_NormalMozuzhixinBossDead)












-------------------------------------------------副本初始化------------------------------------------------------------------------- 
--rwtCopyMapMission[nCopyMapMissId]["InitEvent"] = {
--nGenId_Box,
--nGenId_Valve_Left,  
--nGenId_Valve_Up,
--nGenId_Valve_Door
--}

--------------------------------------------------副本事件----------------------------------------------------------------------------
----事件声明
--rwtCopyMapMission[nCopyMapMissId][nGenId_Trap_1] ={}
--rwtCopyMapMission[nCopyMapMissId][nGenId_Trap_2] ={}
--rwtCopyMapMission[nCopyMapMissId][nGenId_Monster_Boss] ={}
----怪物死亡

----BOSS死亡
--rwtCopyEventIdInfo[nGenId_Monster_Boss] ={}
----rwtCopyEventIdInfo[nGenId_Monster_Boss]["MonsterWinCG"] = 15504
--rwtCopyEventIdInfo[nGenId_Monster_Boss]["MonsterWinPassCopy"] = 1

----陷阱
--rwtCopyEventIdInfo[nGenId_Trap_1] = {}
--rwtCopyEventIdInfo[nGenId_Trap_1]["TrapDeleteGen"] = nGenId_Trap_1

--rwtCopyEventIdInfo[nGenId_Trap_2] = {}
--rwtCopyEventIdInfo[nGenId_Trap_2]["TrapDeleteGen"] = nGenId_Trap_2
