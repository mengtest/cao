--region *.lua
--Date 2018.6.19
--by zy
--副本ID 3051  卡诺萨保卫战
--怪物组 200286-200302
--怪物 1000298-1000314
--怨灵墙机关 1036
--3个小BOSS +萨米尔 NPCGROUP 20338 - 20341
-- 对白ID 5282 - 5285  5296 - 5301
--3个小BOSS +萨米尔 NPCID 3315 - 3318
--怪物冒泡100127 - 100139
--副本目标 60076 - 60080
--endregion

--region data
local nCopyMapId = 3051
local nGouhuo = 70001
local nTarget_1 = 60076
local nTarget_2 = 60077
local nTarget_3 = 60078
local nTarget_4 = 60079

local nTarget_5 = 60069  --使用默认通关配置

local tMulti_KaNuoSaShouWeiZhan_Data = {}

local nMulti_KaNuoSaShouWeiZhan_DynMapid = 0

local nAward_Box = 460013

rwtItem[nAward_Box] = rwtItem[nAward_Box] or {}
rwtItem[nAward_Box]["Awards"] = {}
rwtItem[nAward_Box]["Awards"]["Events"] = {}
rwtItem[nAward_Box]["Awards"]["Events"][1] = {}
rwtItem[nAward_Box]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[nAward_Box]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[nAward_Box]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 460013
rwtItem[nAward_Box]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[nAward_Box]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 5000237


--region 光效移到客户端 数据注释
sPos_Effect_Fashi = "63.84,25.6,58.91"
sPos_Effect_Meimo = "63.84,25.6,68.49"
sPos_Effect_Xiudi = "63.84,25.6,77.7"
--sRotastion_SmallBoss = "0,90,0"

--local tPos_Effect_Fire = {}
--tPos_Effect_Fire[1] = "-5.9,22.84,62.9"
--tPos_Effect_Fire[2] = "-16.59,22.84,76.34"
--tPos_Effect_Fire[3] = "-13.9,22.84,83.1"
--tPos_Effect_Fire[4] = "-2.4,22.84,77.13"
--tPos_Effect_Fire[5] = "-33.69,22.84,62.59"
--tPos_Effect_Fire[6] = "-46.32,22.84,73.8"
--tPos_Effect_Fire[7] = "-28.3,24.1,84"
--tPos_Effect_Fire[8] = "14.4,22.84,78,65"
--tPos_Effect_Fire[9] = "29.5,22.84,63"
--tPos_Effect_Fire[10] = "-63.8,21.9,28.9"
--tPos_Effect_Fire[11] = "-74.3,21.3,34.5"
--tPos_Effect_Fire[12] = "-74.3,21.3,16.4"
--tPos_Effect_Fire[13] = "-63.2,21.3,105"
--tPos_Effect_Fire[14] = "-74.3,21.3,112"
--tPos_Effect_Fire[15] = "-63.3,22.6,117.9"
--tPos_Effect_Fire[16] = "67.04,22.62,113.78"
--tPos_Effect_Fire[17] = "53.3,22.62,113.3"
--tPos_Effect_Fire[18] = "15.3,22.62,107.8"
--tPos_Effect_Fire[19] = "29.9,22.62,98"

--local tPos_Effect_Boom = {} 
--tPos_Effect_Boom[1] = "-22.4,22.84,69.9"
--tPos_Effect_Boom[2] = "-36.5,23.34,72.9"
--tPos_Effect_Boom[3] = "-41.9,23.34,70.6"
--tPos_Effect_Boom[4] = "29.9,23.34,82"
--tPos_Effect_Boom[5] = "0.9,23.34,67"
--tPos_Effect_Boom[6] = "-58.78,23.34,60.31"
--tPos_Effect_Boom[7] = "-69.6,21.6,35.3"
--tPos_Effect_Boom[8] = "-64.7,21.9,7.2"
--tPos_Effect_Boom[9] = "-83,23.34,63.8"
--tPos_Effect_Boom[10] = "-63.8,24.7,82.6"
--tPos_Effect_Boom[11] = "-69.3,21.3,116.5"
--tPos_Effect_Boom[12] = "-118.1,33.1,72.7"
--tPos_Effect_Boom[13] = "19.13,23,22,102.33"
--tPos_Effect_Boom[14] = "36.69,23,109.03"

