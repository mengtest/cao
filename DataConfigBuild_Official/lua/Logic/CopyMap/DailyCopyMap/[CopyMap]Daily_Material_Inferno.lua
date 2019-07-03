--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--每日材料副本_深渊



--endregion

----***************************数据定义***************************----
--副本ID
local nCopyMapId = 3092

--副本目标
--local nTarget1 = 60168
local nTarget2 = 60169

--副本掩码
local nTempId = 1172
local nTempId_2 = 1184

--宝箱
local nBox_Pass = 40196		--通关宝箱
local nBox_Pass_Gen = 3092004

local nBox_Normal_1 = 40197	--普通宝箱
local nBox_Normal_1_Gen = 3092005
local nBox_Normal_2_Gen = 3092006
local nBox_Normal_3_Gen = 3092007
local nBox_Suiji4 = 40223 --随机事件4宝箱
local nBox_Suiji5 = 40224 --随机事件5宝箱


--采集物
local nCollect_1 = 60345	--立方核心
local nCollect_1_Gen = 3092008

--奖励id
local tAwardGenId = {3092001,3092002,3092003,3092005,3092006,3092007,3092008,3092009,3092010,3092011,3092012,30920013,30920014,30920017,30920018,30920019}

--怪物
local nMonster_1 = 1000741	--黄金首领 --随机事件4怪
local nMonsterGroup_1 = 200429	
local nMonsterGroup_1_Gen = 3092001

local nMonster_2 = 1000742	--尼格斯
local nMonsterGroup_2 = 200430
local nMonsterGroup_2_Gen = 3092002

local nMonster_3 = 1000743	--机械石像 
local nMonsterGroup_3 = 200431
local nMonsterGroup_3_Gen = 3092003

local nMonster_4 = 1000742	--尼格斯
local nMonsterGroup_4 = 200452
local nMonsterGroup_4_Gen = 3092016

local nMonster_5 = 1000779	--四蹄神 --随机事件5怪
local nMonsterGroup_5 = 200476	
local nMonsterGroup_5_Gen = 3092017



--NPC
local nNpcGroup_NPC1 = 20598	--采集机器人
local nNpcGroup_NPC1_Gen1 = 3092009
local nNpcGroup_NPC1_Gen2 = 3092010
local nNpcGroup_NPC1_Gen3 = 3092011
local nNpcGroup_NPC1_Gen4 = 3092012
local nNpcId_CaiJi = 3699

local sNpcGroup_NPC1_Gen1_Pos = "11.73,0.528,56.64"
local sNpcGroup_NPC1_Gen2_Pos = "1.14,1.94,77.81"
local sNpcGroup_NPC1_Gen3_Pos = "-3.50,0.58,56.70"
local sNpcGroup_NPC1_Gen4_Pos = "-7.50,0.71,78.10"

local nNpcGroup_NPC1_Gen1_Rotation = -80
local nNpcGroup_NPC1_Gen2_Rotation = 300
local nNpcGroup_NPC1_Gen3_Rotation = 50
local nNpcGroup_NPC1_Gen4_Rotation = 175

local nNpcGroup_NPC2 = 20599	--尼格斯 材料深渊
local nNpcGroup_NPC2_Gen1 = 3092013
local nNpcId_NiGeSi = 3700

local nNpcGroup_NPC3 = 20600	--浮士德72
local nNpcGroup_NPC3_Gen1 = 3092014
local nNpcId_FuShiDe = 3698

rwtNpc[nNpcId_CaiJi] = rwtNpc[nNpcId_CaiJi] or {}
rwtNpc[nNpcId_NiGeSi] = rwtNpc[nNpcId_NiGeSi] or {}
rwtNpc[nNpcId_FuShiDe] = rwtNpc[nNpcId_FuShiDe] or {}

