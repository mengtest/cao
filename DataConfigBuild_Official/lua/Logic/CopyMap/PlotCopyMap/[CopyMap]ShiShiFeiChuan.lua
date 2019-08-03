--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--失事飞船（天空城前置副本）
--by:mzy
--date:2019/02/15

--endregion


--=====================副本相关======================
--genid分配
--NPC组：3087001-3087100
--怪物组：3087101-3087200
--机关：3087201-3087300

--副本ID
local nCopyMapId = 3087

--进入副本NPC
local nNpcGroup_CopyMap = 50057
local nNpcGroup_GenId_CopyMap = 3087001

--主线任务
local nMainTask_Copy = 1

--进入副本时需要创建的NPC、monster列表
local tDynaGenId = {}


--==============================数据定义=============================
-------------------------对白、动画-----------------------------
--对白
local tDialog = {}

tDialog["UnlockCopyMap"] = 6287    --副本未解锁对白
tDialog["AlreadyPass"] = 6288      --已通关对白

tDialog[1] = 6289                  --进入副本对白
tDialog[2] = 6290                  --发现黑龙舰兵
tDialog[3] = 6291                  --发现皮曼对白(触发动画)
tDialog[4] = 6292                  --boss放狠话(动画)
tDialog[5] = 6299                  --boss战后对白
tDialog[6] = 6300                  --玩家发现NPC(动画)
tDialog[7] = 6301                  --被boss发现(动画)

--动画
local tOper = {}

tOper[1] = 17001    --发现黑龙舰兵
tOper[2] = 17002    --boss出现

--------------------------NPC组-----------------------------
------SingleNPC
local tSingleNpc = {}
local tSingleNpc_GenId = {}
--皮曼
tSingleNpc[1] = 20586
tSingleNpc_GenId[1] = 3087002
table.insert(tDynaGenId,tSingleNpc_GenId[1])



-------陷阱
local tTrap = {}
local tTrap_GenId = {}

--发现Npc
tTrap[1] = 30586
tTrap_GenId[1] = 3087003
table.insert(tDynaGenId,tTrap_GenId[1])

-------宝箱
local tBox = {}
local tBox_GenId = {}

--副本宝箱
tBox[1] = 40179
tBox_GenId[1] = 3087004
table.insert(tDynaGenId,tBox_GenId[1])
---------------npcid---------------
local tNpcId = {}

--斥候皮曼（副本内）
tNpcId[1] = 3655
--黑翼骑士长约伯
tNpcId[1] = 3656


--------------------------monster_group------------------------------
local tMonsterGroup = {}
local tMonsterGroup_GenId = {}

tMonsterGroup[1] = 200406
tMonsterGroup_GenId[1] = 3087101

tMonsterGroup[2] = 200407
tMonsterGroup_GenId[2] = 3087102

tMonsterGroup[3] = 200408
tMonsterGroup_GenId[3] = {3087103,3087104}
--boss
tMonsterGroup[4] = 200409
tMonsterGroup_GenId[4] = 3087105
-------------------------monster------------------------------
local tMonster = {}

--黑龙舰兵
tMonster[1] = 1000599
--黑龙战士
tMonster[2] = 1000600
--boss
tMonster[3] = 1000601

-------------------------------奖励id---------------
local tAwardId = {}

--副本宝箱奖励
tAwardId[1] = 1000367

--副本通关奖励
tAwardId[2] = 1000368


-------------------------------副本目标---------------
local tTarget = {}
tTarget[1] = 60159          --寻找皮曼
tTarget[2] = 60160          --击退黑龙头目




--==============================逻辑=================================

--------------------------副本相关----------------------
--进入副本NPC
rwtNpcGroup[nNpcGroup_CopyMap] = {}
rwtNpcGroup[nNpcGroup_CopyMap]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[nNpcGroup_CopyMap]["UnlockDialog"] = tDialog["UnlockCopyMap"]
--rwtNpcGroup[nNpcGroup_CopyMap]["Dialog"] = tDialog["AlreadyPass"]
rwtNpcGroup[nNpcGroup_CopyMap]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = tDynaGenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog[1]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = false
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "NpcDialog"

rwtCopyMapMission[nCopyMapId]["NotCreate"] = 1

rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

--rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001
--rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = 10443--nMainTask_Copy  
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT 
--rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = 3087001 

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {tTarget[1]}
rwtCopyMapMission[nCopyMapId]["Target2"] = {tTarget[2]}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


----------------------副本目标-------------------------
--寻找皮曼
rwtTarget[tTarget[1]] = {}
rwtTarget[tTarget[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][21478]
rwtTarget[tTarget[1]]["ReqDialogId"] = tDialog[3]
rwtTarget[tTarget[1]]["ReqCount"] = 1

--击退黑龙头目
rwtTarget[tTarget[2]] = {}
rwtTarget[tTarget[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][21479]
rwtTarget[tTarget[2]]["KillMonsterGroup"] = tMonsterGroup[4]
rwtTarget[tTarget[2]]["ReqCount"] = 1

---------------------NPC-----------------------------
----皮曼
--rwtNpcGroup[tSingleNpc[1]] = {}
--rwtNpcGroup[tSingleNpc[1]]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc[1]]["NpcId"]= tNpcId[1]


--rwtNpc[tNpcId[1]] = rwtNpc[tNpcId[1]] or {}
----rwtNpc[tNpcId[1]]["NpcProcess"] = function ()
----    if rwGetMapTaskProgress(tTarget[1]) == 0 then
----        rwOpenNpcChatDialog(tDialog[3])
----    end
----end
--rwtNpc[tNpcId[1]]["NpcProcess"] = function ()
--    local bPlayDialog = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["NpcDialog"]
--    if bPlayDialog then
--        return
--    end
--    rwOpenNpcChatDialog(tDialog[3])
--    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["NpcDialog"] = true
--end
---------------------陷阱-----------------------------
--发现NPC
rwtNpcGroup[tTrap[1]] = rwtNpcGroup[tTrap[1]] or {}
rwtNpcGroup[tTrap[1]]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap[1]]["DelTrap"] = 1
rwtNpcGroup[tTrap[1]]["Awards"] = {}  
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"] = {}   
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1] = {} 
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"]= tOper[1]
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Type"]= 2
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"]= 0
rwtNpcGroup[tTrap[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog[3]


---------------------宝箱-----------------------------
--副本宝箱
rwtNpcGroup[tBox[1]] = rwtNpcGroup[tBox[1]] or {}  
rwtNpcGroup[tBox[1]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox[1]]["Awards"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox[1]
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[1]  

---------------------动画-----------------------------
--boss出现动画
 function CopyMap_ShiShiFeiChuan_StoryEnd_BossEnable()
    --创建boss并进入战斗
    if not rwHasGenEvent(tMonsterGroup_GenId[4]) then
        rwAddGenEvent(tMonsterGroup_GenId[4])
    end
    rwAutoBattle(tMonsterGroup_GenId[4])
 end
 rwtCGFinish[tOper[2]] = rwtCGFinish[tOper[2]] or {}
 table.insert(rwtCGFinish[tOper[2]],CopyMap_ShiShiFeiChuan_StoryEnd_BossEnable)

