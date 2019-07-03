--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--哀嚎神殿副本


--endregion

--***************************数据******************************
--副本ID
--哀嚎神殿
local nCopyMapId = 3032
--幻阵子场景
local nMap_FaZhen = 3033
--进入副本时需要创建的NPC、monster列表
local tDynaGenId = {}
--副本内玩家数据
local tCopyMap_AiHaoShenDianUserData = {}

--进入副本NPC
local nNpcGroup_CopyMap = 50003
local nNpcGroup_CopyMap_GenId = 3032050

--切换剧情、普通本任务
local nChangeNpcTaskID = 10182



--法阵返回点
local sPos_FaZhen = "-56.03,-12.41,-52.15"
--桥上陷阱传送点
local sPos_Bridge = "-66.1,-15.0,-61.6"
----通过法阵试炼后返回点
--local sPos_FaZhen_Return = "-66.1,-15.0,-61.6"
--幻阵进入坐标
local sPos_EnterFaZhen = "-85.47,-16.95,-25.59"

local nDialogId_1 = 5011    --进入副本对白
--local nDialogId_2 = 5012    --发现诺尔拿神器
local nDialogId_3 = 5013    --发现未激活的魔法阵
local nDialogId_4 = 5014    --发现幻阵     --加到过场动画中 
--local nDialogId_5 = 5015    --击败诺尔后，诺尔变身
--local nDialogId_6 = 5016    --被贪婪击败，该隐出现
--local nDialogId_7 = 5017    --破阵成功后对白
local nDialogId_8 = 5018    --诺尔战前对白
local nDialogId_9 = 5019    --进入幻阵对白
local nDialogId_10 = 5020    --幻阵打错怪物对白
local nDialogId_11 = 5031    --幻阵阻止玩家继续打错对白
local nDialogId_12 = 5017    --贪婪战斗教学前对白

--场景动画对白
local nOperDialog_1 = 5071  --发现诺尔拿神器
local nOperDialog_2 = 5072  --通过幻阵
local nOperDialog_3 = 5073  --击败诺尔
local nOperDialog_4 = 5074  --不敌贪婪
local nOperDialog_5 = 5075  --该隐装逼
local nOperDialog_6 = 5076  --西蒙不服
--动画id
local nOperPlay_1 = 2712  --发现诺尔拿神器
local nOperPlay_2 = 2713  --通过幻阵
local nOperPlay_3 = 2714  --诺尔变身贪婪
--local nOperPlay_4 = 2715  --打完小怪进入幻阵
local nOperPlay_4 = 2718  --打完小怪进入幻阵 
local nOperPlay_5 = 2716  --贪婪打完后无论胜利失败都出来的动画
--local nOperPlay_4 = 5074  --不敌贪婪
--local nOperPlay_5 = 5075  --该隐装逼
--local nOperPlay_6 = 5076  --西蒙不服
local nOperPlay_6 = 2719  --点击火把前触发副本
local nOperPlay_7 = 2720  --第一次点击火把后

--怪物宝箱1对白
local nDialog_BoxMonster1 = 6390
----怪物宝箱2对白
--local nDialog_BoxMonster2 = 6391


--剧情战斗id(贪婪剧情战斗)
local nMePlayer_1 = 811

--发现未激活法阵
local sMessage_FindNotActiveFaZhen = tLuaText[LANGUAGE_CONFIG][10020]
--发现法阵
local sMessage_FindActiveFaZhen = tLuaText[LANGUAGE_CONFIG][10021]


-------------NPC组----------
--陷阱
local nTrap_1 = 30056   --发现诺尔拿神器
local nTrap_GenId_1 = 3032001
local nTrap_2 = 30057   --桥头对白
local nTrap_GenId_2 = 3032002
local nTrap_3 = 30058   --诺尔战败、主角被秒、该隐装B对白
local nTrap_GenId_3 = 3032003
local nTrap_4 = 30059   --法阵前对白
local nTrap_GenId_4 = 3032004
local nTrap_5 = 30060   --通关幻阵后对白
local nTrap_GenId_5 = 3032005
table.insert(tDynaGenId,nTrap_GenId_1)
table.insert(tDynaGenId,nTrap_GenId_2)
--table.insert(tDynaGenId,nTrap_GenId_3)
--table.insert(tDynaGenId,nTrap_GenId_4)


