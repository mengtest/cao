--region *.lua
--Date
--生存副本-1
--NiZW  


--endregion


--===========================副本基础配置====================================--
local tEnterCreateGen = {
    3120001,3120002,3120003,3120004,                    --巡逻怪
    3120047,           --采集器
    3120048,           --触发器
}

local tPos = {}
tPos.Collect = {
    "-244.886,-21.166,-30.241",
    "-234.623,-21.166,-40.110",
    "-222.373,-21.166,-29.151",
    "-234.273,-21.166,-17.728",
    "-240.732,-21.166,-34.308",
    "-233.789,-21.166,-35.971",
    "-227.623,-21.166,-34.421",
    "-240.540,-21.166,-25.358",
    "-233.142,-21.166,-23.855",
    "-227.660,-21.166,-24.847",
}
tPos.Buff = {
    "-242.674,-21.166,-38.674",
    "-242.667,-21.166,-20.293",
    "-226,-21.166,-37.333",
    "-225.869,-21.166,-21.333",
}

tPos.Posbuff = {
    [3120058] = "-261.81,-21.166,-33.62",
    [3120059] = "-240.209,-21.166,1.906",
    [3120060] = "-229.244,-21.166,-57.5",
    [3120061] = "-206.264,-21.166,-25.3",
}

-- "-271.6,-21.166,-25.9"
-- "-229.71,-21.166,6.56" 
-- "-240.49,-21.166,-61.97" 
-- "-202.44,-21.166,-33.39" 

local tCollectGen = {
    3120033,
    3120034,
    3120035,
    3120036,
    3120037,
    3120038,
    3120039,
    3120040,
    3120041,
    3120042,
}
local nCopyMapMissId = 3120

local tTrap = {}
tTrap.Collect    = 30635
tTrap.MinusSpeed = 30636
tTrap.MinusView  = 30638
tTrap.Hide       = 30645
tTrap.CaiJiQi    = 30651
tTrap.ChuFaQi    = 30652

tTrap.MinusMonster  = 30655

local tPath = {}
tPath[1] = {64,65,66,67,68}
tPath[2] = {69,70,71,72,73}
tPath[3] = {74,75,76,77,78}
tPath[4] = {79,80,81,82,83}

local tTitle = {}
tTitle[1] = "警告：一大波丧失来袭，注意躲避"
tTitle[2] = "警告：一大波丧失来袭，请注意躲避"
tTitle[3] = "警告：一大波丧失来袭，请注意躲避哦"

-- SendSystemMessage
rwtNpcGroup[tTrap.Collect] = rwtNpcGroup[tTrap.Collect] or {}
rwtNpcGroup[tTrap.Collect]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.Collect]["DetailType"] = CONST_SURVIVAL_TYPE.Collect
rwtNpcGroup[tTrap.Collect]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.Collect]["nTempdata"] = 1212
-- rwtNpcGroup[tTrap.Collect]["CollectTitle"] = "采集数量+1"
rwtNpcGroup[tTrap.Collect]["CollectEffect"] = 2031
rwtNpcGroup[tTrap.Collect]["CollectNum"] = 50
rwtNpcGroup[tTrap.Collect]["FinishAward"] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"]["AwardId"] = 1000285
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tTrap.MinusSpeed] = rwtNpcGroup[tTrap.MinusSpeed] or {}
rwtNpcGroup[tTrap.MinusSpeed]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.MinusSpeed]["DetailType"] = CONST_SURVIVAL_TYPE.Buff
rwtNpcGroup[tTrap.MinusSpeed]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Minus_Speed
rwtNpcGroup[tTrap.MinusSpeed]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.MinusSpeed]["MinusValue"] = 20
rwtNpcGroup[tTrap.MinusSpeed]["MinSpeed"] = 10
rwtNpcGroup[tTrap.MinusSpeed]["tMonsterGenIds"] = {3120009,3120010,3120011,3120012,3120062,3120063}
rwtNpcGroup[tTrap.MinusSpeed]["Title"] = "减速"

