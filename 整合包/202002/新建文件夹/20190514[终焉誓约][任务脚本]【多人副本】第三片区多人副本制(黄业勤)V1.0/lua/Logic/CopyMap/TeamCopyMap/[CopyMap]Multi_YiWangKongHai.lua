--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--树心城多人副本
--By:mzy
--CreatDate:2018.12.03

--endregion




--**************************************数据定义***************************
--genid分配

--副本id
local nCopyMapId = 3118

--动态创建table
local tDynaGenId = {}

--副本目标 60284  60287 
local nTarget_1 = 60284    --击败四蹄神
local nTarget_2 = 60285    --击败机械石像
local nTarget_3 = 60286    --击败尼格斯
local nTarget_4 = 60287    --击败愤怒
local nTarget_5 = 60315    --击败亚兹莫
local nTarget_6 = 60069  --使用默认通关配置
-------------------------------动画---------------------
--local nStoryPlay_Begin = 17301
local nStoryPlay_End = 17301  --17302
local nStoryPlay_End_2 = 17302
-------------------------------NPCGroup-----------------------
local tBox = {}
--奖励
local nBox_AwardId_1 = 1000496
local nBox_AwardId_2 = 1000497
--local nBox_AwardId_3 = 1000498
--local nBox_AwardId_4 = 1000499

-- 对白id 6713  6727 
local tDialog = {}
tDialog.nDialog_1  = 6713  --进副本对白
tDialog.nDialog_2  = 6714  --尼格斯对白
tDialog.nDialog_3  = 6715  --四蹄神对白
tDialog.nDialog_4  = 6716  --机械石像对白
--四蹄神
tDialog.nDialog_5  = 6717  --哼，靠歪门邪道得到的力量，是不会长久的。<br>想要变强，还是靠自己吧！  
tDialog.nDialog_6  = 6718  --低贱的蜉蝣生物，敢破坏我的实验？我那只会哭啼啼的<br>外甥女以为这样就能阻止我吗？天真！
tDialog.nDialog_7  = 6719  --你们快看，立方能量全被亚兹莫吸收了！<br>他不会要暴走吧？！我有不好的预感……
tDialog.nDialog_8  = 6720  --力量，变强，纳雅……<br>啊！我要变强，变强，垃圾们都消失吧！
tDialog.nDialog_9  = 6721  --,嗯——啊！来自深渊的力量，由我带着它成为光明的主人！<br>低贱的人类，我开恩让你成为我手下的第一个亡灵
tDialog.nDialog_10 = 6722  --哼，靠歪门邪道得到的力量，是不会长久的。<br>想要变强，还是靠自己吧！
tDialog.nDialog_11 = 6723  --*&！，立方能量被亚兹莫吸收了，这下麻烦了！
--尼格斯
tDialog.nDialog_12 = 6724  --到此结束吧，因为你们这些废物，我一整天的计划都浪费<br>了。下次再见，我一定在计划中把你们安排得明明白白。
tDialog.nDialog_13 = 6725  --低贱的蜉蝣生物，敢破坏我的实验？我那只会哭啼啼的<br>外甥女以为这样就能阻止我吗？天真
tDialog.nDialog_14 = 6726  --大小姐，大姐头！立方能量被亚兹莫吸收了！<br>他的神色似乎有点不太正常……
tDialog.nDialog_15 = 6727  --力量，变强，纳雅……<br>啊！我要变强，变强，垃圾们都消失吧
tDialog.nDialog_16 = 6892  --嗯——啊！来自深渊的力量，由我带着它成为光明的主人！<br>低贱的人类，我开恩让你成为我手下的第一个亡灵。
tDialog.nDialog_17 = 6893  --到此结束吧，因为你们这些废物，我一整天的计划都浪费<br>了。下次再见，我一定在计划中把你们安排得明明白白
tDialog.nDialog_18 = 6894  --怎么？我们没有找到储存立方能量的仪器。<br>现在它被亚兹莫吸收了，情况有点不妙。
--机械石像
tDialog.nDialog_19 = 6895  --这里别的没有，倒是有一个长着翅膀的扑街实验体。<br>让你不学好，专学亚兹莫的自负！
tDialog.nDialog_20 = 6896  --低贱的蜉蝣生物，敢破坏我的实验？我那只会哭啼啼的<br>外甥女以为这样就能阻止我吗？天真！
tDialog.nDialog_21 = 6897  --大家小心些！亚兹莫一下子吸收了那么多立方能量，<br>很可能会能量失控……
tDialog.nDialog_22 = 6898  --力量，变强，纳雅……<br>啊！我要变强，变强，垃圾们都消失吧！
tDialog.nDialog_23 = 6899  --嗯——啊！来自深渊的力量，由我带着它成为光明的主人！<br>低贱的人类，我开恩让你成为我手下的第一个亡灵。
tDialog.nDialog_24 = 6900  --这里别的没有，倒是有一个长着翅膀的扑街实验体。<br>让你不学好，专学亚兹莫的自负！
tDialog.nDialog_25 = 6901  --大家小心些！亚兹莫一下子吸收了那么多立方能量，<br>很可能会能量失控…
--亚兹莫boss
tDialog.nDialog_26 = 6902  --我的小外甥女的智力商数是被你们拉低了吗？人类，<br>这种愚蠢又脆弱的物种，除了被消灭，还能做什么？
tDialog.nDialog_27 = 6903  --从他的身上，我感受到了魔族的气息！难道，亚兹<br>莫想利用魔族的力量改造自己，从而变得更强？
--愤怒boss
tDialog.nDialog_28 = 6904  --强，变得强。为了纳雅未来，强，我要变得更强。<br>消灭弱者，消灭弱者。弱者都该死。
tDialog.nDialog_29 = 6905  --从他的身上，我感受到了魔族的气息！难道，亚兹<br>莫还想利用魔族的力量改造自己，从而变得更强？