-------------怪物----------
--法阵4个怪
local tMonster_FaZhen = {}
local tMonster_FaZhen_GenId = {}
tMonster_FaZhen[1] = 200101
tMonster_FaZhen_GenId[1] = 3032061
tMonster_FaZhen[2] = 200102
tMonster_FaZhen_GenId[2] = 3032062
tMonster_FaZhen[3] = 200103
tMonster_FaZhen_GenId[3] = 3032063
tMonster_FaZhen[4] = 200104
tMonster_FaZhen_GenId[4] = 3032064
for _,v in pairs(tMonster_FaZhen_GenId) do
    table.insert(tDynaGenId,v)
end
local tMonsterId_FaZhen = {}
tMonsterId_FaZhen[1] = 1001065
tMonsterId_FaZhen[2] = 1001064
tMonsterId_FaZhen[3] = 1001066
tMonsterId_FaZhen[4] = 1001067

--人形诺尔
local nMonster_Noel = 200105
local nMonster_Noel_GenId = 3032065
table.insert(tDynaGenId,nMonster_Noel_GenId)

--贪婪
local nMonster_TanLan = 200106
local nMonster_TanLan_GenId = 3032066


--新版本怪物
--怪物1（亡魂死徒）
local nMonsterGroup_1 = 200109
local nMonsterGroup_1_GenId = 3032073
--怪物2（亡魂死士）
local nMonsterGroup_2 = 200110
local nMonsterGroup_2_GenId = 3032074
--怪物3（亡魂死徒）
local nMonsterGroup_3 = 200112
local nMonsterGroup_3_GenId = 3032076
--怪物4（亡魂死士）
local nMonsterGroup_4 = 200115
local nMonsterGroup_4_GenId = 3032079
--怪物5（黑骑士迪亚）（法阵看门怪）嗜血战魂
local nMonsterGroup_5 = 200116
local nMonsterGroup_5_GenId = 3032080
--怪物6（狮心魔骑贝恩）（桥上堵路怪）暗黑战魂
local nMonsterGroup_6 = 200118
local nMonsterGroup_6_GenId = 3032082

local tMonsterGroup = {}
local tMonsterGroupGen = {}

----被封印的魔物1
--tMonsterGroup.BoxMonsterGroup1 = 200437
--tMonsterGroupGen.BoxMonsterGroup1 = 3032301
----被封印的魔物2
--tMonsterGroup.BoxMonsterGroup2 = 200438
--tMonsterGroupGen.BoxMonsterGroup2 = 3032302
--monster
local tMonster = {}

--战魂之灵
tMonster.Monster1 = 1001061

--战魂之殇
tMonster.Monster2 = 1001062

--黑骑士迪亚
tMonster.Monster3 = 1001070

--狮心魔骑贝恩
tMonster.Monster4 = 1001063

--诺尔
tMonster.Monster5 = 1001068
local nMonster_4 = 1001068

--贪婪(剧情战斗怪)
tMonster.Monster6 = 9000171

--被封印的魔物1
tMonster.BoxMonster1 = 1000749
--被封印的魔物2
tMonster.BoxMonster2 = 1000750

---------------NPC----------------
--诺尔
local nNpc_Noel = 20036
local nNpc_Noel_GenId = 3032045

-------------采集物----------
--蜘蛛卵
local nCollect_Spider = 60026
local tCollect_Spider_GenId = {3032031,3032032,3032033,3032034,3032035}
for _,v in pairs(tCollect_Spider_GenId) do
    table.insert(tDynaGenId,v)
end
----蜘蛛卵奖励概率
--local tSprderAward = {
--    {33,2110013,30},
--    {66,2110023,30},
--    {100,2110033,30},
--}
----蜘蛛卵奖励名称
--local tSprderAward_Name = {}
--tSprderAward_Name[2110013] = "材料1"
--tSprderAward_Name[2110023] = "材料2"
--tSprderAward_Name[2110033] = "材料3"

----蜘蛛卵奖励概率
--local tSprderAward = {
--    {100,CONST_SPECIALITEM_ID.MONEY,1000}
--}
----蜘蛛卵奖励名称
--local tSprderAward_Name = {}
--tSprderAward_Name[CONST_SPECIALITEM_ID.MONEY] = "金币"

--buff
--怪物变强buff
local nStatus_Stronger = 600004  

----宝箱------
local tBox = {}
local tBox_Gen = {}

tBox.Box1 = 40023
tBox_Gen.Box1 = 3032121
table.insert(tDynaGenId,tBox_Gen.Box1)

