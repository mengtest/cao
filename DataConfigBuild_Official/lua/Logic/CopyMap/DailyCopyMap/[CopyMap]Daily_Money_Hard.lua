--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--gamemap 3058
--机关 1043
--怪物组 200140
--怪物 1000325
--宝箱 40107 - 40110
--采集 60147 - 60150
--对话 5327 - 5331
--奖励组 1000139 - 1000142
--endregion

--副本ID
local nCopyMapId = 3058  

local nTempDataId = 1117

--local nTarget1 = 60092
local nTarget2 = 60093

--对话
local nDialog_Enter = 5327
local nDialog_BattleBefore = 5328
local nDialog_BattleAfter = 5329
local nDialog_BoxFail = 5330
local nDialog_BoxSucc = 5331

local tDialog = {}
tDialog[1] = 5909
tDialog[2] = 5910
tDialog[3] = 5911
tDialog[4] = 5912
tDialog[5] = 5913
tDialog[6] = 5914
tDialog[7] = 5915
tDialog[8] = 5916
tDialog[9] = 5917
tDialog[10] = 5918
tDialog[11] = 5919
tDialog[12] = 5920
tDialog[13] = 5921
tDialog[14] = 5922
tDialog[15] = 5923
tDialog[16] = 5924
tDialog[17] = 5925
tDialog[18] = 5926
tDialog[19] = 5927
tDialog[20] = 5928
tDialog[21] = 5929
tDialog[22] = 5930
tDialog[23] = 5931
tDialog[24] = 5932
tDialog[25] = 5933
tDialog[26] = 5934
tDialog[27] = 5935
tDialog[28] = 5936
tDialog[29] = 5937
tDialog[30] = 5938
tDialog[31] = 5939
tDialog[32] = 5940
tDialog[33] = 5941
tDialog[34] = 5942
tDialog[35] = 5943
tDialog[36] = 5944
tDialog[37] = 5945
tDialog[38] = 5946
tDialog[39] = 5947
tDialog[40] = 5948
tDialog[41] = 5949
tDialog[42] = 5950
tDialog[43] = 5951
tDialog[44] = 5952
tDialog[45] = 5953
tDialog[46] = 5954
tDialog[47] = 5955
tDialog[48] = 5956
tDialog[49] = 5957
tDialog[50] = 5958
tDialog[51] = 5959





--奖励
local nHideBoxAwardId = 1000139
local nExtraBoxAwardId = 1000140
local nCompleteBoxAwardId = 1000141
local nDeadBodyAwardId = 1000142
local nSuperBox_AwardId_1 = 1000428
local nSuperBox_AwardId_2 = 1000429
--机关ID
local nValve = 1043

--宝箱ID
local nHideBox = 40107
local nExtraBox = 40108
local nCompleteBox = 40109

local nMonsterBox = 40150
--NPC
local nNpcId = 3462

local nNpcGroup_An = 20455
local nNpcId_An = 3479


--采集
local tCollect = {}
tCollect[1] = 60147
tCollect[2] = 60148
tCollect[3] = 60149
tCollect[4] = 60150

--怪物
local nMonsterGroup = 200140

local nMonsterGroup_Apu = 200337
local nMonsterGroup_Box = 200338

--------------------------Gen------------------------
local nGen_MonsterGroup = 3058001
local nGen_MonsterGroup_Apu = 3058019
local nGen_MonsterGroup_Box = 3058020  --宝箱怪

local nGen_Valve = 3058002 

local tGen_NpcGroup = {} 
tGen_NpcGroup[1] = 3058015
tGen_NpcGroup[2] = 3058016
tGen_NpcGroup[3] = 3058017

local nGen_ExtraBox = 3058005
local nGen_CompleteBox = 3058006
--local nGen_HideBox_1 = 3058003
local nGen_MonsterBox = 3058018  --怪物宝箱NPC

local tGen_HideBox = {}
tGen_HideBox[1] = 3058003
tGen_HideBox[2] = 3058021
tGen_HideBox[3] = 3058022
tGen_HideBox[4] = 3058023

local tGen_ExtraBox = {}
tGen_ExtraBox[1] = 3058011
tGen_ExtraBox[2] = 3058012
tGen_ExtraBox[3] = 3058013
tGen_ExtraBox[4] = 3058014

