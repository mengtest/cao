--region *.lua
--Date
--多英雄副本-雾夜事件簿-11关
--NiZW  


--endregion


--===========================副本基础配置====================================--
local tEnterCreateGen = {
    3097001,3097002,3097003,    --3只NPC
    3097004,3097005,3097006,    --3怪
    3097007,3097008,            --空气墙
}
local nCopyMapMissId = 3097

local tNpcGroup = {}
tNpcGroup.Lang      = 20636
tNpcGroup.BaiLang   = 20637
tNpcGroup.WZLang    = 20638


rwtNpcGroup[tNpcGroup.Lang] = rwtNpcGroup[tNpcGroup.Lang] or {}
rwtNpcGroup[tNpcGroup.Lang]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.Lang]["isBoss"] = false                           --false则小怪，默认是小怪
rwtNpcGroup[tNpcGroup.Lang]["BattalDialogBef"] = 6641                   --战前对白，目前仅第一关有
rwtNpcGroup[tNpcGroup.Lang]["BattalDialogAft"] = {} 
rwtNpcGroup[tNpcGroup.Lang]["BattalDialogAft"]["Clean"] = 6642          --战后同伴已死对白，目前仅第一关有
rwtNpcGroup[tNpcGroup.Lang]["GenIdObstacles"] = 3097008                 --怨灵墙GenID
rwtNpcGroup[tNpcGroup.Lang]["ObstacleDisCg"] = 15519                    --怨灵墙消失动画
rwtNpcGroup[tNpcGroup.Lang]["GenIdNPCGroup"] = 3097001                  --NPCGroup的GenId
rwtNpcGroup[tNpcGroup.Lang]["GenIDMonster"] = 3097004                   --怪物GenID
rwtNpcGroup[tNpcGroup.Lang]["MonsterGroupID"] = 200466                  --怪物组ID，战后事件需要用到，靠他索引
rwtNpcGroup[tNpcGroup.Lang]["GenIdBattelAftNpc"] = 3097015              --战后生成的被囚禁的NPCGenId，无范围
rwtNpcGroup[tNpcGroup.Lang]["MyBossId"] = 20638                         --他的BOSS NPCGroupID
rwtNpcGroup[tNpcGroup.Lang]["BuffIndex"] = 1                            --守护BOSS Buff的data位
rwtNpcGroup[tNpcGroup.Lang]["companionIndex"] = {2}                     --他的同伴
rwtNpcGroup[tNpcGroup.Lang]["tGenIdLastMonsterNpc"] = nil             --上一层的人，用于防止作弊{genId,genId}
rwtNpcGroup[tNpcGroup.Lang]["Floor"] = 2                                --所处的楼层，用于索引光效的位子
rwtNpcGroup[tNpcGroup.Lang]["nMapIndex"] =CONST_MANYHEROS_MAP.DYXKSCC

rwtNpcGroup[tNpcGroup.BaiLang] = rwtNpcGroup[tNpcGroup.BaiLang] or {}
rwtNpcGroup[tNpcGroup.BaiLang]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.BaiLang]["isBoss"] = false
rwtNpcGroup[tNpcGroup.BaiLang]["BattalDialogBef"] = 6644
rwtNpcGroup[tNpcGroup.BaiLang]["BattalDialogAft"] = {}
rwtNpcGroup[tNpcGroup.BaiLang]["BattalDialogAft"]["Clean"] = 6645
rwtNpcGroup[tNpcGroup.BaiLang]["GenIDMonster"] = 3097005
rwtNpcGroup[tNpcGroup.BaiLang]["GenIdObstacles"] = 3097008
rwtNpcGroup[tNpcGroup.BaiLang]["GenIdNPCGroup"] = 3097002
rwtNpcGroup[tNpcGroup.BaiLang]["MonsterGroupID"] = 200467
rwtNpcGroup[tNpcGroup.BaiLang]["GenIdBattelAftNpc"] = 3097016
rwtNpcGroup[tNpcGroup.BaiLang]["MyBossId"] = 20638
rwtNpcGroup[tNpcGroup.BaiLang]["BuffIndex"] = 2
rwtNpcGroup[tNpcGroup.BaiLang]["companionIndex"] = {1}
rwtNpcGroup[tNpcGroup.BaiLang]["tGenIdLastMonsterNpc"] = nil
rwtNpcGroup[tNpcGroup.BaiLang]["ObstacleDisCg"] = 15520
rwtNpcGroup[tNpcGroup.BaiLang]["Floor"] = 2
rwtNpcGroup[tNpcGroup.BaiLang]["nMapIndex"] =CONST_MANYHEROS_MAP.DYXKSCC

function rwCopyMap_ManyHeroes_FirstDisapperWall()
    rwDelGenEvent(3097008)
