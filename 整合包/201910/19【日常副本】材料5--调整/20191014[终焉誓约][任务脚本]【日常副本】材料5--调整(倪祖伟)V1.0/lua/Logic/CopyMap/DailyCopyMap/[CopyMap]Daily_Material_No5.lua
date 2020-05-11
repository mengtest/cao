--region [CopyMap]Daily_Material_No5.lua
--Purpose:		每日材料副本_5号本
--Creator: 		倪祖伟
--Created:		2019-07-15
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-10-15 $
--RCS-ID:		$Revision: 3 $
--endregion

-------------------------------------------- 数据定义 ----------------------------------------------
--副本ID
local nCopyMapId = 3132
local ChkFirstEnter = 1225
local nTempdata = 1228
-- 掩码位
-- data1 = 关于 拿驱蚊水
-- data2 = 暴击次数
-- data3 = 获取额外驱蚊水
-- data4 = 获得冒险者宝物

local nTarget_1 = 60304
local nItem_QuWenShui = 7000312

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
--tAward.OneQuWenShui = 1000586

--tAward.GetMaoXinZhe = 1000587

--tAward.Dang = 1000579
--tAward.Dang2 = 1000581
--tAward.BaijiDang = 1000580


--虫卵奖励 普通
tAward[1] = {}
tAward[1][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000756}
tAward[1][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000757}
tAward[1][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000758}
tAward[1][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000759}
tAward[1][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000760}
--虫卵奖励 特殊
tAward[2] = {}
tAward[2][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000761}
tAward[2][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000762}
tAward[2][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000763}
tAward[2][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000764}
tAward[2][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000765}
--宝箱奖励 普通
tAward[3] = {}
tAward[3][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000766}
tAward[3][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000767}
tAward[3][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000768}
tAward[3][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000769}
tAward[3][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000770}
--宝箱奖励 特殊
tAward[4] = {}
tAward[4][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000771}
tAward[4][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000772}
tAward[4][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000773}
tAward[4][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000774}
tAward[4][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000775}
--石头奖励 普通
tAward[5] = {}
tAward[5][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000776}
tAward[5][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000777}
tAward[5][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000778}
tAward[5][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000779}
tAward[5][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000780}
--石头奖励 特殊
tAward[6] = {}
tAward[6][1] = {MinLevel = 0, MaxLevel = 30, AwardId = 1000781}
tAward[6][2] = {MinLevel = 31, MaxLevel = 40, AwardId = 1000782}
tAward[6][3] = {MinLevel = 41, MaxLevel = 50, AwardId = 1000783}
tAward[6][4] = {MinLevel = 51, MaxLevel = 60, AwardId = 1000784}
tAward[6][5] = {MinLevel = 61, MaxLevel = 80, AwardId = 1000785}

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
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"] = {}   
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}          
--rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.Dang
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tAward[1]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.ChongRuan
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0,1,2}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
--rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward.BaijiDang
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tAward[2]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.ChongRuan
-- rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
-- rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["DialogId"] = tDialog.ChongRuanBaoJi
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"] = {}
--rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Dang
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["LevelAward"] = tAward[1]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = tCollect.ChongRuan
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]= {}
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][10234]
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.ChongRuan]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1



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
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"] = {}   
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}          
--rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.Dang2
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tAward[3]
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
--rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward.OneQuWenShui
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tAward[4]
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["DialogId"] = tDialog.GetOneQuWenShui
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"] = {}
--rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Dang2
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["LevelAward"] = tAward[3]
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.Box]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = tCollect.Box
rwtNpcGroup[tCollect.Box]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]= {}
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][10234]
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.Box]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

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
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"] = {}   
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MinRate"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["MaxRate"] = 8000
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}          
--rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.Dang2
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["LevelAward"] = tAward[5]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tCollect.ShiTou
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MinRate"] = 8001
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["MaxRate"] = 10000
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["SetValue"] = 1
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"] = {}
--rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardId"] = tAward.GetMaoXinZhe
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["LevelAward"] = tAward[6]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["GetServerAward"]["ActionId"] = tCollect.ShiTou
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["OpenDialog"]["DialogId"] = tDialog.GetMaoXinZhe
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"] = {}
--rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Dang2
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["isAwardByLevel"] = true
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["LevelAward"] = tAward[5]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtNpcGroup[tCollect.ShiTou]["Awards"]["RandomEvents"][1]["RandomToNormalEvents"][2]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = tCollect.ShiTou
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1] = {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]= {}
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]["Content"] = tLuaText[CONST_LANGUAGE_TYPE.CHINESE][10234]
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[tCollect.ShiTou]["Awards"]["Events"][1]["UserMsg"]["ShowType"] = 1

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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["ResetValue"] = true
--判断是否首次进入
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = ChkFirstEnter
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
    --是首次进入，播首次进入对白；掩码设1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["OpenDialog"]["DialogId"] = tDialog.FirstEnter
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["TempDataID"] = ChkFirstEnter
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["SetUserTempData"][1]["SetValue"] = 1
    -- 否则播放，非首次进入对白
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["FailEvents"]["OpenDialog"]["DialogId"] = tDialog.NoFirstEnter


