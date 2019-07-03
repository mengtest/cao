--region *.lua
--Date

--金钱副本地狱
--Nizw

--endregion


------------=========数据========-------------
--	副本ID
local  nCopyMapId = 3089

--副本掩码
local nCopyTemp = 1167

-- NPC
local tBox = {}
tBox.PassCopy = 40182
tBox.normal1 = 40183
tBox.normal2 = 40184
tBox.normal3 = 40185
tBox.normal4 = 40186
tBox.BoxMonster = 40187
tBox.GenId_PassCopy = 3089001

rwtNpcGroup[tBox.normal1] = rwtNpcGroup[tBox.normal1] or {} 
rwtNpcGroup[tBox.normal1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.normal1]["Awards"] = {}
rwtNpcGroup[tBox.normal1]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.normal1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.normal1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.normal1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.normal1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.normal1
rwtNpcGroup[tBox.normal1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.normal1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000400   

rwtNpcGroup[tBox.normal2] = rwtNpcGroup[tBox.normal2] or {} 
rwtNpcGroup[tBox.normal2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.normal2]["Awards"] = {}
rwtNpcGroup[tBox.normal2]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.normal2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.normal2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.normal2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.normal2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.normal2
rwtNpcGroup[tBox.normal2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.normal2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000400 

rwtNpcGroup[tBox.normal3] = rwtNpcGroup[tBox.normal3] or {} 
rwtNpcGroup[tBox.normal3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.normal3]["Awards"] = {}
rwtNpcGroup[tBox.normal3]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.normal3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.normal3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.normal3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.normal3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.normal3
rwtNpcGroup[tBox.normal3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.normal3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000400 

rwtNpcGroup[tBox.normal4] = rwtNpcGroup[tBox.normal4] or {} 
rwtNpcGroup[tBox.normal4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.normal4]["Awards"] = {}
rwtNpcGroup[tBox.normal4]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.normal4]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.normal4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.normal4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.normal4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.normal4
rwtNpcGroup[tBox.normal4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.normal4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000400 

rwtNpcGroup[40227] = rwtNpcGroup[40227] or {}
rwtNpcGroup[40227]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40227]["Awards"] = {}
rwtNpcGroup[40227]["Awards"]["Events"] = {}
rwtNpcGroup[40227]["Awards"]["Events"][1] = {}
rwtNpcGroup[40227]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40227]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40227]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40227
rwtNpcGroup[40227]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40227]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000446

rwtNpcGroup[40228] = rwtNpcGroup[40228] or {}
rwtNpcGroup[40228]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40228]["Awards"] = {}
rwtNpcGroup[40228]["Awards"]["Events"] = {}
rwtNpcGroup[40228]["Awards"]["Events"][1] = {}
rwtNpcGroup[40228]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40228]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40228]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40228
rwtNpcGroup[40228]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40228]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000447

local nTrap_JBoShi = 30595

local tNpc = {
    20591,  --J博士'
    20592,  --小鱼人'
    20604,  --树精叽叽
    20605,  --树精叽叽
    20606,  --树精喳喳
    20607,  --树精喳喳
}


--Monster
local tMonster = {}
tMonster.PrettyGirlHJM = 200418
tMonster.GenId_PrettyGirlHJM = 3089007
tMonster.Box = 200419
tMonster.GenId_Box = 3089008
tMonster.MonsterJ = 200420
tMonster.GenId_MonsterJ = 3089009

--对白
local tDialogs = {}
tDialogs.EnterMap = {
    6344,6345,6346,6347,6348
}
tDialogs.MonsterHJM_bef = 6349
tDialogs.MonsterHJM_aft = {
    6354,6355,6356,6357,6358
}
tDialogs.BoxNoPass = {
    6359,6360,6361,6362,6363
}
tDialogs.BoxPass = {
    6364,6365,6366,6367,6368,6369,6370
}
tDialogs.NPCCaught_ZaZa = {
    6373,6374,6375
}
tDialogs.NPCCaught_JiJi = {
    6371,6372
}
tDialogs.MonsterBox_bef = 6376
tDialogs.MonsterBox_aft = {
    6377,6378,6379,6380,6381
}
tDialogs.LYWithWenLi = {
    6382,6383,6384
}
tDialogs.LYWithoutWenLi = {
    6385,6386,6387
}
tDialogs.MonsterYang = 6389

