--region rwNPCGroup_ManyHeroes.lua
--Purpose:		多英雄副本NPC模板
--Creator: 		倪祖伟
--Created:		2019-09-19
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-04-14 $
--RCS-ID:		$Revision: 4 $
--endregion

local nEffect_WallDisapper = 2065
local nEffect_Qiu = 2073        -- 战后紫色球，光效ID
local nEffect_QiuWZ = 2006        -- 完整的战后紫色球，光效ID，不再生成的
local nEffect_FaZhen_Death = 2072  --怪物死亡后留下的法阵光效
local nEffect_QiuScale = 50     -- 默认0.7倍大小
local nDefultMap = CONST_MANYHEROS_MAP.NewJianYu
local nValveLaMen = 1141 --监狱拉门机关
local tDialog = {}
tDialog.DefDialogNoClean = 6661     --默认对白，与BOSS战前，未清光小怪
tDialog.DefDialogClean = 6660       --默认对白，与BOSS战前，杀光了小怪
tDialog.DefBossBattleAft = 6662     --默认对白，与BOSS战后

local tPosLightWall = {}
tPosLightWall[CONST_MANYHEROS_MAP.MOZUZHIXIN] = {           -- 魔族之心地图，光墙位置
    "-235.26,-21.17,11.90",     -- 第一层
    "-236.03,-20.89,55.55",     -- 第二层
}
tPosLightWall[CONST_MANYHEROS_MAP.DYXKSCC] = {              -- 多英雄-狂沙虫巢地图，光墙位置
    "-16.47282,0.09567789,16.9677",     -- 第一层
    "-37.37526,0.09567789,34.49336",     -- 第二层
}
tPosLightWall[CONST_MANYHEROS_MAP.DYXKSCC_TWO] = {          -- 多英雄-狂沙虫巢地图-两小怪，光墙位置
    "-16.47282,0.09567789,16.9677",
    "-37.37526,0.09567789,34.49336",
}
tPosLightWall[CONST_MANYHEROS_MAP.DYXHLZJ] = {              -- 多英雄-黑龙战舰，光墙位置
    "3.814,-3.67,-2.828",     -- 第一层
    "-16.58,-0.21,17.41",     -- 第二层
}
tPosLightWall[CONST_MANYHEROS_MAP.DYXLXMD] = {              -- 多英雄-露西墓地，光墙位置
    "0,0,0",
    "0,0,0",
}
tPosLightWall[CONST_MANYHEROS_MAP.NewJianYu] = {            -- 新版监狱光墙位子
    "-9.2,0.01,-15",
    "9.2,0.01,-15",
    "0.27871,0.01,12.15",
}
tPosLightWall[CONST_MANYHEROS_MAP.NewJianYu_2] = {            -- 新版监狱光墙位子
    "0.27871,0.01,12.15",
}

local tRotationLightWall = {}
tRotationLightWall[CONST_MANYHEROS_MAP.MOZUZHIXIN] = {      -- 魔族之心地图，光墙角度
    "0,180,0",     -- 第一层
    "0,180,0",     -- 第二层
}
tRotationLightWall[CONST_MANYHEROS_MAP.DYXKSCC] = {         -- 多英雄-狂沙虫巢地图，光墙角度
    "0,-38,0",     -- 第一层
    "0,135,0",     -- 第二层
}
tRotationLightWall[CONST_MANYHEROS_MAP.DYXKSCC_TWO] = {     -- 多英雄-狂沙虫巢地图，光墙角度
    "0,-38,0",     -- 第一层
    "0,135,0",     -- 第二层
}

