--region *.lua
--Date
--生存副本-1
--NiZW  


--endregion


--===========================副本基础配置====================================--
local tEnterCreateGen = {
    3120001,3120002,                    --初始追击怪
    3120003,3120004,                    --巡逻怪
    3120005,3120006,3120007,3120008,    --潜伏怪
    3120062,
}

local tCollectGen = {
    3120029,
    3120030,
    3120031,
    3120032,
    3120033,
    3120034,
    3120035,
    3120036,
    3120037,
    3120038,
    3120065,
    3120066,
    3120067,
    3120068,
    3120069,
    3120070,
    3120071,
    3120072,
}
local nCopyMapMissId = 3120

local tTrap = {}
tTrap.Collect   = 30635
tTrap.Buff      = 30636
tTrap.DeBuff    = 30638

-- SendSystemMessage
rwtNpcGroup[tTrap.Collect] = rwtNpcGroup[tTrap.Collect] or {}
rwtNpcGroup[tTrap.Collect]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.Collect]["DetailType"] = CONST_SURVIVAL_TYPE.Collect
rwtNpcGroup[tTrap.Collect]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.Collect]["nTempdata"] = 1212
rwtNpcGroup[tTrap.Collect]["CreateMonsterNeedNum"] = 5
rwtNpcGroup[tTrap.Collect]["CreateBuffNeedNum"] = 5
rwtNpcGroup[tTrap.Collect]["PlayMessage"] = "<color=#" .. CONST_COLOR_CODE.RED ..">注意有新的丧失加入，请小心躲避。同时地上出现不明波动</color>"
rwtNpcGroup[tTrap.Collect]["PlayTimes"] = 3
rwtNpcGroup[tTrap.Collect]["CollectNum"] = 100
-- rwtNpcGroup[tTrap.Collect]["SpecialNumCreate"] = {}
-- rwtNpcGroup[tTrap.Collect]["SpecialNumCreate"]["Num"] = 10
-- rwtNpcGroup[tTrap.Collect]["SpecialNumCreate"]["Creats"] = {3120063,3120064}
-- rwtNpcGroup[tTrap.Collect]["SpecialNumCreate"]["Fun"] = function()
--     rwChangeMonsterRounds(3120063,0,40)
--     rwStatusAddHide(999)
--     rwStoryTrigger(15521,2,0)
-- end
rwtNpcGroup[tTrap.Collect]["RecordPosKey"] = "CollectPos"
rwtNpcGroup[tTrap.Collect]["FinishAward"] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"]["AwardId"] = 1000285
rwtNpcGroup[tTrap.Collect]["FinishAward"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

function rwCopyMapSurvival_ShowSelf()
    rwStatusAddHide(3)
end
rwtCGFinish[15521] = rwtCGFinish[15521] or {}
table.insert(rwtCGFinish[15521],rwCopyMapSurvival_ShowSelf)

rwtNpcGroup[tTrap.Buff] = rwtNpcGroup[tTrap.Buff] or {}
rwtNpcGroup[tTrap.Buff]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.Buff]["DetailType"] = CONST_SURVIVAL_TYPE.Buff
rwtNpcGroup[tTrap.Buff]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.Buff]["RecordPosKey"] = "tBuffPos"
rwtNpcGroup[tTrap.Buff]["Buff"] = {}
rwtNpcGroup[tTrap.Buff]["Buff"][1] = {}
rwtNpcGroup[tTrap.Buff]["Buff"][1]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Minus_Speed
rwtNpcGroup[tTrap.Buff]["Buff"][1]["BuffParms"] = 20
rwtNpcGroup[tTrap.Buff]["Buff"][2] = {}
rwtNpcGroup[tTrap.Buff]["Buff"][2]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.HIDE
rwtNpcGroup[tTrap.Buff]["Buff"][2]["BuffParms"] = 5
rwtNpcGroup[tTrap.Buff]["Buff"][3] = {}
rwtNpcGroup[tTrap.Buff]["Buff"][3]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Minus_View
rwtNpcGroup[tTrap.Buff]["Buff"][3]["BuffParms"] = 150

rwtNpcGroup[tTrap.DeBuff] = rwtNpcGroup[tTrap.DeBuff] or {}
rwtNpcGroup[tTrap.DeBuff]["Type"] = CONST_NPCGROUP_TYPE.SurvivalTrap
rwtNpcGroup[tTrap.DeBuff]["DetailType"] = CONST_SURVIVAL_TYPE.Buff
rwtNpcGroup[tTrap.DeBuff]["MapId"] = nCopyMapMissId
rwtNpcGroup[tTrap.DeBuff]["RecordPosKey"] = "tBuffPos"
rwtNpcGroup[tTrap.DeBuff]["Buff"] = {}
rwtNpcGroup[tTrap.DeBuff]["Buff"][1] = {}
rwtNpcGroup[tTrap.DeBuff]["Buff"][1]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Add_Speed
rwtNpcGroup[tTrap.DeBuff]["Buff"][1]["BuffParms"] = {}
rwtNpcGroup[tTrap.DeBuff]["Buff"][1]["BuffParms"] = 60
rwtNpcGroup[tTrap.DeBuff]["Buff"][2] = {}
rwtNpcGroup[tTrap.DeBuff]["Buff"][2]["BuffType"] = CONST_SURVIVAL_MONSTERBUFF.Add_View
rwtNpcGroup[tTrap.DeBuff]["Buff"][2]["BuffParms"] = {}
rwtNpcGroup[tTrap.DeBuff]["Buff"][2]["BuffParms"] = 350