--冒险者随机
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1] = {}
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
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][1]["GenId"] = tGenId.MaoXianZhe1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][2]["GenId"] = tGenId.MaoXianZhe2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][1]["tOtherGenId"][3]["GenId"] = tGenId.MaoXianZhe3

--箱子随机
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["GenId"] = tGenId.Box1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["Pos"] = tPos.Box1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][1]["RotationY"] = 139.08
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["GenId"] = tGenId.Box2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["Pos"] = tPos.Box2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][2]["RotationY"] = 113.95
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["GenId"] = tGenId.Box3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["Pos"] = tPos.Box3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][3]["RotationY"] = 49.085
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["GenId"] = tGenId.Box4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["Pos"] = tPos.Box4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tGenId"][4]["RotationY"] = -40.91
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["RemainRandomNum"] = 4
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][1]["GenId"] = tGenId.Box1
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][2]["GenId"] = tGenId.Box2
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][3] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][3]["GenId"] = tGenId.Box3
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][4] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][2]["tOtherGenId"][4]["GenId"] = tGenId.Box4

--虫卵
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["GenId"] = tGenId.ChongRuan1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][1]["Pos"] = tPos.ChongRuan1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["GenId"] = tGenId.ChongRuan2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][2]["Pos"] = tPos.ChongRuan2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["GenId"] = tGenId.ChongRuan3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][3]["Pos"] = tPos.ChongRuan3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["GenId"] = tGenId.ChongRuan4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tGenId"][4]["Pos"] = tPos.ChongRuan4
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["RemainRandomNum"] = 4
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][1]["GenId"] = tGenId.ChongRuan1
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][2]["GenId"] = tGenId.ChongRuan2
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][3] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][3]["GenId"] = tGenId.ChongRuan3
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][4] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][3]["tOtherGenId"][4]["GenId"] = tGenId.ChongRuan4

--石头
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4] = {} 
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["MinRate"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["MaxRate"] =10000
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["RandomNum"] = 4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][1]["GenId"] = tGenId.ShiTou1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][1]["Pos"] = tPos.ShiTou1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][2]["GenId"] = tGenId.ShiTou2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][2]["Pos"] = tPos.ShiTou2
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][3]["GenId"] = tGenId.ShiTou3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][3]["Pos"] = tPos.ShiTou3
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][4] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][4]["GenId"] = tGenId.ShiTou4
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tGenId"][4]["Pos"] = tPos.ShiTou4
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["RemainRandomNum"] = 4
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][1] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][1]["GenId"] = tGenId.ShiTou1
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][2] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][2]["GenId"] = tGenId.ShiTou2
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][3] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][3]["GenId"] = tGenId.ShiTou3
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][4] = {}
-- rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["RandomEvents"][1]["RandomCreare"][4]["tOtherGenId"][4]["GenId"] = tGenId.ShiTou4

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

