--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--mapid         3065
--光墙          1051
--monster       1000370
--monstergroup  200319
--npc           3373
--npcgroup(npc) 20399-20401 
--npcgroup(cllo)60167-60170 
--npcgroup(Box) 40123
--副本目标      60105-60106 
--award_id      1000199-1000202 
-----【数据定义】------------------------------

--掩码位
local nUserRecordId = 1125
--副本ID
local nCopyMapId = 3065  

--副本内玩家数据
local tCopyMap_Material_HardUserData = {}

--local nTarget1 = 60105
local nTarget2 = 60106   --寻找宝藏
--对话 5391  5396 

local tDialog = {}
tDialog.nDialog_Enter_1 = 5391
tDialog.nDialog_Enter_2 = 5392
tDialog.nDialog_Enter_3 = 5393
tDialog.nDialog_Enter_4 = 5394
tDialog.nDialog_Enter_5 = 5395

tDialog.nDialog_BeforBat_1 = 5396
tDialog.nDialog_BeforBat_2 = 5856
tDialog.nDialog_BeforBat_3 = 5857
tDialog.nDialog_BeforBat_4 = 5858
tDialog.nDialog_BeforBat_5 = 5859
    
tDialog["nDialog_AfterBat"] = {}
tDialog.nDialog_AfterBat[1] = 5860
tDialog.nDialog_AfterBat[2] = 5861
tDialog.nDialog_AfterBat[3] = 5862
tDialog.nDialog_AfterBat[4] = 5863
tDialog.nDialog_AfterBat[5] = 5864

tDialog.nDialog_BoxFail_1 = 5865
tDialog.nDialog_BoxFail_2 = 5866
tDialog.nDialog_BoxFail_3 = 5867
tDialog.nDialog_BoxFail_4 = 5868
tDialog.nDialog_BoxFail_5 = 5869
--tDialog.nDialog_BoxFail_6 = 5396

tDialog.nDialog_NpcBing_1 = 5870
tDialog.nDialog_NpcBing_2 = 5871
tDialog.nDialog_NpcBing_3 = 5872
tDialog.nDialog_NpcBing_4 = 5873
tDialog.nDialog_NpcBing_5 = 5874

tDialog.nDialog_BoxSucc_1 = 5875
tDialog.nDialog_BoxSucc_2 = 5876
tDialog.nDialog_BoxSucc_3 = 5877
tDialog.nDialog_BoxSucc_4 = 5878
tDialog.nDialog_BoxSucc_5 = 5879
tDialog.nDialog_BoxSucc_6 = 5880
tDialog.nDialog_BoxSucc_7 = 5881

tDialog["nDialog_AfterCollect"] = {}
tDialog["nDialog_AfterCollect"][1] = 5882
tDialog["nDialog_AfterCollect"][2] = 5883
tDialog["nDialog_AfterCollect"][3] = 5884
tDialog["nDialog_AfterCollect"][4] = 5885
tDialog["nDialog_AfterCollect"][5] = 5886

tDialog["nDialog_NpcDeLuNo"] = {}
tDialog["nDialog_NpcDeLuYes"] = {}
tDialog.nDialog_NpcDeLuYes[1] = 5887
tDialog.nDialog_NpcDeLuYes[2] = 5888
tDialog.nDialog_NpcDeLuYes[3] = 5889
tDialog.nDialog_NpcDeLuNo[1] = 5890
tDialog.nDialog_NpcDeLuNo[2] = 5891
tDialog.nDialog_NpcDeLuNo[3] = 5892

tDialog["nDialog_BeforCollect"] = {}
tDialog["nDialog_BeforCollect"][1] = 5893
-- tDialog["nDialog_BeforCollect"][2] = 5894
-- tDialog["nDialog_BeforCollect"][3] = 5895
-- tDialog["nDialog_BeforCollect"][4] = 5896
-- tDialog["nDialog_BeforCollect"][5] = 5897

--蝎子卵                     
tDialog["nDialog_AfterBatLuan"] = {}     
tDialog["nDialog_AfterBatLuan"][1] = 5898
tDialog["nDialog_AfterBatLuan"][2] = 5899
tDialog["nDialog_AfterBatLuan"][3] = 5900
tDialog["nDialog_AfterBatLuan"][4] = 5901
tDialog["nDialog_AfterBatLuan"][5] = 5902


