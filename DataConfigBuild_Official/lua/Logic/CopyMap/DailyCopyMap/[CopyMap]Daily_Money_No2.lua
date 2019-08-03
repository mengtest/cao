--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--金钱副本2号本\纳雅实验室
--by:mzy
--date:2019.06.24

--endregion


--*******************************************数据定义*******************************************
--genid分配
--NPC组：3127001-3127100
--怪物组：3127101-3127200
--机关：3127201-3127300

--副本id
local nCopyMapId = 3127

--副本目标
local nTarget_1 = 60296     --开启圣晶宝箱


--进入副本创建事件列表
local tDynaGenId = {}
------------对白-----------
local tDialogId = {}

--进入副本对白
tDialogId.Dialog_1 = {6789}
--通关对白
tDialogId.Dialog_2 = {6790}


------------NPC组-----------
--宝箱
local tBoxId = {}
local tBoxGenId = {}

--圣晶宝箱
tBoxId.PassCopy = 40274
tBoxGenId.PassCopy = 3127001
table.insert(tDynaGenId,tBoxGenId.PassCopy)

--储物箱
tBoxId.Normal = 40275
tBoxGenId.Normal = {3127002,3127003,3127004,3127005}
for k,v in pairs(tBoxGenId.Normal) do
    table.insert(tDynaGenId,v)
end


------------monsterGroup-----------
local tMonsterGroup = {}
local tMonsterGroupGenId = {}

--蓝鳞鱼妖
tMonsterGroup.MonsterGroup1 = 200637
tMonsterGroupGenId.MonsterGroup1 = 31271101

--蓝鳞鱼妖
tMonsterGroup.MonsterGroup2 = 200638
tMonsterGroupGenId.MonsterGroup2 = 3127102

--狂魔兽
tMonsterGroup.MonsterGroup3 = 200639
tMonsterGroupGenId.MonsterGroup3 = 3127103

--狂魔兽
tMonsterGroup.MonsterGroup4 = 200640
tMonsterGroupGenId.MonsterGroup4 = 3127104

--蓝鳞鱼妖
tMonsterGroup.MonsterGroup5 = 200641
tMonsterGroupGenId.MonsterGroup5 = 3127105

--深蓝海怪
tMonsterGroup.MonsterGroup6 = 200642
tMonsterGroupGenId.MonsterGroup6 = 3127106

local tMonsterId = {}
--狂魔兽
tMonsterId.monster1 = 1000934
--蓝鳞鱼妖
tMonsterId.monster2 = 1000935
--深蓝海怪
tMonsterId.monster3 = 1000936

-------------------奖励id----------------
local tAwardId = {}

--开启圣晶宝箱
tAwardId.PassCopyBox = 1000532
--储物箱
tAwardId.NormalBox = 1000533

--**************************************逻辑***************************
--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

--副本目标
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


--副本初始化
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogId.Dialog_1


-------副本目标
--开启圣晶宝箱
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21813]
rwtTarget[nTarget_1]["ReqCollectId"] = tBoxId.PassCopy
rwtTarget[nTarget_1]["ReqCount"] = 1



--采集物
--圣晶宝箱
rwtNpcGroup[tBoxId.PassCopy] = rwtNpcGroup[tBoxId.PassCopy] or {} 
rwtNpcGroup[tBoxId.PassCopy]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBoxId.PassCopy]["CollectTime"] = 3
rwtNpcGroup[tBoxId.PassCopy]["Awards"] = {}
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"] = {}
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["OpenDialog"] = {}		
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialogId.Dialog_2
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxId.PassCopy
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxId.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.PassCopyBox  


--储物箱
rwtNpcGroup[tBoxId.Normal] = rwtNpcGroup[tBoxId.Normal] or {}
rwtNpcGroup[tBoxId.Normal]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tBoxId.Normal]["CollectTime"] = 2
rwtNpcGroup[tBoxId.Normal]["Awards"] = {}  
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"] = {}   
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"][1] = {}   
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBoxId.Normal
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBoxId.Normal]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.NormalBox