local tCheckGenId = {}
for i = 3089002, 3089016 do
    table.insert(tCheckGenId,i)
end

--=====================================================================
--海魔战后对白
-- rwtMonsterGroup[tMonster.PrettyGirlHJM] = rwtMonsterGroup[tMonster.PrettyGirlHJM] or {}
-- rwtMonsterGroup[tMonster.PrettyGirlHJM]["BattleWin"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
-- 	local nIndex = math.random(1,5)
-- 	rwOpenNpcChatDialog(tDialogs["MonsterHJM_aft"][nIndex])
-- end

-- 通关宝箱
rwtNpcGroup[tBox.PassCopy] = rwtNpcGroup[tBox.PassCopy] or {} 
rwtNpcGroup[tBox.PassCopy]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.PassCopy]["NotDel"] = 1
rwtNpcGroup[tBox.PassCopy]["Awards"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tCheckGenId
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogs.BoxNoPass
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.BoxPass
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["DynDelete"][1] = tBox.GenId_PassCopy
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassCopy
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassCopy]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000399  --测试数据
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  tDialogs.BoxPass
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["DynDelete"][1] = tBox.GenId_PassCopy
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassCopy
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.PassCopy]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000399   

--强制开启宝箱开启逻辑
rwtDialog[tDialogs.BoxNoPass[1]] = rwtDialog[tDialogs.BoxNoPass[1]] or {}
rwtDialog[tDialogs.BoxNoPass[1]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox.PassCopy,tBox.GenId_PassCopy,1)
end
rwtDialog[tDialogs.BoxNoPass[2]] = rwtDialog[tDialogs.BoxNoPass[2]] or {}
rwtDialog[tDialogs.BoxNoPass[2]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox.PassCopy,tBox.GenId_PassCopy,1)
end
rwtDialog[tDialogs.BoxNoPass[3]] = rwtDialog[tDialogs.BoxNoPass[3]] or {}
rwtDialog[tDialogs.BoxNoPass[3]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox.PassCopy,tBox.GenId_PassCopy,1)
end
rwtDialog[tDialogs.BoxNoPass[4]] = rwtDialog[tDialogs.BoxNoPass[4]] or {}
rwtDialog[tDialogs.BoxNoPass[4]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox.PassCopy,tBox.GenId_PassCopy,1)
end
rwtDialog[tDialogs.BoxNoPass[5]] = rwtDialog[tDialogs.BoxNoPass[5]] or {}
rwtDialog[tDialogs.BoxNoPass[5]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(tBox.PassCopy,tBox.GenId_PassCopy,1)
end

--被抓NPC对白
rwtNpcGroup[tNpc[3]] = rwtNpcGroup[tNpc[3]] or {} 
rwtNpcGroup[tNpc[3]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpc[3]]["Awards"] = {}
rwtNpcGroup[tNpc[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpc[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpc[3]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpc[3]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.NPCCaught_JiJi

rwtNpcGroup[tNpc[4]] = rwtNpcGroup[tNpc[4]] or {} 
rwtNpcGroup[tNpc[4]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpc[4]]["Awards"] = {}
rwtNpcGroup[tNpc[4]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpc[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpc[4]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpc[4]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.NPCCaught_JiJi

rwtNpcGroup[tNpc[5]] = rwtNpcGroup[tNpc[5]] or {} 
rwtNpcGroup[tNpc[5]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpc[5]]["Awards"] = {}
rwtNpcGroup[tNpc[5]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpc[5]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpc[5]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpc[5]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.NPCCaught_ZaZa

rwtNpcGroup[tNpc[6]] = rwtNpcGroup[tNpc[6]] or {} 
rwtNpcGroup[tNpc[6]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpc[6]]["Awards"] = {}
rwtNpcGroup[tNpc[6]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpc[6]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpc[6]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpc[6]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.NPCCaught_ZaZa

for i =1,2 do
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]] = rwtDialog[tDialogs["NPCCaught_JiJi"][i]] or {}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"] = {}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000400
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][2]={}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][2]["DynDelete"]={}
    rwtDialog[tDialogs["NPCCaught_JiJi"][i]]["DialogEndInit"]["Events"][2]["DynDelete"]["GenIdBynId"]=true
end

for i =1,3 do
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]] = rwtDialog[tDialogs["NPCCaught_ZaZa"][i]] or {}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"] = {}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000400
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][2]={}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][2]["DynDelete"]={}
    rwtDialog[tDialogs["NPCCaught_ZaZa"][i]]["DialogEndInit"]["Events"][2]["DynDelete"]["GenIdBynId"]=true