--对白组
local tDialog_Open = {6400,6401,6402,6403,6404}						--进副本对白
--local tDialog_BefMon = {6405,6406,6407,6408,6409}					--战前对白 必然事件
--local tDialog_AftMon = {6410,6411,6412,6413,6414}					--战后对白 必然事件
local tDialog_Fail_Box = {6415,6416,6417,6418,6419}					--通关宝箱失败对白
local tDialog_Pass_Box = {6420,6421,6422,6423,6424,6425,6426}		--通关对白
local tDialog_TalkWith_Gaiyin = {6427,6428,6429}					----尼格斯对话 有该隐
local tDialog_TalkWithOut_Gaiyin = {6430,6431,6432}					----尼格斯对话 无该隐
local tDialog_Collect = {6433,6434,6435,6436,6437}					--采集立方核心
local tDialog_TalkWith_MiLanData = {6438,6439,6440}					----浮士德72对话 有米兰达
local tDialog_TalkWithOut_MiLanData = {6441,6442,6443}				----浮士德72对话 无米兰达
local tDialog_CollectNPC = {6444,6445,6446,6447,6448}				--与采集机器人对话
--单个对白
local nDialog = 111 -------------------------------

--奖励id
local nAwardId_PassBox = 1000377			--通关宝箱	
local nAwardId_NormalBox = 1000378			--普通宝箱
local nAwardId_Collect = 1000379			--采集物-立方核心
local nAwardId_NPC_Robot = 1000380			--采集机器人	
local nAwardId_With_Gaiyin = 1000381		--尼格斯对话 有该隐
local nAwardId_WithOut_Gaiyin = 1000382		--尼格斯对话 无该隐
local nAwardId_With_MiLanData = 1000383		--浮士德72对话 有米兰达
local nAwardId_WithOut_MiLanData = 1000384	--浮士德72对话 无米兰达
local nAwardId_Suiji4 = 1000385			--随机事件4奖励
local nAwardId_Suiji5 = 1000386			--随机事件5奖励

------------------------------------------
---固定事件：

------------------
--普通宝箱
rwtNpcGroup[nBox_Normal_1] = rwtNpcGroup[nBox_Normal_1] or {} 
rwtNpcGroup[nBox_Normal_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Normal_1]["Awards"] = {}
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Normal_1
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Normal_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_NormalBox   
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
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_Fail_Box
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Pass_Box
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["DynDelete"] = {nBox_Pass_Gen}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassBox
rwtNpcGroup[nBox_Pass]["ChooseAwards"] = {}  --强制打开通关宝箱奖励
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"] = {}  --成功对白
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Pass_Box
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["DynDelete"] = {nBox_Pass_Gen} 
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Pass
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Pass]["ChooseAwards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_PassBox


rwtNpcGroup[nBox_Suiji4] = rwtNpcGroup[nBox_Suiji4] or {} 
rwtNpcGroup[nBox_Suiji4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Suiji4]["Awards"] = {}
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Suiji4
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Suiji4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Suiji4

rwtNpcGroup[nBox_Suiji5] = rwtNpcGroup[nBox_Suiji5] or {} 
rwtNpcGroup[nBox_Suiji5]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBox_Suiji5]["Awards"] = {}
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"] = {}
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBox_Suiji5
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nBox_Suiji5]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Suiji5


--失败对白选项
rwtDialog[tDialog_Fail_Box[1]] = rwtDialog[tDialog_Fail_Box[1]] or {}
rwtDialog[tDialog_Fail_Box[1]]["OptionFunc2"] = function()
    LinkTreasureBoxOpenSucc(nBox_Pass,nBox_Pass_Gen,1)
end

rwtDialog[tDialog_Fail_Box[2]] = rwtDialog[tDialog_Fail_Box[1]]
rwtDialog[tDialog_Fail_Box[3]] = rwtDialog[tDialog_Fail_Box[1]]
rwtDialog[tDialog_Fail_Box[4]] = rwtDialog[tDialog_Fail_Box[1]]
rwtDialog[tDialog_Fail_Box[5]] = rwtDialog[tDialog_Fail_Box[1]]