--失落的宝藏（普通宝箱）
tBox.Box2 = 40024
tBox_Gen.RandomBox1 = {3032122,3032123}
tBox.Box5 = 40252
tBox_Gen.RandomBox2 = {3032124,3032125}
----失落的宝藏（怪物宝箱）
--tBox.Box3 = 40204
--tBox_Gen.RandomMonster1 = 3032126
--tBox.Box4 = 40205
--tBox_Gen.RandomMonster2 = 3032127
-----------机关数据----------
--吊桥前的门
local nValve_BridgeDoor = 1007
local nValve_BridgeDoor_GenId = 3032091
table.insert(tDynaGenId,nValve_BridgeDoor_GenId)
--幻阵机关
local nValve_HuanZhen = 1008
local nValve_HuanZhen_GenId = 3032092
table.insert(tDynaGenId,nValve_HuanZhen_GenId)
--法阵前的门
local nValve_FaZhenDoor = 1011
local nValve_FaZhenDoor_GenId = 3032093
table.insert(tDynaGenId,nValve_FaZhenDoor_GenId)
----副本入口障碍（非脚本创建）
--local nValve_CopyMapObstacle = 1018
--local nValve_CopyMapObstacle_GenId = 3032094
---火把机关  1109 
local tFire = {}
tFire.nValue_Fire = 1109
--机关
tFire.nValue_Fire_GenId_1_1 = 3032303
tFire.nValue_Fire_GenId_1_2 = 3032304
tFire.nValue_Fire_GenId_2_1 = 3032305
tFire.nValue_Fire_GenId_2_2 = 3032306
tFire.nValue_Fire_GenId_3_1 = 3032307
tFire.nValue_Fire_GenId_3_2 = 3032308
tFire.nValue_Fire_GenId_4_1 = 3032309
tFire.nValue_Fire_GenId_4_2 = 3032310
--机关对应的火光效
tFire[tFire.nValue_Fire_GenId_1_1] = 3032312
tFire[tFire.nValue_Fire_GenId_1_2] = 3032313
tFire[tFire.nValue_Fire_GenId_2_1] = 3032314
tFire[tFire.nValue_Fire_GenId_2_2] = 3032315
tFire[tFire.nValue_Fire_GenId_3_1] = 3032316
tFire[tFire.nValue_Fire_GenId_3_2] = 3032317
tFire[tFire.nValue_Fire_GenId_4_1] = 3032318
tFire[tFire.nValue_Fire_GenId_4_2] = 3032319
------------------------火把玩法------------------------------
--火把引导动画 2719
--火把前陷阱
local nTrap_HuoBa = 30646
rwtNpcGroup[nTrap_HuoBa] = rwtNpcGroup[nTrap_HuoBa] or {}
rwtNpcGroup[nTrap_HuoBa]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_HuoBa]["DelTrap"] = 1
rwtNpcGroup[nTrap_HuoBa]["Awards"] = {}  
rwtNpcGroup[nTrap_HuoBa]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_HuoBa]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_HuoBa]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_HuoBa]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = 2719
rwtNpcGroup[nTrap_HuoBa]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtNpcGroup[nTrap_HuoBa]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0

--动画结束刷出引导光效
function CopyMap_aihaoshendian_HuoBaYinDaoCG()
    local sPos = "1.78,3.84,2.3"   --光效位置
     rwSpecialStatus_AddEffect(7,0,2004,sPos) 
end
rwtCGFinish[nOperPlay_6] = rwtCGFinish[nOperPlay_6] or {}
table.insert(rwtCGFinish[nOperPlay_6],CopyMap_aihaoshendian_HuoBaYinDaoCG)