--local tPos_Effect_Dilie = {}
--tPos_Effect_Dilie[1] = "-71,23.8,54"
--tPos_Effect_Dilie[2] = "-31.3,22.84,69.2"
--tPos_Effect_Dilie[3] = "0.2,22.84,66.8"
--tPos_Effect_Dilie[4] = "-65.3,23.3,85.5"
--tPos_Effect_Dilie[5] = "-67.8,20.6,31.7"
--tPos_Effect_Dilie[6] = "19.7,22.99,101.09"
--tPos_Effect_Dilie[7] = "-53.2,23.4,65"
--tPos_Effect_Dilie[8] = "-69.5,20.8,123.5"
--tPos_Effect_Dilie[9] = "44.27,22.7,105.6"

--local tRotation_Effect_Dilie = {}
--tRotation_Effect_Dilie[1] = "0,30,0"
--tRotation_Effect_Dilie[2] = "0,0,0"
--tRotation_Effect_Dilie[3] = "0,220,0"
--tRotation_Effect_Dilie[4] = "0,250,0"
--tRotation_Effect_Dilie[5] = "0,280,0"
--tRotation_Effect_Dilie[6] = "0,300,0"
--tRotation_Effect_Dilie[7] = "0,150,0"
--tRotation_Effect_Dilie[8] = "0,27,0"
--tRotation_Effect_Dilie[9] = "0,30,0"

--regionend

--怪物
local tMonsterGroup_SmallBoss = {}
tMonsterGroup_SmallBoss[1] = 200286
tMonsterGroup_SmallBoss[2] = 200287
tMonsterGroup_SmallBoss[3] = 200288

local tMonsterBattle_SmallBoss = {}
tMonsterBattle_SmallBoss[1] = 1000298
tMonsterBattle_SmallBoss[2] = 1000299
tMonsterBattle_SmallBoss[3] = 1000300

local nMonsterBattle_BossId = 1000314


local tMonsterGroup_Normal = {}
tMonsterGroup_Normal[1]  = 200289
tMonsterGroup_Normal[2]  = 200290
tMonsterGroup_Normal[3]  = 200291
tMonsterGroup_Normal[4]  = 200292
tMonsterGroup_Normal[5]  = 200293
tMonsterGroup_Normal[6]  = 200294
tMonsterGroup_Normal[7]  = 200295
tMonsterGroup_Normal[8]  = 200296
tMonsterGroup_Normal[9]  = 200297
tMonsterGroup_Normal[10] = 200298
tMonsterGroup_Normal[11] = 200299
tMonsterGroup_Normal[12] = 200300
tMonsterGroup_Normal[13] = 200301

local nMonsterGroup_Boss = 200302

local tGen_MonsterGroup_SmallBoss = {}
tGen_MonsterGroup_SmallBoss[1] = 3051001
tGen_MonsterGroup_SmallBoss[2] = 3051002
tGen_MonsterGroup_SmallBoss[3] = 3051003

local nGen_MonsterGroup_Normal_1  = 3051004
local nGen_MonsterGroup_Normal_2  = 3051005
local nGen_MonsterGroup_Normal_3  = 3051006
local nGen_MonsterGroup_Normal_4  = 3051007
local nGen_MonsterGroup_Normal_5  = 3051008
local nGen_MonsterGroup_Normal_6  = 3051009
local nGen_MonsterGroup_Normal_7  = 3051010
local nGen_MonsterGroup_Normal_8  = 3051011
local nGen_MonsterGroup_Normal_9  = 3051012
local nGen_MonsterGroup_Normal_10 = 3051013
local nGen_MonsterGroup_Normal_11 = 3051014
local nGen_MonsterGroup_Normal_12 = 3051015
local nGen_MonsterGroup_Normal_13 = 3051016

local nGen_MonsterGroup_Boss = 3051017

local nGenId_BonFire = 3051044

--状态
local tStatus_SmallBoss= {}
tStatus_SmallBoss[1] = 500502
tStatus_SmallBoss[2] = 500602
tStatus_SmallBoss[3] = 500701

local nStatus_Boss = 501101

--机关
local nValve = 1036
tValve[nValve] = tValve[nValve] or {}
tValve[nValve]["Type"] = CONST_VALVE_TYPE.MAGICARRAY



