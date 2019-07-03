--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--凋零之地副本
--Hq

--endregion
--===========================副本配置====================================--
local nCopyMapId = 3085        --副本ID


--进入副本NPC
local nNpcGroup_CopyMap = 50058
local nNpcGroup_GenId_CopyMap = 3085012

--副本目标
local nTarget_1 = 60156     --搜索队，出动	
local nTarget_2 = 60157     --拦路者	
local nTarget_3 = 60158     --怪医出没
local nTarget_4 = 60166     --地上有“矿”

--陷阱
local nTrap_1 = 30575  
local nGenId_Trap_1 = 3085007
local nTrap_2 = 30576  
local nGenId_Trap_2 = 3085008
local nTrap_3 = 30577  
local nGenId_Trap_3 = 3085009


--怪物组
local nMonsterGroupId_1 = 200399 --黑龙舰兵
local nMonsterGroupId_2 = 200400 --黑龙战士
local nMonsterGroupId_3 = 200401 --摩尼耶
local nMonsterGroupId_4 = 200402 --尼格斯

--怪物组Gen 
local nGenIdMonster1 = 3085001 --黑龙舰兵1
local nGenIdMonster2 = 3085002 --黑龙舰兵2
local nGenIdMonster3 = 3085003 --黑龙战士
local nGenIdMonster4 = 3085004 --摩尼耶
local nGenIdMonster5 = 3085005 --尼格斯

-- 怪物
local nMonsterId_1  = 1000592
local nMonsterId_2  = 1000593
local nMonsterId_3  = 1000594
local nMonsterId_4  = 1000595

--采集
local nCollectId =  60320
local nCollectGenId =  3085010

local nCollectId_2 =  60330    --透明
local nCollectGenId_2 =  3085011

--npc 浮士德72
local nNpcGroupId_1 = 20601
local nNpcGenId_1 = 3085013
local nNpcGenId_2 = 3085014
local nNpcGenId_3 = 3085015
local nNpcGenId_4 = 3085016



--进入副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["UnlockDialog"] =  6278
rwtNpcGroup[nNpcGroup_CopyMap]["Dialog"] =   6279
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMapId}
--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2005 
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT 
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 4 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_2}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nTarget_3}
rwtCopyMapMission[nCopyMapId]["Target4"] = {nTarget_4}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] =  6274
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {nNpcGenId_1,nNpcGenId_2,nCollectGenId,nCollectGenId_2,nGenIdMonster5,nGenId_Trap_2 }


rwtDialog[6274] = rwtDialog[6274] or {}
rwtDialog[6274]["DialogEndInit"] = {}
rwtDialog[6274]["DialogEndInit"]["Events"] = {}
rwtDialog[6274]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6274]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[6274]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] =  6280
rwtDialog[6274]["DialogEndInit"]["Events"][1]["DynCreate"] = {nNpcGenId_3}

rwtDialog[6276] = rwtDialog[6276] or {}
rwtDialog[6276]["DialogEndInit"] = {}
rwtDialog[6276]["DialogEndInit"]["Events"] = {}
rwtDialog[6276]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6276]["DialogEndInit"]["Events"][1]["OpenDialog"] = {}
rwtDialog[6276]["DialogEndInit"]["Events"][1]["OpenDialog"]["DialogId"] =  6394
rwtDialog[6276]["DialogEndInit"]["Events"][1]["DynCreate"] = {nNpcGenId_4}


rwtNpcGroup[40178] = rwtNpcGroup[40178] or {}  --宝箱
rwtNpcGroup[40178]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[40178]["Awards"] = {}
rwtNpcGroup[40178]["Awards"]["Events"] = {}
rwtNpcGroup[40178]["Awards"]["Events"][1] = {}
rwtNpcGroup[40178]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[40178]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[40178]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 40178                                  
rwtNpcGroup[40178]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[40178]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000366 

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}      
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 16501
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["DelTrap"] = 1
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}      
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= 16507
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3]["DelTrap"] = 1

rwtNpcGroup[nCollectId] = rwtNpcGroup[nCollectId] or {}
rwtNpcGroup[nCollectId]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollectId]["Awards"] = {}  
rwtNpcGroup[nCollectId]["Awards"]["Events"] = {}      
rwtNpcGroup[nCollectId]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nCollectId]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollectId]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] =  6324

--副本目标
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21482]
rwtTarget[nTarget_1]["ReqTrap"] = nTrap_1
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21483]
rwtTarget[nTarget_2]["KillMonsterGroup"] = nMonsterGroupId_3
rwtTarget[nTarget_2]["ReqCount"] = 1

rwtTarget[nTarget_3] = {}
rwtTarget[nTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21484]
rwtTarget[nTarget_3]["KillMonsterGroup"] = nMonsterGroupId_4
rwtTarget[nTarget_3]["ReqCount"] = 1

rwtTarget[nTarget_4] = {}
rwtTarget[nTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21540]
rwtTarget[nTarget_4]["ReqDialogId"] = 6324




function CopyMap_LiFangKuangDi_StoryEnd_1()
    if  not rwHasGenEvent(nGenIdMonster4) then 
        rwAddGenEvent(nGenIdMonster4)  
    end   
    rwAutoBattle(nGenIdMonster4)
end
rwtCGFinish[16501] = rwtCGFinish[16501] or {}
table.insert(rwtCGFinish[16501],CopyMap_LiFangKuangDi_StoryEnd_1)

function CopyMap_LiFangKuangDi_StoryEnd_7()
    rwAutoBattle(nGenIdMonster5)   
end
rwtCGFinish[16507] = rwtCGFinish[16507] or {}
table.insert(rwtCGFinish[16507],CopyMap_LiFangKuangDi_StoryEnd_7)


function CopyMap_Plot_LiFangKuangDi_MonsterGroup_BattleWin()
    if  rwHasGenEvent(nNpcGenId_2) then 
        rwDelGenEvent(nNpcGenId_2)  
    end
    rwOpenNpcChatDialog(6276)   
end
rwtMonsterGroup_Func[nMonsterGroupId_3] = rwtMonsterGroup_Func[nMonsterGroupId_3] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_3],CopyMap_Plot_LiFangKuangDi_MonsterGroup_BattleWin)	

