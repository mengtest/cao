--region [CopyMap]Daily_Material_No5.lua
--Purpose:		每日材料副本_5号本
--Creator: 		倪祖伟
--Created:		2019-07-15
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-01-09 $
--RCS-ID:		$Revision: 6 $
--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
--副本ID
local nCopyMapId = 3132
local ChkFirstEnter = 1225
local nTempdata = 1228
-- 掩码位
-- data1 = 关于 拿驱蚊水 1225
-- data2 = 暴击次数
-- data3 = 获取额外驱蚊水
-- data4 = 获得冒险者宝物
-- data5 = 10%刷NPC1
-- data6 = 10%刷NPC2
-- data7 = 10%刷NPC3
-- data8 = 10%刷NPC3

local nTarget_1 = 60304
local nItem_QuWenShui = 7000760

local tPos = {}
tPos.MaoXianZhe1 = "62.381,0.08,66.68"
tPos.MaoXianZhe2 = "74.77,0.08,64.201"
tPos.MaoXianZhe3 = "73.166,0.08,50.16"

tPos.Box1 = "44.663,0.08,66.65"
tPos.Box2 = "63.30,0.08,62.301"
tPos.Box3 = "64.8,0.08,54.1701"
tPos.Box4 = "76.413,0.08,51.65"

tPos.ChongRuan1 = "56.501,0.08,73.3"
tPos.ChongRuan2 = "73.8,0.08,71.501"
tPos.ChongRuan3 = "76.833,0.08,60.4"
tPos.ChongRuan4 = "68.5,0.08,51.301"

tPos.ShiTou1 = "50.3,1.20,71.601"
tPos.ShiTou2 = "68.60,0.7,70.701"
tPos.ShiTou3 = "78.3,0.08,56.101"
tPos.ShiTou4 = "63.85,0.08,57.83"

--NPC
local tNpcGroup = {}
tNpcGroup.QuMoShi = 20931		-- 驱魔师
tNpcGroup.MaoXianZhe1 = 20932	-- 冒险者1
tNpcGroup.MaoXianZhe2 = 20933	-- 冒险者2
tNpcGroup.MaoXianZhe3 = 20934	-- 冒险者3


local tCollect = {}
tCollect.Box 	   = 40284 		-- 宝箱
tCollect.ChongRuan = 60445 		-- 虫卵
tCollect.ShiTou    = 60446 		-- 石头

local tGenId = {}
tGenId.GuangQiang = 3132001		-- 光墙
tGenId.QuMoShi 	  = 3132002		-- 驱魔师
tGenId.MaoXianZhe1 = 3132003	-- 冒险者1
tGenId.MaoXianZhe2 = 3132004	-- 冒险者2
tGenId.MaoXianZhe3 = 3132005	-- 冒险者3

tGenId.Box1 	  = 3132007	-- 宝箱
tGenId.Box2 	  = 3132008	-- 宝箱
tGenId.Box3 	  = 3132009	-- 宝箱
tGenId.Box4 	  = 3132010	-- 宝箱
tGenId.ChongRuan1 = 3132011	-- 虫卵
tGenId.ChongRuan2 = 3132012	-- 虫卵
tGenId.ChongRuan3 = 3132013	-- 虫卵
tGenId.ChongRuan4 = 3132014	-- 虫卵
tGenId.ShiTou1    = 3132015	-- 石头
tGenId.ShiTou2    = 3132016	-- 石头
tGenId.ShiTou3    = 3132017	-- 石头
tGenId.ShiTou4    = 3132018	-- 石头



--对白
local tDialog = {}
tDialog.FirstEnter          = 6832
tDialog.NoFirstEnter        = 6833
tDialog.NoQuWenShui         = 6834
tDialog.CleanUpQuWenShui    = 6835
tDialog.ChongRuanBaoJi      = 6836
tDialog.GetOneQuWenShui     = 6837
tDialog.GetMaoXinZhe        = 6838

tDialog.QuMoRen = {6839,6840,6841,6842}
tDialog.MaoXianZhe = {6844,6845,6846}

--奖励
local tAward = {}
tAward.FiveQuWenShui = 1000585

--tAward.GetMaoXinZhe = 1000587

--tAward.Dang = 1000579
--tAward.Dang2 = 1000581
--tAward.BaijiDang = 1000580

--石头特殊奖励 
tAward.StoneSpecial = 1000961
--宝箱奖特殊励 
tAward.BoxSpecial = 1000962



-------------------------------------------- 配置 ----------------------------------------------
--和驱魔人对话
rwtNpcGroup[tNpcGroup.QuMoShi] = rwtNpcGroup[tNpcGroup.QuMoShi] or {}    
rwtNpcGroup[tNpcGroup.QuMoShi]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.QuMoShi]["Awards"] = {}
rwtNpcGroup[tNpcGroup.QuMoShi]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.QuMoShi]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.QuMoShi]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.QuMoShi]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = tDialog.QuMoRen