rwtNpcGroup[tTrap.MinusView] = rwtNpcGroup[tTrap.MinusView] or {}
rwtNpcGroup[tTrap.MinusView]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.MinusView]["DetailType"] = CONST_SURVIVAL_TYPE.Buff
rwtNpcGroup[tTrap.MinusView]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Minus_View
rwtNpcGroup[tTrap.MinusView]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.MinusView]["MinusValue"] = 150
rwtNpcGroup[tTrap.MinusView]["MinView"] = 100
rwtNpcGroup[tTrap.MinusView]["tMonsterGenIds"] = {3120009,3120010,3120011,3120012,3120062,3120063}
rwtNpcGroup[tTrap.MinusView]["Title"] = "减视野"

rwtNpcGroup[tTrap.Hide] = rwtNpcGroup[tTrap.Hide] or {}
rwtNpcGroup[tTrap.Hide]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.Hide]["DetailType"] = CONST_SURVIVAL_TYPE.Buff
rwtNpcGroup[tTrap.Hide]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.Hide]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.HIDE
rwtNpcGroup[tTrap.Hide]["HideTime"] = 5
rwtNpcGroup[tTrap.Hide]["Title"] = "隐身"

rwtNpcGroup[tTrap.MinusMonster] = rwtNpcGroup[tTrap.MinusMonster] or {}
rwtNpcGroup[tTrap.MinusMonster]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.MinusMonster]["DetailType"] = CONST_SURVIVAL_TYPE.Buff
rwtNpcGroup[tTrap.MinusMonster]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.MinusMonster]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Minus_Monster
rwtNpcGroup[tTrap.MinusMonster]["MinusNum"] = 1
rwtNpcGroup[tTrap.MinusMonster]["tMonsterGenIds"] = {3120009,3120010}
rwtNpcGroup[tTrap.MinusMonster]["Title"] = "减少了一只怪物"

rwtNpcGroup[tTrap.CaiJiQi] = rwtNpcGroup[tTrap.CaiJiQi] or {}
rwtNpcGroup[tTrap.CaiJiQi]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.CaiJiQi]["DetailType"] = CONST_SURVIVAL_TYPE.CaiJiQi
rwtNpcGroup[tTrap.CaiJiQi]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.CaiJiQi]["nTempdata"] = 1212
rwtNpcGroup[tTrap.CaiJiQi]["Message"] = "将采集器放入触发器内可产出采集道具"

rwtNpcGroup[tTrap.ChuFaQi] = rwtNpcGroup[tTrap.ChuFaQi] or {}
rwtNpcGroup[tTrap.ChuFaQi]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.ChuFaQi]["DetailType"] = CONST_SURVIVAL_TYPE.ChuFaQi
rwtNpcGroup[tTrap.ChuFaQi]["NoDelTrap"] = true
rwtNpcGroup[tTrap.ChuFaQi]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.ChuFaQi]["nTempdata"] = 1212
rwtNpcGroup[tTrap.ChuFaQi]["FailMessage"] = "触发事件需要采集器"
--===============================================================

local CaiJiQiInfo = {}
CaiJiQiInfo[1] = {}
CaiJiQiInfo[1]["GenId"] = 3120043
CaiJiQiInfo[1]["Message"] = "采集器出现在左上方"
CaiJiQiInfo[1]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local tgenid = {3120059,3120060,3120061}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid])
    end
end

CaiJiQiInfo[2] = {}
CaiJiQiInfo[2]["GenId"] = 3120044
CaiJiQiInfo[2]["Message"] = "采集器出现在右上方"
CaiJiQiInfo[2]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local tgenid = {3120058,3120060,3120061}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid])
    end
end

CaiJiQiInfo[3] = {}
CaiJiQiInfo[3]["GenId"] = 3120045
CaiJiQiInfo[3]["Message"] = "采集器出现在左下方"
CaiJiQiInfo[3]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local tgenid = {3120058,3120059,3120061}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid])
    end
end
CaiJiQiInfo[4] = {}
CaiJiQiInfo[4]["GenId"] = 3120046
CaiJiQiInfo[4]["Message"] = "采集器出现在右下方"
CaiJiQiInfo[4]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local tgenid = {3120058,3120059,3120060}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid])
    end
