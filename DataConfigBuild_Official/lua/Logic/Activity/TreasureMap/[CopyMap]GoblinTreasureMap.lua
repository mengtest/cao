--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--副本ID 3072
--怪物组200331 - 200333
--怪物1000481 - 1000483
--战斗完采集点60244  - 60246 
--战斗完随机宝箱 40141 - 40143
--战胜宝箱 40144 - 40146
--奖励ID 1000274 - 1000282
--陷阱ID 30483 - 30484
--NPCGROUPID 20447
--NPCID 3443
--endregion
local nCopyMap_Id = 3072

local tCopyMap_Load_Gen = {}
local tCopyMap_Award_Gen = {}

local tMonster_Group_Goblin = {}
tMonster_Group_Goblin[1] = 200331
tMonster_Group_Goblin[2] = 200332
tMonster_Group_Goblin[3] = 200333
local tMonster_Group_Goblin_Escape = {}
tMonster_Group_Goblin_Escape[1] = 200334
tMonster_Group_Goblin_Escape[2] = 200335
local tMonster_Battle = {}
tMonster_Battle[1] = 1000481
tMonster_Battle[2] = 1000482
tMonster_Battle[3] = 1000483

local tCollect_Battle_ = {}
tCollect_Battle_[1] = 60244
tCollect_Battle_[2] = 60245
tCollect_Battle_[3] = 60246

local tBox_Battle = {}
tBox_Battle[1] = 40141
tBox_Battle[2] = 40142
tBox_Battle[3] = 40143

local tBox_Battle_Win = {}
tBox_Battle_Win[1] = 40144
tBox_Battle_Win[2] = 40145
tBox_Battle_Win[3] = 40146

local nNpc_Goblin = 3443
local nNpcGroup_Goblin = 20447

local tGen_Monster_Group = {}
tGen_Monster_Group[1] = 3072001
tGen_Monster_Group[2] = 3072002
tGen_Monster_Group[3] = 3072003
local tGen_Monster_Group_Escape = {}
tGen_Monster_Group_Escape[1] = 3072004
tGen_Monster_Group_Escape[2] = 3072005
table.insert(tCopyMap_Load_Gen,tGen_Monster_Group[1])

function GoblinTreasureMap_Table_Insert (tGenInfo,tInfo) 
	for i,v in pairs (tInfo) do 
		table.insert(tGenInfo,v)
	end
end
local tGen_Collect_Battle = {}
tGen_Collect_Battle[1] = {}
tGen_Collect_Battle[1][1] = 3072007
tGen_Collect_Battle[1][2] = 3072008
tGen_Collect_Battle[1][3] = 3072009
tGen_Collect_Battle[1][4] = 3072010
tGen_Collect_Battle[1][5] = 3072011
tGen_Collect_Battle[2] = {}
tGen_Collect_Battle[2][1] = 3072012
tGen_Collect_Battle[2][2] = 3072013
tGen_Collect_Battle[2][3] = 3072014
tGen_Collect_Battle[2][4] = 3072015
tGen_Collect_Battle[2][5] = 3072016
tGen_Collect_Battle[3] = {}
tGen_Collect_Battle[3][1] = 3072017
tGen_Collect_Battle[3][2] = 3072018
tGen_Collect_Battle[3][3] = 3072019
tGen_Collect_Battle[3][4] = 3072020
tGen_Collect_Battle[3][5] = 3072021
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Collect_Battle[1])
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Collect_Battle[2])
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Collect_Battle[3])

local tGen_Box_Battle = {}
tGen_Box_Battle[1] = {}
tGen_Box_Battle[1][1] = 3072022
tGen_Box_Battle[1][2] = 3072023
tGen_Box_Battle[2] = {}
tGen_Box_Battle[2][1] = 3072024
tGen_Box_Battle[2][2] = 3072025
tGen_Box_Battle[3] = {}
tGen_Box_Battle[3][1] = 3072026
tGen_Box_Battle[3][2] = 3072027
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Box_Battle[1])
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Box_Battle[2])
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Box_Battle[3])

