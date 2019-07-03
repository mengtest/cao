--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--每日材料副本_噩梦



--endregion

-------------------------------------------- 数据定义 ----------------------------------------------

--副本ID
local nCopyMapId = 3063
local nTempDataId =1124

--采集
local nBox_Pass = 40117
local nBox_Pass_Gen = 3063001

local nBox_Hide_2 = 40120
local nBox_Hide2_Gen = 3063004
local nBox_Hide3_Gen = 3063022

local nBox_ShouHu_1 = 40118			--随机事件4
local nBox_ShouHu_1_Gen = 3063002
local nBox_ShouHu_2 = 40119			--随机事件5
local nBox_ShouHu_2_Gen = 3063003

--陷阱触发
local nBox_Egg_2 = 40121
local nBox_Egg2_Gen = 3063005

local nCollect_1 = 60161
local nCollect_2 = 60162
local nCollect_3 = 60163
local nCollect_5 = 60165

local nCollect_1_Gen = 3063006
local nCollect_2_Gen = 3063007
local nCollect_3_Gen = 3063008
local nCollect_5_Gen = 3063010

--陷阱
local nNpcGroup_Trap1 = 30400		--宝箱				
local nNpcGroup_GenId_Trap1 = 3063013
local nNpcGroup_Trap2 = 30488		--怪物				
local nNpcGroup_GenId_Trap2 = 3063014
local nNpcGroup_GuanXiao = 60164		--陷阱光效				
local nNpcGroup_GenId_GuanXiao = 3063020

local tAwardGenId = {3063002,3063004,3063006,3063007,3063008,3063010,3063005,3063013,3063014,3063011,3063017,3063018,3063019,3063022,3063003,3063021}

--怪物

local nMonster_1 = 1000365
local nMonsterGroup_1 = 200317
local nMonsterGroup_1_Gen = 3063011			--随机事件4：冒泡：100143

--monster  冒泡：100173     52003 嗜血战魂  100173  npc  3481
local nMonster_2 = 1000504
local nMonsterGroup_2 = 200349
local nMonsterGroup_2_Gen = 3063015

--monster  冒泡：100174     52010   黑暗法师   100174  npc 3482
local nMonster_3 = 1000505 
local nMonsterGroup_3 = 200350
local nMonsterGroup_3_Gen = 3063016


local nMonster_4 = 1000806 					--9002   石像鬼之魂	 100259
local nMonsterGroup_4 = 200484
local nMonsterGroup_4_Gen = 3063021



--NPC

local nNpcId1 = 3477				--黑暗法师  52010

local nNpcGroup_NPC1 = 20472
local nNpcGroup_NPC1_Gen = 3063017
local nNpcGroup_NPC2_Gen = 3063018
local nNpcGroup_NPC3_Gen = 3063019


--对白*9
local tDialog_1 = {5960,5961,5962,5963,5964}    --进副本对白
-- local tDialog_2 = {5965,5966,5967,5968,5969}    --战前对白 必然事件
-- local tDialog_3 = {5970,5971,5972,5973,5974}    --战后对白 必然事件
local tDialog_4 = {5975,5976,5977,5978,5979}    --开启宝箱失败对白
local tDialog_5 = {5980,5981,5982,5983,5984,6070,6071}    --通关对白
local tDialog_6 = {5985,5986,5987,5988,5989}    --进陷阱生成宝箱对白
local tDialog_7 = {5990,5991,5992}    --进陷阱生成怪物对白 5993,5994
-- local tDialog_8 = {5995}    --进陷阱生成怪物战斗后对白  不需要 ,5996,5997,5998,5999
local tDialog_9 = {6000,6001,6002}    --NPC对话有泰雷
local tDialog_10 = {6005,6006,6007}    --NPC对话无泰雷
local tDialog_11 = {6010,6011,6012}    --和黑暗法师战斗后触发


--奖励

--宝箱
local nAward_Box_1 = 1000168 			 --通关宝箱
local nAward_Box_2 = 1000169			 --隐藏宝箱

local nAward_Box_4 = 1000171   			 --随机事件2：陷阱触发宝箱

local nAward_ShouHu_1 = 1000175
local nAward_ShouHu_2 = 1000177

--蜘蛛卵
local nAward_Collect_1 = 1000173