local tDialog_Bing = {tDialog.nDialog_NpcBing_1,tDialog.nDialog_NpcBing_2,tDialog.nDialog_NpcBing_3,tDialog.nDialog_NpcBing_4,tDialog.nDialog_NpcBing_5}
--奖励  
local nAwardId_ChongLuan = 1000199
local nAwardId_Caiji = 1000324 
local nAwardId_Bing = 1000200
local nAwardId_Deluyi = 1000201
local nAwardId_Deluyi2 = 1000325
local nAwardId_XieZi = 1000326

local nAwardId_TongGuan = 1000202  
local nAwardId_XiYou_1 = 1000430  
local nAwardId_XiYou_2 = 1000431 
--机关ID
local nValve = 1051                                                                                                                                                                                                                                                                                                                       

--采集
local tCollect = {}
tCollect[1] = 60167
tCollect[2] = 60168
tCollect[3] = 60169
tCollect[4] = 60170
tCollect[5] = 60263 --特殊虫卵
tCollect[6] = 60264 --蝎子虫卵
tCollect[7] = 60265 --采集物
tCollect[8] = 60266 --采集物
tCollect[9] = 60268 --采集物

--怪物
local nMonsterGroup = 200319
local nMonsterGroup_Luan = 200336


local nNpc = 3373 --被困的佣兵
local tNpcGroup = {}
tNpcGroup.YongBing_1 = 20399
tNpcGroup.YongBing_2 = 20400
tNpcGroup.YongBing_3 = 20401
tNpcGroup.DeLuYi = 20475 

--宝箱ID
local nNpcGroup_Box = 40123  --通关宝箱
tNpcGroup.XiYou_Box_1 = 40225  --黯月宝箱
tNpcGroup.XiYou_Box_2 = 40226  --辉日宝箱



--------------------------Gen------------------------


local nGen_Valve = 3065001
 

local tGen_ID = {}
tGen_ID["YongBing"] = {}
tGen_ID.YongBing[1] = 3065002 -- 佣兵
tGen_ID.YongBing[2] = 3065003
tGen_ID.YongBing[3] = 3065004
tGen_ID.DeLuYi = 3065011      --德鲁伊护卫长 3473 



--怪物
local nGen_MonsterGroup_Luan = 3065012
tGen_ID.Monster_xiezi =  3065005
tGen_ID.Monster_shamo =  3065018

---虫卵
tGen_ID["PuTongChongLuan"] = {}
tGen_ID.PuTongChongLuan[1] = 3065006
tGen_ID.PuTongChongLuan[2] = 3065007
tGen_ID.PuTongChongLuan[3] = 3065008
tGen_ID.PuTongChongLuan[4] = 3065009

tGen_ID.TeShuChongLuan = 3065013

tGen_ID.xieziluan = 3065014
--采集物
tGen_ID["tCollect"] = {}
tGen_ID.tCollect[1] = 3065015
tGen_ID.tCollect[2] = 3065016
tGen_ID.tCollect[3] = 3065017

--稀有宝箱
tGen_ID.nGen_XiYou_Box_1 = 3065019
tGen_ID.nGen_XiYou_Box_2 = 3065020
--坐标
local tPos = {}
tPos["Luan"] = {}
tPos.Luan[1] = "47.28,0.47,70.12"
tPos.Luan[2] = "73.98,0.86,71.06"
tPos.Luan[3] = "77.78,0.41,54.64"
tPos.Luan[4] = "67.95,0,51.29"
tPos.Luan[5] = "56.74,0.47,73.191"

tPos["Npc"] = {}
tPos["Npc"]["Pos"] = {}
tPos["Npc"]["Rot"] = {}
tPos.Npc.Pos[1] = "67.05254,0.73,73.33022"
--tPos.Npc.Pos[2] = "64.02235,0.14,55.539"
tPos.Npc.Pos[2] = "72.984,0.1039,51.937"
tPos.Npc.Pos[3] = "75.78796,0.0814,63.0929"
--tPos.Npc.Pos[4] = "64.46,0.09061782,62.17"
tPos.Npc.Pos[4] = "39.83,0.814,57.965"
tPos.Npc.Pos[5] = "52.84,0.0814085,73.06394"
tPos.Npc.Rot[1] = -181.001
tPos.Npc.Rot[2] = -66.246
tPos.Npc.Rot[3] = -152.984
tPos.Npc.Rot[4] = 81.37601
tPos.Npc.Rot[5] = 110.102

