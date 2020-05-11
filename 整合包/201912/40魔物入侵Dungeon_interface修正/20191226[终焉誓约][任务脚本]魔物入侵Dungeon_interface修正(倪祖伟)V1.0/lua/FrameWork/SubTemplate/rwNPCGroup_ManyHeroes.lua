--region rwNPCGroup_ManyHeroes.lua
--Purpose:		多英雄副本NPC模板
--Creator: 		倪祖伟
--Created:		2019-09-19
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-01-02 $
--RCS-ID:		$Revision: 3 $
--endregion

local nEffect_WallDisapper = 2065
local nEffect_Qiu = 2073        -- 战后紫色球，光效ID
local nEffect_QiuWZ = 2006        -- 完整的战后紫色球，光效ID，不再生成的
local nEffect_FaZhen_Death = 2072  --怪物死亡后留下的法阵光效
local nEffect_QiuScale = 70     -- 默认0.7倍大小
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
rwCopyMap_ManyHeroes = class("rwCopyMap_ManyHeroes",rwBaseNpcGroup)
ENUM_NPCGROUP_TEMPLATE[CONST_NPCGROUP_TYPE.ManyHeroes] = rwCopyMap_ManyHeroes

function rwCopyMap_ManyHeroes:EventProcess()

    if not rwtNpcGroup[self._NpcGroupType] then
        return
    end

    local info = rwtNpcGroup[self._NpcGroupType]

    --用于校验是否将前面的怪杀了1只或全清
    --防止作弊
    local bChk = false

    if rwChkTable(info["tGenIdLastMonsterNpc"]) then
        for i,v in ipairs (info["tGenIdLastMonsterNpc"]) do
            if not rwHasGenEvent(v)then
                bChk = true
                break
            end
        end
    else    
        bChk = true
    end

    if not bChk then
        return
    end
    --=================================


    if info["isBoss"] then
        self:BossProcess(info)
    else
        self:NorMalMonsterProcess(info)
    end
end