--NPC奖励
local nAward_NPC_1 = 1000176
local nAward_NPC_3 = 1000170

--怪物掉落
local nAward_monster_1 = 1000174			--随机事件1
-- local nAward_monster_2 = 1000175			--随机事件4
-- local nAward_monster_3 = 1000177			--随机事件5
-- local nAward_monster_4 = 1000172

-------------------------------------------- 配置 ----------------------------------------------

--------------------固定事件

--通关宝箱
rwtNpcGroup[nBox_Pass] = rwtNpcGroup[nBox_Pass] or {}  
rwtNpcGroup[nBox_Pass]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Pass]["NotDel"] = 1
rwtNpcGroup[nBox_Pass]["Awards"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["ChkGenEventNoExist"] = tAwardGenId
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}  --失败对白
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_4
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_5
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["DynDelete"] = {nBox_Pass_Gen}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1
rwtNpcGroup[nBox_Pass]["ChooseAwards"] = {}  --强制打开通关宝箱奖励
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_5
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["DynDelete"] = {nBox_Pass_Gen} 
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_1

rwtDialog[tDialog_4[1]] = rwtDialog[tDialog_4[1]] or {}
rwtDialog[tDialog_4[1]]["OptionFunc2"] = function()
    LinkTreasureBoxOpenSucc(nBox_Pass,nBox_Pass_Gen,1)
end

rwtDialog[tDialog_4[2]] = rwtDialog[tDialog_4[1]]
rwtDialog[tDialog_4[3]] = rwtDialog[tDialog_4[1]]
rwtDialog[tDialog_4[4]] = rwtDialog[tDialog_4[1]]
rwtDialog[tDialog_4[5]] = rwtDialog[tDialog_4[1]]

--隐藏宝箱
rwtNpcGroup[nBox_Hide_2] = rwtNpcGroup[nBox_Hide_2] or {} 
rwtNpcGroup[nBox_Hide_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Hide_2]["Awards"] = {}
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Hide_2
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Hide_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_2 

--采集
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["CollectTime"] = 1
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Collect_1
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_2]["CollectTime"] = 1
rwtNpcGroup[nCollect_2]["Awards"] = {}  
rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Collect_1
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_3] = rwtNpcGroup[nCollect_3] or {}    
rwtNpcGroup[nCollect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_3]["CollectTime"] = 1
rwtNpcGroup[nCollect_3]["Awards"] = {}  
rwtNpcGroup[nCollect_3]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Collect_1
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[nCollect_5] = rwtNpcGroup[nCollect_5] or {}    
rwtNpcGroup[nCollect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_5]["CollectTime"] = 1
rwtNpcGroup[nCollect_5]["Awards"] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"] = {} 
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1] = {}  
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Collect_1
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect_5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS


--------------------随机事件1

--陷阱 出怪物
rwtNpcGroup[nNpcGroup_Trap2] = rwtNpcGroup[nNpcGroup_Trap2] or {}
rwtNpcGroup[nNpcGroup_Trap2]["Type"] = CONST_NPCGROUP_TYPE.Trap
-- rwtNpcGroup[nNpcGroup_Trap2]["DelTrap"] = 1
rwtNpcGroup[nNpcGroup_Trap2]["Awards"] = {}  
rwtNpcGroup[nNpcGroup_Trap2]["Awards"]["Events"] = {}    
rwtNpcGroup[nNpcGroup_Trap2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Trap2]["Awards"]["Events"][1]["DynCreate"] = {nMonsterGroup_2_Gen} 
rwtNpcGroup[nNpcGroup_Trap2]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nNpcGroup_Trap2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_7
-- rwtNpcGroup[nNpcGroup_Trap2]["Awards"]["Events"][1]["DynDelete"] = {nNpcGroup_GenId_GuanXiao} 