----固定怪战斗胜利
--function CopyMap_Daily_Material_Hell_Aft_FixMon()	
--	local nIndex = math.random(1,5)
--	rwOpenNpcChatDialog(tDialog_AftMon[nIndex])
--end

--rwtMonsterGroup_Func[nMonsterGroup_1] = rwtMonsterGroup_Func[nMonsterGroup_1] or {}
--table.insert(rwtMonsterGroup_Func[nMonsterGroup_1],CopyMap_Daily_Material_Hell_Aft_FixMon)

--采集机器人对话
rwtNpcGroup[nNpcGroup_NPC1] = rwtNpcGroup[nNpcGroup_NPC1] or {}
rwtNpcGroup[nNpcGroup_NPC1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_NPC1]["Awards"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_CollectNPC


for k,v in ipairs(tDialog_CollectNPC) do
rwtDialog[v] = rwtDialog[v] or {}
rwtDialog[v]["DialogEndInit"] = {}
rwtDialog[v]["DialogEndInit"]["Events"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_NPC_Robot
rwtDialog[v]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
end

--------------------------------------------------

--随机事件1
--NPC对白出怪物
--与尼格斯对话	有该隐出对白+战斗
--				
rwtNpcGroup[nNpcGroup_NPC2] = rwtNpcGroup[nNpcGroup_NPC2] or {}
rwtNpcGroup[nNpcGroup_NPC2]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_NPC2]["Awards"] = {}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {107}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_TalkWith_Gaiyin
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC2]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_TalkWithOut_Gaiyin

--有该隐触发战斗
rwtDialog[tDialog_TalkWith_Gaiyin[1]] = rwtDialog[tDialog_TalkWith_Gaiyin[1]] or {}
rwtDialog[tDialog_TalkWith_Gaiyin[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_TalkWith_Gaiyin[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_TalkWith_Gaiyin[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_TalkWith_Gaiyin[1]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog_TalkWith_Gaiyin[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_2_Gen

rwtDialog[tDialog_TalkWith_Gaiyin[2]] = rwtDialog[tDialog_TalkWith_Gaiyin[1]]
rwtDialog[tDialog_TalkWith_Gaiyin[3]] = rwtDialog[tDialog_TalkWith_Gaiyin[1]]


--无该隐触发战斗
rwtDialog[tDialog_TalkWithOut_Gaiyin[1]] = rwtDialog[tDialog_TalkWithOut_Gaiyin[1]] or {}
rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_4_Gen

rwtDialog[tDialog_TalkWithOut_Gaiyin[2]] = rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]
rwtDialog[tDialog_TalkWithOut_Gaiyin[3]] = rwtDialog[tDialog_TalkWithOut_Gaiyin[1]]


--尼格斯战斗胜利
function CopyMap_Daily_Material_Hell_AftNigesi()	
	if rwHasGenEvent(nNpcGroup_NPC2_Gen1) then
        rwDelGenEvent(nNpcGroup_NPC2_Gen1)
    end
end

rwtMonsterGroup_Func[nMonsterGroup_2] = rwtMonsterGroup_Func[nMonsterGroup_2] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_2],CopyMap_Daily_Material_Hell_AftNigesi)


rwtMonsterGroup_Func[nMonsterGroup_4] = rwtMonsterGroup_Func[nMonsterGroup_4] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_4],CopyMap_Daily_Material_Hell_AftNigesi)

--------------------------------------
--随机事件2

--采集触发战斗
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}    
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["CollectTime"] = 3
rwtNpcGroup[nCollect_1]["NotDel"] = 1
rwtNpcGroup[nCollect_1]["Awards"] = {}  
rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Collect