local tGen_Box_Battle_Win = {}
tGen_Box_Battle_Win[1] = 3072028
tGen_Box_Battle_Win[2] = 3072029
tGen_Box_Battle_Win[3] = 3072030
GoblinTreasureMap_Table_Insert(tCopyMap_Award_Gen,tGen_Box_Battle_Win)

local nGen_NpcGroup_Goblin = 3072031

local tGen_Trap = {}
tGen_Trap[1] = 3072032
tGen_Trap[2] = 3072033

local tEscape_Pos = {}
tEscape_Pos[1] = "-77.54,0.02471924,16.26051"
tEscape_Pos[2] = "-61.69,0.03,39.77"

local tBuff = {}
tBuff[1] = 501001
tBuff[2] = 800002
tBuff[3] = 800002

local tAward_Collect = {}
tAward_Collect[1] = 1000274
tAward_Collect[2] = 1000275
tAward_Collect[3] = 1000276

local tAward_Box_Battle = {}
tAward_Box_Battle[1] = 1000277
tAward_Box_Battle[2] = 1000278
tAward_Box_Battle[3] = 1000279

local tAward_Box_Win = {}
tAward_Box_Win[1] = 1000280
tAward_Box_Win[2] = 1000281
tAward_Box_Win[3] = 1000282

local tTrap = {}
tTrap[1] = 30483
tTrap[2] = 30484

local tDialog = {}
tDialog[1]  = 5448
tDialog[2]  = 5449
tDialog[3]  = 5450
tDialog[4]  = 5451
tDialog[5]  = 5452
tDialog[6]  = 5453
tDialog[7]  = 5454
tDialog[8]  = 5455
tDialog[9]  = 5456
tDialog[10] = 5457
tDialog[11] = 5458
tDialog[12] = 5459
tDialog[13] = 5468
tDialog[14] = 5469
tDialog[15] = 5470
tDialog[16] = 5471
tDialog[17] = 5472
tDialog[18] = 5473
tDialog[19] = 5474
tDialog[20] = 5475
tDialog[21] = 5476
tDialog[22] = 5477
tDialog[23] = 5478
tDialog[24] = 5744
tDialog[25] = 5745
tDialog[26] = 5746
tDialog[27] = 5747
tDialog[28] = 5748
tDialog[29] = 5749
tDialog[30] = 5750
tDialog[31] = 5751
tDialog[32] = 5752
tDialog[33] = 5753
tDialog[34] = 5754
tDialog[35] = 5755
tDialog[36] = 5756
tDialog[37] = 5757
tDialog[38] = 5758
tDialog[39] = 5759
tDialog[40] = 5760
tDialog[41] = 5761
tDialog[42] = 5762
tDialog[43] = 5763
tDialog[44] = 5764
tDialog[45] = 5765
tDialog[46] = 5766
tDialog[47] = 5767
tDialog[48] = 5768
tDialog[49] = 5769
tDialog[50] = 5770
tDialog[51] = 5771
tDialog[52] = 5772
tDialog[53] = 5773
tDialog[54] = 5774
tDialog[55] = 5775
tDialog[56] = 5776
tDialog[57] = 5777
tDialog[58] = 5778
tDialog[59] = 5779
tDialog[60] = 5780
tDialog[61] = 5781
tDialog[62] = 5782
tDialog[63] = 5783
tDialog[64] = 5784
tDialog[65] = 5785

local tCg_Id = {}
tCg_Id[1] = 15305
tCg_Id[2] = 15306
tCg_Id[3] = 15307
tCg_Id[4] = 15308

local tTarget = {}
tTarget[1] = 60121
tTarget[2] = 60122
tTarget[3] = 60123
tTarget[4] = 60124
tTarget[5] = 60125
tTarget[6] = 60126
tTarget[7] = 60127
tTarget[8] = 60128

---------------------------------------------------------------------------
rwtNpcGroup[nNpcGroup_Goblin] = rwtNpcGroup[nNpcGroup_Goblin] or {}
rwtNpcGroup[nNpcGroup_Goblin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_Goblin]["NpcId"]= nNpc_Goblin

rwtNpc[nNpc_Goblin] =rwtNpc[nNpc_Goblin] or {}
rwtNpc[nNpc_Goblin]["NpcProcess"] = function ()
	local bJudge = true
	for i,v in pairs(tCopyMap_Award_Gen) do
		if rwHasGenEvent(v) then
			bJudge = false
			break
		end
	end
	if not bJudge then