tPos["Npc"]["DeLuYiRot"] = {}
tPos.Npc.DeLuYiRot[1] = -141.941
tPos.Npc.DeLuYiRot[2] = 75.092
tPos.Npc.DeLuYiRot[3] = -122.759
tPos.Npc.DeLuYiRot[4] = 140.225
tPos.Npc.DeLuYiRot[5] = 152.795


tPos["SanGeCaiJiWu"] = {}
tPos["SanGeCaiJiWu"][1] = {}
tPos["SanGeCaiJiWu"][1][1] = "46.71,0.14,66.30"
tPos["SanGeCaiJiWu"][1][2] = "49.00,0.13,67.12"
tPos["SanGeCaiJiWu"][1][3] = "50.88,0.15,69.49"
tPos["SanGeCaiJiWu"][2] = {}
tPos["SanGeCaiJiWu"][2][1] = "71.02,0.16,68.83"
tPos["SanGeCaiJiWu"][2][2] = "73.44,0.50,67.18"
tPos["SanGeCaiJiWu"][2][3] = "75.27,0.23,66.58"
tPos["SanGeCaiJiWu"][3] = {}
tPos["SanGeCaiJiWu"][3][1] = "77.19,0.10,57.31"
tPos["SanGeCaiJiWu"][3][2] = "75.48,0.08,56.23"
tPos["SanGeCaiJiWu"][3][3] = "75.66,0.16,53.41"
tPos["SanGeCaiJiWu"][4] = {}
tPos["SanGeCaiJiWu"][4][1] = "70.80,0.17,51.12"
tPos["SanGeCaiJiWu"][4][2] = "68.79,0.13,53.42"
tPos["SanGeCaiJiWu"][4][3] = "66.48,0.09,53.74"
tPos["SanGeCaiJiWu"][5] = {}
tPos["SanGeCaiJiWu"][5][1] = "54.78,0.11,70.76"
tPos["SanGeCaiJiWu"][5][2] = "57.8,0.09,70.39"
tPos["SanGeCaiJiWu"][5][3] = "59.02,0.15,72.56"


local nGen_Box = 3065010


local tGen_Award = {tGen_ID["YongBing"][1],
                    tGen_ID.PuTongChongLuan[1],tGen_ID.tCollect[1],
                    tGen_ID.YongBing[2],tGen_ID.PuTongChongLuan[2],tGen_ID.tCollect[2],
                    tGen_ID.YongBing[3],tGen_ID.PuTongChongLuan[3],tGen_ID.tCollect[3],
                    tGen_ID.DeLuYi,tGen_ID.PuTongChongLuan[4],tGen_ID.TeShuChongLuan,tGen_ID.xieziluan,
                    tGen_ID.nGen_XiYou_Box_1,tGen_ID.nGen_XiYou_Box_2,tGen_ID.Monster_xiezi,tGen_ID.Monster_shamo}



rwtNpcGroup[tNpcGroup.XiYou_Box_1] = rwtNpcGroup[tNpcGroup.XiYou_Box_1] or {}  --黯月宝箱
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tNpcGroup.XiYou_Box_1
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.XiYou_Box_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_XiYou_1  

rwtNpcGroup[tNpcGroup.XiYou_Box_2] = rwtNpcGroup[tNpcGroup.XiYou_Box_2] or {} --辉日宝箱
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tNpcGroup.XiYou_Box_2
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.XiYou_Box_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_XiYou_2  




--通关宝箱
rwtNpcGroup[nNpcGroup_Box] = rwtNpcGroup[nNpcGroup_Box] or {}  --通关宝箱
rwtNpcGroup[nNpcGroup_Box]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nNpcGroup_Box]["NotDel"] = 1
rwtNpcGroup[nNpcGroup_Box]["Awards"] = {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["ChkGenEventNoExist"]	= tGen_Award
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}	   --失败对白
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] =  {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][1] = tDialog.nDialog_BoxFail_1
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][2] = tDialog.nDialog_BoxFail_2
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][3] = tDialog.nDialog_BoxFail_3
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][4] = tDialog.nDialog_BoxFail_4
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"][5] = tDialog.nDialog_BoxFail_5

rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][1] = tDialog.nDialog_BoxSucc_1
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][2] = tDialog.nDialog_BoxSucc_2
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][3] = tDialog.nDialog_BoxSucc_3
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][4] = tDialog.nDialog_BoxSucc_4
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][5] = tDialog.nDialog_BoxSucc_5
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][6] = tDialog.nDialog_BoxSucc_6
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["OpenDialog"]["tDialog"][7] = tDialog.nDialog_BoxSucc_7
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["DynDelete"][1] = nGen_Box
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_Box]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TongGuan  
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"] = {}		  --强制打开通关宝箱奖励
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}		  --成功对白
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][1] = tDialog.nDialog_BoxSucc_1
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][2] = tDialog.nDialog_BoxSucc_2
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][3] = tDialog.nDialog_BoxSucc_3
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][4] = tDialog.nDialog_BoxSucc_4
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][5] = tDialog.nDialog_BoxSucc_5
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][6] = tDialog.nDialog_BoxSucc_6
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"][7] = tDialog.nDialog_BoxSucc_7
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["DynDelete"] = {} 
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["DynDelete"][1] = nGen_Box
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nNpcGroup_Box
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nNpcGroup_Box]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_TongGuan    


--对白
rwtDialog[tDialog.nDialog_BoxFail_1] = rwtDialog[tDialog.nDialog_BoxFail_1] or {}
rwtDialog[tDialog.nDialog_BoxFail_1]["OptionFunc1"] = function ()
	return false
end
rwtDialog[tDialog.nDialog_BoxFail_1]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
	LinkTreasureBoxOpenSucc(nNpcGroup_Box,nGen_Box,1)
end

rwtDialog[tDialog.nDialog_BoxFail_2] = rwtDialog[tDialog.nDialog_BoxFail_1] or {}
rwtDialog[tDialog.nDialog_BoxFail_3] = rwtDialog[tDialog.nDialog_BoxFail_1] or {}
rwtDialog[tDialog.nDialog_BoxFail_4] = rwtDialog[tDialog.nDialog_BoxFail_1] or {}
rwtDialog[tDialog.nDialog_BoxFail_5] = rwtDialog[tDialog.nDialog_BoxFail_1] or {}

rwtNpc[nNpc] = rwtNpc[nNpc] or {}
--被困的佣兵
rwtNpcGroup[tNpcGroup.YongBing_1] = rwtNpcGroup[tNpcGroup.YongBing_1] or {}  
rwtNpcGroup[tNpcGroup.YongBing_1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Bing
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["DynDelete"] = {}          
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["DynDelete"]["GenIdBynId"] = true 
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["GetServerAward"] = {}        
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Bing
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.YongBing_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS  
-- rwtNpcGroup[tNpcGroup.YongBing_1]["InterfaceFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
--     local nIndex = math.random(1, #tDialog_Bing)
--     rwOpenNpcChatDialog(tDialog_Bing[nIndex])
-- 	if rwHasGenEvent(nGenEventId) then
-- 		rwDelGenEvent(nGenEventId)
-- 	end
--     --直接给奖励
-- 	rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAwardId_Bing)
-- end

rwtNpcGroup[tNpcGroup.YongBing_2] = rwtNpcGroup[tNpcGroup.YongBing_1] or {} 
-- rwtNpcGroup[tNpcGroup.YongBing_2]["InterfaceFunc"] = rwtNpcGroup[tNpcGroup.YongBing_1]["InterfaceFunc"]
rwtNpcGroup[tNpcGroup.YongBing_3] = rwtNpcGroup[tNpcGroup.YongBing_1] or {} 
-- rwtNpcGroup[tNpcGroup.YongBing_3]["InterfaceFunc"] = rwtNpcGroup[tNpcGroup.YongBing_1]["InterfaceFunc"]


--德鲁伊
rwtNpcGroup[tNpcGroup.DeLuYi] = rwtNpcGroup[tNpcGroup.DeLuYi] or {}  
rwtNpcGroup[tNpcGroup.DeLuYi]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"] = {}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {104}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog["nDialog_NpcDeLuYes"]
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["GetServerAward"] = {}        
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Deluyi2
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS  
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog["nDialog_NpcDeLuNo"]
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"] = {}        
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["AwardId"] = nAwardId_Deluyi
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][1]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS 

rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][2] = {}
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][2]["DynDelete"] = {} 
rwtNpcGroup[tNpcGroup.DeLuYi]["Awards"]["Events"][2]["DynDelete"]["GenIdBynId"] = true 