--编号2154事件·一
-------------------------------物品---------------------------
--玩法道具7000346  7000349   
--玩法物品  7000346  7000349 绝缘防护服  核磁治疗仪  高斯重装  仪器箱钥匙
--仪器箱钥匙
local nItemId_Key = 7000346  --钥匙
local nItemId_RongQi = 7000347  --立方蓄能仪

--rwtItem[7000347] = rwtItem[7000347] or {}
--rwtItem[7000347]["UseNotDel"] = true
--rwtItem[7000347]["Awards"] = {}
--rwtItem[7000347]["Awards"]["Events"] = {}
--rwtItem[7000347]["Awards"]["Events"][1] = {}
--rwtItem[7000347]["Awards"]["Events"][1]["AddState"] = {}
--rwtItem[7000347]["Awards"]["Events"][1]["AddState"]["StateID"] = 201203
--rwtItem[7000347]["Awards"]["Events"][1]["AddState"]["Times"] = 1
--rwtItem[7000347]["Awards"]["Events"][1]["AddState"]["TargetType"] = 1

--rwtItem[7000348] = rwtItem[7000348] or {}
--rwtItem[7000348]["UseNotDel"] = true
--rwtItem[7000348]["Awards"] = {}
--rwtItem[7000348]["Awards"]["Events"] = {}
--rwtItem[7000348]["Awards"]["Events"][1] = {}
--rwtItem[7000348]["Awards"]["Events"][1]["AddState"] = {}
--rwtItem[7000348]["Awards"]["Events"][1]["AddState"]["StateID"] = 201203
--rwtItem[7000348]["Awards"]["Events"][1]["AddState"]["Times"] = 1
--rwtItem[7000348]["Awards"]["Events"][1]["AddState"]["TargetType"] = 1

--rwtItem[7000349] = rwtItem[7000349] or {}
--rwtItem[7000349]["UseNotDel"] = true
--rwtItem[7000349]["Awards"] = {}
--rwtItem[7000349]["Awards"]["Events"] = {}
--rwtItem[7000349]["Awards"]["Events"][1] = {}
--rwtItem[7000349]["Awards"]["Events"][1]["AddState"] = {}
--rwtItem[7000349]["Awards"]["Events"][1]["AddState"]["StateID"] = 201203
--rwtItem[7000349]["Awards"]["Events"][1]["AddState"]["Times"] = 1
--rwtItem[7000349]["Awards"]["Events"][1]["AddState"]["TargetType"] = 1

