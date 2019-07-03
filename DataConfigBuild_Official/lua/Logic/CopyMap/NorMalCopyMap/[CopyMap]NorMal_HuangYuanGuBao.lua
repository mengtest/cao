--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion




--副本ID 荒野古堡-普通本
local nCopyMapId = 3043

--切换剧情、普通本任务
local nChangeNpcTaskID = 10282
local nNpcGroup_GenId_CopyMap = 3043009




--进入副本NPC
rwtNpcGroup[50026] = {}
rwtNpcGroup[50026]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50026]["UnlockDialog"] = 5238
rwtNpcGroup[50026]["Dialog"] = 5239
rwtNpcGroup[50026]["CopyMapList"] = {nCopyMapId}

local nTarget1 = 60054



--副本任务目标
rwtTarget[nTarget1] = {}
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20030]
rwtTarget[nTarget1]["KillMonsterGroup"] = 200262
rwtTarget[nTarget1]["ReqCount"] = 1



--进入副本NPC   
--genid   3043009
--副本NPC位置：
--对白 女巫古堡普通本	5233	5242

local nDialogId_1 = 5233   --进入副本对白 
local nDialogId_2 = 5234   --药剂对白1  加侦查范围
local nDialogId_3 = 5235   --药剂对白2  加攻击
local nDialogId_4 = 5236   --药剂对白3  加移速
local nDialogId_5 = 5237    --哼，人类女孩。下一次，不会这么简单。
local nDialogId_6 = 5238    --喂，你们两个不要乱走。这栋城堡看起来阴森森的，说不定里面有……
local nDialogId_7 = 5239    --最近弥尔还好么？我们去看看她吧。

local CopyHuangYuan_monsterGenId = {
    3043001,3043002,3043003
    }
--1000087  1000089  2018-05-02  副本女巫古堡掉落奖励 

--场景动画
local nStory1 = 15701
local nStory2 = 15702
local nStory3 = 15703
local nStory4 = 15704
local nStory5 = 15705
    
-- local nTimeofRuiYanYaoJi = 0
-- local nTimeofFuShuYaoJi = 0
--怪物id 9000161 9000162
--怪物组 200259	200262
-------------NPC组----------
--陷阱30339	30341
--local nTrap_1 = 30339   --第一个药剂
--local nTrap_GenId_1 = 3043005
local nTrap_2 = 30340   --第二个药剂
local nTrap_GenId_2 = 3043006
local nTrap_3 = 30341   --第三个药剂
local nTrap_GenId_3 = 3043007
--箱子 
local nBox_1 = 40079   --魔法橱柜后箱子 --有女巫斗篷
local nBox_NpcGroup_GenId = 3043008
--Monster GenID
local nMonster_DaNvWu_GenId = 3043004

--机关数据
--魔法橱柜机关
local nValve_Door = 1029
local nValve_Door_GenId = 3043009


--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = nTarget1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2003 --传送NPC所在地图
rwtCopyMapMission[nCopyMapId]["ChangeNpcTask"] = nChangeNpcTaskID  --完成该任务切换剧情、普通副本NPC
rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.NORMAL --副本类型 （PLOT剧情，NORMAL普通）
rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nNpcGroup_GenId_CopyMap --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nGenId"] = nValve_Door_GenId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenVavle"][1]["nStatus"] = 2




------------陷阱-----------------
--第一个药剂

--第二个药剂
rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["DelTrap"] = 1
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}     
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_4
rwtNpcGroup[nTrap_2]["TrapFunc"] = function ()
    --腐鼠之尾
     --rwPrintLog("触发疾风药剂，腐鼠之尾")
        for i = 1, #CopyHuangYuan_monsterGenId do
            if rwHasGenEvent(CopyHuangYuan_monsterGenId[i]) then
                rwChangeMonsterRounds(CopyHuangYuan_monsterGenId[i], 0, 100) -- 速度变成2倍 0.5->1
            end
        end
end
--第三个药剂
rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_3]["DelTrap"] = 1
rwtNpcGroup[nTrap_3]["Awards"] = {}  
rwtNpcGroup[nTrap_3]["Awards"]["Events"] = {}    
rwtNpcGroup[nTrap_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_3]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialogId_2
rwtNpcGroup[nTrap_3]["TrapFunc"] = function ()
    --鹰眼药剂
    --rwPrintLog("触发锐眼药剂,恶鹰之眼")
        for i = 1, #CopyHuangYuan_monsterGenId do
            if rwHasGenEvent(CopyHuangYuan_monsterGenId[i]) then
                rwChangeMonsterRounds(CopyHuangYuan_monsterGenId[i],0,-1,400,400) -- 视野和战斗触发变成400   初始改300
            end
        end
end




--打开魔法橱柜那边的箱子  --女巫斗篷 加魔法防御
rwtNpcGroup[nBox_1] = rwtNpcGroup[nBox_1] or {}  
rwtNpcGroup[nBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_1]["Awards"] = {}
--rwtNpcGroup[nBox_1]["Awards"]["AwardId"] = 1000098
--rwtNpcGroup[nBox_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_1
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 1000098   


--function CopyMap_NorMal_HuangYuanGuBao_BOSS_Death()
--    --触发对白
--   rwOpenNpcChatDialog(nDialogId_5)
--end

--rwtMonsterGroup_Func[200262] = rwtMonsterGroup_Func[200262] or {} --女巫菲梅
--table.insert(rwtMonsterGroup_Func[200262],CopyMap_NorMal_HuangYuanGuBao_BOSS_Death)

--进入副本
--function CopyMap_NorMal_HuangYuanGuBao_InitMap()
--    rwPrintLog("进入副本，开始初始化")
--    rwPrintLog("进入与小女巫的剧情对白") 
--    rwOpenNpcChatDialog(nDialogId_1)

--    --橱柜机关打开门
--    rwUpdateValveData(nValve_Door_GenId,2) 
--    rwPrintLog("荒原古堡副本初始化完毕")

--end



----进入荒原古堡触发
--rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
--table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_NorMal_HuangYuanGuBao_InitMap)