local tGen_Collect = {}
tGen_Collect[1] = 3058007
tGen_Collect[2] = 3058008
tGen_Collect[3] = 3058009
tGen_Collect[4] = 3058010

local tGen_NpcId = {}
tGen_NpcId[1] = 3058015
tGen_NpcId[2] = 3058016
tGen_NpcId[3] = 3058017

local nNpcGroup_SuperBox_1 = 40219
local nNpcGroup_SuperBox_2 = 40220
local nMonsterGroup_Shixin = 200472
local nMonsterGroup_HeianFashi = 200473
local nNpcGroup_Apu = 20659
local nGen_SuperBox_1 = 3058026
local nGen_SuperBox_2 = 3058027
local nGen_Monster_Shixin = 3058024
local nGen_Monster_HeianFashi = 3058025
local nGen_Npc_Apu = 3058028

rwtNpcGroup[nNpcGroup_Apu] = rwtNpcGroup[nNpcGroup_Apu] or {}
rwtNpcGroup[nNpcGroup_Apu]["InterfaceFunc"]= function()
	if not rwHasGenEvent(nGen_MonsterGroup_Apu) then
		rwAddGenEvent(nGen_MonsterGroup_Apu)
	end
	local tOpenDialog = {tDialog[47],tDialog[48],tDialog[49]}
	local nRandom = math.random(1,#tOpenDialog)
	rwOpenNpcChatDialog(tOpenDialog[nRandom])
--	rwAutoBattle(nGen_MonsterGroup_Apu)
end
rwtDialog[tDialog[47]] = rwtDialog[tDialog[47]] or {}
rwtDialog[tDialog[47]]["DialogEndInit"] = {}
rwtDialog[tDialog[47]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[47]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[47]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}       
rwtDialog[tDialog[47]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGen_MonsterGroup_Apu

tDialog[48] = tDialog[47]
tDialog[49] = tDialog[47]

function CopyMap_DailyMoneyHard_ApuDead()
    if rwHasGenEvent(nGen_Npc_Apu) then
		rwDelGenEvent(nGen_Npc_Apu)
	end
--	rwOpenNpcChatDialog(6178)
end
--小怪死亡触发
rwtMonsterGroup_Func[nMonsterGroup_Apu] = rwtMonsterGroup_Func[nMonsterGroup_Apu] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Apu],CopyMap_DailyMoneyHard_ApuDead)