-------------------------------宝箱---------------------------
--宝箱--40253  40256 
tBox.nTreasureBox_1 = 40253
rwtNpcGroup[tBox.nTreasureBox_1] = rwtNpcGroup[tBox.nTreasureBox_1] or {} 
rwtNpcGroup[tBox.nTreasureBox_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"] = {}
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"] = {}
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"][1]["id"] = nItemId_Key
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.nTreasureBox_1
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nBox_AwardId_1

tBox.nTreasureBox_2 = 40254
rwtNpcGroup[tBox.nTreasureBox_2] = rwtNpcGroup[tBox.nTreasureBox_2] or {} 
rwtNpcGroup[tBox.nTreasureBox_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"] = {}
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["CostItems"] = rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"]
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.nTreasureBox_2
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nBox_AwardId_2  

tBox.nTreasureBox_3 = 40255
rwtNpcGroup[tBox.nTreasureBox_3] = rwtNpcGroup[tBox.nTreasureBox_3] or {} 
rwtNpcGroup[tBox.nTreasureBox_3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.nTreasureBox_3]["Awards"] = rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["CostItems"] = rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"]
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"] = {}
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.nTreasureBox_3
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[tBox.nTreasureBox_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nBox_AwardId_3 
 
tBox.nTreasureBox_4 = 40256
rwtNpcGroup[tBox.nTreasureBox_4] = rwtNpcGroup[tBox.nTreasureBox_4] or {} 
rwtNpcGroup[tBox.nTreasureBox_4]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.nTreasureBox_4]["Awards"] = rwtNpcGroup[tBox.nTreasureBox_2]["Awards"]
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["CostItems"] = rwtNpcGroup[tBox.nTreasureBox_1]["Awards"]["CostItems"]
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"] = {}
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.nTreasureBox_4
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtNpcGroup[tBox.nTreasureBox_4]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nBox_AwardId_4    



-------------------------------怪物---------------------------
--怪物组  200579  200588 

local tMonsterGroup_Normal = {}
tMonsterGroup_Normal[1]  = 200579
tMonsterGroup_Normal[2]  = 200580
tMonsterGroup_Normal[3]  = 200581
tMonsterGroup_Normal[4]  = 200582
tMonsterGroup_Normal[5]  = 200583
tMonsterGroup_Normal[6]  = 200584

local tMonsterGroup_SmallBoss = {}
tMonsterGroup_SmallBoss[1] = 200585 --四蹄神
tMonsterGroup_SmallBoss[2] = 200586   --尼格斯
tMonsterGroup_SmallBoss[3] = 200587 --机械

local nMonsterGroup_Boss = 200588  --愤怒
local nMonsterGroup_Boss_2 = 200736 --亚兹莫
--怪物    1000891  1000900  1001202
--小怪 1000891~1000896

local tMonsterBattle_SmallBoss = {}
tMonsterBattle_SmallBoss[1] = 1000897  --四蹄神
tMonsterBattle_SmallBoss[2] = 1000898
tMonsterBattle_SmallBoss[3] = 1000899

local nMonsterBattle_BossId = 1000900  --愤怒
local nMonsterBattle_BossId_2 = 1001202 --亚兹莫


local nGen_MonsterGroup_Normal_1  = 3118001
local nGen_MonsterGroup_Normal_2  = 3118002
local nGen_MonsterGroup_Normal_3  = 3118003
local nGen_MonsterGroup_Normal_4  = 3118004
local nGen_MonsterGroup_Normal_5  = 3118005
local nGen_MonsterGroup_Normal_6  = 3118006

local tGen_MonsterGroup_SmallBoss = {}
tGen_MonsterGroup_SmallBoss[1] = 3118007
tGen_MonsterGroup_SmallBoss[2] = 3118008
tGen_MonsterGroup_SmallBoss[3] = 3118009

local nGen_MonsterGroup_Boss = 3118010
local nGen_MonsterGroup_Boss_2 = 3118023


--gen
----boss的尸体 与设计沟通不用
--local nGen_NpcGroup_Shiti_YaZiMo = 3118020
--local nGen_NpcGroup_Shiti_NiGeSi = 3118021
--local nGen_NpcGroup_Shiti_JiXie  = 3118022



--Bossnpc组
local tGen_NpcGroup_SmallBoss = {}
 tGen_NpcGroup_SmallBoss[1]  = 3118012  --四蹄神
 tGen_NpcGroup_SmallBoss[2]  = 3118013  --尼格斯
 tGen_NpcGroup_SmallBoss[3]  = 3118014  --机械石像
local nGen_NpcGroup_FenNu = 3118015
local nGen_NpcGroup_YaZiMo_Jia = 3118028
local nGen_NpcGroup_YaZiMo_Zhen = 3118027

-------------------------------篝火+buff---------------------------

local nGenId_BonFire = 3118011

local nStatus_Boss = 501101   --杀小boss后给大boss的虚弱Buff

----六芒星魔法阵
--sPos_Effect_1 = "-38.58,17.23,-42.69"
--sPos_Effect_2 = "-55.26,17.2298,5.949"
--sPos_Effect_3= "-6.77,17.22993,55.43"
--sPos_Effect_4= "45.88,17.20319,41.24"
--sPos_Effect_5= "57.85632,17.22984,-21.35312"
--sPos_Effect_6= "18.17492,17.22992,-54.88397"

-------------------------------法阵---------------------------
--失效法阵
local tGenId_ShiXiaoFaZhen = {}
tGenId_ShiXiaoFaZhen[1] = 3118029
tGenId_ShiXiaoFaZhen[2] = 3118030
tGenId_ShiXiaoFaZhen[3] = 3118031
tGenId_ShiXiaoFaZhen[4] = 3118032
tGenId_ShiXiaoFaZhen[5] = 3118033
tGenId_ShiXiaoFaZhen[6] = 3118034

--6法阵-采集物60369  60374 
--法阵1
--local tCollect = {}
--tCollect.nCollect_FaZhen_1 = 60369
--tCollect.nCollect_GenId_FaZhen_1 = 3118023
--rwtNpcGroup[tCollect.nCollect_FaZhen_1] = rwtNpcGroup[tCollect.nCollect_FaZhen_1] or {}    
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Type"] = CONST_NPCGROUP_TYPE.Collect 


--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Func"] = function ()

--    local nUserId = rwUserGetId()
--        --没采集过则播第一次采集对白
--        rwSendSystemMessage(nCopyMapId..nUserId,1,1)
--    if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["First_Collcet"] then 

--        rwOpenNpcChatDialog(6716)
--        --置掩码，第一次采集没了
--        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["First_Collcet"]  = false
--    else
--        --采集过则播简略对白
--        rwOpenNpcChatDialog(6725)
--    end

----    local nDynMapId = rwUserGetDynMapId()
----    rwSendSystemMessage(nDynMapId,1,1)
----    rwSendSystemMessage(rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["First_Collcet"],1,1)
----        --没采集过则播第一次采集对白
----    if rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["First_Collcet"] then 

----        rwOpenNpcChatDialog(6716)
----        --置掩码，第一次采集没了
----        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["First_Collcet"]  = false
----    else
----        --采集过则播简略对白
----        rwOpenNpcChatDialog(6725)
----    end

--end

--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"] = {}
----rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][1] = {}
----rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][1]["OpenDialog"] = {}		 
----rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 6716
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][1]["DynCreate"] = {}		 
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][1]["DynCreate"][1] = tGenId_ShiXiaoFaZhen[1]
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["ChkUserTempData"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["ChkUserTempData"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["ChkUserTempData"][1]["Record"] = 1209
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["ChkUserTempData"][1]["Value"] = 1
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["OpenDialog"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["OpenDialog"]["DialogId"] = 6725   --简短对白
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["SetUserTempData"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["SetUserTempData"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = 1209
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["SetUserTempData"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["SetUserTempData"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = 1209
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 1
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["OpenDialog"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]["FailEvents"]["OpenDialog"]["DialogId"] = 6716   --第一次长对白。


--tCollect.nCollect_FaZhen_2 = 60370
--tCollect.nCollect_GenId_FaZhen_2 = 3118024
--rwtNpcGroup[tCollect.nCollect_FaZhen_2] = rwtNpcGroup[tCollect.nCollect_FaZhen_2] or {}    
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Awards"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Awards"]["Events"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Func"] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Func"]
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Awards"]["Events"][1]["DynCreate"] = {}		 
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Awards"]["Events"][1]["DynCreate"][1] = tGenId_ShiXiaoFaZhen[2]
--rwtNpcGroup[tCollect.nCollect_FaZhen_2]["Awards"]["Events"][2] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]


--tCollect.nCollect_FaZhen_3 = 60371
--tCollect.nCollect_GenId_FaZhen_3 = 3118025
--rwtNpcGroup[tCollect.nCollect_FaZhen_3] = rwtNpcGroup[tCollect.nCollect_FaZhen_3] or {}    
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Awards"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Awards"]["Events"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Func"] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Func"]
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Awards"]["Events"][1]["DynCreate"] = {}		 
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Awards"]["Events"][1]["DynCreate"][1] = tGenId_ShiXiaoFaZhen[3]
--rwtNpcGroup[tCollect.nCollect_FaZhen_3]["Awards"]["Events"][2] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]

--tCollect.nCollect_FaZhen_4 = 60372
--tCollect.nCollect_GenId_FaZhen_4 = 3118026
--rwtNpcGroup[tCollect.nCollect_FaZhen_4] = rwtNpcGroup[tCollect.nCollect_FaZhen_4] or {}    
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Awards"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Awards"]["Events"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Func"] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Func"]
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Awards"]["Events"][1]["DynCreate"] = {}		 
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Awards"]["Events"][1]["DynCreate"][1] = tGenId_ShiXiaoFaZhen[4]
--rwtNpcGroup[tCollect.nCollect_FaZhen_4]["Awards"]["Events"][2] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]

--tCollect.nCollect_FaZhen_5 = 60373
--tCollect.nCollect_GenId_FaZhen_5 = 3118027
--rwtNpcGroup[tCollect.nCollect_FaZhen_5] = rwtNpcGroup[tCollect.nCollect_FaZhen_5] or {}    
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Awards"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Awards"]["Events"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Func"] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Func"]
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Awards"]["Events"][1]["DynCreate"] = {}		 
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Awards"]["Events"][1]["DynCreate"][1] = tGenId_ShiXiaoFaZhen[5]
--rwtNpcGroup[tCollect.nCollect_FaZhen_5]["Awards"]["Events"][2] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]