--怪物视野
--机关
tValve[tFire.nValue_Fire] = tValve[tFire.nValue_Fire] or {}
tValve[tFire.nValue_Fire]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tFire.nValue_Fire]["ValveClickFunc"] =  function(nValveType, nGenId, nValveId)
    local nUserId = rwUserGetId()
    local nState = rwGetValveData(nGenId)
    if nState == 0 then
        return
    end
    --如果是第一次打开提示对白否则只弹出提示
    if  rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["First_Click_Fire"] then
        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["First_Click_Fire"] = false
        rwStoryTrigger(nOperPlay_7,2,1)
    else
        --字幕提示
        rwSendSystemMessage(tLuaText[LANGUAGE_CONFIG][10177],2)
    end
    --删除引导光效
    rwSpecialStatus_RemoveEffect(7,0,2004)
    --删除2倍火把的光效
    if rwHasGenEvent(tFire[nGenId]) then
        rwDelGenEvent(tFire[nGenId])
    end
    --设置机关状态
    rwUpdateValveData(nGenId,0)
    --确定哪只怪
    local sShiYe_Monster = "ShiYe_Monster1"
    local nMonster_GenId = nMonsterGroup_1_GenId
    if (nGenId ==  tFire.nValue_Fire_GenId_1_1) or (nGenId ==  tFire.nValue_Fire_GenId_1_2) then
        sShiYe_Monster = "ShiYe_Monster1"
        nMonster_GenId = nMonsterGroup_1_GenId
    elseif (nGenId ==  tFire.nValue_Fire_GenId_2_1) or (nGenId ==  tFire.nValue_Fire_GenId_2_2) then
        sShiYe_Monster = "ShiYe_Monster2"
        nMonster_GenId = nMonsterGroup_2_GenId
    elseif (nGenId ==  tFire.nValue_Fire_GenId_3_1) or (nGenId ==  tFire.nValue_Fire_GenId_3_2) then
        sShiYe_Monster = "ShiYe_Monster3"
        nMonster_GenId = nMonsterGroup_3_GenId
    elseif (nGenId ==  tFire.nValue_Fire_GenId_4_1) or (nGenId ==  tFire.nValue_Fire_GenId_4_2) then
        sShiYe_Monster = "ShiYe_Monster4"
        nMonster_GenId = nMonsterGroup_4_GenId
    end
    
    --设置怪物视野
     rwtCopyMapUserInitInfo[nCopyMapId][nUserId][sShiYe_Monster] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId][sShiYe_Monster]-1
     if rwtCopyMapUserInitInfo[nCopyMapId][nUserId][sShiYe_Monster] == 2 then
         if (sShiYe_Monster == "ShiYe_Monster3") then--第三只怪特殊处理
            rwChangeMonsterRounds(nMonster_GenId,0,-1,550,550,36000) -- 视野和战斗触发变为5.5
         else
            rwChangeMonsterRounds(nMonster_GenId,0,-1,550,550,4500) -- 视野和战斗触发变为5.5，角度变为45
         end
     elseif rwtCopyMapUserInitInfo[nCopyMapId][nUserId][sShiYe_Monster] == 1 then
        if (sShiYe_Monster == "ShiYe_Monster3") then
            rwChangeMonsterRounds(nMonster_GenId,0,-1,400,400,36000) -- 视野和战斗触发变为4
        else
          rwChangeMonsterRounds(nMonster_GenId,0,-1,400,400,2000) -- 视野和战斗触发变为4，角度变为20
        end
     end
end



-------------------------------副本目标---------------
--犯人就是你	
local nCopyTarget_1 = 60056
--魔之守门人	
local nCopyTarget_4 = 60066
--迷阵之围
local nCopyTarget_2 = 60057
--权利的诱惑
local nCopyTarget_3 = 60058
--贪念世界	
local nCopyTarget_5 = 60067
----------------------其他-------------
--------奖励id
local tAwardId = {}
--采集物
local nCollectAwardId = 1000048

--副本通关奖励
local nPassCopyAwardId = 1000018

----被封印的魔物1
--tAwardId.BoxMonster1 = 1000461
----被封印的魔物2
--tAwardId.BoxMonster1 = 1000462

--失落的宝藏(隐藏宝箱)
tAwardId.Box1 = 1000049
--失落的宝藏1
tAwardId.Box2 = 1000463
--失落的宝藏2
tAwardId.Box5 = 1000483



--***************************逻辑******************************
-------------------------副本-------------------------
--进入副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["UnlockDialog"] = 5214
rwtNpcGroup[nNpcGroup_CopyMap]["Dialog"] = 5208
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMapId}
--NPC位置：-95.0,0.1,-189.7
--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_CopyMap_GenId --副本传送NPC的GENID