rwtNpcGroup[nNpcGroup_SuperBox_1] = rwtNpcGroup[nNpcGroup_SuperBox_1] or {}  --稀有宝箱
rwtNpcGroup[nNpcGroup_SuperBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_SuperBox_1
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_SuperBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nSuperBox_AwardId_1

rwtNpcGroup[nNpcGroup_SuperBox_2] = rwtNpcGroup[nNpcGroup_SuperBox_2] or {}  --稀有宝箱
rwtNpcGroup[nNpcGroup_SuperBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"] = {}
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_SuperBox_2
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_SuperBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nSuperBox_AwardId_2

local tGen_Award = {nGen_MonsterBox,nGen_MonsterGroup_Apu,tGen_NpcId[1],tGen_NpcId[2],tGen_NpcId[3],tGen_HideBox[1],tGen_HideBox[2],tGen_HideBox[3],tGen_HideBox[4],nGen_ExtraBox,tGen_ExtraBox[1],tGen_ExtraBox[2],tGen_ExtraBox[3],tGen_ExtraBox[4],tGen_Collect[1],tGen_Collect[2],tGen_Collect[3],tGen_Collect[4],nGen_Npc_Apu,nGen_SuperBox_1,nGen_SuperBox_2}


local nAwardHeroId = 108

rwtNpcGroup[nNpcGroup_An] = rwtNpcGroup[nNpcGroup_An] or {}
rwtNpcGroup[nNpcGroup_An]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_An]["NpcId"]= nNpcId_An

rwtNpc[nNpcId_An] =rwtNpc[nNpcId_An] or {}
rwtNpc[nNpcId_An]["NpcProcess"] = function ()
	local tHeroList = rwHeroGetAllInFight()
	for i = 1,#tHeroList do
		if tHeroList[i] == nAwardHeroId then
			local tOpenDialog = {tDialog[41],tDialog[42],tDialog[43]}
			local nRandom = math.random(1,#tOpenDialog)
			rwOpenNpcChatDialog(tOpenDialog[nRandom])
			return
		end
	end
	local tOpenDialog = {tDialog[44],tDialog[45],tDialog[46]}
	local nRandom = math.random(1,#tOpenDialog)
	rwOpenNpcChatDialog(tOpenDialog[nRandom])
end



rwtNpcGroup[nHideBox] = rwtNpcGroup[nHideBox] or {}
rwtNpcGroup[nHideBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nHideBox]["Awards"] = {}
--rwtNpcGroup[nHideBox]["Awards"]["AwardId"] = nHideBoxAwardId
--rwtNpcGroup[nHideBox]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nHideBox]["Awards"]["Events"] = {}
rwtNpcGroup[nHideBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[nHideBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nHideBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nHideBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nHideBox
rwtNpcGroup[nHideBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nHideBox]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nHideBoxAwardId 

rwtNpcGroup[nExtraBox] = rwtNpcGroup[nExtraBox] or {}
rwtNpcGroup[nExtraBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nExtraBox]["Awards"] = {}
--rwtNpcGroup[nExtraBox]["Awards"]["AwardId"] = nExtraBoxAwardId
--rwtNpcGroup[nExtraBox]["Awards"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nExtraBox]["Awards"]["Events"] = {}
rwtNpcGroup[nExtraBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[nExtraBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nExtraBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nExtraBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nExtraBox
rwtNpcGroup[nExtraBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nExtraBox]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nExtraBoxAwardId 

rwtNpcGroup[nCompleteBox] = rwtNpcGroup[nCompleteBox] or {}  --通关宝箱
rwtNpcGroup[nCompleteBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nCompleteBox]["NotDel"] = 1
rwtNpcGroup[nCompleteBox]["Awards"] = {}
rwtNpcGroup[nCompleteBox]["Awards"]["Events"] = {}
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["ChkGenEventNoExist"]	= tGen_Award
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  {tDialog[18],tDialog[19],tDialog[20],tDialog[21],tDialog[22],tDialog[23]}
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] =  {tDialog[24],tDialog[25],tDialog[26],tDialog[27],tDialog[28],tDialog[29],tDialog[30]} --nDialog_BoxSucc
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["DynDelete"][1] = nGen_CompleteBox
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nCompleteBox
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCompleteBox]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nCompleteBoxAwardId  
rwtNpcGroup[nCompleteBox]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] =  {tDialog[24],tDialog[25],tDialog[26],tDialog[27],tDialog[28],tDialog[29],tDialog[30]}
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nGen_CompleteBox
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nCompleteBox
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCompleteBox]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nCompleteBoxAwardId   


rwtNpcGroup[nMonsterBox] = rwtNpcGroup[nMonsterBox] or {}
rwtNpcGroup[nMonsterBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nMonsterBox]["Awards"] = {}
rwtNpcGroup[nMonsterBox]["Awards"]["Events"] = {}
rwtNpcGroup[nMonsterBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[nMonsterBox]["Awards"]["Events"][1]["OpenDialog"] = {}		
rwtNpcGroup[nMonsterBox]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {6177}

--对白
--rwtDialog[nDialog_BoxFail] = rwtDialog[nDialog_BoxFail] or {}
rwtDialog[tDialog[18]] = rwtDialog[tDialog[18]] or {}
rwtDialog[tDialog[18]]["OptionFunc1"] = function ()
	return false
end
rwtDialog[tDialog[18]]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(nCompleteBox,nGen_CompleteBox,1)
end
rwtDialog[tDialog[19]] = rwtDialog[tDialog[18]]
rwtDialog[tDialog[20]] = rwtDialog[tDialog[18]]
rwtDialog[tDialog[21]] = rwtDialog[tDialog[18]]
rwtDialog[tDialog[22]] = rwtDialog[tDialog[18]]
rwtDialog[tDialog[23]] = rwtDialog[tDialog[18]]

rwtDialog[6177] = rwtDialog[6177] or {}
rwtDialog[6177]["DialogEndInit"] = {}
rwtDialog[6177]["DialogEndInit"]["Events"] = {}
rwtDialog[6177]["DialogEndInit"]["Events"][1] = {}
rwtDialog[6177]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}       
rwtDialog[6177]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGen_MonsterGroup_Box

--rwtDialog[tDialog[32]] = rwtDialog[tDialog[31]]
--rwtDialog[tDialog[33]] = rwtDialog[tDialog[31]]
--rwtDialog[tDialog[34]] = rwtDialog[tDialog[31]]
--rwtDialog[tDialog[35]] = rwtDialog[tDialog[31]]

rwtDialog[tDialog[41]] = rwtDialog[tDialog[41]] or {}
rwtDialog[tDialog[41]]["DialogEndInit"] = {}
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"][1] = {} 
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000322
rwtDialog[tDialog[41]]["DialogEndInit"]["Events"][1]["DynDelete"] = tGen_NpcId

rwtDialog[tDialog[42]] = rwtDialog[tDialog[41]]
rwtDialog[tDialog[43]] = rwtDialog[tDialog[41]]

rwtDialog[tDialog[44]] = rwtDialog[tDialog[44]] or {}
rwtDialog[tDialog[44]]["DialogEndInit"] = {}
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"][1] = {} 
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = 1000323    
rwtDialog[tDialog[44]]["DialogEndInit"]["Events"][1]["DynDelete"] = tGen_NpcId 

rwtDialog[tDialog[45]] = rwtDialog[tDialog[44]]
rwtDialog[tDialog[46]] = rwtDialog[tDialog[44]]

rwtNpcGroup[tCollect[1]] = rwtNpcGroup[tCollect[1]] or {}
rwtNpcGroup[tCollect[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[1]]["CollectTime"] = 1   
rwtNpcGroup[tCollect[1]]["Awards"] = {}  
rwtNpcGroup[tCollect[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nDeadBodyAwardId
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--rwtNpcGroup[tCollect[1]]["Awards"]["Events"][2] = {}
--rwtNpcGroup[tCollect[1]]["Awards"]["Events"][2]["ChkRandom"] = 10       
--rwtNpcGroup[tCollect[1]]["Awards"]["Events"][2]["DynCreate"]= {tGen_ExtraBox[1]}


rwtNpcGroup[tCollect[2]] = rwtNpcGroup[tCollect[2]] or {}
rwtNpcGroup[tCollect[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[2]]["CollectTime"] = 1   
rwtNpcGroup[tCollect[2]]["Awards"] = {}  
rwtNpcGroup[tCollect[2]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nDeadBodyAwardId
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][2] = {}
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][2]["ChkRandom"] = 10       
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][2]["DynCreate"]= {tGen_ExtraBox[2]}

rwtNpcGroup[tCollect[3]] = rwtNpcGroup[tCollect[3]] or {}
rwtNpcGroup[tCollect[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[3]]["CollectTime"] = 1   
rwtNpcGroup[tCollect[3]]["Awards"] = {}  
rwtNpcGroup[tCollect[3]]["Awards"]["Events"] = {}  
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1] ={} 
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nDeadBodyAwardId
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][2] = {}
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][2]["ChkRandom"] = 10       
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][2]["DynCreate"]= {tGen_ExtraBox[3]}

rwtNpcGroup[tCollect[4]] = rwtNpcGroup[tCollect[4]] or {}
rwtNpcGroup[tCollect[4]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[4]]["CollectTime"] = 1   
rwtNpcGroup[tCollect[4]]["Awards"] = {}  
rwtNpcGroup[tCollect[4]]["Awards"]["Events"] = {}  
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nDeadBodyAwardId
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][2] = {}
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][2]["ChkRandom"] = 10       
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][2]["DynCreate"]= {tGen_ExtraBox[4]}