--tCollect.nCollect_FaZhen_6 = 60374
--tCollect.nCollect_GenId_FaZhen_6 = 3118028
--rwtNpcGroup[tCollect.nCollect_FaZhen_6] = rwtNpcGroup[tCollect.nCollect_FaZhen_6] or {}    
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Type"] = CONST_NPCGROUP_TYPE.Collect 
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Awards"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Awards"]["Events"] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Func"] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Func"]
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Awards"]["Events"][1] = {}
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Awards"]["Events"][1]["DynCreate"] = {}		 
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Awards"]["Events"][1]["DynCreate"][1] = tGenId_ShiXiaoFaZhen[6]
--rwtNpcGroup[tCollect.nCollect_FaZhen_6]["Awards"]["Events"][2] = rwtNpcGroup[tCollect.nCollect_FaZhen_1]["Awards"]["Events"][2]

-------------------------------Npc + 对白逻辑---------------------------
-- NPCID 3758  3761 
local nNpc_SiTiShen = 3839
rwtNpc[nNpc_SiTiShen] = rwtNpc[nNpc_SiTiShen] or {}
rwtNpc[nNpc_SiTiShen]["DialogId"] = tDialog.nDialog_3
rwtDialog[tDialog.nDialog_3] = rwtDialog[tDialog.nDialog_3] or {}
rwtDialog[tDialog.nDialog_3]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog_3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog_3]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.nDialog_3]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[1]