--副本目标
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 4
rwtCopyMapMission[nCopyMapId]["Target1"] = {nCopyTarget_1}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nCopyTarget_4}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nCopyTarget_2}
rwtCopyMapMission[nCopyMapId]["Target4"] = {nCopyTarget_3}
--rwtCopyMapMission[nCopyMapId]["Target5"] = {nCopyTarget_5}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "FaZhen"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["SetValue"] = {1,2,3,4}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][2]["ValueRes"] = "FaZhenRandomList"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["SetValue"] = tMonster_FaZhen_GenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][3]["ValueRes"] = "FaZhenMonsterList"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][4]["SetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][4]["ValueRes"] = "First_Click_Fire"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][5] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][5]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][5]["ValueRes"] = "ShiYe_Monster1"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][6] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][6]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][6]["ValueRes"] = "ShiYe_Monster2"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][7] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][7]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][7]["ValueRes"] = "ShiYe_Monster3"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][8] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][8]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][8]["ValueRes"] = "ShiYe_Monster4"

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tBox_Gen.RandomBox1[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-9.67,-4.20,-4.83"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tBox_Gen.RandomBox1[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-11.75,-8.45,-71.89"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 1 
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 1
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tBox_Gen.RandomMonster1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["GenId"] = tBox_Gen.RandomBox2[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["Pos"] = "-45.33,-12.70,-55.37"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["GenId"] = tBox_Gen.RandomBox2[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["Pos"] = "-50.67,-12.62,-6.83"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 1
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RemainRandomNum"] = 1
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tBox_Gen.RandomMonster2

----------------------副本目标-------------------------CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
--犯人就是你
rwtTarget[nCopyTarget_1] = {}
rwtTarget[nCopyTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20041]
rwtTarget[nCopyTarget_1]["ReqTrap"] = nTrap_1
rwtTarget[nCopyTarget_1]["ReqCount"] = 1

--魔之守门人
rwtTarget[nCopyTarget_4] = {}
rwtTarget[nCopyTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20042]
rwtTarget[nCopyTarget_4]["KillMonsterGroup"] = nMonsterGroup_5
rwtTarget[nCopyTarget_4]["ReqCount"] = 1

--迷阵之围
rwtTarget[nCopyTarget_2] = {}
rwtTarget[nCopyTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20043]
rwtTarget[nCopyTarget_2]["ReqCount"] = 1

--权利的诱惑
rwtTarget[nCopyTarget_3] = {}
rwtTarget[nCopyTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20044]
rwtTarget[nCopyTarget_3]["KillMonsterGroup"] = nMonster_Noel
rwtTarget[nCopyTarget_3]["ReqCount"] = 1

--贪念世界
rwtTarget[nCopyTarget_5] = {}
rwtTarget[nCopyTarget_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20045]
rwtTarget[nCopyTarget_5]["ReqDialogId"] = nDialogId_12
rwtTarget[nCopyTarget_5]["ReqCount"] = 1

------------陷阱-----------------
--发现诺尔拿神器
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["DelTrap"] = 1
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nOperPlay_1
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--桥头对白
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["DelTrap"] = 1
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_3

--通关幻阵后对白
rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_5]["DelTrap"] = 1
rwtNpcGroup[nTrap_5]["Awards"] = {}  
rwtNpcGroup[nTrap_5]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= nOperPlay_2
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
rwtNpcGroup[nTrap_5]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0


--诺尔战败、主角被秒、该隐装B对白
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap   
rwtNpcGroup[nTrap_3]["TrapFunc"] = function ()
	local nUserId = rwUserGetId()
    local nDialog = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BossDialog"]
    if nDialog then
        rwOpenNpcChatDialog(nDialog,CONST_NPCCHAT_TYPE.NPC)  
    end
    --触发剧情后删除陷阱
    if rwHasGenEvent(nTrap_GenId_3) then
        rwDelGenEvent(nTrap_GenId_3)
    end
end


--法阵前对白
rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_4]["DelTrap"] = 1
rwtNpcGroup[nTrap_4]["Awards"] = {}  
rwtNpcGroup[nTrap_4]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_4

--------------怪物-----------------
--法阵看门怪
function CopyMap_AiHaoShenDian_FaZhenDoorBeKill()
    --怪物死亡开门
    rwUpdateValveData(nValve_FaZhenDoor_GenId,1) 
    rwStoryTrigger(nOperPlay_4,2,1)    
end
rwtMonsterGroup_Func[nMonsterGroup_5] = rwtMonsterGroup_Func[nMonsterGroup_5] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_5],CopyMap_AiHaoShenDian_FaZhenDoorBeKill)

--诺尔
function CopyMap_AiHaoShenDian_NuoErBeKill()
    --设置陷阱对白内容
    local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["BossDialog"] = nOperDialog_3

    rwStoryTrigger(nOperPlay_5,2,1)   
end
rwtMonsterGroup_Func[nMonster_Noel] = rwtMonsterGroup_Func[nMonster_Noel] or {}
table.insert(rwtMonsterGroup_Func[nMonster_Noel],CopyMap_AiHaoShenDian_NuoErBeKill)