--gen
local nGen_NpcGroup_Shiti_Fashi = 3051041
local nGen_NpcGroup_Shiti_Meimo = 3051042
local nGen_NpcGroup_Shiti_Xiudi = 3051043
local nGen_Valve = 3051018
local nGen_Valve_Huoqiang = 3051045
--table.insert(tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"],nGen_Valve)
--table.insert(tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"],nGen_Valve_Huoqiang)
local tGen_NpcGroup_SmallBoss = {}
 tGen_NpcGroup_SmallBoss[1]  = 3051019
 tGen_NpcGroup_SmallBoss[2]  = 3051020
 tGen_NpcGroup_SmallBoss[3]  = 3051021
local nGen_NpcGroup_Samier = 3051022
--table.insert(tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"],tGen_NpcGroup_SmallBoss[1] )
--table.insert(tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"],tGen_NpcGroup_SmallBoss[2] )
--table.insert(tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"],tGen_NpcGroup_SmallBoss[3] )
--table.insert(tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"],nGen_NpcGroup_Samier)

tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"] = {nGen_Valve,nGen_Valve_Huoqiang,tGen_NpcGroup_SmallBoss[1],tGen_NpcGroup_SmallBoss[2],tGen_NpcGroup_SmallBoss[3],nGen_NpcGroup_Samier}



--endregion

--region logic 
-- NPCID

local nNpc_Fashi = 3315
rwtNpc[nNpc_Fashi] = rwtNpc[nNpc_Fashi] or {}
rwtNpc[nNpc_Fashi]["DialogId"] = 5282
rwtNpc[nNpc_Fashi]["ExtraDialogId"] = 5350
rwtNpc[nNpc_Fashi]["ExtraGenChk"] = {tGen_NpcGroup_SmallBoss[2],tGen_NpcGroup_SmallBoss[3]}
rwtDialog[5282] = rwtDialog[5282] or {}
rwtDialog[5282]["DialogEndInit"] = {}
rwtDialog[5282]["DialogEndInit"]["Events"] = {}
rwtDialog[5282]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5282]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5282]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[1]
rwtDialog[5350] = rwtDialog[5350] or {}
rwtDialog[5350]["DialogEndInit"] = {}
rwtDialog[5350]["DialogEndInit"]["Events"] = {}
rwtDialog[5350]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5350]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5350]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[1]

local nNpc_Meimo = 3316
rwtNpc[nNpc_Meimo] = rwtNpc[nNpc_Meimo] or {}
rwtNpc[nNpc_Meimo]["DialogId"] = 5283
rwtNpc[nNpc_Meimo]["ExtraDialogId"] = 5351
rwtNpc[nNpc_Meimo]["ExtraGenChk"] = {tGen_NpcGroup_SmallBoss[1],tGen_NpcGroup_SmallBoss[3]}
rwtDialog[5283] = rwtDialog[5283] or {}
rwtDialog[5283]["DialogEndInit"] = {}
rwtDialog[5283]["DialogEndInit"]["Events"] = {}
rwtDialog[5283]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5283]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5283]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[2]
rwtDialog[5351] = rwtDialog[5351] or {}
rwtDialog[5351]["DialogEndInit"] = {}
rwtDialog[5351]["DialogEndInit"]["Events"] = {}
rwtDialog[5351]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5351]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5351]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[2]

local nNpc_Xiudi = 3317
rwtNpc[nNpc_Xiudi] = rwtNpc[nNpc_Xiudi] or {}
rwtNpc[nNpc_Xiudi]["DialogId"] = 5284
rwtNpc[nNpc_Xiudi]["ExtraDialogId"] = 5352
rwtNpc[nNpc_Xiudi]["ExtraGenChk"] = {tGen_NpcGroup_SmallBoss[1],tGen_NpcGroup_SmallBoss[2]}
rwtDialog[5284] = rwtDialog[5284] or {}
rwtDialog[5284]["DialogEndInit"] = {}
rwtDialog[5284]["DialogEndInit"]["Events"] = {}
rwtDialog[5284]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5284]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5284]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[3]
rwtDialog[5352] = rwtDialog[5352] or {}
rwtDialog[5352]["DialogEndInit"] = {}
rwtDialog[5352]["DialogEndInit"]["Events"] = {}
rwtDialog[5352]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5352]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5352]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[3]