tRotationLightWall[CONST_MANYHEROS_MAP.DYXHLZJ] = {         -- 多英雄-黑龙战舰，光墙角度
    "0,140,0",     -- 第一层
    "0,140,0",     -- 第二层
}
tRotationLightWall[CONST_MANYHEROS_MAP.DYXLXMD] = {         -- 多英雄-露西墓地，光墙角度
    "0,0,0",     -- 第一层
    "0,0,0",     -- 第二层
}
tRotationLightWall[CONST_MANYHEROS_MAP.NewJianYu] = {       -- 新版监狱光墙位子
    "0,180,0",     -- 第一层1
    "0,180,0",     -- 第一层2
    "0,180,0",     -- 第二层
}
tRotationLightWall[CONST_MANYHEROS_MAP.NewJianYu_2] = {       -- 新版监狱光墙位子
    "0,180,0",     -- 第二层
}
local tPosQiu = {}
tPosQiu[CONST_MANYHEROS_MAP.MOZUZHIXIN] = {                 -- 魔族之心地图，战后紫色球位置
    "-237.97,-21.17,3.5",           --   Boss
    "-229.97,-21.17,3.5",           -- 3      4
    "-240.08,-21.14,47",            -- 1      2
    "-231.32,-21.14,47",
}
tPosQiu[CONST_MANYHEROS_MAP.DYXKSCC] = {                    -- 多英雄-狂沙虫巢地图，战后紫色球位置
    "-14.74,0.09567789,8.97",           --   Boss
    "-8.75,0.09567789,14.07",           -- 3      4
    "-36.87,0.09567789,26.21",            -- 1      2
    "-28.55,0.09567789,33.59",
}
tPosQiu[CONST_MANYHEROS_MAP.DYXKSCC_TWO] = {                -- 多英雄-狂沙虫巢地图，战后紫色球位置
    "-36.87,0.09567789,26.21",      --   Boss
    "-28.55,0.09567789,33.59",      -- 1      2
}
tPosQiu[CONST_MANYHEROS_MAP.DYXHLZJ] = {                    -- 多英雄-黑龙战舰，战后紫色球位置
    "3.043,-7.94,-14.84",           --   Boss
    "15.885,-7.94,-2.41",           -- 3      4
    "-12.74,-4.516,1.71",           -- 1      2
    "-1.01,-4.516,13.01",
}
tPosQiu[CONST_MANYHEROS_MAP.DYXLXMD] = {                    -- 多英雄-露西墓地，战后紫色球位置
    "25.27,1.64,-15.47",
    "16.48,1.64,-24.2",
    "0.28,0.06,11.01",
    "-1.64,0.06,-5.43",
}
tPosQiu[CONST_MANYHEROS_MAP.NewJianYu] = {                  -- 新版监狱光战后紫色球位置
    "-20.800,0.08,-20.1",
    "22.4000,0.08,-22.3",
    "-20.960,0.08,5.391",
    "21.6500,0.08,4.101",
}
tPosQiu[CONST_MANYHEROS_MAP.NewJianYu_2] = {                  -- 新版监狱光战后紫色球位置--两只怪
    "-20.960,0.08,5.391",
    "21.6500,0.08,4.101",
}

--================================================
rwCopyMap_ManyHeroes = class("rwCopyMap_ManyHeroes",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.ManyHeroes] = rwCopyMap_ManyHeroes

function rwCopyMap_ManyHeroes:EventProcess()

    if not rwtNpcGroup[self._NpcGroupType] then
        return
    end

    local info = rwtNpcGroup[self._NpcGroupType]

    --用于校验是否将前面的怪杀了1只或全清
    --防止作弊
    if not rwCopyMap_ManyHeroes_ChkBattleBef(info["tGenIdLastMonsterNpc"]) then
        return
    end
    --=================================


    if info["isBoss"] then
        self:BossProcess()
    else
        self:NorMalMonsterProcess()
    end
end