rwtDialog[tDialog_Collect[1]] = rwtDialog[tDialog_Collect[1]] or {}
rwtDialog[tDialog_Collect[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_Collect[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_Collect[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_Collect[1]]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog_Collect[1]]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_3_Gen

rwtDialog[tDialog_Collect[2]] = rwtDialog[tDialog_Collect[1]]
rwtDialog[tDialog_Collect[3]] = rwtDialog[tDialog_Collect[1]]
rwtDialog[tDialog_Collect[4]] = rwtDialog[tDialog_Collect[1]]
rwtDialog[tDialog_Collect[5]] = rwtDialog[tDialog_Collect[1]]


--机械石像战斗胜利
function CopyMap_Daily_Material_Hell_AftJiXieShiXiang()	
	if rwHasGenEvent(nCollect_1_Gen) then
        rwDelGenEvent(nCollect_1_Gen)
    end
end

rwtMonsterGroup_Func[nMonsterGroup_3] = rwtMonsterGroup_Func[nMonsterGroup_3] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_3],CopyMap_Daily_Material_Hell_AftJiXieShiXiang)



-------------------------------
--随机事件3

--浮士德对话
rwtNpcGroup[nNpcGroup_NPC3] = rwtNpcGroup[nNpcGroupId_4] or {}
rwtNpcGroup[nNpcGroup_NPC3]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[nNpcGroup_NPC3]["Awards"] = {}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"] = {}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1] = {}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1]["ChkUserAllFightHero"] = {112}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_TalkWith_MiLanData
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1]["FailEvents"] ={}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtNpcGroup[nNpcGroup_NPC3]["Awards"]["Events"][1]["FailEvents"]["OpenDialog"]["tDialog"] = tDialog_TalkWithOut_MiLanData


--对白奖励 
--有米兰达

rwtDialog[tDialog_TalkWith_MiLanData[1]] = rwtDialog[tDialog_TalkWith_MiLanData[1]] or {}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_With_MiLanData
rwtDialog[tDialog_TalkWith_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog_TalkWith_MiLanData[2]] = rwtDialog[tDialog_TalkWith_MiLanData[1]]
rwtDialog[tDialog_TalkWith_MiLanData[3]] = rwtDialog[tDialog_TalkWith_MiLanData[1]]


--无米兰达

rwtDialog[tDialog_TalkWithOut_MiLanData[1]] = rwtDialog[tDialog_TalkWithOut_MiLanData[1]] or {}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"] = {}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["ChkGenEventIsExist"] = {"IdForDialog"}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["DynDelete"] = {}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["DynDelete"]["GenIdBynId"] = true
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_WithOut_MiLanData
rwtDialog[tDialog_TalkWithOut_MiLanData[1]]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS

rwtDialog[tDialog_TalkWithOut_MiLanData[2]] = rwtDialog[tDialog_TalkWithOut_MiLanData[1]] 
rwtDialog[tDialog_TalkWithOut_MiLanData[3]] = rwtDialog[tDialog_TalkWithOut_MiLanData[1]] 



--------------------------------------- 副本初始化 ---------------------------------------
--任务目标
--rwtTarget[nTarget1] = {}
--rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21576] --------------------------
--rwtTarget[nTarget1]["KillMonsterGroup"] = nMonsterGroup_1
--rwtTarget[nTarget1]["ReqCount"] = 1

rwtTarget[nTarget2] = {}
rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][21577] --------------------------
rwtTarget[nTarget2]["ReqTreasureBox"] = nBox_Pass
rwtTarget[nTarget2]["ReqCount"] = 1


rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][10044]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1

rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget2}
--rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}

--副本掩码
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = nTempId
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0

rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog_Open  

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"] = {}

--随机事件1 尼格斯
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 4000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["FixGen"] = {nNpcGroup_NPC2_Gen1}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["RandomNum"] = 3


rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["GenId"] = nNpcGroup_NPC1_Gen1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["Pos"] = sNpcGroup_NPC1_Gen1_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][1]["RotationY"] = nNpcGroup_NPC1_Gen1_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["GenId"] = nNpcGroup_NPC1_Gen2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["Pos"] = sNpcGroup_NPC1_Gen2_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][2]["RotationY"] = nNpcGroup_NPC1_Gen2_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["GenId"] = nNpcGroup_NPC1_Gen3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["Pos"] = sNpcGroup_NPC1_Gen3_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][3]["RotationY"] = nNpcGroup_NPC1_Gen3_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["GenId"] = nNpcGroup_NPC1_Gen4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["Pos"] = sNpcGroup_NPC1_Gen4_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"][4]["RotationY"] = nNpcGroup_NPC1_Gen4_Rotation