-- rwtNpcGroup[tNpcGroup.DeLuYi]["InterfaceFunc"] = function(nNpcGroupType,nNpcGroupId,nGenEventId)
--     local nIndex = math.random(1, 3)
-- 	local nIsHero = false
-- 	local tHeroTable = rwHeroGetAllInFight()
-- 	for var=1,#tHeroTable do
-- 		if tHeroTable[var] == 104 then  --木禅
-- 			nIsHero = true
-- 		end
-- 	end
-- 	if nIsHero then
-- 		rwOpenNpcChatDialog(tDialog["nDialog_NpcDeLuYes"][nIndex])
-- 	    rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAwardId_Deluyi2)
-- 	else
-- 		rwOpenNpcChatDialog(tDialog["nDialog_NpcDeLuNo"][nIndex])
-- 	    rwCopyMapAddAward(CONST_ACTION_TYPE.TIPS,nAwardId_Deluyi)
-- 	end
--     --删除德鲁伊
--     if rwHasGenEvent(nGenEventId) then
-- 		rwDelGenEvent(nGenEventId)
-- 	end
-- end


--虫卵
rwtNpcGroup[tCollect[1]] = rwtNpcGroup[tCollect[1]] or {}
rwtNpcGroup[tCollect[1]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[1]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[1]]["Awards"] = {}  
rwtNpcGroup[tCollect[1]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_ChongLuan
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[2]] = rwtNpcGroup[tCollect[2]] or {}
rwtNpcGroup[tCollect[2]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[2]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[2]]["Awards"] = {}  
rwtNpcGroup[tCollect[2]]["Awards"]["Events"] = {} 
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1] = {}  
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_ChongLuan
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[3]] = rwtNpcGroup[tCollect[3]] or {}
rwtNpcGroup[tCollect[3]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[3]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[3]]["Awards"] = {}  
rwtNpcGroup[tCollect[3]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_ChongLuan
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[4]] = rwtNpcGroup[tCollect[4]] or {}
rwtNpcGroup[tCollect[4]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[4]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[4]]["Awards"] = {}  
rwtNpcGroup[tCollect[4]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_ChongLuan
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
--特殊卵，出3个采集物
rwtNpcGroup[tCollect[5]] = rwtNpcGroup[tCollect[5]] or {}
rwtNpcGroup[tCollect[5]]["Type"] = CONST_NPCGROUP_TYPE.Collect
--随机对白
rwtNpcGroup[tCollect[5]]["CollectTime"] = 1
rwtNpcGroup[tCollect[5]]["Func"] = function()
    local nUserId = rwUserGetId()	--获取玩家id
    local nIndex = math.random(1, 5)
    rwOpenNpcChatDialog(tDialog["nDialog_AfterCollect"][nIndex])
    --采集后获得三堆采集物
	for i=1,3 do
		if not rwHasGenEvent(tGen_ID.tCollect[i]) then
			rwAddGenEvent(tGen_ID["tCollect"][i],tPos.SanGeCaiJiWu[tCopyMap_Material_HardUserData[nUserId]["TeShu_Index"]][i] or "")
        end
	end
end


--蝎子卵，采集后出怪战斗
rwtNpcGroup[tCollect[6]] = rwtNpcGroup[tCollect[6]] or {}
rwtNpcGroup[tCollect[6]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[6]]["NotDel"] = 1
rwtNpcGroup[tCollect[6]]["CollectTime"] = 1
rwtNpcGroup[tCollect[6]]["Awards"] = {}
rwtNpcGroup[tCollect[6]]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect[6]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[6]]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect[6]]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog["nDialog_BeforCollect"]