--根据掩码为添加特性
--根据小怪是否清楚，播放isClean对白
function rwCopyMap_ManyHeroes:BossProcess(info)

    local nDialogId
    local tCheckInfo = {}

    --怪物战斗前的buff
    for i = 1,#info["buff"] do
        --用于检测所有小怪是否清除，需要判断的掩码位，是所有的
        table.insert(tCheckInfo, i)
    end

    if rwCopyMap_ManyHeroes_CheckIsClen(tCheckInfo,info["buffTempdata"]) then
        if info["BattalDialogBef"] then
            nDialogId = info["BattalDialogBef"]["NoClean"] or tDialog.DefDialogNoClean
            rwOpenNpcChatDialog(nDialogId,CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
        else
            -- nDialogId = tDialog.DefDialogNoClean
            if not info["GenIDMonster"]then
                return
            end
            if not rwHasGenEvent(info["GenIDMonster"]) then
                rwAddGenEvent(info["GenIDMonster"])
            end
    
            rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
        end   
    else
        if info["BattalDialogBef"] then
            nDialogId = info["BattalDialogBef"]["Clean"] or tDialog.DefDialogClean
            rwOpenNpcChatDialog(nDialogId,CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
        else
            -- nDialogId = tDialog.DefDialogClean
            if not info["GenIDMonster"]then
                return
            end
            if not rwHasGenEvent(info["GenIDMonster"]) then
                rwAddGenEvent(info["GenIDMonster"])
            end
    
            rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
        end
    end
    
    -- rwOpenNpcChatDialog(nDialogId,CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
end

function rwCopyMap_ManyHeroes:NorMalMonsterProcess(info)
    if info["BattalDialogBef"] then
        if rwChkInt(info["BattalDialogBef"]) then
            rwOpenNpcChatDialog(info["BattalDialogBef"],CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
        elseif rwChkTable(info["BattalDialogBef"]) then
            local nBossId = info["MyBossId"] or 0
            if not rwtNpcGroup[nBossId] then
                return
            end
            local BossInfo = rwtNpcGroup[nBossId] or {}
            local ncompanionIndex = info["companionIndex"] or {}
            local nTempdata = BossInfo["buffTempdata"] or 0
            if not rwCopyMap_ManyHeroes_CheckIsClen(ncompanionIndex,nTempdata,1) then
                if rwChkTable(info["BattalDialogBef"]) and rwChkInt(info["BattalDialogBef"]["NoClean"]) then
                   rwOpenNpcChatDialog(info["BattalDialogBef"]["NoClean"],CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
                else
                    if not info["GenIDMonster"]then
                        return
                    end
                    if not rwHasGenEvent(info["GenIDMonster"]) then
                        rwAddGenEvent(info["GenIDMonster"])
                    end
            
                    rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
               end
            else
                if rwChkTable(info["BattalDialogBef"]) and rwChkInt(info["BattalDialogBef"]["Clean"]) then
                    rwOpenNpcChatDialog(info["BattalDialogBef"]["Clean"],CONST_NPCCHAT_TYPE.MANYHEROCOPY,self._GenEventId)
                else
                    if not info["GenIDMonster"]then
                        return
                    end
                    if not rwHasGenEvent(info["GenIDMonster"]) then
                        rwAddGenEvent(info["GenIDMonster"])
                    end
            
                    rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
                end
            end
        end
    else
        if not info["GenIDMonster"]then
            return
        end
        if not rwHasGenEvent(info["GenIDMonster"]) then
            rwAddGenEvent(info["GenIDMonster"])
        end

        rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
    end
end

function rwCopyMap_ManyHeroes_Battle_result(nResult,MonsterType,GenEventId)
    local NpcGroupType = rwtManyHeroMonsterInfo[GenEventId]["NPCGroupId"]
    local MoveWalleftId = rwtNpcGroup[NpcGroupType]["MoveWalleftId"] or nEffect_WallDisapper
    rwSpecialStatus_RemoveEffect(7,0,MoveWalleftId)

    local nEft = rwtNpcGroup[NpcGroupType]["BattelAftNpcEffect"] or nEffect_Qiu
    local nEft_MonsterDeath = rwtNpcGroup[NpcGroupType]["MonsterDeathEffect"] or nEffect_FaZhen_Death
    rwSpecialStatus_RemoveEffect(7,0,nEft)
    rwSpecialStatus_RemoveEffect(7,0,nEft_MonsterDeath)

    local nTempdata = 0
    local nMonsterNum = 0
    local MapIndex = rwtNpcGroup[NpcGroupType]["nMapIndex"] or CONST_MANYHEROS_MAP.MOZUZHIXIN

    --获得掩码
    if not rwtNpcGroup[NpcGroupType]["isBoss"] then
        local nBossId = rwtNpcGroup[NpcGroupType]["MyBossId"] or 0
        if not rwtNpcGroup[nBossId] then
            return
        end
        nTempdata = rwtNpcGroup[nBossId]["buffTempdata"] or 0
        nMonsterNum = #rwtNpcGroup[nBossId]["buff"]
    else
        nTempdata = rwtNpcGroup[NpcGroupType]["buffTempdata"]
        nMonsterNum = #rwtNpcGroup[NpcGroupType]["buff"]
    end
    --遍历掩码，检测哪只怪物死亡
    for i = 1,nMonsterNum do
        if rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data"..i],rwUserGetId()) == 1 then
            local Pos = tPosQiu[MapIndex][i]
            local Scale = rwtNpcGroup[NpcGroupType]["BattelAftNpcEffectScale"] or 70     --紫色罩罩，默认0.7被大小
            rwSpecialStatus_AddEffect(7,0,nEffect_QiuWZ,Pos,0,Scale)
            rwUserTempDataSet(nTempdata,2,CONST_TEMP_DATA["Data"..i],rwUserGetId())--设掩码2，表示已经有关效了
        end
    end


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
    local info = rwtNpcGroup[NpcGroupType]
    local nDialogId = 0
    local nTypeDialog = CONST_NPCCHAT_TYPE.MANYHEROCOPY

    --删除NPC
    if info["GenIdNPCGroup"] and rwHasGenEvent(info["GenIdNPCGroup"]) then
        rwDelGenEvent(info["GenIdNPCGroup"])
    end
    
    --是小怪
    if not info["isBoss"] then
        local nBossId = info["MyBossId"] or 0
        if not rwtNpcGroup[nBossId] then
            return
        end
        local BossInfo = rwtNpcGroup[nBossId] or {}
        local nFloor = info["Floor"] or 2
        local nTempdata = BossInfo["buffTempdata"] or 0
        local nIndex = info["BuffIndex"] or 1           --记录buff状况的data位
        local ncompanionIndex = info["companionIndex"] or {}
        local MoveWalleftId = info["MoveWalleftId"] or nEffect_WallDisapper
        local MapIndex = info["nMapIndex"] or CONST_MANYHEROS_MAP.MOZUZHIXIN
        local MoveWalleftPos = info["MoveWalleftPos"] or tPosLightWall[MapIndex][nFloor]
		local sMoveWalleftRotation = info["MoveWalleftRotation"] or tRotationLightWall[MapIndex][nFloor]

        --删除原先的NPC后，要再生成一个自己，表示被囚禁，
        if info["GenIdBattelAftNpc"] then
            rwAddGenEvent(info["GenIdBattelAftNpc"])
        end
        rwCopyMap_ManyHeroes_CreatePurpleShade(info)    --NPC 地上出现紫色罩子
        --删boss buff--掩码记录
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA["Data"..nIndex],rwUserGetId())  --对应掩码为设1，表示已删除该buff
        --删除BOSS特性
        rwRemoveMonsterTalent(BossInfo["GenIDMonster"],BossInfo["MonsterID"],BossInfo["buff"][nIndex])
        if info["GenIdValve"] then                   --如果是开启机关门
            rwUpdateValveData(info["GenIdValve"], 1)    --开机机关门，铁栅栏消失
        else
             if not rwCopyMap_ManyHeroes_CheckIsClen(ncompanionIndex,nTempdata,1) then
                 --播放怨灵墙消失
                 if rwChkInt(info["ObstacleDisCg"])then
                     rwStoryTrigger(info["ObstacleDisCg"],2,0)
                 else
                     rwSpecialStatus_AddEffect(7,0,MoveWalleftId,MoveWalleftPos,sMoveWalleftRotation,100,0)
                     --删除障碍
                     if info["GenIdObstacles"] then
                         rwDelGenEvent(info["GenIdObstacles"])
                     end
                 end
                 --第一关删除怨灵墙放到动画的回调事件
                 if rwChkTable(info["BattalDialogAft"]) and rwChkInt(info["BattalDialogAft"]["NoClean"]) then
                    rwOpenNpcChatDialog(info["BattalDialogAft"]["NoClean"],nTypeDialog,GenEventId)
                end
             else
                 if rwChkTable(info["BattalDialogAft"]) and rwChkInt(info["BattalDialogAft"]["Clean"]) then
                     rwOpenNpcChatDialog(info["BattalDialogAft"]["Clean"],nTypeDialog,GenEventId)
                 end
             end
        end
    else
        --Boss战后对白
        if rwChkInt(info["BattalDialogAft"]) then
            rwOpenNpcChatDialog(info["BattalDialogAft"],nTypeDialog,GenEventId)
        -- else
            -- rwOpenNpcChatDialog(tDialog.DefBossBattleAft,nTypeDialog,GenEventId)
        end
    end
    
end
--播放紫色罩子的光效
function rwCopyMap_ManyHeroes_CreatePurpleShade(info)
    --被囚禁的光效默认是2006紫色罩子
    local nEft = info["BattelAftNpcEffect"] or nEffect_Qiu
    local nEft_MonsterDeath = info["MonsterDeathEffect"] or nEffect_FaZhen_Death
    local Pos = "0,0,0"
    local MapIndex = info["nMapIndex"] or CONST_MANYHEROS_MAP.MOZUZHIXIN

    if info["BattleEffectPos"] then
        Pos = info["BattleEffectPos"]
    else
        -- if info["Floor"] == 2 then
        --     --如果在第二层，只有两只怪的，罩子的位子是3、4，index+2
        --     if info["BuffIndex"] == 1 or info["BuffIndex"] == 2 then
        --         local index = info["BuffIndex"] + 2
        --         Pos = tPosQiu[MapIndex][index]
        --     else
        --         Pos = tPosQiu[MapIndex][info["BuffIndex"]]
        --     end
        -- else
        --     --否则，罩子位子都是 =index
        --     Pos = tPosQiu[MapIndex][info["BuffIndex"]]
        -- end
        Pos = tPosQiu[MapIndex][info["BuffIndex"]]
    end

    local Rot = info["BattelAftNpcEffectRot"] or "0,0,0"
    local Scale = info["BattelAftNpcEffectScale"] or 70     --紫色罩罩，默认0.7被大小

    rwSpecialStatus_AddEffect(7,0,nEft,Pos,Rot,Scale,0)
    rwSpecialStatus_AddEffect(7,0,nEft_MonsterDeath,Pos,"",100,0)
end


function rwCopyMap_ManyHeroes_DialogCallBack(nNPCGroupGenId)
    if not rwtManyHeroNPCGenIDInfo[nNPCGroupGenId] then
        return
    end
    --若，这个NPC不在地图上，说明无须战斗
    if not rwHasGenEvent(nNPCGroupGenId) then
        return
    end

    local info = {}
    if rwtManyHeroNPCGenIDInfo[nNPCGroupGenId]["NPCGroupId"] then
        info = rwtNpcGroup[rwtManyHeroNPCGenIDInfo[nNPCGroupGenId]["NPCGroupId"]]
    end

    --可控制是否一对完话，就战斗，默认为是
    local nAutoBattle = info["isAutoBattle"] or 1

    if rwChkInt(info["GenIDMonster"]) and nAutoBattle == 1 then
        if rwHasGenEvent(info["GenIDMonster"]) then
            rwOpenLocalWnd(CONST_MENUTYPE.Formation,info["GenIDMonster"])
        end
    end

end


--判断掩码的data位
--info是data位的表{1,2,3,4}
--与参数Index有一个相同的data值，就返回TRUE
function rwCopyMap_ManyHeroes_CheckIsClen(Info,nTempdata,index)
    if not rwTempDataIsExist(nTempdata) then
        return false
    end

    local nIndex = index or 0
    if rwChkTable(Info) then
        for i,v in pairs(Info) do
            if rwTempDataGetValue(nTempdata,CONST_TEMP_DATA["Data"..v],rwUserGetId()) >= nIndex then
                return true
            end
        end    
    end
    return false
end