local nNpc_Samier = 3318
rwtNpc[nNpc_Samier] = rwtNpc[nNpc_Samier] or {}
rwtNpc[nNpc_Samier]["DialogId"] = 5285

rwtDialog[5285] = rwtDialog[5285] or {}
rwtDialog[5285]["DialogEndInit"] = {}
rwtDialog[5285]["DialogEndInit"]["Events"] = {}
rwtDialog[5285]["DialogEndInit"]["Events"][1] = {}
rwtDialog[5285]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[5285]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGen_MonsterGroup_Boss

--NPCGROUP
local nNpcGroup_Fashi = 20338
rwtNpcGroup[nNpcGroup_Fashi] = rwtNpcGroup[nNpcGroup_Fashi] or {}
rwtNpcGroup[nNpcGroup_Fashi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Fashi]["NpcId"]= nNpc_Fashi

local nNpcGroup_Meimo = 20339
rwtNpcGroup[nNpcGroup_Meimo] = rwtNpcGroup[nNpcGroup_Meimo] or {}
rwtNpcGroup[nNpcGroup_Meimo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Meimo]["NpcId"]= nNpc_Meimo

local nNpcGroup_Xiudi = 20340
rwtNpcGroup[nNpcGroup_Xiudi] = rwtNpcGroup[nNpcGroup_Xiudi] or {}
rwtNpcGroup[nNpcGroup_Xiudi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Xiudi]["NpcId"]= nNpc_Xiudi

local nNpcGroup_Samier = 20341
rwtNpcGroup[nNpcGroup_Samier] = rwtNpcGroup[nNpcGroup_Samier] or {}
rwtNpcGroup[nNpcGroup_Samier]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Samier]["NpcId"]= nNpc_Samier
function CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AddStatus(nIndex)
    local bOpenValve = false
    for i,v in pairs(tGen_NpcGroup_SmallBoss) do
        if rwHasGenEvent(v) then
           bOpenValve = true
           rwMonsterAddStatus(tGen_MonsterGroup_SmallBoss[i],tMonsterBattle_SmallBoss[i],tStatus_SmallBoss[nIndex])
        end
    end
    return bOpenValve
end
function CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AllDeathTrigger()
    rwUpdateValveData(nGen_Valve, 1)
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwStoryTrigger(1005,2,1,tUserList[i])
        end
    end
end

function CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_Death_1() 
    if rwHasGenEvent( tGen_NpcGroup_SmallBoss[1]) then
        rwDelGenEvent( tGen_NpcGroup_SmallBoss[1])
    end
    if not rwHasGenEvent(nGen_NpcGroup_Shiti_Fashi) then
        rwAddGenEvent(nGen_NpcGroup_Shiti_Fashi)
    end    
    rwSpecialStatus_AddEffect(7,0,2025,sPos_Effect_Fashi,sRotastion_SmallBoss)
	rwSpecialStatus_AddEffect(7,0,2022,sPos_Effect_Fashi,sRotastion_SmallBoss)
	if rwHasGenEvent(tGen_NpcGroup_SmallBoss[2]) then
		rwSpecialStatus_AddEffect(7,0,2047,"63.84,30,68.49")
	else
		rwSpecialStatus_RemoveEffect(7,0,2048)
		rwSpecialStatus_RemoveEffect(7,0,2024)
		if rwHasGenEvent(tGen_NpcGroup_SmallBoss[3]) then
			rwSpecialStatus_AddEffect(7,0,2048,"63.84,26,77.7")
		end
	end
	if rwHasGenEvent(tGen_NpcGroup_SmallBoss[3]) then
		rwSpecialStatus_AddEffect(7,0,2047,"63.84,30,77.7")
	else 
		rwSpecialStatus_RemoveEffect(7,0,2023)
	end 	

    local bOpenValve = CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AddStatus(1)
    if not bOpenValve then
        CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AllDeathTrigger()
        return
    end
    rwStoryTrigger(1007,2,1)  

end

function CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_Death_2()
    if rwHasGenEvent( tGen_NpcGroup_SmallBoss[2]) then
        rwDelGenEvent( tGen_NpcGroup_SmallBoss[2])
    end
    if not rwHasGenEvent(nGen_NpcGroup_Shiti_Meimo) then
        rwAddGenEvent(nGen_NpcGroup_Shiti_Meimo)
    end
    rwSpecialStatus_AddEffect(7,0,2024,sPos_Effect_Meimo,sRotastion_SmallBoss)
	rwSpecialStatus_AddEffect(7,0,2021,sPos_Effect_Meimo,sRotastion_SmallBoss)
	if rwHasGenEvent(tGen_NpcGroup_SmallBoss[1]) then
		rwSpecialStatus_AddEffect(7,0,2048,"63.84,26.5,58.91")
	else
		rwSpecialStatus_RemoveEffect(7,0,2047)
		rwSpecialStatus_RemoveEffect(7,0,2025)
		if rwHasGenEvent(tGen_NpcGroup_SmallBoss[3]) then
			rwSpecialStatus_AddEffect(7,0,2047,"63.84,30,77.7")
		end
	end
	if rwHasGenEvent(tGen_NpcGroup_SmallBoss[3]) then
		rwSpecialStatus_AddEffect(7,0,2048,"63.84,26,77.7")
	else
		rwSpecialStatus_RemoveEffect(7,0,2023)
	end 	
	
	
    local bOpenValve = CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AddStatus(2)
    if not bOpenValve then
        CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AllDeathTrigger()
        return
    end
    rwStoryTrigger(1008,2,1)    
end

function CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_Death_3()
    if rwHasGenEvent( tGen_NpcGroup_SmallBoss[3]) then
        rwDelGenEvent( tGen_NpcGroup_SmallBoss[3])
    end
    if not rwHasGenEvent(nGen_NpcGroup_Shiti_Xiudi) then
        rwAddGenEvent(nGen_NpcGroup_Shiti_Xiudi)
    end
    rwSpecialStatus_AddEffect(7,0,2023,sPos_Effect_Xiudi,sRotastion_SmallBoss)
	rwSpecialStatus_AddEffect(7,0,2020,sPos_Effect_Xiudi,sRotastion_SmallBoss)
	if rwHasGenEvent(tGen_NpcGroup_SmallBoss[1]) then
		rwSpecialStatus_AddEffect(4,tGen_NpcGroup_SmallBoss[1],2049)
	else
		rwSpecialStatus_RemoveEffect(7,0,2047)
		rwSpecialStatus_RemoveEffect(7,0,2025)
		if rwHasGenEvent(tGen_NpcGroup_SmallBoss[2]) then
			rwSpecialStatus_AddEffect(7,0,2047,"63.84,30,68.49")
		end
	end 
	if rwHasGenEvent(tGen_NpcGroup_SmallBoss[2]) then
		rwSpecialStatus_AddEffect(4,tGen_NpcGroup_SmallBoss[2],2049)
	else
		rwSpecialStatus_RemoveEffect(7,0,2024)
		rwSpecialStatus_RemoveEffect(7,0,2048)
		if rwHasGenEvent(tGen_NpcGroup_SmallBoss[1]) then
			rwSpecialStatus_AddEffect(7,0,2048,"63.84,26.5,58.91")
		end
	end 	
    local bOpenValve = CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AddStatus(3)
    if not bOpenValve then
        CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_AllDeathTrigger()
        return
    end
    rwStoryTrigger(1009,2,1)    
end



rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[1]] = rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[1]] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[1]],CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_Death_1)

rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[2]] = rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[2]] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[2]],CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_Death_2)

rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[3]] = rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[3]] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[3]],CopyMap_Multi_KaNuoSaShouWeiZhan_SmallBoss_Death_3)

function CopyMap_Multi_KaNuoSaShouWeiZhan_NormalMonster_Death()
    local nDynMapId = rwUserGetDynMapId()    
    rwOpenNpcChatDialog(5311,CONST_NPCCHAT_TYPE.COPYMAP) 
    if rwHasGenEvent(nGen_MonsterGroup_Boss) then
        rwMonsterAddStatus(nGen_MonsterGroup_Boss,nMonsterBattle_BossId,nStatus_Boss)
    end
    rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] = rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] - 10