end

--======采集器2=====================--
local CaiJiQiInfo2 = {}
CaiJiQiInfo2[1] = {}
CaiJiQiInfo2[1]["GenId"] = 3120043
CaiJiQiInfo2[1]["Message"] = "采集器出现在左上方"
CaiJiQiInfo2[1]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local npcindex = rwGetRandInt(1,2)
    local tgenid = {3120059,3120060,3120061}
    local tNpcid = {30636,30638}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid],tPos.Posbuff[tgenid[genid]],tNpcid[npcindex])
    end
end

CaiJiQiInfo2[2] = {}
CaiJiQiInfo2[2]["GenId"] = 3120044
CaiJiQiInfo2[2]["Message"] = "采集器出现在右上方"
CaiJiQiInfo2[2]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local npcindex = rwGetRandInt(1,2)
    local tgenid = {3120059,3120060,3120061}
    local tNpcid = {30636,30638}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid],tPos.Posbuff[tgenid[genid]],tNpcid[npcindex])
    end
end

CaiJiQiInfo2[3] = {}
CaiJiQiInfo2[3]["GenId"] = 3120045
CaiJiQiInfo2[3]["Message"] = "采集器出现在左下方"
CaiJiQiInfo2[3]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local npcindex = rwGetRandInt(1,2)
    local tgenid = {3120059,3120060,3120061}
    local tNpcid = {30636,30638}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid],tPos.Posbuff[tgenid[genid]],tNpcid[npcindex])
    end
end
CaiJiQiInfo2[4] = {}
CaiJiQiInfo2[4]["GenId"] = 3120046
CaiJiQiInfo2[4]["Message"] = "采集器出现在右下方"
CaiJiQiInfo2[4]["Func"] = function()
    local genid = rwGetRandInt(1,3)
    local npcindex = rwGetRandInt(1,2)
    local tgenid = {3120059,3120060,3120061}
    local tNpcid = {30636,30638}
    if not rwHasGenEvent(tgenid[genid]) then
        rwAddGenEvent(tgenid[genid],tPos.Posbuff[tgenid[genid]],tNpcid[npcindex])
    end
end
--======================================


--采集信息
local CollectInfo = {}
CollectInfo["tGenId"] = tCollectGen -- {3120033,3120034,3120035,3120036,3120037}
CollectInfo["tPos"] = tPos.Collect
CollectInfo["tNPCGroupId"] = 30635

local MonsterInfo = {}  --追击怪信息
MonsterInfo["tGenId"] = {3120009,3120010}
MonsterInfo["tPath"] = {52,53,54,55}
MonsterInfo["tRotation"] = {90,180,-90,0}
MonsterInfo["MonsterGroupId"] = 200593
-- MonsterInfo["InitSpeedRange"] = {20,30}
MonsterInfo["Title"] = "警告：有追击怪进入请小心"

local ManyMonsterInfo = {} --丧尸潮
ManyMonsterInfo[1] = {} --丧尸潮
ManyMonsterInfo[1]["Title"] = tTitle
ManyMonsterInfo[1][1] = {}
ManyMonsterInfo[1][1]["PathInfo"] = tPath
ManyMonsterInfo[1][1]["tMonsterGroupId"] = {200650,200651,200652,200653}
ManyMonsterInfo[1][1]["tGenId"] = {3120013,3120014,3120015,3120016,3120017}--,3120018,3120019,3120020,3120021,3120022}
-- ManyMonsterInfo[1][1]["InitSpeedRange"] = {100,120}
ManyMonsterInfo[1][1]["LifeTime"] = 10