--贪婪
function CopyMap_AiHaoShenDian_TanLanBattleLose()
    --战斗失败播放过场动画
    rwStoryTrigger(nOperPlay_5,2,1)
end

rwtMonsterGroup[nMonster_TanLan] = rwtMonsterGroup[nMonster_TanLan] or {}
rwtMonsterGroup[nMonster_TanLan]["BattleLose"] = function()
   CopyMap_AiHaoShenDian_TanLanBattleLose()
end


rwtMonsterGroup_Func[nMonster_TanLan] = rwtMonsterGroup_Func[nMonster_TanLan] or {}
table.insert(rwtMonsterGroup_Func[nMonster_TanLan],CopyMap_AiHaoShenDian_TanLanBattleLose)
-------------------对白---------------------
--发现未激活的魔法阵
rwtDialog[nDialogId_3] = rwtDialog[nDialogId_3] or {}
rwtDialog[nDialogId_3]["DialogEndInit"] = {}
rwtDialog[nDialogId_3]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogId_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogId_3]["DialogEndInit"]["Events"][1]["UserMsg"] = {}
rwtDialog[nDialogId_3]["DialogEndInit"]["Events"][1]["UserMsg"]["Content"] = sMessage_FindNotActiveFaZhen
rwtDialog[nDialogId_3]["DialogEndInit"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtDialog[nDialogId_3]["DialogEndInit"]["Events"][1]["UserMsg"]["ShowType"] = 2

--发现幻阵
rwtDialog[nDialogId_4] = rwtDialog[nDialogId_4] or {}
rwtDialog[nDialogId_4]["DialogEndInit"] = {}
rwtDialog[nDialogId_4]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogId_4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogId_4]["DialogEndInit"]["Events"][1]["UserMsg"] = {}
rwtDialog[nDialogId_4]["DialogEndInit"]["Events"][1]["UserMsg"]["Content"] = sMessage_FindActiveFaZhen
rwtDialog[nDialogId_4]["DialogEndInit"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtDialog[nDialogId_4]["DialogEndInit"]["Events"][1]["UserMsg"]["ShowType"] = 2

--击败诺尔后对白
rwtDialog[nOperDialog_3] = rwtDialog[nOperDialog_3] or {}
rwtDialog[nOperDialog_3]["DialogEndInit"] = {}
rwtDialog[nOperDialog_3]["DialogEndInit"]["Events"] = {}
rwtDialog[nOperDialog_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nOperDialog_3]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[nOperDialog_3]["DialogEndInit"]["Events"][1]["DynDelete"][1] = nNpc_Noel_GenId
rwtDialog[nOperDialog_3]["DialogEndInit"]["Events"][1]["DynCreate"] = {}
rwtDialog[nOperDialog_3]["DialogEndInit"]["Events"][1]["DynCreate"][1] = nMonster_TanLan_GenId


--战斗教学
rwtDialog[nDialogId_12] = rwtDialog[nDialogId_12] or {}
rwtDialog[nDialogId_12]["DialogEndInit"] = {}
rwtDialog[nDialogId_12]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialogId_12]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialogId_12]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}
rwtDialog[nDialogId_12]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = nOperPlay_5
rwtDialog[nDialogId_12]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Type"] = 2
rwtDialog[nDialogId_12]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0



--------剧情----------
--击败诺尔动画结束函数
 function CopyMap_AiHaoShenDian_StoryEnd_NouerBeKilled()
    --动画结束后播放战斗教学前对白
    rwOpenNpcChatDialog(nDialogId_12)
 end
 rwtCGFinish[nOperPlay_5] = rwtCGFinish[nOperPlay_5] or {}
 table.insert(rwtCGFinish[nOperPlay_5],CopyMap_AiHaoShenDian_StoryEnd_NouerBeKilled)

----------采集物------------------
--蜘蛛卵
rwtNpcGroup[nCollect_Spider] = rwtNpcGroup[nCollect_Spider] or {}
rwtNpcGroup[nCollect_Spider]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_Spider]["Awards"] = {}  
rwtNpcGroup[nCollect_Spider]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_Spider]["Awards"]["Events"][1] = {}   
rwtNpcGroup[nCollect_Spider]["Awards"]["Events"][1]["GetServerAward"] = {}       
rwtNpcGroup[nCollect_Spider]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nCollectAwardId
rwtNpcGroup[nCollect_Spider]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_Spider]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