--    rwSpecialStatus_ChangeLookFace(4,nGen_NpcGroup_Samier,0,10035,100,rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"])
	if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] >=190 and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] <=220 then
		rwSpecialStatus_RemoveEffect(4,3051022,2053)
		rwSpecialStatus_ChangeLookFace(4,nGen_NpcGroup_Samier,0,10035,100,150)
	elseif rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] >=150 and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] <190 then
		rwSpecialStatus_RemoveEffect(4,3051022,2052)
		rwSpecialStatus_ChangeLookFace(4,nGen_NpcGroup_Samier,0,10035,100,130)
	elseif rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] >=110 and rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] <150 then
		rwSpecialStatus_RemoveEffect(4,3051022,2051)
		rwSpecialStatus_ChangeLookFace(4,nGen_NpcGroup_Samier,0,10035,100,110)
	elseif rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["SamierScale"] == 100 then
		rwSpecialStatus_ChangeLookFace(4,nGen_NpcGroup_Samier,0,10035,100,100)
		rwSpecialStatus_RemoveEffect(4,3051022,2050)
	end
end


for i,v in pairs(tMonsterGroup_Normal) do
    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
    table.insert(rwtMonsterGroup_Func[v],CopyMap_Multi_KaNuoSaShouWeiZhan_NormalMonster_Death)
end

function CopyMap_Multi_KaNuoSaShouWeiZhan_Boss_Death()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwStoryTrigger(1006,2,1,tUserList[i])
        end
    end
end

rwtMonsterGroup_Func[nMonsterGroup_Boss] = rwtMonsterGroup_Func[nMonsterGroup_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Boss],CopyMap_Multi_KaNuoSaShouWeiZhan_Boss_Death)

--function CopyMap_KaNuoSaShouWeiZhan_BossDeadCG()
--    if not rwHasGenEvent(nGenId_BonFire) then
--        rwAddGenEvent(nGenId_BonFire)   --篝火
--        rwAddBonFire(60,3,8000)
--    end
--end
--rwtCGFinish[1006] = rwtCGFinish[1006] or {}
--table.insert(rwtCGFinish[1006],CopyMap_KaNuoSaShouWeiZhan_BossDeadCG)

function CopyMap_KaNuoSaShouWeiZhan_FashiCG()
--    rwSpecialStatus_RemoveEffect(7,0,2025)
end
rwtCGFinish[1007] = rwtCGFinish[1007] or {}
table.insert(rwtCGFinish[1007],CopyMap_KaNuoSaShouWeiZhan_FashiCG)

function CopyMap_KaNuoSaShouWeiZhan_MeimoCG()
--    rwSpecialStatus_RemoveEffect(7,0,2024)
end
rwtCGFinish[1008] = rwtCGFinish[1008] or {}
table.insert(rwtCGFinish[1008],CopyMap_KaNuoSaShouWeiZhan_MeimoCG)

function CopyMap_KaNuoSaShouWeiZhan_XiudiCG()
--    rwSpecialStatus_RemoveEffect(7,0,2023)
end
rwtCGFinish[1009] = rwtCGFinish[1009] or {}
table.insert(rwtCGFinish[1009],CopyMap_KaNuoSaShouWeiZhan_XiudiCG)

function CopyMap_KaNuoSaShouWeiZhan_AllDeadCG()
--    rwSpecialStatus_RemoveEffect(7,0,2023)
--    rwSpecialStatus_RemoveEffect(7,0,2024)
--    rwSpecialStatus_RemoveEffect(7,0,2025)
end
rwtCGFinish[1005] = rwtCGFinish[1005] or {}
table.insert(rwtCGFinish[1005],CopyMap_KaNuoSaShouWeiZhan_AllDeadCG)

rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20076]
rwtTarget[nTarget_1]["KillMonsterGroup"] = tMonsterGroup_SmallBoss[2]
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20077]
rwtTarget[nTarget_2]["KillMonsterGroup"] = tMonsterGroup_SmallBoss[3]
rwtTarget[nTarget_2]["ReqCount"] = 1

rwtTarget[nTarget_3] = {}
rwtTarget[nTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20078]
rwtTarget[nTarget_3]["KillMonsterGroup"] = tMonsterGroup_SmallBoss[1]
rwtTarget[nTarget_3]["ReqCount"] = 1