local nNpc_NiGeSi = 3758
rwtNpc[nNpc_NiGeSi] = rwtNpc[nNpc_NiGeSi] or {}
rwtNpc[nNpc_NiGeSi]["DialogId"] = tDialog.nDialog_2 
rwtDialog[tDialog.nDialog_2] = rwtDialog[tDialog.nDialog_2] or {}
rwtDialog[tDialog.nDialog_2]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog_2]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.nDialog_2]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[2]

local nNpc_JiXie = 3760
rwtNpc[nNpc_JiXie] = rwtNpc[nNpc_JiXie] or {}
rwtNpc[nNpc_JiXie]["DialogId"] = tDialog.nDialog_4
rwtDialog[tDialog.nDialog_4] = rwtDialog[tDialog.nDialog_4] or {}
rwtDialog[tDialog.nDialog_4]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog_4]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog_4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog_4]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.nDialog_4]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGen_MonsterGroup_SmallBoss[3]

local nNpc_FenNu = 3761
rwtNpc[nNpc_FenNu] = rwtNpc[nNpc_FenNu] or {}
rwtNpc[nNpc_FenNu]["DialogId"] = tDialog.nDialog_28
rwtDialog[tDialog.nDialog_28] = rwtDialog[tDialog.nDialog_28] or {}
rwtDialog[tDialog.nDialog_28]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog_28]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog_28]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog_28]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.nDialog_28]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGen_MonsterGroup_Boss

local nNpc_YaZiMo = 3759
rwtNpc[nNpc_YaZiMo] = rwtNpc[nNpc_YaZiMo] or {}
rwtNpc[nNpc_YaZiMo]["DialogId"] = tDialog.nDialog_26
rwtDialog[tDialog.nDialog_26] = rwtDialog[tDialog.nDialog_26] or {}
rwtDialog[tDialog.nDialog_26]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog_26]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog_26]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog_26]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.nDialog_26]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nGen_MonsterGroup_Boss_2


--NPCGROUP   20861  20864  --依次是亚兹莫,尼格斯，黑魂机翼艾斯，苍穹之主克鲁
local nNpcGroup_SiTiShen = 20861
rwtNpcGroup[nNpcGroup_SiTiShen] = rwtNpcGroup[nNpcGroup_SiTiShen] or {}
rwtNpcGroup[nNpcGroup_SiTiShen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_SiTiShen]["NpcId"]= nNpc_SiTiShen

local nNpcGroup_NiGeSi = 20862
rwtNpcGroup[nNpcGroup_NiGeSi] = rwtNpcGroup[nNpcGroup_NiGeSi] or {}
rwtNpcGroup[nNpcGroup_NiGeSi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_NiGeSi]["NpcId"]= nNpc_NiGeSi

local nNpcGroup_JiXie = 20863
rwtNpcGroup[nNpcGroup_JiXie] = rwtNpcGroup[nNpcGroup_JiXie] or {}
rwtNpcGroup[nNpcGroup_JiXie]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_JiXie]["NpcId"]= nNpc_JiXie

local nNpcGroup_FenNu = 20864
rwtNpcGroup[nNpcGroup_FenNu] = rwtNpcGroup[nNpcGroup_FenNu] or {}
rwtNpcGroup[nNpcGroup_FenNu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_FenNu]["NpcId"]= nNpc_FenNu

local nNpcGroup_YaZiMo= 20969
rwtNpcGroup[nNpcGroup_YaZiMo] = rwtNpcGroup[nNpcGroup_YaZiMo] or {}
rwtNpcGroup[nNpcGroup_YaZiMo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_YaZiMo]["NpcId"]= nNpc_YaZiMo

-------------------------------逻辑编写---------------------------
---逻辑编写
function CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeath()
    rwPrintWarnLog("检测是否全死了111")
    local bOpenValve = false   --是否小boss全死
    for i,v in pairs(tGen_NpcGroup_SmallBoss) do
        if rwHasGenEvent(v) then
           bOpenValve = true
           rwPrintWarnLog("还有存活")
        end
    end
    return bOpenValve