end

--NPC 莱茵
rwtNpcGroup[tNpc[2]] = rwtNpcGroup[tNpc[2]] or {} 
rwtNpcGroup[tNpc[2]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpc[2]]["Awards"] = {}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {201}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.LYWithWenLi
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tNpc[2]]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialogs.LYWithoutWenLi

for i =1,3 do
    rwtDialog[tDialogs["LYWithWenLi"][i]] = rwtDialog[tDialogs["LYWithWenLi"][i]] or {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"] = {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000403
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][2] = {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][2]["DynDelete"] = {}
    rwtDialog[tDialogs["LYWithWenLi"][i]]["DialogEndInit"]["Events"][2]["DynDelete"]["GenIdBynId"] = true
end

for i =1,3 do
    rwtDialog[tDialogs["LYWithoutWenLi"][i]] = rwtDialog[tDialogs["LYWithoutWenLi"][i]] or {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"] = {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"] = {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][1] = {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000404
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][2] = {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][2]["DynDelete"] = {}
    rwtDialog[tDialogs["LYWithoutWenLi"][i]]["DialogEndInit"]["Events"][2]["DynDelete"]["GenIdBynId"] = true
end

--NPC J博士
rwtNpcGroup[tNpc[1]] = rwtNpcGroup[tNpc[1]] or {} 
rwtNpcGroup[tNpc[1]]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpc[1]]["Awards"] = {}
rwtNpcGroup[tNpc[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tNpc[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpc[1]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpc[1]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6389

rwtDialog[6389] = rwtDialog[6389] or {}
rwtDialog[6389]["DialogEndInit"] = {}
rwtDialog[6389]["DialogEndInit"]["Events"] = {}
rwtDialog[6389]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6389]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[6389]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3089009

rwtMonsterGroup[tMonster.MonsterJ] = rwtMonsterGroup[tMonster.MonsterJ] or {}
rwtMonsterGroup[tMonster.MonsterJ]["BattleLose"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	if not rwHasGenEvent(3089010) then
        rwAddGenEvent(3089010)  --生成J博士
    end
end
rwtMonsterGroup[tMonster.MonsterJ]["BattleEscape"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	if not rwHasGenEvent(3089010) then
        rwAddGenEvent(3089010)  --生成J博士
    end
end
rwtMonsterGroup[tMonster.MonsterJ]["BattleWin"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	if  rwHasGenEvent(3089010) then
        rwDelGenEvent(3089010)
    end
end

--事件1--怪物宝箱
rwtNpcGroup[tBox.BoxMonster] = rwtNpcGroup[tBox.BoxMonster] or {} 
rwtNpcGroup[tBox.BoxMonster]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.BoxMonster]["NotDel"] = 1
rwtNpcGroup[tBox.BoxMonster]["Awards"] = {}
rwtNpcGroup[tBox.BoxMonster]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.BoxMonster]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.BoxMonster]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tBox.BoxMonster]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogs.MonsterBox_bef

rwtDialog[tDialogs.MonsterBox_bef] = rwtDialog[tDialogs.MonsterBox_bef] or {}
rwtDialog[tDialogs.MonsterBox_bef]["DialogEndInit"] = {}
rwtDialog[tDialogs.MonsterBox_bef]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogs.MonsterBox_bef]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogs.MonsterBox_bef]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialogs.MonsterBox_bef]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = 3089008