--采集后的对白后进入战斗
rwtDialog[tDialog["nDialog_BeforCollect"][1]] = rwtDialog[tDialog["nDialog_BeforCollect"][1]] or {}
rwtDialog[tDialog["nDialog_BeforCollect"][1]]["DialogEndInit"] = {}
rwtDialog[tDialog["nDialog_BeforCollect"][1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog["nDialog_BeforCollect"][1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog["nDialog_BeforCollect"][1]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog["nDialog_BeforCollect"][1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGen_MonsterGroup_Luan

-- rwtDialog[tDialog["nDialog_BeforCollect"][2]] = rwtDialog[tDialog["nDialog_BeforCollect"][1]]
-- rwtDialog[tDialog["nDialog_BeforCollect"][3]] = rwtDialog[tDialog["nDialog_BeforCollect"][1]]
-- rwtDialog[tDialog["nDialog_BeforCollect"][4]] = rwtDialog[tDialog["nDialog_BeforCollect"][1]]
-- rwtDialog[tDialog["nDialog_BeforCollect"][5]] = rwtDialog[tDialog["nDialog_BeforCollect"][1]]

rwtNpcGroup[tCollect[7]] = rwtNpcGroup[tCollect[7]] or {}
rwtNpcGroup[tCollect[7]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[7]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[7]]["Awards"] = {}  
rwtNpcGroup[tCollect[7]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[7]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[7]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Caiji
rwtNpcGroup[tCollect[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[8]] = rwtNpcGroup[tCollect[8]] or {}
rwtNpcGroup[tCollect[8]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[8]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[8]]["Awards"] = {}  
rwtNpcGroup[tCollect[8]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[8]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[8]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[8]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Caiji
rwtNpcGroup[tCollect[8]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[8]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtNpcGroup[tCollect[9]] = rwtNpcGroup[tCollect[9]] or {}
rwtNpcGroup[tCollect[9]]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect[9]]["CollectTime"] = 1  
rwtNpcGroup[tCollect[9]]["Awards"] = {}  
rwtNpcGroup[tCollect[9]]["Awards"]["Events"] = {}   
rwtNpcGroup[tCollect[9]]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect[9]]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Caiji
rwtNpcGroup[tCollect[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

--击败蝎子后触发   奖励配置在怪的奖励那里nil
rwtMonsterGroup[nMonsterGroup_Luan] = rwtMonsterGroup[nMonsterGroup_Luan] or {}
rwtMonsterGroup[nMonsterGroup_Luan]["BattleWin"] = function()
    local nGenId = tGen_ID.xieziluan
    if rwHasGenEvent(nGenId) then
        rwDelGenEvent(nGenId)
    end
     local nIndex = math.random(1, 5)
    rwOpenNpcChatDialog(tDialog.nDialog_AfterBatLuan[nIndex])
end

--击败守门后触发  
--rwtMonsterGroup[nMonsterGroup] = rwtMonsterGroup[nMonsterGroup] or {}
--rwtMonsterGroup[nMonsterGroup]["BattleWin"] = function()
--   local nIndex = math.random(1, 5)
--   rwOpenNpcChatDialog(tDialog.nDialog_AfterBat[nIndex])
--end



--困难难度材料副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
--rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
--副本初始化 固定事件
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][1] = tDialog.nDialog_Enter_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][2] = tDialog.nDialog_Enter_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][3] = tDialog.nDialog_Enter_3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][4] = tDialog.nDialog_Enter_4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"][5] = tDialog.nDialog_Enter_5

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_xiezi
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_shamo
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["ChkUserTempData"][1]["Value"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Record"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["TempDataID"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGen_ID.Monster_xiezi
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["TempDataID"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["RandomNum"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGen_ID.Monster_shamo
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGen_ID.nGen_XiYou_Box_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["TempDataID"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["SetValue"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][4]["RandomCreare"][3]["MaxRate"] = 10000


--rwtCopyMapMission[nCopyMapId]["MapInitFunc"] = function(nCopyMapMissId)
--    rwOpenNpcChatDialog(nDialog_Enter,CONST_NPCCHAT_TYPE.COPYMAP)  
--end

--副本通关掩码更新
rwtCopyMapMission[nCopyMapId]["PassSetTemp"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["TempDataId"] = nUserRecordId
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTemp"]["SetValue"] = 0
--副本目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][20013]
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroup
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][20014]
rwtTarget[nTarget2]["ReqTreasureBox"] = nNpcGroup_Box
rwtTarget[nTarget2]["ReqCount"] = 1

function CopyMap_Daily_Material_Hard_InitCollect(nVal,nUserId)
	--特殊卵
	if (nVal==1) then
		if not rwHasGenEvent(tGen_ID.TeShuChongLuan) then
			rwAddGenEvent(tGen_ID.TeShuChongLuan,tPos.Luan[tCopyMap_Material_HardUserData[nUserId]["TeShu_Index"]] or "")
		end
	end
	--蝎子卵
	if (nVal==3) then 
		if not rwHasGenEvent(tGen_ID.xieziluan) then
			rwAddGenEvent(tGen_ID.xieziluan,tPos.Luan[tCopyMap_Material_HardUserData[nUserId]["TeShu_Index"]] or "")
		end
	end
end
function CopyMap_Daily_Material_Hard_InitNpc(tTeShu_Npc,tNpc)
    local nIndex = math.random(1,#tTeShu_Npc)
	local nDeLuYiIndex = tTeShu_Npc[nIndex]
	if not rwHasGenEvent(tGen_ID.DeLuYi) then
		rwAddGenEvent(tGen_ID.DeLuYi,tPos.Npc.Pos[nDeLuYiIndex],0,tPos.Npc.DeLuYiRot[nDeLuYiIndex])
	end
end

function CopyMap_Daily_Material_Hard_Init(nVal,nUserId)
	--随机虫卵
	tCopyMap_Material_HardUserData[nUserId] = {}
	tCopyMap_Material_HardUserData[nUserId]["TeShu_Index"] = math.random(1,5)
	--随机npc
	local tNpc = {1,2,3,4,5}
	local nNum = math.random(1,5)
	local tTeShu_Npc = {}
	tTeShu_Npc[1] = tNpc[nNum]
	table.remove(tNpc,nNum)
	nNum = math.random(1,4)
	tTeShu_Npc[2] = tNpc[nNum]
	table.remove(tNpc,nNum)  --去掉两个元素，剩下的表格中的3个是要生成普通佣兵的位置

	--生成佣兵
	for i,v in pairs(tNpc) do
		if not rwHasGenEvent(tGen_ID.YongBing[i]) then
			rwAddGenEvent(tGen_ID["YongBing"][i],tPos.Npc.Pos[v],0,tPos.Npc.Rot[v])
		end
	end
	--生成虫卵
	for i,v in ipairs(tGen_ID["PuTongChongLuan"]) do 
		if (i ~= tCopyMap_Material_HardUserData[nUserId]["TeShu_Index"]) then 
			--生成普通虫卵
			rwAddGenEvent(tGen_ID.PuTongChongLuan[i],tPos.Luan[v])
		end
	end
	--根据掩码分批处理
	--1.掩码为0
	if (nVal==0) then 
		nVal = math.random(1,3)
	end
	--2.掩码为1 3
	if ((nVal==1) or (nVal==3)) then 
		CopyMap_Daily_Material_Hard_InitCollect(nVal,nUserId)
	end
	--3.掩码为2
	if (nVal==2) then 
		CopyMap_Daily_Material_Hard_InitNpc(tTeShu_Npc,tNpc)
	end
end

--进入副本   
function CopyMap_Daily_Material_Hard_InitMap()
	--初始化固定生成的虫卵和npc
	local nUserId = rwUserGetId()	--获取玩家id

	if not rwTempDataIsExist(nUserRecordId, nUserId) then		--判断是否存在掩码
		rwTempDataAdd(nUserRecordId, nUserId)
	end
	local nGetVal = rwTempDataGetValue(nUserRecordId,CONST_TEMP_DATA.Data1, nUserId) 
	local nVal = nGetVal
	if (nVal == 0) then
        local nSuiJi = math.random(1,10000)
        if ((nSuiJi >= 0) and(nSuiJi < 4000)) then
            nVal = 1
        elseif ((nSuiJi >= 4000) and(nSuiJi < 70000)) then 
            nVal = 2
        else
            nVal = 3
        end
--		nVal = math.random(1,3)
		rwTempDataSet(nUserRecordId,nVal,CONST_TEMP_DATA.Data1, nUserId)		--设置掩码
	end
	CopyMap_Daily_Material_Hard_Init(nVal,nUserId)
end
	

----进入副本触发
rwtSceneLoad_Func[nCopyMapId] = rwtSceneLoad_Func[nCopyMapId] or {}
table.insert(rwtSceneLoad_Func[nCopyMapId],CopyMap_Daily_Material_Hard_InitMap)