end

--小boss全死，所有玩家播放看最终boss出现动画
function CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeathTrigger()
    local nDynMapId = rwUserGetDynMapId()
    rwPrintWarnLog("小boss全死了")
    local tUserList = rwGetCurMapUserList()
    --判断是boss是亚兹莫
    if (rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["IsYaZiMo"] == true) then
    rwPrintWarnLog("最终boss亚兹莫")
    --动画里出现亚兹莫和愤怒都是一样的话，所以只要做两个动画。
        --是亚兹莫播放亚兹莫说话的动画
        for i=1,#tUserList do
            rwStoryTrigger(nStoryPlay_End_2,2,1,tUserList[i])   
        end
    else
        --播放愤怒出现动画
        rwPrintWarnLog("最终boss愤怒")
         for i=1,#tUserList do
            rwStoryTrigger(nStoryPlay_End,2,1,tUserList[i])
        end
    end  
end

--动画结束刷出NPC愤怒
function CopyMap_YiWangKongHai_BossChuXianCG()
    if rwHasGenEvent(nGen_NpcGroup_YaZiMo_Jia) then
        rwDelGenEvent(nGen_NpcGroup_YaZiMo_Jia)
    end
    --生成愤怒
    if not rwHasGenEvent(nGen_NpcGroup_FenNu) then
        rwAddGenEvent(nGen_NpcGroup_FenNu)
    end
end
rwtCGFinish[nStoryPlay_End] = rwtCGFinish[nStoryPlay_End] or {}
table.insert(rwtCGFinish[nStoryPlay_End],CopyMap_YiWangKongHai_BossChuXianCG)

--动画结束刷出NPC愤怒
function CopyMap_YiWangKongHai_Boss2_ChuXianCG()
    if rwHasGenEvent(nGen_NpcGroup_YaZiMo_Jia) then
        rwDelGenEvent(nGen_NpcGroup_YaZiMo_Jia)
    end
    --生成亚兹莫
    if not rwHasGenEvent(nGen_NpcGroup_YaZiMo_Zhen) then
        rwAddGenEvent(nGen_NpcGroup_YaZiMo_Zhen)
    end
end
rwtCGFinish[nStoryPlay_End_2] = rwtCGFinish[nStoryPlay_End_2] or {}
table.insert(rwtCGFinish[nStoryPlay_End_2],CopyMap_YiWangKongHai_Boss2_ChuXianCG)

--【怪物死亡事件】
--小怪死亡 
--function CopyMap_Multi_YiWangKongHai_NormalMonster_Death() 
--		rwMonsterAddStatus(nMonsterBattle_BossId, 0, nStatus_Boss)
--end


--for i,v in pairs(tMonsterGroup_Normal) do
--    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
--    table.insert(rwtMonsterGroup_Func[v],CopyMap_Multi_YiWangKongHai_NormalMonster_Death)
--end


--小boss死亡
--四蹄神
function CopyMap_Multi_YiWangKongHai_SmallBoss_Death_1() 
    local nDynMapId = rwUserGetDynMapId()
    rwPrintWarnLog("四蹄神死了")
--    rwSendSystemMessage("SiTiShen",1,1)
    if rwHasGenEvent( tGen_NpcGroup_SmallBoss[1]) then
        rwDelGenEvent( tGen_NpcGroup_SmallBoss[1])
    end
    --判断是否有容器
     if rwUserGetItemCount(nItemId_RongQi) >= 1 then
        rwPrintWarnLog("四蹄神死了，有容器")
        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["IsYaZiMo"] = true   --只要有一个怪的火被装起来就出亚兹莫
        rwPrintWarnLog("四蹄神死了，有容器11")
     end
--    if not rwHasGenEvent(nGen_NpcGroup_Shiti_YaZiMo) then
--        rwAddGenEvent(nGen_NpcGroup_Shiti_YaZiMo)
--    end    
    rwPrintWarnLog("四蹄神死了000")
    local bOpenValve = CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeath()
    rwPrintWarnLog("四蹄神死了111")
    if bOpenValve then   --有存活，不是最后一只
        rwPrintWarnLog("四蹄神死了，不是最后一只")
        if rwUserGetItemCount(nItemId_RongQi) >= 1 then--有容器
            rwOpenNpcChatDialog(tDialog.nDialog_10) --还要加光效熄灭，飞到玩家
        else
            rwOpenNpcChatDialog(tDialog.nDialog_11) --力量被亚兹莫吸收
        end
    else   --最后一只小boss
        rwPrintWarnLog("四蹄神死了，最后一只")
        if rwUserGetItemCount(nItemId_RongQi) >= 1 then --有容器
            rwOpenNpcChatDialog(tDialog.nDialog_5) --还要加光效熄灭，飞到玩家
        else
            rwOpenNpcChatDialog(tDialog.nDialog_7) --力量被亚兹莫吸收
        end
        CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeathTrigger()
    end
    rwPrintWarnLog("四蹄神死了333")