----------宝箱--------------------------
--宝箱
rwtNpcGroup[tBox.Box1] = rwtNpcGroup[tBox.Box1] or {}
rwtNpcGroup[tBox.Box1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Box1]["Awards"] = {}
rwtNpcGroup[tBox.Box1]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Box1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Box1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Box1
rwtNpcGroup[tBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Box1

--失落的宝藏1（普通宝箱）
rwtNpcGroup[tBox.Box2] = rwtNpcGroup[tBox.Box2] or {}
rwtNpcGroup[tBox.Box2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Box2]["Awards"] = {}
rwtNpcGroup[tBox.Box2]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Box2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Box2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Box2
rwtNpcGroup[tBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Box2

--失落的宝藏2（普通宝箱）
rwtNpcGroup[tBox.Box5] = rwtNpcGroup[tBox.Box5] or {}
rwtNpcGroup[tBox.Box5]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Box5]["Awards"] = {}
rwtNpcGroup[tBox.Box5]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Box5]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Box5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Box5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Box5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Box5
rwtNpcGroup[tBox.Box5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Box5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Box5


----失落的宝藏1（怪物宝箱）
--rwtNpcGroup[tBox.Box3] = rwtNpcGroup[tBox.Box3] or {} 
--rwtNpcGroup[tBox.Box3]["NotDel"] = 1
--rwtNpcGroup[tBox.Box3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[tBox.Box3]["Awards"] = {}
--rwtNpcGroup[tBox.Box3]["Awards"]["Events"] = {}
--rwtNpcGroup[tBox.Box3]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tBox.Box3]["Awards"]["Events"][1]["AutoBattle"] = {}
--rwtNpcGroup[tBox.Box3]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGen.BoxMonsterGroup1 --宝箱怪物

--function CopyMap_AiHaoShenDian_DelBox1()
--    if rwHasGenEvent(tBox_Gen.RandomMonster1) then
--        rwDelGenEvent(tBox_Gen.RandomMonster1)
--    end
--end
--rwtMonsterGroup_Func[tMonsterGroup.BoxMonsterGroup1] = rwtMonsterGroup_Func[tMonsterGroup.BoxMonsterGroup1] or {}
--table.insert(rwtMonsterGroup_Func[tMonsterGroup.BoxMonsterGroup1],CopyMap_AiHaoShenDian_DelBox1)


----失落的宝藏2（怪物宝箱）
--rwtNpcGroup[tBox.Box4] = rwtNpcGroup[tBox.Box4] or {} 
--rwtNpcGroup[tBox.Box4]["NotDel"] = 1
--rwtNpcGroup[tBox.Box4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
--rwtNpcGroup[tBox.Box4]["Awards"] = {}
--rwtNpcGroup[tBox.Box4]["Awards"]["Events"] = {}
--rwtNpcGroup[tBox.Box4]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tBox.Box4]["Awards"]["Events"][1]["AutoBattle"] = {}
--rwtNpcGroup[tBox.Box4]["Awards"]["Events"][1]["AutoBattle"]["GenId"] = tMonsterGroupGen.BoxMonsterGroup2 --宝箱怪物

--function CopyMap_AiHaoShenDian_DelBox2()
--    if rwHasGenEvent(tBox_Gen.RandomMonster2) then
--        rwDelGenEvent(tBox_Gen.RandomMonster2)
--    end
--end
--rwtMonsterGroup_Func[tMonsterGroup.BoxMonsterGroup2] = rwtMonsterGroup_Func[tMonsterGroup.BoxMonsterGroup2] or {}
--table.insert(rwtMonsterGroup_Func[tMonsterGroup.BoxMonsterGroup2],CopyMap_AiHaoShenDian_DelBox2)
-----------函数-------------------
--法阵随机目标怪物
function CopyMap_AiHaoShenDian_RandomStatus()
    local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] =  rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] or nil
    local nRandom = math.random(1,#rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"])
    local nTarget =rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"][nRandom]
    local nStaus = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"][nRandom] - 1
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] = tMonster_FaZhen_GenId[nTarget] 
    return nStaus
end