ManyMonsterInfo[2] = {} --丧尸潮
ManyMonsterInfo[2]["Title"] = tTitle
ManyMonsterInfo[2][1] = {}
ManyMonsterInfo[2][1]["PathInfo"] = {tPath[1],tPath[3]}
ManyMonsterInfo[2][1]["tMonsterGroupId"] = {200650,200651,200652,200653}
ManyMonsterInfo[2][1]["tGenId"] = {3120013,3120014,3120015,3120016,3120017}--,3120018,3120019,3120020,3120021,3120022}
-- ManyMonsterInfo[2][1]["InitSpeedRange"] = {100,120}
ManyMonsterInfo[2][1]["LifeTime"] = 10
ManyMonsterInfo[2][2] = {}
ManyMonsterInfo[2][2]["PathInfo"] = {tPath[2],tPath[4]}
ManyMonsterInfo[2][2]["tMonsterGroupId"] = {200650,200651,200652,200653}
ManyMonsterInfo[2][2]["tGenId"] = {3120023,3120024,3120025,3120026,3120027}--,3120028,3120029,3120030,3120031,3120032}
-- ManyMonsterInfo[2][2]["InitSpeedRange"] = {100,120}
ManyMonsterInfo[2][2]["LifeTime"] = 10

--采集物0-10个
--触发器逻辑：1、丧尸潮；2、刷10个采集物；
rwtSurivialCopyMapInfo[nCopyMapMissId] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][1] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][1]["CollectNum"] = 0
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][1]["CollectInfo"] = CollectInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][1]["ManyMonsterInfo"] = ManyMonsterInfo[1]

--采集物第10个，
--采集物逻辑，生成采集器
--触发器逻辑：1、生成10个采集物；2、刷丧尸潮；
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CollectNum"] = 10
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][1] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][1]["GenId"] = 3120043
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][1]["Message"] = "采集器出现在左上方"
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][2] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][2]["GenId"] = 3120044
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][2]["Message"] = "采集器出现在右上方"
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][3] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][3]["GenId"] = 3120045
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][3]["Message"] = "采集器出现在左下方"
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][4] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][4]["GenId"] = 3120046
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CaiJiQiInfo"][4]["Message"] = "采集器出现在右下方"
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["CollectInfo"] = CollectInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][2]["ManyMonsterInfo"] = ManyMonsterInfo[1]

--采集物15个
--采集物逻辑：无
--触发器：1、生成追击怪物2个；
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][3] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][3]["CollectNum"] = 15
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][3]["MonsterInfo"] = MonsterInfo

--采集物20个
--采集物：生成采集器
--采集器生成同时，生成1个减怪buff
--触发器：1、删除现有追击怪；2、删除小房间里的buff（删除怪物）；3、生成10个采集物；4、刷丧尸潮
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4]["CollectNum"] = 20
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4]["CaiJiQiInfo"] = CaiJiQiInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4]["CollectInfo"] = CollectInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4]["tRemoveMonsterGenId"] = {3120009,3120010}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4]["tRemoveBuffGenId"] = {3120058,3120059,3120060,3120061}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][4]["ManyMonsterInfo"] = ManyMonsterInfo[1]

--25个
--采集物逻辑：生成4只追击怪
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["CollectNum"] = 25
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["MonsterInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["MonsterInfo"]["tGenId"] = {3120009,3120010,3120062,3120063}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["MonsterInfo"]["tPath"] = {52,53,54,55}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["MonsterInfo"]["MonsterGroupId"] = 200593
-- rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["MonsterInfo"]["InitSpeedRange"] = {20,30}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][5]["MonsterInfo"]["Title"] = "警告：有追击怪进入请小心"


--30ge
--采集物逻辑；1、刷采集器；2、刷buff(减速减视野)
--1、刷10个采集物；2、删除减速减视野buff；3、删除追击怪；4、刷2波丧尸潮；5、刷舔食者
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CollectNum"] = 30
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CaiJiQiInfo"] = CaiJiQiInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CaiJiBuffInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CaiJiBuffInfo"]["tGenId"] = 3120049
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CaiJiBuffInfo"]["tPos"] = tPos.Buff
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CaiJiBuffInfo"]["tNPCGroupId"] = {30636,30638}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["tGenId"] = {3120011}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["tPath"] = {52,53,54,55}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["tRotation"] = {90,180,-90,0}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["MonsterGroupId"] = 200595
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["Size"] = 1.2
-- rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["InitSpeedRange"] = 40
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ChuFaMonsterInfo"]["Title"] = "警告：有强大的舔食者进入请小心"
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["tRemoveMonsterGenId"] = {3120009,3120010,3120062,3120063}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["tRemoveBuffGenId"] = {3120049}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["CollectInfo"] = CollectInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][6]["ManyMonsterInfo"] = ManyMonsterInfo[2]