rwtDialog[tDialog_7[1]] = rwtDialog[tDialog_7[1]] or {}
rwtDialog[tDialog_7[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog_7[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_2_Gen

rwtDialog[tDialog_7[2]] = rwtDialog[tDialog_7[1]]
rwtDialog[tDialog_7[3]] = rwtDialog[tDialog_7[1]]

function DailyCopyMap_Material_Crazy_XianJin()
	if rwHasGenEvent(nNpcGroup_GenId_Trap2) then
		rwDelGenEvent(nNpcGroup_GenId_Trap2)
	end
	if rwHasGenEvent(nNpcGroup_GenId_GuanXiao) then
		rwDelGenEvent(nNpcGroup_GenId_GuanXiao)
	end
end

rwtMonsterGroup_Func[nMonsterGroup_2] = rwtMonsterGroup_Func[nMonsterGroup_2] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_2],DailyCopyMap_Material_Crazy_XianJin)


--------------------随机事件2

--陷阱 出宝箱
rwtNpcGroup[nNpcGroup_Trap1] = rwtNpcGroup[nTrap] or {}
rwtNpcGroup[nNpcGroup_Trap1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nNpcGroup_Trap1]["DelTrap"] = 1
rwtNpcGroup[nNpcGroup_Trap1]["Awards"] = {}  
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"] = {}    
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["DynCreate"] = {nBox_Egg2_Gen} 
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_6
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["DynDelete"] = {nNpcGroup_GenId_GuanXiao} 
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"] = {}  
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"][1] = {}  
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"][1]["TargetId"] = 0 
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"][1]["EffectId"] = 2054 
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"][1]["Pos"] = "-85.21,-16.78,-25.73"
rwtNpcGroup[nNpcGroup_Trap1]["Awards"]["Events"][1]["AddEffect"][1]["Angle"] = 0

--宝箱
rwtNpcGroup[nBox_Egg_2] = rwtNpcGroup[nBox_Egg_2] or {} 
rwtNpcGroup[nBox_Egg_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Egg_2]["Awards"] = {}
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Egg_2
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Egg_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_Box_4  


--------------------随机事件3

--NPC对话
rwtNpcGroup[nNpcGroup_NPC1] = rwtNpcGroup[nNpcGroup_NPC1] or {}
rwtNpcGroup[nNpcGroup_NPC1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_NPC1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {102}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_9
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_10


rwtDialog[tDialog_9[1]] = rwtDialog[tDialog_9[1]] or {}
rwtDialog[tDialog_9[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][1]["DynCreate"] = {nMonsterGroup_3_Gen}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][2] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][2]["AutoBattle"] = {}
rwtDialog[tDialog_9[1]]["DialogEndInit"]["Events"][2]["AutoBattle"]["GenId"] = nMonsterGroup_3_Gen

rwtDialog[tDialog_9[2]] = rwtDialog[tDialog_9[1]]
rwtDialog[tDialog_9[3]] = rwtDialog[tDialog_9[1]]

rwtDialog[tDialog_10[1]] = rwtDialog[tDialog_10[1]] or {}
rwtDialog[tDialog_10[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {3063017,3063018,3063019}
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_3
rwtDialog[tDialog_10[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog_10[2]] = rwtDialog[tDialog_10[1]]
rwtDialog[tDialog_10[3]] = rwtDialog[tDialog_10[1]]


--战斗胜利
function DailyCopyMap_Material_Crazy_NPCTalk()
	local nIndex = math.random(1,3)
	rwOpenNpcChatDialog(tDialog_11[nIndex])
end

rwtMonsterGroup_Func[nMonsterGroup_3] = rwtMonsterGroup_Func[nMonsterGroup_3] or {} 
table.insert(rwtMonsterGroup_Func[nMonsterGroup_3],DailyCopyMap_Material_Crazy_NPCTalk)

rwtDialog[tDialog_11[1]] = rwtDialog[tDialog_11[1]] or {}
rwtDialog[tDialog_11[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {3063017,3063018,3063019}
-- rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
-- rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
-- rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_NPC_1
-- rwtDialog[tDialog_11[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog_11[2]] = rwtDialog[tDialog_11[1]]
rwtDialog[tDialog_11[3]] = rwtDialog[tDialog_11[1]]


--------------------随机事件4

rwtNpcGroup[nBox_ShouHu_1] = rwtNpcGroup[nBox_ShouHu_1] or {} 
rwtNpcGroup[nBox_ShouHu_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_ShouHu_1]["Awards"] = {}
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_ShouHu_1
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_ShouHu_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_ShouHu_1   


--------------------随机事件5

rwtNpcGroup[nBox_ShouHu_2] = rwtNpcGroup[nBox_ShouHu_2] or {} 
rwtNpcGroup[nBox_ShouHu_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_ShouHu_2]["Awards"] = {}
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_ShouHu_2
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_ShouHu_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAward_ShouHu_2 



--------------------------------------- 副本初始化 ---------------------------------------

rwtTarget[60101] = {}
rwtTarget[60101]["Title"] = tLuaText[LANGUAGE_CONFIG][20010]
rwtTarget[60101]["ReqTreasureBox"] = 40117
rwtTarget[60101]["ReqCount"] = 1

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1 
rwtCopyMapMission[nCopyMapId]["Target1"] = {60101}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--副本固定配置
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_1   


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}


--事件1 陷阱出怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["FixGen"] = {nNpcGroup_GenId_Trap2,nNpcGroup_GenId_GuanXiao}

--事件2 陷阱出宝箱
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nNpcGroup_GenId_Trap1,nNpcGroup_GenId_GuanXiao}

--事件3 刷NPC
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = nNpcGroup_NPC1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = nNpcGroup_NPC2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = nNpcGroup_NPC3_Gen


--备注
--事件1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["FixGen"] = {nNpcGroup_GenId_Trap2,nNpcGroup_GenId_GuanXiao}

--事件2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["FixGen"] = {nNpcGroup_GenId_Trap1,nNpcGroup_GenId_GuanXiao}

--事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][1]["GenId"] = nNpcGroup_NPC1_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][2]["GenId"] = nNpcGroup_NPC2_Gen
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"][3]["GenId"] = nNpcGroup_NPC3_Gen

--事件4
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {nBox_ShouHu_1_Gen,nMonsterGroup_1_Gen}

--事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] =  3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] =  5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nBox_ShouHu_2_Gen,nMonsterGroup_4_Gen}