end

rwtCGFinish[15519] = rwtCGFinish[15519] or {}
table.insert(rwtCGFinish[15519],rwCopyMap_ManyHeroes_FirstDisapperWall)

rwtCGFinish[15520] = rwtCGFinish[15520] or {}
table.insert(rwtCGFinish[15520],rwCopyMap_ManyHeroes_FirstDisapperWall)

rwtNpcGroup[tNpcGroup.WZLang] = rwtNpcGroup[tNpcGroup.WZLang] or {}
rwtNpcGroup[tNpcGroup.WZLang]["Type"] = CONST_NPCGROUP_TYPE.ManyHeroes
rwtNpcGroup[tNpcGroup.WZLang]["isBoss"] = true                          --Boss
rwtNpcGroup[tNpcGroup.WZLang]["BattalDialogBef"] = {}                   
rwtNpcGroup[tNpcGroup.WZLang]["BattalDialogBef"]["Clean"] = 6647        --战前对白，小怪全杀
rwtNpcGroup[tNpcGroup.WZLang]["BattalDialogBef"]["NoClean"] = 6648      --战前对白，小鬼有余
rwtNpcGroup[tNpcGroup.WZLang]["BattalDialogAft"] = 6649                 --战后对白
rwtNpcGroup[tNpcGroup.WZLang]["GenIDMonster"] = 3097006                 --怪物GenId
rwtNpcGroup[tNpcGroup.WZLang]["GenIdNPCGroup"] = 3097003                --NPCGroupGenId
rwtNpcGroup[tNpcGroup.WZLang]["MonsterGroupID"] = 200468                --怪物组ID
rwtNpcGroup[tNpcGroup.WZLang]["MonsterID"] = 1000770                    --怪物ID
rwtNpcGroup[tNpcGroup.WZLang]["buff"] = {1301,1121}                     --Boss的特性集合
rwtNpcGroup[tNpcGroup.WZLang]["buffTempdata"] = 1178                    --记录特性的掩码
rwtNpcGroup[tNpcGroup.WZLang]["tGenIdLastMonsterNpc"] = {3097001,3097002}         --上一层的人，{}
rwtNpcGroup[tNpcGroup.WZLang]["nMapIndex"] =CONST_MANYHEROS_MAP.DYXKSCC


--机关2
tValve[1092] = tValve[1092] or {}
tValve[1092]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[1092]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    --打开提示对白
    rwOpenNpcChatDialog(6640)
end

--===================================
--任务目标配置
rwtTarget[60185] = {}
rwtTarget[60185]["Title"] = tLuaText[LANGUAGE_CONFIG][21589]
rwtTarget[60185]["KillMonsterGroup"] = 200466
rwtTarget[60185]["ReqCount"] = 1

rwtTarget[60186] = {}
rwtTarget[60186]["Title"] = tLuaText[LANGUAGE_CONFIG][21590]
rwtTarget[60186]["KillMonsterGroup"] = 200467
rwtTarget[60186]["ReqCount"] = 1

rwtTarget[60187] = {}
rwtTarget[60187]["Title"] = tLuaText[LANGUAGE_CONFIG][21591]
rwtTarget[60187]["KillMonsterGroup"] = 200468
rwtTarget[60187]["ReqCount"] = 1


--简单难度副本
rwtCopyMapMission[nCopyMapMissId] = rwtCopyMapMission[nCopyMapMissId] or {}
rwtCopyMapMission[nCopyMapMissId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapMissId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapMissId]["TargetStepNum"] = 2
rwtCopyMapMission[nCopyMapMissId]["Target1"] = {60185,60186}
rwtCopyMapMission[nCopyMapMissId]["Target2"] = {60187}
rwtCopyMapMission[nCopyMapMissId]["Target1_IsNotDel"] = true
rwtCopyMapMission[nCopyMapMissId]["Target1_NeedFinishNum"] = 1

rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = 15518
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["DynCreate"] = tEnterCreateGen
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = 1178
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonGenId"] = rwtNpcGroup[tNpcGroup.WZLang]["GenIDMonster"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["MonsterId"] = rwtNpcGroup[tNpcGroup.WZLang]["MonsterID"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][1]["TalentType"] = rwtNpcGroup[tNpcGroup.WZLang]["buff"][1]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2] = {}
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonGenId"] = rwtNpcGroup[tNpcGroup.WZLang]["GenIDMonster"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["MonsterId"] = rwtNpcGroup[tNpcGroup.WZLang]["MonsterID"]
rwtCopyMapMission[nCopyMapMissId]["CopyMapInit"]["Events"][1]["MonAddTalent"][2]["TalentType"] = rwtNpcGroup[tNpcGroup.WZLang]["buff"][2]