--虫卵
rwtNpcGroup[tCollect.ChongRuan] = rwtNpcGroup[tCollect.ChongRuan] or {}    
rwtNpcGroup[tCollect.ChongRuan]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.ChongRuan]["CollectTime"] = 2
rwtNpcGroup[tCollect.ChongRuan]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItem_QuWenShui) <= 0 then
		rwOpenNpcChatDialog(tDialog.CleanUpQuWenShui)
	end
end
rwtNpcGroup[tCollect.ChongRuan]["Awards"] = {}  
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["CostItems"][1]["id"] = nItem_QuWenShui
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog.NoQuWenShui

rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]= {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][10234]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["ChkGenEventIsExist"] = {tGenId.MaoXianZhe2}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["SetUserTempData"]={}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["SetUserTempData"][1]={}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"]=1
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["SetValue"] = 1
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort["Crit"]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.ChongRuan


rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"] = {}   
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["MaxRate"] = 9000
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["Value"] = 0
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}          
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort[1]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.ChongRuan
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["MinRate"] = 9001
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["Value"] = 0
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort["Crit"]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.ChongRuan
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][2]["FailEvents"] = rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][1]	
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["CopyMapTableUpdateValue"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["CopyMapTableUpdateValue"][1]["SetValue"] = 0
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["CopyMapTableUpdateValue"][1]["ValueRes"] = "FirstCrit"


--箱子
rwtNpcGroup[tCollect.Box] = rwtNpcGroup[tCollect.Box] or {}    
rwtNpcGroup[tCollect.Box]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.Box]["CollectTime"] = 1
rwtNpcGroup[tCollect.Box]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItem_QuWenShui) <= 0 then
		rwOpenNpcChatDialog(tDialog.CleanUpQuWenShui)
	end
end
rwtNpcGroup[tCollect.Box]["Awards"] = {}  
rwtNpcGroup[tCollect.Box]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["CostItems"][1]["id"] = nItem_QuWenShui
rwtNpcGroup[tCollect.Box]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.Box]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.Box]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog.NoQuWenShui

rwtNpcGroup[tCollect.Box]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]= {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][10234]
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["ChkGenEventIsExist"] = {tGenId.MaoXianZhe1}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["SetUserTempData"]={}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["SetUserTempData"][1]={}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"]=1
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["SetValue"] = 1
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.BoxSpecial
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.GetOneQuWenShui

rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"] = {}   
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 7000
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}          
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort[1]
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 7001
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}          
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort[2]
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["MaxRate"] = 1000
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["Value"] = 0
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.BoxSpecial
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialog.GetOneQuWenShui
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"][1]["SetValue"] = 0
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"][1]["ValueRes"] = "FirstCrit"



--石头
rwtNpcGroup[tCollect.ShiTou] = rwtNpcGroup[tCollect.ShiTou] or {}    
rwtNpcGroup[tCollect.ShiTou]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tCollect.ShiTou]["CollectTime"] = 3
rwtNpcGroup[tCollect.ShiTou]["Func"] = function(nGenEventId,nRandom)
	if rwUserGetItemCount(nItem_QuWenShui) <= 0 then
		rwOpenNpcChatDialog(tDialog.CleanUpQuWenShui)
	end
end
rwtNpcGroup[tCollect.ShiTou]["Awards"] = {}  
rwtNpcGroup[tCollect.ShiTou]["Awards"]["CostItems"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["CostItems"][1]["id"] = nItem_QuWenShui
rwtNpcGroup[tCollect.ShiTou]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[tCollect.ShiTou]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[tCollect.ShiTou]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = tDialog.NoQuWenShui

rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]= {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][10234]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["ChkGenEventIsExist"] = {tGenId.MaoXianZhe3}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["SetValue"] = 1
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["GetServerAward"] = {}          
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.StoneSpecial
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tCollect.ShiTou
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.GetMaoXinZhe


rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"] = {}   
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}          
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort[2]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.ShiTou
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}          
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tDailyCopyMap_Material_Award_LevelSort[3]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.ShiTou

rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["MaxRate"] = 1000
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["Value"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkCopyMapTable"][1]["ValueRes"] = "FirstCrit"
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.StoneSpecial
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.ShiTou
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialog.GetMaoXinZhe
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"][1]["SetValue"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][2]["RandomToNormalEvents"][2]["Events"]["CopyMapTableUpdateValue"][1]["ValueRes"] = "FirstCrit"	

rwtNpcGroup[tNpcGroup.MaoXianZhe1] = rwtNpcGroup[tNpcGroup.MaoXianZhe1] or {} 
rwtNpcGroup[tNpcGroup.MaoXianZhe1]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.MaoXianZhe1]["Awards"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe1]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.MaoXianZhe[1]

rwtNpcGroup[tNpcGroup.MaoXianZhe2] = rwtNpcGroup[tNpcGroup.MaoXianZhe2] or {} 
rwtNpcGroup[tNpcGroup.MaoXianZhe2]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.MaoXianZhe2]["Awards"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe2]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.MaoXianZhe[2]