rwtTarget[nTarget_4] = {}
rwtTarget[nTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20079]
rwtTarget[nTarget_4]["KillMonsterGroup"] = nMonsterGroup_Boss
rwtTarget[nTarget_4]["ReqCount"] = 1

--rwtTarget[nTarget_5] = {}
--rwtTarget[nTarget_5]["Title"] = "副本已通关"
--rwtTarget[nTarget_5]["KillMonsterGroup"] = 1
--rwtTarget[nTarget_5]["ReqCount"] = 1

function CopyMap_Multi_KaNuoSaShouWeiZhan_AddEffect()
    rwSpecialStatus_AddEffect(7,0,2022,sPos_Effect_Fashi,sRotastion_SmallBoss)
    rwSpecialStatus_AddEffect(7,0,2021,sPos_Effect_Meimo,sRotastion_SmallBoss)
    rwSpecialStatus_AddEffect(7,0,2020,sPos_Effect_Xiudi,sRotastion_SmallBoss)
    for i,v in pairs(tPos_Effect_Fire) do 
        rwSpecialStatus_AddEffect(7,0,2039,v,"0,0,0")
    end
    for i,v in pairs(tPos_Effect_Boom) do 
        rwSpecialStatus_AddEffect(7,0,2038,v,"0,0,0")
    end
    for i,v in pairs(tPos_Effect_Dilie) do 
        rwSpecialStatus_AddEffect(7,0,2040,v,tRotation_Effect_Dilie[i])
    end
end



function CopyMap_Multi_KaNuoSaShouWeiZhan_Destroy(nCopyMapMissId,nMapId)
	rwtCopyMapDynInitInfo[nCopyMapMissId][nMapId] = {}
end

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["Type"] = CONST_COPYMAP_TYPE.MULTI
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.TeamCopyMap
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1,nTarget_2,nTarget_3}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_4}
rwtCopyMapMission[nCopyMapId]["Target99"] = {nTarget_5}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = 1105
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = 1105
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["PlaySceneAnimation"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["PlaySceneAnimation"]["Id"] = 1010
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5296
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["DynCreate"] = tMulti_KaNuoSaShouWeiZhan_Data["InitEvent"]
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = 230
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "SamierScale"
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"]["TargetId"] = nGen_NpcGroup_Samier
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"]["LifeTime"] = 0
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"]["LookFace"] = 10035
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"]["Speed"] = 100
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChangeLook"]["Size"] = 230
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["EffectId"] = 2050
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["Pos"] = "-167.2093,32.45395,68.42"
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetType"] = 7
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetId"] = 0
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["EffectId"] = 2051
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["Pos"] = "-167.2093,32.45395,68.42"
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetType"] = 7
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetId"] = 0
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["EffectId"] = 2052
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["Pos"] = "-167.2093,32.45395,68.42"
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetType"] = 7
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetId"] = 0
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["EffectId"] = 2053
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["Pos"] = "-167.2093,32.45395,68.42"
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetId"] = 3051022
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["EffectId"] = 2050
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetId"] = 3051022
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["EffectId"] = 2051
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetId"] = 3051022
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["EffectId"] = 2052
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetType"] = 4
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetId"] = 3051022
rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["EffectId"] = 2053



rwtCopyMapMission[nCopyMapId]["Fire"] = {}  ---篝火配置
rwtCopyMapMission[nCopyMapId]["Fire"]["GenId"] = nGenId_BonFire
rwtCopyMapMission[nCopyMapId]["Fire"]["LifeTime"] = 60
rwtCopyMapMission[nCopyMapId]["Fire"]["InterVal"] = 3
rwtCopyMapMission[nCopyMapId]["Fire"]["ExpBall"] = 3000
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][1] = "-163.08,32.37,68.51"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][2] = "-163.54,32.38,65.69"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][3] = "-163.97,32.37,71.04"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][1] = 247.53
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][2] = 250.00
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][3] = 180.00	

rwtCopyMapMission[nCopyMapId]["MultiDestroyFunc"] = function(nCopyMapMissId,nMapId)
--	rwPrintErrorLog("nCopyMapMissId nMapId = "  ..nCopyMapMissId  .." " ..  nMapId)
    CopyMap_Multi_KaNuoSaShouWeiZhan_Destroy(nCopyMapMissId,nMapId)
end
--endreigon