--随机事件2 采集物出怪物
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MinRate"] = 4001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 7000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["FixGen"] = {nCollect_1_Gen}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["RandomNum"] = 3																							  
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["GenId"] = nNpcGroup_NPC1_Gen1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["Pos"] = sNpcGroup_NPC1_Gen1_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][1]["RotationY"] = nNpcGroup_NPC1_Gen1_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["GenId"] = nNpcGroup_NPC1_Gen2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["Pos"] = sNpcGroup_NPC1_Gen2_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][2]["RotationY"] = nNpcGroup_NPC1_Gen2_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["GenId"] = nNpcGroup_NPC1_Gen3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["Pos"] = sNpcGroup_NPC1_Gen3_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][3]["RotationY"] = nNpcGroup_NPC1_Gen3_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["GenId"] = nNpcGroup_NPC1_Gen4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["Pos"] = sNpcGroup_NPC1_Gen4_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"][4]["RotationY"] = nNpcGroup_NPC1_Gen4_Rotation



--随机事件3 随机浮士德72号
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MinRate"] = 7001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RandomNum"] = 3
																							  
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["GenId"] = nNpcGroup_NPC1_Gen1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["Pos"] = sNpcGroup_NPC1_Gen1_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][1]["RotationY"] = nNpcGroup_NPC1_Gen1_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["GenId"] = nNpcGroup_NPC1_Gen2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["Pos"] = sNpcGroup_NPC1_Gen2_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][2]["RotationY"] = nNpcGroup_NPC1_Gen2_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["GenId"] = nNpcGroup_NPC1_Gen3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["Pos"] = sNpcGroup_NPC1_Gen3_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][3]["RotationY"] = nNpcGroup_NPC1_Gen3_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["GenId"] = nNpcGroup_NPC1_Gen4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["Pos"] = sNpcGroup_NPC1_Gen4_Pos
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"][4]["RotationY"] = nNpcGroup_NPC1_Gen4_Rotation
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = nNpcGroup_NPC3_Gen1	

--------------随机事件4，5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkEventCond"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Record"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["ChkUserTempData"][1]["Value"] = {1,2,3}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1] = {} ----------------------随机事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["MaxRate"] = 3500
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["TempDataID"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][1]["FixGen"] = {3092001,3092018}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MinRate"] = 3501
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["MaxRate"] = 5000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["TempDataID"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["SetValue"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][2]["FixGen"] = {3092017,3092019}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3] = {} --------------------------------啥都不出
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MinRate"] = 5001
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["MaxRate"] = 10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["TempDataID"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["FailEvents"]["RandomCreare"][3]["SetValue"] = 3



-- 以掩码为依据
--事件1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["TempDataID"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["FixGen"] = {nNpcGroup_NPC2_Gen1}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][1]["tGenId"] = rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][1]["tGenId"]														


--事件2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["TempDataID"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["FixGen"] = {nCollect_1_Gen}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["RandomNum"] = 3																						  
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][2]["tGenId"] = rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][2]["tGenId"]


--事件3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["TempDataID"] = nTempId
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["Value"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tGenId"] = rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["FailEvents"]["RandomCreare"][3]["tGenId"]

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["RemainRandomNum"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreateByTemp"][3]["tOtherGenId"][1]["GenId"] = nNpcGroup_NPC3_Gen1	

--------------随机事件4，5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1] = {} ----------------------随机事件4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["TempDataID"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][1]["FixGen"] = {3092001,3092018}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2] = {} --------------------------------随机事件5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["TempDataID"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["Value"] = 2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][2]["FixGen"] = {3092017,3092019}	
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3] = {} --------------------------------啥都不出5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["TempDataID"] = nTempId_2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreateByTemp"][3]["Value"] = 3
																		