function CopyMapDaily_MoneyHell_MonsterBoxDie()
    rwDelGenEvent(3089006)  --删除怪物宝箱
    local nIndex = math.random(1,5)
	rwOpenNpcChatDialog(tDialogs["MonsterBox_aft"][nIndex])
end

rwtMonsterGroup_Func[200419] = rwtMonsterGroup_Func[200419] or {}
table.insert(rwtMonsterGroup_Func[200419],CopyMapDaily_MoneyHell_MonsterBoxDie)
-- --宝箱怪战后对白
-- rwtMonsterGroup[tMonster.Box] = rwtMonsterGroup[tMonster.Box] or {}
-- rwtMonsterGroup[tMonster.Box]["BattleWin"] = function (nMonsterGroupId,nMonsterGroupType,nGenId)
	
-- end

--事件2--J博士陷阱
rwtNpcGroup[nTrap_JBoShi] = rwtNpcGroup[nTrap_JBoShi] or {} 
rwtNpcGroup[nTrap_JBoShi]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_JBoShi]["DelTrap"] = 1
rwtNpcGroup[nTrap_JBoShi]["Awards"] = {}  
rwtNpcGroup[nTrap_JBoShi]["Awards"]["Events"] = {}           
rwtNpcGroup[nTrap_JBoShi]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_JBoShi]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
rwtNpcGroup[nTrap_JBoShi]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 16804
rwtNpcGroup[nTrap_JBoShi]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

function CopyMapDaily_MoneyHell_J()
    rwAutoBattle(3089009)
end

rwtCGFinish[16804] = rwtCGFinish[16804] or {}
table.insert(rwtCGFinish[16804],CopyMapDaily_MoneyHell_J)

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
-- rwtCopyMapMission[nCopyMapId]["Target1"] = {60172}
rwtCopyMapMission[nCopyMapId]["Target1"] = {60173}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialogs.EnterMap
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["DynCreate"] = {3089001}  --通关宝箱

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}

--随机事件1，怪物宝箱与固定宝箱随机、随机三个叽叽喳喳
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}                               
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["FixGen"] = {3089008} --宝箱怪
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3089002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "38.45,-0.01,6.29"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -35.1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3089003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "38.08,0.03,20.41"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3089004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "45.8,0.03,26.2"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 183.4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3089005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "26.6,0.023,0.16"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 11.846
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3089006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["Pos"] = "31.81,0.00,14.666"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["Pos"] = "41.65,0.03,22.63"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["Pos"] = "48.79,0.19,8.92"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["Pos"] = "57.53,0.03,15.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3089013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2]["GenId"] = 3089014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][3]["GenId"] = 3089015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][4]["GenId"] = 3089016


--随机事件2,J博士、固定宝箱随机、叽叽喳喳随机                               
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 2  
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["FixGen"] = {3089009,3089011}   --J博士怪、NPC、触发陷阱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["Pos"] = "31.81,0.00,14.666"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["Pos"] = "41.65,0.03,22.63"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["Pos"] = "48.79,0.19,8.92"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["Pos"] = "57.53,0.03,15.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3089013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][2]["GenId"] = 3089014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][3]["GenId"] = 3089015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tOtherGenId"][4]["GenId"] = 3089016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][1]["GenId"] = 3089002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][2]["GenId"] = 3089003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][3]["GenId"] = 3089004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][4]["GenId"] = 3089005