end
--尼格斯
function CopyMap_Multi_YiWangKongHai_SmallBoss_Death_2()
    local nDynMapId = rwUserGetDynMapId()
    rwPrintWarnLog("尼格斯死了")
    if rwHasGenEvent( tGen_NpcGroup_SmallBoss[2]) then
        rwDelGenEvent( tGen_NpcGroup_SmallBoss[2])
    end
    --判断是否有容器
     if rwUserGetItemCount(nItemId_RongQi) >= 1 then
        rwPrintWarnLog("尼格斯死了，有容器")
        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["IsYaZiMo"] = true 
     end
    local bOpenValve = CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeath()
    rwPrintWarnLog("尼格斯死了111")
    if bOpenValve then   --有存活，不是最后一只
        rwPrintWarnLog("尼格斯死了，不是最后一只")
        if rwUserGetItemCount(nItemId_RongQi) >= 1 then--有容器
            rwOpenNpcChatDialog(tDialog.nDialog_17) --还要加光效熄灭，飞到玩家
        else
            rwOpenNpcChatDialog(tDialog.nDialog_18) --力量被亚兹莫吸收
        end
    else   --最后一只小boss
        rwPrintWarnLog("尼格斯死了，是最后一只")
        if rwUserGetItemCount(nItemId_RongQi) >= 1 then --有容器
            rwOpenNpcChatDialog(tDialog.nDialog_12) --还要加光效熄灭，飞到玩家
        else
            rwOpenNpcChatDialog(tDialog.nDialog_14) --力量被亚兹莫吸收
        end
        CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeathTrigger()
    end
end
--机械石像
function CopyMap_Multi_YiWangKongHai_SmallBoss_Death_3()
    local nDynMapId = rwUserGetDynMapId()
    rwPrintWarnLog("机械死了")
    if rwHasGenEvent( tGen_NpcGroup_SmallBoss[3]) then
        rwDelGenEvent( tGen_NpcGroup_SmallBoss[3])
    end
   --判断是否有容器
     if rwUserGetItemCount(nItemId_RongQi) >= 1 then
         rwPrintWarnLog("机械死了，有容器")
        rwtCopyMapDynInitInfo[nCopyMapId][nDynMapId]["IsYaZiMo"] = true 
     end
    local bOpenValve = CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeath()
    rwPrintWarnLog("机械死了111")
    if bOpenValve then   --有存活，不是最后一只
        rwPrintWarnLog("机械死了，不是最后一只")
        if rwUserGetItemCount(nItemId_RongQi) >= 1 then--有容器
            rwOpenNpcChatDialog(tDialog.nDialog_24) --还要加光效熄灭，飞到玩家
        else
            rwOpenNpcChatDialog(tDialog.nDialog_25) --力量被亚兹莫吸收
        end
    else   --最后一只小boss
        rwPrintWarnLog("机械死了，是最后一只")
        if rwUserGetItemCount(nItemId_RongQi) >= 1 then --有容器
            rwOpenNpcChatDialog(tDialog.nDialog_19) --还要加光效熄灭，飞到玩家
        else
            rwOpenNpcChatDialog(tDialog.nDialog_21) --力量被亚兹莫吸收
        end
        CopyMap_Multi_YiWangKongHai_SmallBoss_AllDeathTrigger()
    end
end



rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[1]] = rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[1]] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[1]],CopyMap_Multi_YiWangKongHai_SmallBoss_Death_1)

rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[2]] = rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[2]] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[2]],CopyMap_Multi_YiWangKongHai_SmallBoss_Death_2)

rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[3]] = rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[3]] or {}
table.insert(rwtMonsterGroup_Func[tMonsterGroup_SmallBoss[3]],CopyMap_Multi_YiWangKongHai_SmallBoss_Death_3)

--大boss愤怒死亡
function CopyMap_Multi_YiWangKongHai_Boss_Death()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwOpenNpcChatDialog(tDialog.nDialog_29,0,0,tUserList[i]) --结束对白
        end
    end
end

rwtMonsterGroup_Func[nMonsterGroup_Boss] = rwtMonsterGroup_Func[nMonsterGroup_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Boss],CopyMap_Multi_YiWangKongHai_Boss_Death)

--大boss亚兹莫死亡
function CopyMap_Multi_YiWangKongHai_Boss_Death()
    local tUserList = rwGetCurMapUserList()
    if tUserList then
        for i=1,#tUserList do
            rwOpenNpcChatDialog(tDialog.nDialog_27,0,0,tUserList[i]) --结束对白
        end
    end
end

rwtMonsterGroup_Func[nMonsterGroup_Boss] = rwtMonsterGroup_Func[nMonsterGroup_Boss] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroup_Boss],CopyMap_Multi_YiWangKongHai_Boss_Death)