--		rwOpenNpcChatDialog(tDialog[22])
		local tRandomList = {tDialog[22],tDialog[58],tDialog[59],tDialog[60],tDialog[61]}
		rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
	else
--		rwOpenNpcChatDialog(tDialog[23])
		local tRandomList = {tDialog[23],tDialog[62],tDialog[63],tDialog[64],tDialog[65]}
		rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
	end
end

rwtNpcGroup[tCollect_Battle_[1]] = rwtNpcGroup[tCollect_Battle_[1]] or {}
rwtNpcGroup[tCollect_Battle_[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect_Battle_[1]]["CollectTime"] = 1
rwtNpcGroup[tCollect_Battle_[1]]["Awards"] = {}  
rwtNpcGroup[tCollect_Battle_[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect_Battle_[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect_Battle_[1]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect_Battle_[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Collect[1]
rwtNpcGroup[tCollect_Battle_[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect_Battle_[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect_Battle_[2]] = rwtNpcGroup[tCollect_Battle_[2]] or {}
rwtNpcGroup[tCollect_Battle_[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect_Battle_[2]]["CollectTime"] = 1
rwtNpcGroup[tCollect_Battle_[2]]["Awards"] = {}  
rwtNpcGroup[tCollect_Battle_[2]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect_Battle_[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect_Battle_[2]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect_Battle_[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Collect[2]
rwtNpcGroup[tCollect_Battle_[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect_Battle_[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect_Battle_[3]] = rwtNpcGroup[tCollect_Battle_[3]] or {}
rwtNpcGroup[tCollect_Battle_[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect_Battle_[3]]["CollectTime"] = 1
rwtNpcGroup[tCollect_Battle_[3]]["Awards"] = {}  
rwtNpcGroup[tCollect_Battle_[3]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect_Battle_[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect_Battle_[3]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect_Battle_[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Collect[3]
rwtNpcGroup[tCollect_Battle_[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect_Battle_[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tBox_Battle[1]] = rwtNpcGroup[tBox_Battle[1]] or {}
rwtNpcGroup[tBox_Battle[1]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox_Battle[1]]["Awards"] = {}
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox_Battle[1]
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox_Battle[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Box_Battle[1]
rwtNpcGroup[tBox_Battle[2]] = rwtNpcGroup[tBox_Battle[2]] or {}
rwtNpcGroup[tBox_Battle[2]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox_Battle[2]]["Awards"] = {}
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox_Battle[2]
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox_Battle[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Box_Battle[2]
rwtNpcGroup[tBox_Battle[3]] = rwtNpcGroup[tBox_Battle[3]] or {}
rwtNpcGroup[tBox_Battle[3]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox_Battle[3]]["Awards"] = {}
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox_Battle[3]
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox_Battle[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Box_Battle[3]
rwtNpcGroup[tBox_Battle_Win[1]] = rwtNpcGroup[tBox_Battle_Win[1]] or {}
rwtNpcGroup[tBox_Battle_Win[1]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"] = {}
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox_Battle_Win[1]
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox_Battle_Win[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Box_Win[1]
rwtNpcGroup[tBox_Battle_Win[2]] = rwtNpcGroup[tBox_Battle_Win[2]] or {}
rwtNpcGroup[tBox_Battle_Win[2]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"] = {}
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox_Battle_Win[2]
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox_Battle_Win[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Box_Win[2]
rwtNpcGroup[tBox_Battle_Win[3]] = rwtNpcGroup[tBox_Battle_Win[3]] or {}
rwtNpcGroup[tBox_Battle_Win[3]]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"] = {}
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"] = {}
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox_Battle_Win[3]
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox_Battle_Win[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward_Box_Win[3]

rwtNpcGroup[tTrap[1]] = rwtNpcGroup[tTrap[1]] or {}
rwtNpcGroup[tTrap[1]]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap[1]]["Awards"] = {}  
rwtNpcGroup[tTrap[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1] = {} 
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["OpenDialog"] = {}
--rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog[13],tDialog[14],tDialog[15]}  
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = tCg_Id[3]
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtNpcGroup[tTrap[1]]["Awards"]["Events"][1]["DynDelete"] = {tGen_Trap[1]}

rwtNpcGroup[tTrap[2]] = rwtNpcGroup[tTrap[2]] or {}
rwtNpcGroup[tTrap[2]]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap[2]]["Awards"] = {}  
rwtNpcGroup[tTrap[2]]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1] = {} 
--rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1]["OpenDialog"] = {}
--rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog[18] --{tDialog[18],tDialog[19]}
rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1]["PlaySceneAnimation"]["Id"] = tCg_Id[4]
rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0
rwtNpcGroup[tTrap[2]]["Awards"]["Events"][1]["DynDelete"] = {tGen_Trap[2]}

rwtTarget[tTarget[1]] = {}
rwtTarget[tTarget[1]]["Title"] = "转角遇见哥布林"
rwtTarget[tTarget[1]]["KillMonsterGroup"] = tMonster_Group_Goblin[1]
rwtTarget[tTarget[1]]["ReqCount"] = 1

rwtTarget[tTarget[2]] = {}
rwtTarget[tTarget[2]]["Title"] = "“联络感情”"
rwtTarget[tTarget[2]]["KillMonsterGroup"] = tMonster_Group_Goblin[2]
rwtTarget[tTarget[2]]["ReqCount"] = 1

rwtTarget[tTarget[3]] = {}
rwtTarget[tTarget[3]]["Title"] = "“亲密接触”"
rwtTarget[tTarget[3]]["KillMonsterGroup"] = tMonster_Group_Goblin[3]
rwtTarget[tTarget[3]]["ReqCount"] = 1

rwtTarget[tTarget[4]] = {}
rwtTarget[tTarget[4]]["Title"] = "谈谈人生"
rwtTarget[tTarget[4]]["ReqDialogId"] = {tDialog[22],tDialog[58],tDialog[59],tDialog[60],tDialog[61],tDialog[23],tDialog[62],tDialog[63],tDialog[64],tDialog[65]}
rwtTarget[tTarget[4]]["ReqCount"] = 1




rwtTargetMonsterGroupBattleFailInfo[tMonster_Group_Goblin[1]] = {}
rwtTargetMonsterGroupBattleFailInfo[tMonster_Group_Goblin[2]] = {}
rwtTargetMonsterGroupBattleFailInfo[tMonster_Group_Goblin[3]] = {}
table.insert(rwtTargetMonsterGroupBattleFailInfo[tMonster_Group_Goblin[1]],tTarget[1])
table.insert(rwtTargetMonsterGroupBattleFailInfo[tMonster_Group_Goblin[2]],tTarget[2])
table.insert(rwtTargetMonsterGroupBattleFailInfo[tMonster_Group_Goblin[3]],tTarget[3])


rwtCopyMapMission[nCopyMap_Id] = rwtCopyMapMission[nCopyMap_Id] or {}
rwtCopyMapMission[nCopyMap_Id]["ReqLev"] = 1
rwtCopyMapMission[nCopyMap_Id]["Difficulty"] = 1
rwtCopyMapMission[nCopyMap_Id]["TargetStepNum"] = 4 
rwtCopyMapMission[nCopyMap_Id]["Target1"] = {tTarget[1]}
rwtCopyMapMission[nCopyMap_Id]["Target2"] = {tTarget[2]}
rwtCopyMapMission[nCopyMap_Id]["Target3"] = {tTarget[3]}
rwtCopyMapMission[nCopyMap_Id]["Target4"] = {tTarget[4]}
--rwtCopyMapMission[nCopyMap_Id]["Target5"] = {tTarget[5]}
rwtCopyMapMission[nCopyMap_Id]["Target99"] = {60072}
rwtCopyMapMission[nCopyMap_Id]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMap_Id]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMap_Id]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMap_Id]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMap_Id]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog[1],tDialog[2],tDialog[3],tDialog[24],tDialog[25]} --动画内对白
rwtCopyMapMission[nCopyMap_Id]["CopyMapInit"]["Events"][1]["DynCreate"] = tCopyMap_Load_Gen

rwtDialog[tDialog[1]] = rwtDialog[tDialog[1]] or {}
rwtDialog[tDialog[1]]["DialogEndInit"] = {}
rwtDialog[tDialog[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[1]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtDialog[tDialog[1]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = tCg_Id[1]
rwtDialog[tDialog[1]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0

rwtDialog[tDialog[2]] = rwtDialog[tDialog[1]] 
rwtDialog[tDialog[3]] = rwtDialog[tDialog[1]]
rwtDialog[tDialog[24]] = rwtDialog[tDialog[1]]
rwtDialog[tDialog[25]] = rwtDialog[tDialog[1]] 

rwtDialog[tDialog[4]] = rwtDialog[tDialog[4]] or {}
rwtDialog[tDialog[4]]["DialogEndInit"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"] = {}       
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["Id"] = tCg_Id[2]
rwtDialog[tDialog[4]]["DialogEndInit"]["Events"][1]["PlaySceneAnimation"]["IsChgScenePlay"] = 0


rwtDialog[tDialog[5]] = rwtDialog[tDialog[4]] 
rwtDialog[tDialog[6]] = rwtDialog[tDialog[4]] 
rwtDialog[tDialog[26]] = rwtDialog[tDialog[4]] 
rwtDialog[tDialog[27]] = rwtDialog[tDialog[4]] 

rwtDialog[tDialog[13]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[14]] = rwtDialog[tDialog[4]] 
rwtDialog[tDialog[15]] = rwtDialog[tDialog[4]] 
rwtDialog[tDialog[32]] = rwtDialog[tDialog[4]] 
rwtDialog[tDialog[33]] = rwtDialog[tDialog[4]] 

rwtDialog[tDialog[18]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[42]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[43]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[44]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[45]] = rwtDialog[tDialog[4]]
 
rwtDialog[tDialog[19]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[46]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[47]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[48]] = rwtDialog[tDialog[4]]
rwtDialog[tDialog[49]] = rwtDialog[tDialog[4]] 

rwtDialog[tDialog[10]] = rwtDialog[tDialog[10]] or {}
rwtDialog[tDialog[10]]["DialogEndInit"] = {}
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"] ={}
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["Monster_GenId"] = tGen_Monster_Group_Escape[1]
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["EscapeFlag"] = 1
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["EscapeSpeedRate"] = 150
rwtDialog[tDialog[10]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["EscapePos"] = tEscape_Pos[1]

rwtDialog[tDialog[11]] = rwtDialog[tDialog[10]]
rwtDialog[tDialog[12]] = rwtDialog[tDialog[10]]
rwtDialog[tDialog[30]] = rwtDialog[tDialog[10]]
rwtDialog[tDialog[31]] = rwtDialog[tDialog[10]]
--rwtDialog[tDialog[7]] = rwtDialog[tDialog[10]]
--rwtDialog[tDialog[8]] = rwtDialog[tDialog[10]]
--rwtDialog[tDialog[9]] = rwtDialog[tDialog[10]]

rwtDialog[tDialog[17]] = rwtDialog[tDialog[17]] or {}
rwtDialog[tDialog[17]]["DialogEndInit"] = {}
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"] ={}
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["Monster_GenId"] = tGen_Monster_Group_Escape[2]
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["EscapeFlag"] = 1
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["EscapeSpeedRate"] = 150
rwtDialog[tDialog[17]]["DialogEndInit"]["Events"][1]["ChangeMonsterRounds"]["EscapePos"] = tEscape_Pos[2]

rwtDialog[tDialog[38]] = rwtDialog[tDialog[17]]
rwtDialog[tDialog[39]] = rwtDialog[tDialog[17]]
rwtDialog[tDialog[40]] = rwtDialog[tDialog[17]]
rwtDialog[tDialog[41]] = rwtDialog[tDialog[17]]
--rwtDialog[tDialog[16]] = rwtDialog[tDialog[17]]

function GoblinTreasureMap_RandomDialog(tRandomList)
	local nDialogId = 0
	if rwChkTable(tRandomList) then
		local nRandom = math.random(1,#tRandomList)
		for j=1,#tRandomList do
			if j == nRandom then
				nDialogId = tRandomList[nRandom]
			end
		end
	end
	return nDialogId
end
function GoblinTreasureMap_CgEnd_1()
	local tRandomList = {tDialog[4],tDialog[5],tDialog[6],tDialog[26],tDialog[27]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
end
rwtCGFinish[tCg_Id[1]] = rwtCGFinish[tCg_Id[1]] or {}
table.insert(rwtCGFinish[tCg_Id[1]],GoblinTreasureMap_CgEnd_1)

function GoblinTreasureMap_CgEnd_2()
	local tRandomList = {tDialog[13],tDialog[14],tDialog[15],tDialog[32],tDialog[33]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
end
rwtCGFinish[tCg_Id[3]] = rwtCGFinish[tCg_Id[3]] or {}
table.insert(rwtCGFinish[tCg_Id[3]],GoblinTreasureMap_CgEnd_2)

function GoblinTreasureMap_CgEnd_3()
	local tRandomList = {tDialog[18],tDialog[42],tDialog[43],tDialog[44],tDialog[45],tDialog[19],tDialog[46],tDialog[47],tDialog[48],tDialog[49]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
end
rwtCGFinish[tCg_Id[4]] = rwtCGFinish[tCg_Id[4]] or {}
table.insert(rwtCGFinish[tCg_Id[4]],GoblinTreasureMap_CgEnd_3)

function GoblinTreasureMap_AddGenevent (tInfo)
	if rwChkTable(tInfo) then
		for i,v in pairs(tInfo) do
			if not rwHasGenEvent(v) then
				rwAddGenEvent(v)
			end
		end
	elseif rwChkInt(tInfo) then
		if not rwHasGenEvent(tInfo) then
			rwAddGenEvent(tInfo)
		end
	end	
end
function GoblinTreasureMap_DelGenevent (nInfo)
	if rwHasGenEvent(nInfo) then
		rwDelGenEvent(nInfo)
	end
end
function GoblinTreasureMap_RandomAddGenevent (tInfo)
	local nRandom = math.random(0,#tInfo)
	if nRandom == 0 then
		return true
	elseif nRandom == 1 then
		local nRandom_Gen = math.random(1,#tInfo) 
		for i=1,#tInfo do
			if i == nRandom_Gen then
				if not rwHasGenEvent(tInfo[nRandom_Gen]) then
					rwAddGenEvent(tInfo[nRandom_Gen])
				end
			end
		end
	elseif nRandom == 2 then
		for i,v in pairs(tInfo) do
			if not rwHasGenEvent(v) then
				rwAddGenEvent(v)
			end			
		end
	end
end

--哥布林一阶段
rwtMonsterGroup[tMonster_Group_Goblin[1]] = rwtMonsterGroup[tMonster_Group_Goblin[1]] or {}
rwtMonsterGroup[tMonster_Group_Goblin[1]]["BattleOverCommon"] = function()
	GoblinTreasureMap_DelGenevent(tGen_Monster_Group[1]) 
	GoblinTreasureMap_AddGenevent(tGen_Collect_Battle[1])	   
	GoblinTreasureMap_AddGenevent(tGen_Monster_Group_Escape[1])
	GoblinTreasureMap_AddGenevent(tGen_Monster_Group[2])
	GoblinTreasureMap_RandomAddGenevent(tGen_Box_Battle[1]) 
--	rwChangeMonsterToEscape(tGen_Monster_Group_Escape[1],150,tEscape_Pos[1])
	rwMonsterAddStatus(tGen_Monster_Group[2],tMonster_Battle[2],tBuff[1])
end
rwtMonsterGroup[tMonster_Group_Goblin[1]]["BattleWin"] = function()
	GoblinTreasureMap_AddGenevent(tGen_Box_Battle_Win[1])
	local tRandomList = {tDialog[10],tDialog[11],tDialog[12],tDialog[30],tDialog[31]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
end
rwtMonsterGroup[tMonster_Group_Goblin[1]]["BattleLose"] = function()
	local tRandomList = {tDialog[7],tDialog[8],tDialog[9],tDialog[28],tDialog[29]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
	rwChangeMonsterToEscape(tGen_Monster_Group_Escape[1],150,tEscape_Pos[1])
end
rwtMonsterGroup[tMonster_Group_Goblin[1]]["BattleEscape"] = function()
	local tRandomList = {tDialog[7],tDialog[8],tDialog[9],tDialog[28],tDialog[29]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
	rwChangeMonsterToEscape(tGen_Monster_Group_Escape[1],150,tEscape_Pos[1])
end
--哥布林二阶段
rwtMonsterGroup[tMonster_Group_Goblin[2]] = rwtMonsterGroup[tMonster_Group_Goblin[2]] or {}
rwtMonsterGroup[tMonster_Group_Goblin[2]]["BattleOverCommon"] = function()
	GoblinTreasureMap_DelGenevent(tGen_Monster_Group[2])
	GoblinTreasureMap_AddGenevent(tGen_Collect_Battle[2]) 
	GoblinTreasureMap_AddGenevent(tGen_Monster_Group_Escape[2])
	GoblinTreasureMap_AddGenevent(tGen_Monster_Group[3])
	GoblinTreasureMap_RandomAddGenevent(tGen_Box_Battle[2]) 
--	rwChangeMonsterToEscape(tGen_Monster_Group_Escape[2],150,tEscape_Pos[2]) 
	rwMonsterAddStatus(tGen_Monster_Group[3],tMonster_Battle[3],tBuff[1])
	rwMonsterAddStatus(tGen_Monster_Group[3],tMonster_Battle[3],tBuff[2])
end
rwtMonsterGroup[tMonster_Group_Goblin[2]]["BattleWin"] = function()
	GoblinTreasureMap_AddGenevent(tGen_Box_Battle_Win[2])
	local tRandomList = {tDialog[17],tDialog[38],tDialog[39],tDialog[40],tDialog[41]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
--	rwOpenNpcChatDialog(tDialog[17])
end
rwtMonsterGroup[tMonster_Group_Goblin[2]]["BattleLose"] = function()
	rwChangeMonsterToEscape(tGen_Monster_Group_Escape[2],150,tEscape_Pos[2]) 
	local tRandomList = {tDialog[16],tDialog[34],tDialog[35],tDialog[36],tDialog[37]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
--	rwOpenNpcChatDialog(tDialog[16])
end
rwtMonsterGroup[tMonster_Group_Goblin[2]]["BattleEscape"] = function()
	rwChangeMonsterToEscape(tGen_Monster_Group_Escape[2],150,tEscape_Pos[2]) 
	local tRandomList = {tDialog[16],tDialog[34],tDialog[35],tDialog[36],tDialog[37]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
--	rwOpenNpcChatDialog(tDialog[16])
end
--哥布林三阶段
rwtMonsterGroup[tMonster_Group_Goblin[3]] = rwtMonsterGroup[tMonster_Group_Goblin[3]] or {}
rwtMonsterGroup[tMonster_Group_Goblin[3]]["BattleOverCommon"] = function()
   GoblinTreasureMap_DelGenevent(tGen_Monster_Group[3])
   GoblinTreasureMap_AddGenevent(tGen_Collect_Battle[3])
   GoblinTreasureMap_AddGenevent(nGen_NpcGroup_Goblin)
   GoblinTreasureMap_RandomAddGenevent(tGen_Box_Battle[3]) 
end
rwtMonsterGroup[tMonster_Group_Goblin[3]]["BattleWin"] = function()
	GoblinTreasureMap_AddGenevent(tGen_Box_Battle_Win[3])
--	rwOpenNpcChatDialog(tDialog[21])
	local tRandomList = {tDialog[21],tDialog[54],tDialog[55],tDialog[56],tDialog[57]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
end
rwtMonsterGroup[tMonster_Group_Goblin[3]]["BattleLose"] = function()
--	rwOpenNpcChatDialog(tDialog[20])
	local tRandomList = {tDialog[20],tDialog[50],tDialog[51],tDialog[52],tDialog[53]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
end
rwtMonsterGroup[tMonster_Group_Goblin[3]]["BattleEscape"] = function()
	local tRandomList = {tDialog[20],tDialog[50],tDialog[51],tDialog[52],tDialog[53]}
	rwOpenNpcChatDialog(GoblinTreasureMap_RandomDialog(tRandomList))
--	rwOpenNpcChatDialog(tDialog[20])
end