--简单难度副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_Money
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10045]
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nTempDataId
--rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog[1],tDialog[2],tDialog[3],tDialog[4],tDialog[5]}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-12.483,0.5078,32.146"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-20.49,2.61,43.84"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 315
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGen_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = "-16.51,2.61,47.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 225
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = tGen_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = "-33.68,2.61,50.02"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 45
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["FixGen"] = nGen_MonsterGroup_Box
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = nGen_MonsterBox
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] =  4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGen_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGen_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGen_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGen_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = "-12.483,0.5078,32.146"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGen_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = "-20.49,2.61,43.84"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = 315
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGen_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = "-16.51,2.61,47.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = 225
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGen_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = "-33.68,2.61,50.02"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = 45
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = nGen_Npc_Apu
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MinRate"] =  4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["MaxRate"] =  7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][1]["GenId"] = tGen_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][2]["GenId"] = tGen_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][3]["GenId"] = tGen_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][4]["tGenId"][4]["GenId"] = tGen_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["GenId"] = tGen_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["Pos"] = "-12.483,0.5078,32.146"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["GenId"] = tGen_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["Pos"] = "-20.49,2.61,43.84"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][2]["RotationY"] = 315
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["GenId"] = tGen_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["Pos"] = "-16.51,2.61,47.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][3]["RotationY"] = 225
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["GenId"] = tGen_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["Pos"] = "-33.68,2.61,50.02"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"][4]["RotationY"] = 45
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["FixGen"] = nGen_MonsterGroup_Box
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tOtherGenId"][1]["GenId"] = nGen_MonsterBox
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][1]["GenId"] = tGen_NpcGroup[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][2]["GenId"] = tGen_NpcGroup[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"][3]["GenId"] = tGen_NpcGroup[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = tGen_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["Pos"] = "-12.483,0.5078,32.146"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["RotationY"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = tGen_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["Pos"] = "-20.49,2.61,43.84"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["RotationY"] = 315
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = tGen_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["Pos"] = "-16.51,2.61,47.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["RotationY"] = 225
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["GenId"] = tGen_HideBox[4]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["Pos"] = "-33.68,2.61,50.02"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][4]["RotationY"] = 45
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1]["GenId"] = nGen_Npc_Apu
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][1]["GenId"] = tGen_HideBox[1]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][2]["GenId"] = tGen_HideBox[2]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][3]["GenId"] = tGen_HideBox[3]
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][4]["tGenId"][4]["GenId"] = tGen_HideBox[4]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomNum"] = 2
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["TempDataID"] = nTempDataId
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["Value"] = 3
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][1]["GenId"] = tGen_HideBox[1]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][2]["GenId"] = tGen_HideBox[2]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][3]["GenId"] = tGen_HideBox[3]
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][5]["tGenId"][4]["GenId"] = tGen_HideBox[4]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] =  0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] =  3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {nGen_SuperBox_1,nGen_Monster_Shixin}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] =  3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nGen_SuperBox_2,nGen_Monster_HeianFashi}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] =  5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {nGen_SuperBox_1,nGen_Monster_Shixin}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {nGen_SuperBox_2,nGen_Monster_HeianFashi}