--幻阵怪物增强
function CopyMap_AiHaoShenDian_MonsterStronger(nUserId)
    for k,v in pairs(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"]) do
        if rwHasGenEvent(tMonster_FaZhen_GenId[v]) then
            rwMonsterAddStatus(tMonster_FaZhen_GenId[v], tMonsterId_FaZhen[v], nStatus_Stronger)
        end       
    end
end


---------------------------------------幻阵玩法----------------------------
--机关逻辑
tValve[nValve_HuanZhen] = tValve[nValve_HuanZhen] or {}
tValve[nValve_HuanZhen]["Type"] = CONST_VALVE_TYPE.MAGICARRAY
tValve[nValve_HuanZhen]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    local nState = rwGetValveData(nGenId)
    if nState == 2 then
        return
    end
    CopyMap_AiHaoShenDianFaZhen_InitMap()
    rwChangeScene(nMap_FaZhen)
end

--幻阵怪物死亡
function CopyMap_AiHaoShenDianFaZhen_MonsterDeath(nMonsterGroupType, nMonsterGroupId, nGenId)
        local nUserId = rwUserGetId()
        for k,v in pairs(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenMonsterList"]) do
            if nGenId == v then 
                --更新列表
                table.remove(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenRandomList"], k)
                table.remove(rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhenMonsterList"], k)
            end
        end
       if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] == nGenId then
            --完成任务目标            
            rwBaseTarget:create(nCopyTarget_2):EventOnTargetUpdate()
            --击杀正，破阵成功，返回主副本
            rwChangeScene(nCopyMapId,sPos_FaZhen)
            --关闭幻阵
            rwUpdateValveData(nValve_HuanZhen_GenId, 2)
            --开启吊桥机关
            rwUpdateValveData(nValve_BridgeDoor_GenId, 1)
            rwStoryTrigger(nOperPlay_2,2,1)
        else
            --第一次击杀错误
            if rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and (not rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FirstKillError"]) then 
                rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FirstKillError"] = 1
                --击杀错误，其他怪物变强
                CopyMap_AiHaoShenDian_MonsterStronger(nUserId)
                --重新随机目标怪物
                local nStatus = CopyMap_AiHaoShenDian_RandomStatus()
                --移除所有怪物身上光效，给对应怪物添加光效 不是这，是对话
                local sPos = "0,1,0"   --光效位置
                for k,v in pairs(tMonster_FaZhen_GenId) do
                    if rwHasGenEvent(v) then
                        rwSpecialStatus_AddEffect(5,v,2007,sPos) 
                    end
                end
                --更新幻阵状态
                rwUpdateValveData(nValve_HuanZhen_GenId, 1, nStatus)
            end
        end
end
for k,v in pairs(tMonster_FaZhen) do
    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
    table.insert(rwtMonsterGroup_Func[v],CopyMap_AiHaoShenDianFaZhen_MonsterDeath)
end

for k,v in pairs(tMonster_FaZhen) do
    rwtMonsterGroup[v] = rwtMonsterGroup[v] or {}
    rwtMonsterGroup[v]["BattleCheckFunc"] = function(nMonsterGroupId,nMonsterGroupType,nGenEventId)
        local nUserId = rwUserGetId()
        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] or 0
        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["battlechecktimes"] + 1
        if not rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] then
            return false
        end
        if not (rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"] == nGenEventId) then
            if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FirstKillError"] == 1 then
                --不是第一次打错
                rwOpenNpcChatDialog(nDialogId_11)
--                rwPrintLog("加箭头光效")
--                local sPos = "-1,2,0"   --箭头位置
--                rwSpecialStatus_RemoveEffect(5,rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"],2004,sPos)
--                rwSpecialStatus_AddEffect(5,rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["TargetMonster_GenId"],2004,sPos) 
                return false
            else 
                return true
            end
        else
            return true
        end
    end
end


--法阵初始化
function CopyMap_AiHaoShenDianFaZhen_InitMap()--初始化函数
    for k,v in pairs(tMonster_FaZhen_GenId) do
        if not rwHasGenEvent(v) then
            rwAddGenEvent(v)
        end
    end
    local nStaus = CopyMap_AiHaoShenDian_RandomStatus()
    rwUpdateValveData(nValve_HuanZhen_GenId, 1, nStaus)
end
--切图后弹出提示
function CopyMap_AiHaoShenDianFaZhen_EnterEnd()--初始化函数
    local nUserId = rwUserGetId()
    if  rwtCopyMapUserInitInfo[nCopyMapId][nUserId] and rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["FaZhen"] then
        rwOpenNpcChatDialog(nDialogId_9)
    end
end
----切图后触发
rwtChangeSceneSucc_Func[nMap_FaZhen] = rwtChangeSceneSucc_Func[nMap_FaZhen] or {}
table.insert(rwtChangeSceneSucc_Func[nMap_FaZhen],CopyMap_AiHaoShenDianFaZhen_EnterEnd)
