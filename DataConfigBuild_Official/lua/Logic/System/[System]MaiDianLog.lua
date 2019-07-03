--region *.lua
--Date
--打印埋点日志
--By:nizw

--endregion

--打印埋点日志
--nType:副本游戏步骤
--nData:对应数据
function rwMaiDianLog(nType,nData)

    if not nType then
        return
    end

    local nUserId = rwUserGetId()       --玩家userID
    local nFight = rwGetHeroFight(0)    --玩家战队总战力
    local nLevel = rwUserGetLevel()     --玩家等级

    local sLogUserMsg = nUserId.."["..nFight.."]["..nLevel.."]"
    local sLogData = ",0"
    if nData then
        sLogData = ","..nData
    end

    rwPrintWarnLog("[First_level]:"..nType..","..sLogUserMsg..sLogData)
end

function rwMaiDianLog_Trap(nNpcGroupType)
    if not nNpcGroupType then
        return
    end

    if nNpcGroupType == 30076 then  --饿狼副本触发第一个目标点1
        rwMaiDianLog(1)
    end

    if nNpcGroupType == 30572 then  --饿狼副本触发巡逻动画4
        rwMaiDianLog(4)
    end

    if nNpcGroupType == 30077 then  --饿狼副本触发BOSS动画13
        rwMaiDianLog(13)
    end
end

function rwMaiDianLog_Dialog(nDialogId)
    if not nDialogId then
        return
    end

    if nDialogId == 5041 then  --饿狼第一只狼触发引导2
        rwMaiDianLog(2,0)
    end

    if nDialogId == 5153 then  --饿狼编队引导3
        rwMaiDianLog(3)
    end
end

function rwMaiDianLog_monster(nMonsterGroupType,nResult,bIsAttack)
    if not nMonsterGroupType then
        return
    end

    rwMaiDianLog_monster_pack(nMonsterGroupType,nResult,bIsAttack,200152,6,5)   --第一只野蛮孤狼战斗情况5、6
    rwMaiDianLog_monster_pack(nMonsterGroupType,nResult,bIsAttack,200154,7)     --白狼战斗情况7
    rwMaiDianLog_monster_pack(nMonsterGroupType,nResult,bIsAttack,200153,11,10) --第二只野蛮孤狼战斗情况10、11
    rwMaiDianLog_monster_pack(nMonsterGroupType,nResult,bIsAttack,200156,14)    --狼王战斗情况14

    if nMonsterGroupType == 200156 and nResult == 1 then    --饿狼巢穴通关15
        rwMaiDianLog(15)
    end
end

--nMonsterGroupType,nResult,bIsAttack:为战斗后服务端传过来的怪物组id、战斗结果、有无偷袭
--nMosterMD:需要触发打印埋点的怪物组id
--nFightResultMD：表示战后胜负情况的埋点typeID
--nAttackMd：表示此战是否偷袭的埋点typeID（无需判断是否偷袭，则不传）
function rwMaiDianLog_monster_pack(nMonsterGroupType,nResult,bIsAttack,nMosterMD,nFightResultMD,nAttackMd)
    if nMonsterGroupType == nMosterMD then
        if nAttackMd then
            if bIsAttack then   --饿狼第一只野蛮孤狼是否偷袭
                rwMaiDianLog(nAttackMd,0)
            else
                rwMaiDianLog(nAttackMd,1)
            end
        end

        if nResult == 1 then   --饿狼第一只野蛮孤狼战斗结果，胜负
            rwMaiDianLog(nFightResultMD,0)
        end
        if nResult == 2 then   --饿狼第一只野蛮孤狼战斗结果，胜负
            rwMaiDianLog(nFightResultMD,1)
        end
    end
end

function rwMaiDianLog_item(nItemTypeId)
    if not nItemTypeId then
        return
    end

    if nItemTypeId == 7000002 then  --饿狼使用副本道具成功8
        rwMaiDianLog(8,0)
    end
end

function rwMaiDianLog_box(nNpcGroupType)
    if not nNpcGroupType then
        return
    end

    if nNpcGroupType == 40025 then  --饿狼副本第一个狼王宝箱9
        rwMaiDianLog(9)
    end

    if nNpcGroupType == 30000001 then  --饿狼副本第二个狼王宝箱12
        rwMaiDianLog(12)
    end
end