--事件6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] =  5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] =  10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2


--事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {nBox_ShouHu_1_Gen,nMonsterGroup_1_Gen}

--事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {nBox_ShouHu_2_Gen,nMonsterGroup_4_Gen}

--事件6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempDataId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3

-------------------------------------------- 废弃 ----------------------------------------------

-- local nCollect_4 = 60164
-- local nCollect_4_Gen = 3063009

-- local nNpcId2 = 3487				--嗜血战魂

-- local nNpcGroup_NPC2 = 20473
-- local nNpcGroup_NPC2_Gen = 
-- local nNpcGroup_NPC3 = 20474						--有怪物的
-- local nNpcGroup_NPC3_Gen = 

-- local nDialog_1 = 5353
-- local nDialog_2 = 5354
-- local nDialog_3 = 5355
-- local nDialog_4 = 5356  
-- local nDialog_5 = 5357  
-- local nDialog_6 = 5364

--战斗事件对白:100092 100093

-- rwtTarget[60100] = {}
-- rwtTarget[60100]["Title"] = tLuaText[LANGUAGE_CONFIG][20009]
-- rwtTarget[60100]["KillMonsterGroup"] = 200317
-- rwtTarget[60100]["ReqCount"] = 1


--固定怪战斗胜利
-- function DailyCopyMap_Material_Crazy_GuDingGuai()
	-- local nIndex = math.random(1,5)
	-- rwOpenNpcChatDialog(tDialog_3[nIndex])
-- end

--NPC对话逻辑
-- rwtMonsterGroup_Func[nMonsterGroup_1] = rwtMonsterGroup_Func[nMonsterGroup_1] or {} 
-- table.insert(rwtMonsterGroup_Func[nMonsterGroup_1],DailyCopyMap_Material_Crazy_GuDingGuai)

-- rwtNpcGroup[nNpcGroup_NPC1]["InterfaceFunc"]= function(nGroupTypeId,nNpcTypeId,nGenEventId)
-- 	local nIndex = math.random(1,5)
-- 	local nIsHero = false
-- 	local tHeroTable = rwHeroGetAllInFight()
-- 	for var=1,#tHeroTable do
-- 		if tHeroTable[var] == 102 then
-- 			nIsHero = true
-- 		end
-- 	end
	
-- 	if nIsHero then
-- 		rwOpenNpcChatDialog(tDialog_9[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	else
-- 		rwOpenNpcChatDialog(tDialog_10[nIndex],CONST_NPCCHAT_TYPE.COPYMAP,nGenEventId)
-- 	end
-- end