--35
--采集物出现丧尸潮
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][7] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][7]["CollectNum"] = 35
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][7]["CaiJiManyMonsterInfo"] = ManyMonsterInfo[1]

--40
--1、刷buff；2、刷采集器；3、

rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CollectNum"] = 40
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CaiJiQiInfo"] = CaiJiQiInfo2
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CaiJiBuffInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CaiJiBuffInfo"]["tGenId"] = 3120049
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CaiJiBuffInfo"]["tPos"] = tPos.Buff
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CaiJiBuffInfo"]["tNPCGroupId"] = {30636,30638}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["CollectInfo"] = CollectInfo
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ManyMonsterInfo"] = ManyMonsterInfo[2]
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["tGenId"] = {3120012,3120064}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["tPath"] = {52,53,54,55}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["tRotation"] = {90,180,-90,0}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["MonsterGroupId"] = 200595
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["Size"] = 1.2
-- rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["InitSpeedRange"] = 40
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["ChuFaMonsterInfo"]["Title"] = "警告：有强大的舔食者进入请小心"
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["BuffInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["BuffInfo"]["tGenId"] = {3120051}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["BuffInfo"]["tPos"] = tPos.Buff
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][8]["BuffInfo"]["tNPCGroupId"] = 30645

--45
--采集物出现丧尸潮
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][9] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][9]["CollectNum"] = 45
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][9]["CaiJiManyMonsterInfo"] = ManyMonsterInfo[1]

--50
--采集物出现丧尸潮
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][10] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][10]["CollectNum"] = 50
rwtSurivialCopyMapInfo[nCopyMapMissId]["Events"][10]["Award"] = {}






rwtSurivialCopyMapInfo[nCopyMapMissId]["ChuFaQiInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["ChuFaQiInfo"]["nGenId"] = 3120048
rwtSurivialCopyMapInfo[nCopyMapMissId]["ChuFaQiInfo"]["EffectBef"] = 2018
rwtSurivialCopyMapInfo[nCopyMapMissId]["ChuFaQiInfo"]["EffectAft"] = 2017

rwtSurivialCopyMapInfo[nCopyMapMissId]["PositionInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["PositionInfo"]["CollectPos"] = tPos.Collect
rwtSurivialCopyMapInfo[nCopyMapMissId]["PositionInfo"]["BuffPos"] = tPos.Buff
rwtSurivialCopyMapInfo[nCopyMapMissId]["PositionInfo"]["Buff_2Pos"] = tPos.Buff




--===================================
--任务目标配置
rwtTarget[60289] = {}
rwtTarget[60289]["Title"] = tLuaText[LANGUAGE_CONFIG][60289]
rwtTarget[60289]["ReqTrap"] = {30635}
rwtTarget[60289]["ReqCount"] = 50
-- rwtTarget[60289]["OtherComplete"] = {}
-- rwtTarget[60289]["OtherComplete"]["ChkBattal"] = {200593,200594,200595}

rwtMonsterGroup[200593] = rwtMonsterGroup[200593] or {}
rwtMonsterGroup[200593]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200594] = rwtMonsterGroup[200594] or {}
rwtMonsterGroup[200594]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200595] = rwtMonsterGroup[200595] or {}
rwtMonsterGroup[200595]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200650] = rwtMonsterGroup[200650] or {}
rwtMonsterGroup[200650]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200651] = rwtMonsterGroup[200651] or {}
rwtMonsterGroup[200651]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200652] = rwtMonsterGroup[200652] or {}
rwtMonsterGroup[200652]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200653] = rwtMonsterGroup[200653] or {}
rwtMonsterGroup[200653]["PassCopyByChkBattle"] = 3120
--简单难度副本
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60289}
rwtCopyMapMission[nCopyMapMissId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1212
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 99990

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 3120048
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = 2018

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "Buff"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = {}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "Monster"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = {}

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["ValueRes"] = "Buff_2"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["SetValue"] = {}