--根据掩码为添加特性
--根据小怪是否清楚，播放isClean对白
function rwCopyMap_ManyHeroes:BossProcess()

    local nDialogId
    local info = self._Info
    if not rwCopyMap_ManyHeroes_CheckIsClen(info["buff"],info["buffTempdata"]) then
        --未全清小怪
        if info["BattalDialogBef"] then
            nDialogId = info["BattalDialogBef"]["NoClean"] or tDialog.DefDialogNoClean
            rwOpenNpcChatDialog(nDialogId,CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
        else
            self:OpenFormation()
        end
    else
        --全清小怪
        if info["BattalDialogBef"] then
            nDialogId = info["BattalDialogBef"]["Clean"] or tDialog.DefDialogClean
            rwOpenNpcChatDialog(nDialogId,CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
        else
            self:OpenFormation()
        end
    end
end

function rwCopyMap_ManyHeroes:NorMalMonsterProcess()
    if rwChkTable(self._Info["BattalBef"]) then
        rwBaseAward:create(self._Info["BattalBef"],rwUserGetId(),self._GenEventId):Process()
    
    end
    if not self._Info["NotOpenFormation"] then
        self:OpenFormation()
    end
end

function rwCopyMap_ManyHeroes:OpenFormation()
    if not self._Info["GenIDMonster"]then
        return
    end
    if not rwHasGenEvent(self._Info["GenIDMonster"]) then
        rwAddGenEvent(self._Info["GenIDMonster"])
    end

    rwOpenLocalWnd(CONST_MENUTYPE.Formation,self._Info["GenIDMonster"])
end


function rwCopyMap_ManyHeroes_Battle_result(nResult,MonsterType,GenEventId)
    if not rwtManyHeroMonsterInfo[GenEventId] or not rwtManyHeroMonsterInfo[GenEventId]["NPCGroupId"] then
        return
    end
    local NpcGroupType = rwtManyHeroMonsterInfo[GenEventId]["NPCGroupId"]
    --删除旧的光效
    rwCopyMap_ManyHeroes_RemoveEffect(NpcGroupType)
    rwCopyMap_ManyHeroes_ReturnMap(NpcGroupType)--回到地图逻辑

    if nResult == 1 then
        rwCopyMap_ManyHeroes_BattleWin(MonsterType,GenEventId)
    end
end

--战后事件
--删除对应的NPC及对应的障碍门
--对应的BOSS特性掩码位，改1
--播放战后对白
--生成击杀他的英雄们
function rwCopyMap_ManyHeroes_BattleWin(MonsterType,GenEventId)
    local NpcGroupType = rwtManyHeroMonsterInfo[GenEventId]["NPCGroupId"]
    local info = rwCopyMap_ManyHeroes_GetNpcInfo(NpcGroupType)
    -- local nDialogId = 0
    local nTypeDialog = CONST_NPCCHAT_TYPE.MANYHEROCOPY
    local mapid = info["nMapIndex"] or nDefultMap

    --是小怪
    if not info["isBoss"] then
        local BossInfo = rwCopyMap_ManyHeroes_GetNpcInfo(info["MyBossId"])

        rwAddGenEvent(info["GenIdBattelAftNpc"])        --删除原先的NPC后，要再生成一个自己，表示被囚禁，
        rwCopyMap_ManyHeroes_CreatePurpleShade(info)    --NPC 地上出现紫色罩子
        rwUserTempDataSet(BossInfo["buffTempdata"],1,CONST_TEMP_DATA["Data"..info["BuffIndex"]],rwUserGetId())  --对应掩码为设1，表示已删除该buff
        rwRemoveMonsterTalent(BossInfo["GenIDMonster"],BossInfo["MonsterID"],BossInfo["buff"][info["BuffIndex"]])--删除BOSS特性

        if rwChkTable(info["BattalAft"]) then
            rwBaseAward:create(info["BattalAft"],rwUserGetId(),GenEventId):Process()
        end

        rwCopyMap_ManyHeroes_DeleteWall(info) 
        if mapid == CONST_MANYHEROS_MAP.NewJianYu or mapid == CONST_MANYHEROS_MAP.NewJianYu_2 then
            rwAddGenEvent(info["ValveGenIdLaMen"])
        end
    else
        --Boss战后对白
        if rwChkInt(info["BattalDialogAft"]) then
            rwOpenNpcChatDialog(info["BattalDialogAft"],nTypeDialog,GenEventId)
        -- else
            -- rwOpenNpcChatDialog(tDialog.DefBossBattleAft,nTypeDialog,GenEventId)
        end
    end

    --删除NPC
    if info["GenIdNPCGroup"] and rwHasGenEvent(info["GenIdNPCGroup"]) then
        rwDelGenEvent(info["GenIdNPCGroup"])
    end
end

function rwCopyMap_ManyHeroes_DialogCallBack(nNPCGroupGenId)
    if not rwtManyHeroNPCGenIDInfo[nNPCGroupGenId] then
        return
    end
    --若，这个NPC不在地图上，说明无须战斗
    if not rwHasGenEvent(nNPCGroupGenId) then
        return
    end

    local info = rwCopyMap_ManyHeroes_GetNpcInfo(rwtManyHeroNPCGenIDInfo[nNPCGroupGenId]["NPCGroupId"])

    --可控制是否一对完话，就战斗，默认为是
    local nAutoBattle = info["isAutoBattle"] or 1

    if rwChkInt(info["GenIDMonster"]) and nAutoBattle == 1 then
        if not rwHasGenEvent(info["GenIDMonster"]) then
            rwAddGenEvent(info["GenIDMonster"])
        end
        rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
    end

end

--===================================================
function rwCopyMap_ManyHeroes_ReturnMap(NpcGroupType)
    --遍历掩码，检测哪只怪物死亡,死亡的怪物加上完整紫色球光效
    --若是新监狱地图，需将机关门改为永久关闭
    local tNpcInfo =rwCopyMap_ManyHeroes_GetNpcInfo(NpcGroupType)
    local tBossInfo = {}
    if tNpcInfo["isBoss"] then
        tBossInfo = tNpcInfo
    else
        tBossInfo = rwCopyMap_ManyHeroes_GetNpcInfo(tNpcInfo["MyBossId"])
    end
    local mapIndex = tNpcInfo["nMapIndex"] or nDefultMap
    for i,v in pairs(tBossInfo["NpcChildren"]) do
        if rwTempDataGetValue(tBossInfo["buffTempdata"],CONST_TEMP_DATA["Data"..i],rwUserGetId()) == 1 then
            local Pos = tPosQiu[mapIndex][i]
            local Scale = tNpcInfo["BattelAftNpcEffectScale"] or nEffect_QiuScale     --紫色罩罩，默认0.7被大小
            rwSpecialStatus_AddEffect(7,0,nEffect_QiuWZ,Pos,0,Scale,0)
            rwUserTempDataSet(tBossInfo["buffTempdata"],2,CONST_TEMP_DATA["Data"..i],rwUserGetId())--设掩码2，表示已经有关效了
            --监狱地图 将机关门改为永久关闭状态
            if mapIndex == CONST_MANYHEROS_MAP.NewJianYu or mapIndex == CONST_MANYHEROS_MAP.NewJianYu_2 then
                local otherInfo = rwCopyMap_ManyHeroes_GetNpcInfo(v)
                rwUpdateValveData(otherInfo.ValveGenIdLaMen,0)
            end
        elseif rwTempDataGetValue(tBossInfo["buffTempdata"],CONST_TEMP_DATA["Data"..i],rwUserGetId()) == 2 then
            if mapIndex == CONST_MANYHEROS_MAP.NewJianYu or mapIndex == CONST_MANYHEROS_MAP.NewJianYu_2 then
                local otherInfo = rwCopyMap_ManyHeroes_GetNpcInfo(v)
                rwUpdateValveData(otherInfo.ValveGenIdLaMen,0)
            end
        end
    end

end


function rwCopyMap_ManyHeroes_DeleteWall(tEFInfo)
    -- if tEFInfo.MapIndex == CONST_MANYHEROS_MAP.NewJianYu and tEFInfo.nFloor == 1 then
    --     if not tEFInfo.NotDelWall then
    --         rwCopyMap_ManyHeroes_CreateWallEffect(tEFInfo)
    --         rwDelGenEvent(tEFInfo.GenIdObstacles)
    --     end
    -- else
    --     if not tEFInfo.NotDelWall and rwHasGenEvent(tEFInfo.ncompanion) then
    --         rwCopyMap_ManyHeroes_CreateWallEffect(tEFInfo)
    --         rwDelGenEvent(tEFInfo.GenIdObstacles)
    --     end
    -- end

    if not tEFInfo.NotDelWall then
        if rwChkInt(tEFInfo.GenIdCompanion) and not rwHasGenEvent(tEFInfo.GenIdCompanion) then
            return
        end
        if rwChkInt(tEFInfo.GenIdObstacles) then
            rwCopyMap_ManyHeroes_CreateWallEffect(tEFInfo)
            rwDelGenEvent(tEFInfo.GenIdObstacles)
        elseif rwChkTable(tEFInfo.GenIdObstacles) then
            local CompanionNpc = rwtManyHeroNPCGenIDInfo[tEFInfo.GenIdCompanion]["NPCGroupId"]
            local tInfoCompan = rwCopyMap_ManyHeroes_GetNpcInfo(CompanionNpc)
            rwCopyMap_ManyHeroes_CreateWallEffect(tEFInfo)
            rwCopyMap_ManyHeroes_CreateWallEffect(tInfoCompan)
            for i,v in ipairs(tEFInfo.GenIdObstacles) do
                rwDelGenEvent(v)
            end
        end
    end
end

function rwCopyMap_ManyHeroes_RemoveEffect(NpcGroupType)
    local MoveWalleftId = rwtNpcGroup[NpcGroupType]["MoveWalleftId"] or nEffect_WallDisapper
    rwSpecialStatus_RemoveEffect(7,0,MoveWalleftId)

    local nEft = rwtNpcGroup[NpcGroupType]["BattelAftNpcEffect"] or nEffect_Qiu
    local nEft_MonsterDeath = rwtNpcGroup[NpcGroupType]["MonsterDeathEffect"] or nEffect_FaZhen_Death
    rwSpecialStatus_RemoveEffect(7,0,nEft)
    rwSpecialStatus_RemoveEffect(7,0,nEft_MonsterDeath)
end

--播放光墙消失光效
function rwCopyMap_ManyHeroes_CreateWallEffect(Info)
    if rwChkInt(Info.GenIdCompanion) and not rwHasGenEvent(Info.GenIdCompanion) then
        return
    end
    local MoveWalleftId = Info["MoveWalleftId"] or nEffect_WallDisapper
    local MapIndex = Info.nMapIndex or nDefultMap
    if MapIndex == CONST_MANYHEROS_MAP.NewJianYu then
        if Info.Floor==1 then
            --若是第一层，第一层的怪一只对应着一个空气墙
            local Pos = tPosLightWall[MapIndex][Info.BuffIndex]
            local Rot = tRotationLightWall[MapIndex][Info.BuffIndex]
            rwSpecialStatus_AddEffect(7,0,MoveWalleftId,Pos,Rot,100,0)
        elseif Info.Floor==2 then
            local Pos = tPosLightWall[MapIndex][3]
            local Rot = tRotationLightWall[MapIndex][3]
            rwSpecialStatus_AddEffect(7,0,MoveWalleftId,Pos,Rot,100,0)
        end
    elseif MapIndex == CONST_MANYHEROS_MAP.NewJianYu_2 then
        local Pos = tPosLightWall[MapIndex][1]
        local Rot = tRotationLightWall[MapIndex][1]
        rwSpecialStatus_AddEffect(7,0,MoveWalleftId,Pos,Rot,100,0)
    end
end
--播放紫色罩子的光效
function rwCopyMap_ManyHeroes_CreatePurpleShade(info)
    --被囚禁的光效默认是2006紫色罩子
    local nEft = info["BattelAftNpcEffect"] or nEffect_Qiu
    local nEft_MonsterDeath = info["MonsterDeathEffect"] or nEffect_FaZhen_Death
    local Pos = "0,0,0"
    local MapIndex = info["nMapIndex"] or nDefultMap

    if info["BattleEffectPos"] then
        Pos = info["BattleEffectPos"]
    else
        Pos = tPosQiu[MapIndex][info["BuffIndex"]]
    end

    local Rot = info["BattelAftNpcEffectRot"] or "0,0,0"
    local Scale = info["BattelAftNpcEffectScale"] or nEffect_QiuScale     --紫色罩罩，默认0.7被大小
    rwSpecialStatus_AddEffect(7,0,nEft,Pos,Rot,Scale,0)
    rwSpecialStatus_AddEffect(7,0,nEft_MonsterDeath,Pos,"",100,0)
end


function rwCopyMap_ManyHeroes_GetNpcInfo(NpcGroupId)
    local ret = {}
    if not rwtNpcGroup[NpcGroupId] then
        return ret
    end
    ret = rwtNpcGroup[NpcGroupId]
    return ret
end



--判断掩码的data位
--info是data位的表{1,2,3,4}
--与参数Index有一个相同的data值，就返回TRUE()
function rwCopyMap_ManyHeroes_CheckIsClen(tBuff,nTempdata)
    if not rwTempDataIsExist(nTempdata) then
        return false
    end

    --local nIndex = index or 0
    if rwChkTable(tBuff) then
        for i = 1,#tBuff do
            if rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data"..i],rwUserGetId()) == 0 then
                return false
            end
        end
    end
    return true
end

--判断上一层的怪物是否已击杀一个
function rwCopyMap_ManyHeroes_ChkBattleBef(tGenIdLastMonsterNpc)
    local boo = false
    if rwChkTable(tGenIdLastMonsterNpc) then
        for i,v in ipairs (tGenIdLastMonsterNpc) do
            if not rwHasGenEvent(v)then
                return true
            end
        end
    else
        boo = true
    end

    return boo
end

--新监狱的机关门逻辑
--0-永久关闭
--1-开门
--2-关门
tValve[nValveLaMen] ={}
tValve[nValveLaMen]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValveLaMen]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    --打开提示对白
    rwUpdateValveData(nGenId,1)
end
tValve[nValveLaMen]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId)
    rwUpdateValveData(nGenId,2)
end
