--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--每日材料副本



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3053

--采集
local nBox_Pass = 40093
local nBox_Pass_Gen = 3053001
local nBox_Hide_1 = 40094
local nBox_Hide1_Gen = 3053002
local nBox_Hide_2 = 40095
local nBox_Hide2_Gen = 3053003
local nBox_Egg = 40096
local nBox_Egg_Gen = 3053004

local nCollect_1 = 60130
local nCollect_2 = 60131
local nCollect_3 = 60132
local nCollect_4 = 60133
local nCollect_5 = 60134
local nCollect_6 = 60135

local nCollect_1_Gen = 3053005
local nCollect_2_Gen = 3053006
local nCollect_3_Gen = 3053007
local nCollect_4_Gen = 3053008
local nCollect_5_Gen = 3053009
local nCollect_6_Gen = 3053010
--NPC
local nNpc_KuangGong = 3320

local nNpcGroup_KuangGong_1 = 50032
local nNpcGroup_KuangGong_2 = 50033
local nNpcGroup_KuangGong_3 = 50034
local nNpcGroup_KuangGong_4 = 50035
local nNpcGroup_KuangGong_5 = 50036

local nNpcGroup_KuangGong1_Gen = 3053011
local nNpcGroup_KuangGong2_Gen = 3053012
local nNpcGroup_KuangGong3_Gen = 3053013
local nNpcGroup_KuangGong4_Gen = 3053014
local nNpcGroup_KuangGong5_Gen = 3053015
local tAwardGenId = {3053002,3053003,3053005,3053006,3053007,3053008,3053009,3053010}
--monster
local nMonster_1 = 1000316
local nMonsterGroup_1 = 200304
local nMonsterGroup_1_Gen = 3053016


--对白*9
local nDialog_1 = 5302
local nDialog_2 = 5303
local nDialog_3 = 5304
local nDialog_4 = 5305  --是否开启宝箱
local nDialog_5 = 5306  --是否全部解救
local nDialog_6 = 5307
local nDialog_7 = 5308  
local nDialog_8 = 5309

--战斗事件对白:100074 100075
--奖励

--宝箱
local nAward_Box_1 = 1000116
local nAward_Box_2 = 1000117
local nAward_Box_3 = 1000118
local nAward_Box_4 = 1000119
local nAward_Box_5 = 1000167


--银母矿
local nAward_Collect_1 = 1000120
local nAward_Collect_2 = 1000121
local nAward_Collect_3 = 1000122
local nAward_Collect_4 = 1000123
local nAward_Collect_5 = 1000124
local nAward_Collect_6 = 1000125

--旷工瞎搞
local tNPC_Gen = {}
tNPC_Gen[50032] = 3053011
tNPC_Gen[50033] = 3053012
tNPC_Gen[50034] = 3053013
tNPC_Gen[50035] = 3053014
tNPC_Gen[50036] = 3053015

--宝箱对应的东西 普通彩蛋宝箱
local nNormalBox_Type = 50039
local tNormalBox = {}
tNormalBox[50032] = 3053017
tNormalBox[50033] = 3053018
tNormalBox[50034] = 3053019
tNormalBox[50035] = 3053020
tNormalBox[50036] = 3053021

--彩蛋宝箱
local tBox_Type = {}
tBox_Type[50032] = 3053022
tBox_Type[50033] = 3053023
tBox_Type[50034] = 3053024
tBox_Type[50035] = 3053025
tBox_Type[50036] = 3053004
--------声明 --------------

rwtNpcGroup[50037] = {}   --副本入口NPC组
rwtNpcGroup[50037]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
rwtNpcGroup[50037]["CopyMapList"] = {nCopyMapId}

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60081}
rwtCopyMapMission[nCopyMapId]["Target2"] = {60082}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

rwtTarget[60081] = {}
rwtTarget[60081]["Title"] = "残酷的剥削者"
rwtTarget[60081]["KillMonsterGroup"] = 200304
rwtTarget[60081]["ReqCount"] = 1

rwtTarget[60082] = {}
rwtTarget[60082]["Title"] = "寻找宝藏"
rwtTarget[60082]["ReqTreasureBox"] = 40093
rwtTarget[60082]["ReqCount"] = 1