rwtNpcGroup[tNpcGroup.MaoXianZhe3] = rwtNpcGroup[tNpcGroup.MaoXianZhe3] or {} 
rwtNpcGroup[tNpcGroup.MaoXianZhe3]["Type"] = CONST_NPCGROUP_TYPE.CheckEvent
rwtNpcGroup[tNpcGroup.MaoXianZhe3]["Awards"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe3]["Awards"]["Events"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe3]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.MaoXianZhe3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.MaoXianZhe[3]


rwtTarget[nTarget_1] = {}
rwtTarget[nTarget_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21797]
rwtTarget[nTarget_1]["ReqDialogId"] = {tDialog.CleanUpQuWenShui}
rwtTarget[nTarget_1]["ReqCount"] = 1


--副本固定配置
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["DailyType"] = CONST_DAILYCOPYMAP_TYPE.MATERIAL_MAP
rwtCopyMapMission[nCopyMapId]["TimeLimit"] = CONST_USER_TIMESTYPE.Daily_CopyMap_PetExp
rwtCopyMapMission[nCopyMapId]["TimeLimitMsg"] = tLuaText[LANGUAGE_CONFIG][21586]
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget_1}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}



rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
-- 固定生成 光墙、驱魔师
-- 进入副本拿 5个驱蚊水
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["DynCreate"] = {tGenId.GuangQiang,tGenId.QuMoShi}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.FiveQuWenShui
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["GetServerAward"]["ActionId"] = nCopyMapId
-- 清空掩码
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][3]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][4]["DataIndex"] = CONST_TEMP_DATA.Data4

--判断是否首次进入
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = ChkFirstEnter
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
    --是首次进入，播首次进入对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"]["DialogId"] = tDialog.FirstEnter
    -- 否则播放，非首次进入对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.NoFirstEnter

--全局变量
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["CopyMapTableSetValue"]={}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["CopyMapTableSetValue"][1]={}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["CopyMapTableSetValue"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["CopyMapTableSetValue"][1]["ValueRes"] = "FirstCrit"


--通关后的掩码操作
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["TempDataId"] = ChkFirstEnter			--通关后，不再是第一次进入副本
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][1]["SetValue"] = 1

rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][3]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][4]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5] = {}
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5]["TempDataId"] = nTempdata
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5]["DataIndex"] = CONST_TEMP_DATA.Data8
rwtCopyMapMission[nCopyMapId]["PassSetTempGroup"][5]["SetValue"] = 0


--冒险者随机
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data8
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data8
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenId.MaoXianZhe1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["Pos"] = tPos.MaoXianZhe1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["RotationY"] = -9.1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenId.MaoXianZhe2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["Pos"] = tPos.MaoXianZhe2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["RotationY"] = -171.3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenId.MaoXianZhe3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["Pos"] = tPos.MaoXianZhe3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["RotationY"] = -49.4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["RemainRandomNum"] = 3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["MaxRate"] = 1000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tGenId.MaoXianZhe1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["MaxRate"] = 1000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tGenId.MaoXianZhe2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["MaxRate"] = 1000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["SetValue"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tGenId.MaoXianZhe3

--箱子随机
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId.Box1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["Pos"] = tPos.Box1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 139.08
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId.Box2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["Pos"] = tPos.Box2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 113.95
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGenId.Box3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["Pos"] = tPos.Box3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 49.085
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["GenId"] = tGenId.Box4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["Pos"] = tPos.Box4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][2]["tGenId"][4]["RotationY"] = -40.91

--虫卵
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGenId.ChongRuan1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][1]["Pos"] = tPos.ChongRuan1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGenId.ChongRuan2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][2]["Pos"] = tPos.ChongRuan2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGenId.ChongRuan3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][3]["Pos"] = tPos.ChongRuan3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGenId.ChongRuan4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][3]["tGenId"][4]["Pos"] = tPos.ChongRuan4
--石头
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][1]["GenId"] = tGenId.ShiTou1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][1]["Pos"] = tPos.ShiTou1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][2]["GenId"] = tGenId.ShiTou2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][2]["Pos"] = tPos.ShiTou2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][3]["GenId"] = tGenId.ShiTou3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][3]["Pos"] = tPos.ShiTou3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][4]["GenId"] = tGenId.ShiTou4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][2]["RandomCreare"][4]["tGenId"][4]["Pos"] = tPos.ShiTou4

rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][1]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][1]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][1]["FixGen"] = tGenId.MaoXianZhe1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][2]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][2]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][2]["FixGen"] = tGenId.MaoXianZhe2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][3]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][3]["DataIndex"] = CONST_TEMP_DATA.Data7
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][3]["Value"] = 1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][3]["RandomCreateByTemp"][3]["FixGen"] = tGenId.MaoXianZhe3


--通关奖励
rwtCopyMapMission[nCopyMapId]["TargetAward1"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"] = {}        
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD     
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["isAwardByLevel"] = true
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["AwardEachLevel"] = tDailyCopyMap_Material_Award
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtCopyMapMission[nCopyMapId]["TargetAward1"]["Events"][1]["GetServerAward"]["ActionId"] = nCopyMapId