--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapMissId)
--    rwOpenNpcChatDialog(nDialog_Enter,CONST_NPCCHAT_TYPE.COPYMAP)  
--end


--副本目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20020]
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroup
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] =tLuaText[LANGUAGE_CONFIG][20021]
rwtTarget[nTarget2]["ReqTreasureBox"] = nCompleteBox
rwtTarget[nTarget2]["ReqCount"] = 1

function Daily_Money_Hard_SangShiDead()
	local tOpenDialog = {tDialog[11],tDialog[12],tDialog[13],tDialog[14],tDialog[15],tDialog[16],tDialog[17]}
	local nRandom = math.random(1,#tOpenDialog)
	rwOpenNpcChatDialog(tOpenDialog[nRandom])
end

rwtMonsterGroup_Func[nMonsterGroup] = rwtMonsterGroup_Func[nMonsterGroup] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup],Daily_Money_Hard_SangShiDead)

function Daily_Money_Hard_BoxDead()
	local tOpenDialog = {tDialog[36],tDialog[37],tDialog[38],tDialog[39],tDialog[40]}
	local nRandom = math.random(1,#tOpenDialog)
	rwOpenNpcChatDialog(tOpenDialog[nRandom])
end

rwtMonsterGroup_Func[nMonsterGroup_Box] = rwtMonsterGroup_Func[nMonsterGroup_Box] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Box],Daily_Money_Hard_BoxDead)