rwtSurivialCopyMapInfo[nCopyMapMissId] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][1] =  "-271.6,-21.166,-33.1"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][2] =  "-271.6,-21.166,-25.9"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][3] =  "-262.4,-21.166,-33.1"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][4] =  "-253.3,-21.166,-28.5"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][5] =  "-240.62,-21.166,-34.82"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][6] =  "-240.62,-21.166,-25.41"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][7] =  "-229.01,-21.166,-34.81"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][8] =  "-229.01,-21.166,-25.31"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][9] =  "-238.71,-21.166,0"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][10] = "-241.06,-21.166,7.81"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][11] = "-229.71,-21.166,6.56"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][12] = "-234.56,-21.166,-8.51"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][13] = "-240.49,-21.166,-61.97"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][14] = "-227.98,-21.166,-61.97"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][15] = "-230.98,-21.166,-58.16"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][16] = "-234.06,-21.166,-48.23"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][17] = "-205.4,-21.166,-25.69"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][18] = "-199.38,-21.166,-25.69"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][19] = "-199.38,-21.166,-33.39"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][20] = "-216.73,-21.166,-29.63"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][21] = "-235.95,-21.166,9.270"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][22] = "-234.74,-21.166,3.650"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][23] = "-234.06,-21.166,-2.399"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][24] = "-234.72,-21.166,-17.876"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][25] = "-274.35,-21.166,-29.449"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][26] = "-266.05,-21.166,-29.469"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][27] = "-257.71,-21.166,-29.845"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][28] = "-246.7,-21.166,-29.370"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][29] = "-235.21,-21.166,-64.005"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][30] = "-234.16,-21.166,-57.231"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][31] = "-234.85,-21.166,-50.695"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][32] = "-234.16,-21.166,-40.238"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][33] = "-195.75,-21.166,-30.543"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][34] = "-202.27,-21.166,-30.543"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][35] = "-209.00,-21.166,-30.015"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"][36] = "-223.17,-21.166,-29.357"


rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][1] = "-249.27,-21.166,-28.02"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][2] = "-234.57,-21.166,-44.19"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][3] = "-234.57,-21.166,-12.78"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][4] = "-220.83,-21.166,-28.99"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][5] = "-225.57,-21.166,-36.02"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][6] = "-228.96,-21.166,-21.1"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][7] = "-238.45,-21.166,-22.81"
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffPos"][8] = "-237.41,-21.166,-35.46"
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"][30636] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"][30636]["MinRate"] = 0
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"][30636]["MaxRate"] = 5000
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"][30638] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"][30638]["MinRate"] = 5001
rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"][30638]["MaxRate"] = 10000
-- rwtSurivialCopyMapInfo[nCopyMapMissId]["BuffNPCGroupInfo"] = {30636,30638}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][1] =  3120039
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][2] =  3120040
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][3] =  3120041
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][4] =  3120042
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][5] =  3120043
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][6] =  3120044
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][7] =  3120045
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][8] =  3120046
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][9] =  3120047
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][10] = 3120048
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][11] = 3120049
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][12] = 3120050
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][13] = 3120051
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][14] = 3120052
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][15] = 3120053
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][16] = 3120054
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][17] = 3120055
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][18] = 3120056
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][19] = 3120057
rwtSurivialCopyMapInfo[nCopyMapMissId]["tBuffGenIds"][20] = 3120058

rwtSurivialCopyMapInfo[nCopyMapMissId]["MonsterSpeedRange"] = {20,40}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterPath"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterPath"][1] = 52
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterPath"][2] = 53
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterPath"][3] = 54
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterPath"][4] = 55
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"] = {}
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][1]  = 3120009
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][2]  = 3120010
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][3]  = 3120011
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][4]  = 3120012
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][5]  = 3120013
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][6]  = 3120014
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][7]  = 3120015
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][8]  = 3120016
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][9]  = 3120017
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][10] = 3120018
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][11] = 3120019
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][12] = 3120020
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][13] = 3120021
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][14] = 3120022
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][15] = 3120023
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][16] = 3120024
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][17] = 3120025
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][18] = 3120026
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][19] = 3120027
rwtSurivialCopyMapInfo[nCopyMapMissId]["tMonsterGenId"][20] = 3120028
rwtSurivialCopyMapInfo[nCopyMapMissId]["ExtraMonsterGenId"] = {3120063}
rwtSurivialCopyMapInfo[nCopyMapMissId]["nMonsterGroupId"] = 200593

--===================================
--任务目标配置
rwtTarget[60289] = {}
rwtTarget[60289]["Title"] = tLuaText[LANGUAGE_CONFIG][60289]
rwtTarget[60289]["ReqTrap"] = 30635
rwtTarget[60289]["ReqCount"] = 100
-- rwtTarget[60289]["OtherComplete"] = {}
-- rwtTarget[60289]["OtherComplete"]["ChkBattal"] = {200593,200594,200595}

rwtMonsterGroup[200593] = rwtMonsterGroup[200593] or {}
rwtMonsterGroup[200593]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200594] = rwtMonsterGroup[200594] or {}
rwtMonsterGroup[200594]["PassCopyByChkBattle"] = 3120

rwtMonsterGroup[200595] = rwtMonsterGroup[200595] or {}
rwtMonsterGroup[200595]["PassCopyByChkBattle"] = 3120

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

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "CollectPos"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "tBuffPos"
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CreateSurvivalCollect"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CreateSurvivalCollect"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CreateSurvivalCollect"][1]["NPCGroupId"] = 30635
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CreateSurvivalCollect"][1]["tGenIds"] = tCollectGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CreateSurvivalCollect"][1]["MapId"] = nCopyMapMissId
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["CreateSurvivalCollect"][1]["tPosInfo"] = rwtSurivialCopyMapInfo[nCopyMapMissId]["tRandomPos"]