--宝箱
rwtNpcGroup[nBox_Pass] = rwtNpcGroup[nBox_Pass] or {} 
rwtNpcGroup[nBox_Pass]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Pass]["Dialog"] = nDialog_8
rwtNpcGroup[nBox_Pass]["Awards"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["AwardId"] = nAward_Box_1   
rwtNpcGroup[nBox_Pass]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["FailDialog"] = nDialog_4
rwtNpcGroup[nBox_Pass]["ChkFunc"] = function(nGenEventId,nNpcGroupType)
	for k,v in pairs(tAwardGenId)  do						
		if rwHasGenEvent(tAwardGenId[k]) then
			return false
		end 
	end
	return true
 end



rwtNpcGroup[nBox_Hide_1] = rwtNpcGroup[nBox_Hide_1] or {} 
rwtNpcGroup[nBox_Hide_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Hide_1]["Awards"] = {}
rwtNpcGroup[nBox_Hide_1]["Awards"]["AwardId"] = nAward_Box_2   
rwtNpcGroup[nBox_Hide_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

rwtNpcGroup[nBox_Hide_2] = rwtNpcGroup[nBox_Hide_2] or {} 
rwtNpcGroup[nBox_Hide_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Hide_2]["Awards"] = {}
rwtNpcGroup[nBox_Hide_2]["Awards"]["AwardId"] = nAward_Box_3   
rwtNpcGroup[nBox_Hide_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD


--旷工普通宝箱
rwtNpcGroup[nNormalBox_Type] = rwtNpcGroup[nNormalBox_Type] or {} 
rwtNpcGroup[nNormalBox_Type]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNormalBox_Type]["Awards"] = {}
rwtNpcGroup[nNormalBox_Type]["Awards"]["AwardId"] = nAward_Box_5   
rwtNpcGroup[nNormalBox_Type]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD




--旷工精品宝箱

rwtNpcGroup[nBox_Egg] = rwtNpcGroup[nBox_Egg] or {} 
rwtNpcGroup[nBox_Egg]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Egg]["Awards"] = {}
rwtNpcGroup[nBox_Egg]["Awards"]["AwardId"] = nAward_Box_4   
rwtNpcGroup[nBox_Egg]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD


--采集
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["CollectTime"] = 1
rwtNpcGroup[nCollect_1]["Awards"] = {}                 --奖励
rwtNpcGroup[nCollect_1]["Awards"]["AwardId"] = nAward_Collect_1
rwtNpcGroup[nCollect_1]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["CollectTime"] = 1
rwtNpcGroup[nCollect_2]["Awards"] = {}                 --奖励
rwtNpcGroup[nCollect_2]["Awards"]["AwardId"] = nAward_Collect_2
rwtNpcGroup[nCollect_2]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}    
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 1
rwtNpcGroup[nCollect_3]["Awards"] = {}                 --奖励
rwtNpcGroup[nCollect_3]["Awards"]["AwardId"] = nAward_Collect_3
rwtNpcGroup[nCollect_3]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

rwtNpcGroup[nCollect_4] = rwtNpcGroup[nCollect_4] or {}    
rwtNpcGroup[nCollect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_4]["CollectTime"] = 1
rwtNpcGroup[nCollect_4]["Awards"] = {}                 --奖励
rwtNpcGroup[nCollect_4]["Awards"]["AwardId"] = nAward_Collect_4
rwtNpcGroup[nCollect_4]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}    
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["CollectTime"] = 1
rwtNpcGroup[nCollect_5]["Awards"] = {}                 --奖励
rwtNpcGroup[nCollect_5]["Awards"]["AwardId"] = nAward_Collect_5
rwtNpcGroup[nCollect_5]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

rwtNpcGroup[nCollect_6] = rwtNpcGroup[nCollect_6] or {}    
rwtNpcGroup[nCollect_6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_6]["CollectTime"] = 1
rwtNpcGroup[nCollect_6]["Awards"] = {}                 --奖励
rwtNpcGroup[nCollect_6]["Awards"]["AwardId"] = nAward_Collect_6
rwtNpcGroup[nCollect_6]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD

--NPC
rwtNpcGroup[nNpcGroup_KuangGong_1] = {}     
rwtNpcGroup[nNpcGroup_KuangGong_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KuangGong_1]["NpcId"]= nNpc_KuangGong

rwtNpcGroup[nNpcGroup_KuangGong_2] = {}     
rwtNpcGroup[nNpcGroup_KuangGong_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KuangGong_2]["NpcId"]= nNpc_KuangGong

rwtNpcGroup[nNpcGroup_KuangGong_3] = {}     
rwtNpcGroup[nNpcGroup_KuangGong_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KuangGong_3]["NpcId"]= nNpc_KuangGong

rwtNpcGroup[nNpcGroup_KuangGong_4] = {}     
rwtNpcGroup[nNpcGroup_KuangGong_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KuangGong_4]["NpcId"]= nNpc_KuangGong

rwtNpcGroup[nNpcGroup_KuangGong_5] = {}     
rwtNpcGroup[nNpcGroup_KuangGong_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KuangGong_5]["NpcId"]= nNpc_KuangGong

rwtNpc[nNpc_KuangGong] = rwtNpc[nNpc_KuangGong] or {}
rwtNpc[nNpc_KuangGong]["NpcProcess"] = function(nGroupTypeId,nNpcTypeId)
	rwOpenNpcChatDialog(nDialog_5,CONST_NPCCHAT_TYPE.COPYMAP,nGroupTypeId)
end

rwtDialog[nDialog_5] = rwtDialog[nDialog_5] or {}
rwtDialog[nDialog_5]["DialogEnd"] = function(nId)
    if rwHasGenEvent(tNPC_Gen[nId]) then
		rwDelGenEvent(tNPC_Gen[nId])
	end
	local randmm = math.random(1, 100)
	if randmm <= 20 then
		if not rwHasGenEvent(tBox_Type[nId]) then
			rwAddGenEvent(tBox_Type[nId])
		end
		return 
	else
		if not rwHasGenEvent(tNormalBox[nId]) then
			rwAddGenEvent(tNormalBox[nId])
		end	
		return 
	end
end


--宝箱开启逻辑
rwtDialog[nDialog_4] = rwtDialog[nDialog_4] or {}
rwtDialog[nDialog_4]["OptionFunc1"] = function ()
	return false
end

rwtDialog[nDialog_4]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(nId,nBox_Pass_Gen)
end


----***************************逻辑***************************----


----***************************NPC***************************----

-------初始化
function CopyMap_CaiLiao_InitMap()--初始化函数
   rwPrintLog("进入日常材料副本，开始执行初始化函数")
   rwOpenNpcChatDialog(nDialog_1)             --进入副本打开对话
   rwPrintLog("日常材料副本初始化函数执行完毕")
end
--切图后触发
rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_CaiLiao_InitMap)



					