--title 21695  21698   
rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21695]
rwtTarget[nTarget_1]["KillMonsterGroup"] = tMonsterGroup_SmallBoss[1]
rwtTarget[nTarget_1]["ReqCount"] = 1

rwtTarget[nTarget_2] = {}
rwtTarget[nTarget_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21696]
rwtTarget[nTarget_2]["KillMonsterGroup"] = tMonsterGroup_SmallBoss[2]
rwtTarget[nTarget_2]["ReqCount"] = 1

rwtTarget[nTarget_3] = {}
rwtTarget[nTarget_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21697]
rwtTarget[nTarget_3]["KillMonsterGroup"] = tMonsterGroup_SmallBoss[3]
rwtTarget[nTarget_3]["ReqCount"] = 1

rwtTarget[nTarget_4] = {}
rwtTarget[nTarget_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21698]
rwtTarget[nTarget_4]["KillMonsterGroup"] = nMonsterGroup_Boss
rwtTarget[nTarget_4]["ReqCount"] = 1


function CopyMap_Multi_YiWangKongHai_Destroy(nCopyMapMissId,nMapId)
	rwtCopyMapDynInitInfo[nCopyMapMissId][nMapId] = {}
end

rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["Type"] = CONST_COPYMAP_TYPE.MULTI
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.TeamCopyMap
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 2 
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1,nTarget_2,nTarget_3}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget_4}
rwtCopyMapMission[nCopyMapId]["Target99"] = {nTarget_6}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.DYNCOPYMAP
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = false
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "IsYaZiMo"  --最终boss出亚兹莫。

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["DynCreate"] = {nGen_NpcGroup_YaZiMo_Jia}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.USERID
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = true
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "First_Collcet"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}    --进副本随机箱子
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 1  --1个魔法容器箱子
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = 3118016
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = "-66.41,15.59,4.94"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = 49.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = 3118024
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = "-4.01,15.58,67.22"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = 184.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = 3118025
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = "5.84,15.59,-58.23"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = 49.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["GenId"] = 3118026
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["Pos"] = "54.56,15.57,31.61"
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][4]["RotationY"] = 319.09
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 3 --3个普通箱子
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = 3118017 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = 3118018
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = 3118019


--设置第一次进入此多人本（一个人只能看一次动画）
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = 1209
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = 1209
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["OpenDialog"]["DialogId"] = 6713    --只能看到一次的大臣对白
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["PlaySceneAnimation"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["FailEvents"]["PlaySceneAnimation"]["Id"] = nStoryPlay_Begin
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = 5296
--小怪身上的封印光效
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["TargetId"] = 3118001
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][1]["EffectId"] = 2022
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["TargetId"] = 3118002
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][2]["EffectId"] = 2022
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["TargetId"] = 3118003
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][3]["EffectId"] = 2022
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["TargetId"] = 3118004
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][4]["EffectId"] = 2022
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5]["TargetId"] = 3118005
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][5]["EffectId"] = 2022
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6]["TargetType"] = 4
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6]["TargetId"] = 3118006
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["AddEffect"][6]["EffectId"] = 2022
--设置第一次采集法阵flag  （一个人只能看一次长对白）------------------------------
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChkUserTempData"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChkUserTempData"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChkUserTempData"][1]["Record"] = 1209
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["OpenDialog"] = 6725

--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["SetUserTempData"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["SetUserTempData"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["TempDataID"] = 1209
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["SetUserTempData"][1]["SetValue"] = 1
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["OpenDialog"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["FailEvents"]["OpenDialog"]["Id"] = 6716

--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["InitType"] = CONST_COPYMAP_INIT_TYPE.USERID
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["SetValue"] = true
--rwtCopyMapMission[nCopyMapId]["CreateCopyMap"]["Events"][1]["CopyMapTableSetValue"][1]["ValueRes"] = "First_Collcet"
-----------------------------------------------------------------------------------------------------------------------------------------------



rwtCopyMapMission[nCopyMapId]["Fire"] = {}  ---篝火配置
rwtCopyMapMission[nCopyMapId]["Fire"]["GenId"] = nGenId_BonFire
rwtCopyMapMission[nCopyMapId]["Fire"]["LifeTime"] = 60
rwtCopyMapMission[nCopyMapId]["Fire"]["InterVal"] = 3
rwtCopyMapMission[nCopyMapId]["Fire"]["ExpBall"] = 3000
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][1] = "-1.57,18.51,-1.72"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][2] = "1.58,18.51,-1.59"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportPos"][3] = "2.01,18.51,2.00"
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"] = {}
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][1] =  42.41
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][2] = 315.00
rwtCopyMapMission[nCopyMapId]["Fire"]["TeleportRotation"][3] = 228.02	

rwtCopyMapMission[nCopyMapId]["MultiDestroyFunc"] = function(nCopyMapMissId,nMapId)
    CopyMap_Multi_YiWangKongHai_Destroy(nCopyMapMissId,nMapId)
end