--随机事件3,小鱼人NPC与叽叽喳喳随机、固定宝箱随机                                      
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 3  
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["Pos"] = "31.81,0.00,14.666"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2]["Pos"] = "41.65,0.03,22.63"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3]["Pos"] = "48.79,0.19,8.92"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][4]["Pos"] = "57.53,0.03,15.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["RemainRandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3089012
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = 3089013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = 3089014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][1]["tOtherGenId"][4]["GenId"] = 3089015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][1]["GenId"] = 3089002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][2]["GenId"] = 3089003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][3]["GenId"] = 3089004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreare"][2]["tGenId"][4]["GenId"] = 3089005

--当第一次进副本，掩码还是0时
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["FixGen"] = {3089008} --宝箱怪
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3089002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["Pos"] = "38.45,-0.01,6.29"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -35.1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3089003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["Pos"] = "38.08,0.03,20.41"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3089004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["Pos"] = "45.8,0.03,26.2"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 183.4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3089005
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["Pos"] = "26.6,0.023,0.16"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 11.846
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3089006
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["Pos"] = "31.81,0.00,14.666"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["Pos"] = "41.65,0.03,22.63"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["Pos"] = "48.79,0.19,8.92"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["Pos"] = "57.53,0.03,15.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = 3089013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][2]["GenId"] = 3089014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][3]["GenId"] = 3089015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tOtherGenId"][4]["GenId"] = 3089016

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["FixGen"] = {3089009,3089011}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][1]["Pos"] = "31.81,0.00,14.666"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][1]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][2]["Pos"] = "41.65,0.03,22.63"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][3]["Pos"] = "48.79,0.19,8.92"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][3]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][4]["Pos"] = "57.53,0.03,15.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][1]["GenId"] = 3089013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][2]["GenId"] = 3089014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][3]["GenId"] = 3089015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][4]["tOtherGenId"][4]["GenId"] = 3089016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][1]["GenId"] = 3089002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][2]["GenId"] = 3089003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][3]["GenId"] = 3089004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][5]["tGenId"][4]["GenId"] = 3089005

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][1]["Pos"] = "31.81,0.00,14.666"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][1]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][2]["Pos"] = "41.65,0.03,22.63"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][2]["RotationY"] = 139.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][3]["Pos"] = "48.79,0.19,8.92"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][3]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][4]["Pos"] = "57.53,0.03,15.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["RemainRandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][1]["GenId"] = 3089012
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][2]["GenId"] = 3089013
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][3]["GenId"] = 3089014
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][6]["tOtherGenId"][4]["GenId"] = 3089015
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][1]["GenId"] = 3089002
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][2]["GenId"] = 3089003
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][3]["GenId"] = 3089004
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][7]["tGenId"][4]["GenId"] = 3089005

--第二组随机事件
--生成美少女
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][5]["RandomCreare"][1]["FixGen"] = {3089007,3089018}
--生成默希娅
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][6]["RandomCreare"][1]["FixGen"] = {3089017,3089019}

--初始掩码 0 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Record"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"] = {}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["FixGen"] = {3089007,3089018}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][1]["MaxRate"] = 3500

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["FixGen"] = {3089017,3089019}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][2]["MaxRate"] = 5000

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["TempDataID"] = nCopyTemp
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][7]["RandomCreare"][3]["MaxRate"] = 10000


-- rwtTarget[60172] = {}
-- rwtTarget[60172]["Title"] = tLuaText[LANGUAGE_CONFIG][21574]
-- rwtTarget[60172]["KillMonsterGroup"] = 200418
-- rwtTarget[60172]["ReqCount"] = 1

rwtTarget[60173] = {}
rwtTarget[60173]["Title"] = tLuaText[LANGUAGE_CONFIG][21574]
rwtTarget[60173]["ReqTreasureBox"] = 40182
rwtTarget[60173]["ReqCount"] = 1

