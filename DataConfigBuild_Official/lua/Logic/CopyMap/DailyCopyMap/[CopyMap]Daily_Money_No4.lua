--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--ID申请
--副本          3126 
--Monster       1000931  1000933 
--MonsterGroup  200630  200636 
--采集物         60385  60386 
--宝箱        60425  60426
--奖励        1000530  1000531  
---副本目标      60295 
--对白        
-------------------------------------定义---------------------------------------
--副本
local nCopyMapId = 3126
--怪物ID
local tMonster = {}

tMonster.nMonster_nMonster_1 = 1000931
tMonster.nMonster_nMonster_2 = 1000932
tMonster.nMonster_nMonster_3 = 1000933

tMonster.nMonsterGroup_nMonster_1 = 200630
tMonster.nMonsterGroup_GenId_nMonster_1 = 3126001

tMonster.nMonsterGroup_nMonster_2 = 200631
tMonster.nMonsterGroup_GenId_nMonster_2 = 3126002

tMonster.nMonsterGroup_nMonster_3 = 200632
tMonster.nMonsterGroup_GenId_nMonster_3 = 3126003

tMonster.nMonsterGroup_nMonster_4 = 200633
tMonster.nMonsterGroup_GenId_nMonster_4 = 3126004

tMonster.nMonsterGroup_nMonster_5 = 200634
tMonster.nMonsterGroup_GenId_nMonster_5 = 3126005

tMonster.nMonsterGroup_nMonster_6 = 200635
tMonster.nMonsterGroup_GenId_nMonster_6 = 3126006

tMonster.nMonsterGroup_nMonster_7 = 200636
tMonster.nMonsterGroup_GenId_nMonster_7 = 3126007


--奖励ID
local nAward_TongGuan = 1000530
local nAward_PuTong = 1000531

--对白
local tDialog = {}
tDialog.nDialog_1 = 6889
tDialog.nDialog_2 = 6890


--采集物ID
local tCollect= {}

tCollect.nCollect_Box_TongGuan = 60425
tCollect.nCollect_GenId_Box_TongGuan = 3126008
rwtNpcGroup[tCollect.nCollect_Box_TongGuan] = rwtNpcGroup[tCollect.nCollect_Box_TongGuan] or {} 
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["CollectTime"] = 3
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"] = {}
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.nCollect_Box_TongGuan
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_TongGuan
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX 
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][2] = {}
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][2]["OpenDialog"] = {}
rwtNpcGroup[tCollect.nCollect_Box_TongGuan]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = tDialog.nDialog_2

tCollect.nCollect_Box_PuTong = 60426
tCollect.nCollect_GenId_Box_PuTong_1 = 3126009
tCollect.nCollect_GenId_Box_PuTong_2 = 3126010
tCollect.nCollect_GenId_Box_PuTong_3 = 3126011
tCollect.nCollect_GenId_Box_PuTong_4 = 3126012
tCollect.nCollect_GenId_Box_PuTong_5 = 3126013
rwtNpcGroup[tCollect.nCollect_Box_PuTong] = rwtNpcGroup[tCollect.nCollect_Box_PuTong] or {} 
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["CollectTime"] = 2
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"] = {}
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD 
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.nCollect_Box_PuTong
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_PuTong
rwtNpcGroup[tCollect.nCollect_Box_PuTong]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS --提示（飘字）

-------------------------------------逻辑---------------------------------------
--副本目标
local nTarget = 60295


rwtTarget[nTarget] = {}
rwtTarget[nTarget]["Title"] = tLuaText[LANGUAGE_CONFIG][21795]
rwtTarget[nTarget]["ReqCollectId"] = tCollect.nCollect_Box_TongGuan
rwtTarget[nTarget]["ReqCount"] = 1

--金钱4号本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}





--初始化
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nDialog_1


