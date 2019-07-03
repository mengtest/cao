--region MapTransfer.lua
--Date
--地图传送功能



--endregion


--传送点信息
local tTransfer = {}

--卡诺萨城
tTransfer[CONST_TRANSFER_INDEX.MAINCITY] = {}
tTransfer[CONST_TRANSFER_INDEX.MAINCITY]["tPosInfo"] = {nMapId = 1000, sPos = "-45.47,22.67,68.47"}
tTransfer[CONST_TRANSFER_INDEX.MAINCITY]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.MAINCITY]["Funcs"] = {}

--罗兰镇
tTransfer[CONST_TRANSFER_INDEX.LUOLANZHEN] = {}
tTransfer[CONST_TRANSFER_INDEX.LUOLANZHEN]["tPosInfo"] = {nMapId = 2001, sPos = "-54.03,-0.58,45.81"} 
tTransfer[CONST_TRANSFER_INDEX.LUOLANZHEN]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10027]
tTransfer[CONST_TRANSFER_INDEX.LUOLANZHEN]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.LUOLANZHEN]["Funcs"] = {}

--风车镇
tTransfer[CONST_TRANSFER_INDEX.FENGCHEZHEN] = {}
tTransfer[CONST_TRANSFER_INDEX.FENGCHEZHEN]["tPosInfo"] = {nMapId = 2001, sPos = "-99.83,0.11,-71.80"} 
tTransfer[CONST_TRANSFER_INDEX.FENGCHEZHEN]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10028]
tTransfer[CONST_TRANSFER_INDEX.FENGCHEZHEN]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.FENGCHEZHEN]["Funcs"] = {}

--阿克莱斯
tTransfer[CONST_TRANSFER_INDEX.AKELAISI] = {}
tTransfer[CONST_TRANSFER_INDEX.AKELAISI]["tPosInfo"] = {nMapId = 2001, sPos = "43.68,0.01,-130.20"} 
tTransfer[CONST_TRANSFER_INDEX.AKELAISI]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10029]
tTransfer[CONST_TRANSFER_INDEX.AKELAISI]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.AKELAISI]["Funcs"] = {}

--哀嚎神殿
tTransfer[CONST_TRANSFER_INDEX.AIHAOSHENDIAN] = {}
tTransfer[CONST_TRANSFER_INDEX.AIHAOSHENDIAN]["tPosInfo"] = {nMapId = 2001, sPos = "-15.00,0.20,-179.28"} 
tTransfer[CONST_TRANSFER_INDEX.AIHAOSHENDIAN]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10030]
tTransfer[CONST_TRANSFER_INDEX.AIHAOSHENDIAN]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.AIHAOSHENDIAN]["Funcs"] = {}

--冒险者营地
tTransfer[CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI] = {}
tTransfer[CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI]["tPosInfo"] = {nMapId = 2003, sPos = "-13.72,0.28,-44.25"} 
tTransfer[CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10031]
tTransfer[CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI]["Funcs"] = {}

--三月边陲
tTransfer[CONST_TRANSFER_INDEX.SANYUEBIANCHUI] = {}
tTransfer[CONST_TRANSFER_INDEX.SANYUEBIANCHUI]["tPosInfo"] = {nMapId = 2003, sPos = " -95.43,0.10,-16.83"} 
tTransfer[CONST_TRANSFER_INDEX.SANYUEBIANCHUI]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10032]
tTransfer[CONST_TRANSFER_INDEX.SANYUEBIANCHUI]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.SANYUEBIANCHUI]["Funcs"] = {}

--月神
tTransfer[CONST_TRANSFER_INDEX.YUESHENSENLIN] = {}
tTransfer[CONST_TRANSFER_INDEX.YUESHENSENLIN]["tPosInfo"] = {nMapId = 2003, sPos = "-160.26,0.11,-125.71"} 
tTransfer[CONST_TRANSFER_INDEX.YUESHENSENLIN]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10033]
tTransfer[CONST_TRANSFER_INDEX.YUESHENSENLIN]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.YUESHENSENLIN]["Funcs"] = {}

--永夜
tTransfer[CONST_TRANSFER_INDEX.YONGYESENLIN] = {}
tTransfer[CONST_TRANSFER_INDEX.YONGYESENLIN]["tPosInfo"] = {nMapId = 2003, sPos = "-202.40,0.14,-219.93"} 
tTransfer[CONST_TRANSFER_INDEX.YONGYESENLIN]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10034]
tTransfer[CONST_TRANSFER_INDEX.YONGYESENLIN]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.YONGYESENLIN]["Funcs"] = {}

--迷雾
tTransfer[CONST_TRANSFER_INDEX.MIWUSENLIN] = {}
tTransfer[CONST_TRANSFER_INDEX.MIWUSENLIN]["tPosInfo"] = {nMapId = 2003, sPos = "-48.63,0.10,-218.48"} 
tTransfer[CONST_TRANSFER_INDEX.MIWUSENLIN]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10035]
tTransfer[CONST_TRANSFER_INDEX.MIWUSENLIN]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.MIWUSENLIN]["Funcs"] = {}

----不冬岛
tTransfer[CONST_TRANSFER_INDEX.BUDONGDAO] = {}
tTransfer[CONST_TRANSFER_INDEX.BUDONGDAO]["tPosInfo"] = {nMapId = 2005, sPos = "47.02,11.42,-24.2"} 
tTransfer[CONST_TRANSFER_INDEX.BUDONGDAO]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10060]
tTransfer[CONST_TRANSFER_INDEX.BUDONGDAO]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.BUDONGDAO]["Funcs"] = {}

--鲸脊岛
tTransfer[CONST_TRANSFER_INDEX.JINGJIDAO] = {}
tTransfer[CONST_TRANSFER_INDEX.JINGJIDAO]["tPosInfo"] = {nMapId = 2005, sPos = "372.84,2.20,129.46"} 
tTransfer[CONST_TRANSFER_INDEX.JINGJIDAO]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10061]
tTransfer[CONST_TRANSFER_INDEX.JINGJIDAO]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.JINGJIDAO]["Funcs"] = {}

--阿诺特岛
tTransfer[CONST_TRANSFER_INDEX.ANUOTEDAO] = {}
tTransfer[CONST_TRANSFER_INDEX.ANUOTEDAO]["tPosInfo"] = {nMapId = 2005, sPos = "308.43,0.28,-352.09"} 
tTransfer[CONST_TRANSFER_INDEX.ANUOTEDAO]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10062]
tTransfer[CONST_TRANSFER_INDEX.ANUOTEDAO]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.ANUOTEDAO]["Funcs"] = {}

--口袋岛 
tTransfer[CONST_TRANSFER_INDEX.KOUDAIDAO] = {}
tTransfer[CONST_TRANSFER_INDEX.KOUDAIDAO]["tPosInfo"] = {nMapId = 2005, sPos = "68.06,21.32,-330.72"} 
tTransfer[CONST_TRANSFER_INDEX.KOUDAIDAO]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10183]
tTransfer[CONST_TRANSFER_INDEX.KOUDAIDAO]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.KOUDAIDAO]["Funcs"] = {}

--天空城
tTransfer[CONST_TRANSFER_INDEX.TIANKONGCHENG] = {}
tTransfer[CONST_TRANSFER_INDEX.TIANKONGCHENG]["tPosInfo"] = {nMapId = 2004, sPos = "93.41,-0.10,0.12"} 
tTransfer[CONST_TRANSFER_INDEX.TIANKONGCHENG]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10063]
tTransfer[CONST_TRANSFER_INDEX.TIANKONGCHENG]["ChkFuc"] = function ()
    --判断是否可以解锁传送点
    return true
end
tTransfer[CONST_TRANSFER_INDEX.TIANKONGCHENG]["Funcs"] = {}






--获取传送点信息
function rwGetTransferInfo(nIndex)
    return tTransfer[nIndex]
end




--传送阵信息
local nTransfer_MainCity = 10000001			--主城
local nTransfer_LuoLan = 57003				--罗兰镇
local nTransfer_FengChe = 57004				--风车镇
local nTransfer_AKeLaiSi = 57005			--阿克莱斯
local nTransfer_AiHaoShenDian = 57006		--哀嚎神殿
local nTransfer_MaoXianZheYingDi = 57007	--冒险者营地
local nTransfer_SanYueBianChui = 57008		--三月边陲
local nTransfer_YueShenSL = 57009			--月神森林
local nTransfer_YongYeSL = 57010			--永夜森林
local nTransfer_MiWuSL = 57011				--迷雾森林
local nTransfer_BuDong = 57012				--不冬岛	
local nTransfer_JingJi = 57013				--鲸脊岛
local nTransfer_ANuoTe = 57014				--阿诺特岛
local nTransfer_TianKong = 57015			--天空城
local nTransfer_KoDaiDao = 57017			--口袋岛

rwtNpcGroup[nTransfer_MainCity] = {} --卡诺萨城(传送阵)
rwtNpcGroup[nTransfer_MainCity]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_MainCity]["nIndex"] = CONST_TRANSFER_INDEX.MAINCITY

rwtNpcGroup[nTransfer_LuoLan] = {} --罗兰镇(传送阵)
rwtNpcGroup[nTransfer_LuoLan]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_LuoLan]["nIndex"] = CONST_TRANSFER_INDEX.LUOLANZHEN

rwtNpcGroup[nTransfer_FengChe] = {} --风车镇(传送阵)
rwtNpcGroup[nTransfer_FengChe]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_FengChe]["nIndex"] = CONST_TRANSFER_INDEX.FENGCHEZHEN

rwtNpcGroup[nTransfer_AKeLaiSi] = {} --阿克莱斯(传送阵)
rwtNpcGroup[nTransfer_AKeLaiSi]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_AKeLaiSi]["nIndex"] = CONST_TRANSFER_INDEX.AKELAISI

rwtNpcGroup[nTransfer_AiHaoShenDian] = {} --哀嚎神殿(传送阵)
rwtNpcGroup[nTransfer_AiHaoShenDian]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_AiHaoShenDian]["nIndex"] = CONST_TRANSFER_INDEX.AIHAOSHENDIAN

rwtNpcGroup[nTransfer_MaoXianZheYingDi] = {} --冒险者营地(传送阵)
rwtNpcGroup[nTransfer_MaoXianZheYingDi]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_MaoXianZheYingDi]["nIndex"] = CONST_TRANSFER_INDEX.MAOXIANZHEYINGDI

rwtNpcGroup[nTransfer_SanYueBianChui] = {} --三月边陲(传送阵)
rwtNpcGroup[nTransfer_SanYueBianChui]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_SanYueBianChui]["nIndex"] = CONST_TRANSFER_INDEX.SANYUEBIANCHUI

rwtNpcGroup[nTransfer_YueShenSL] = {} --月神森林(传送阵)
rwtNpcGroup[nTransfer_YueShenSL]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_YueShenSL]["nIndex"] = CONST_TRANSFER_INDEX.YUESHENSENLIN

rwtNpcGroup[nTransfer_YongYeSL] = {} --永夜森林(传送阵)
rwtNpcGroup[nTransfer_YongYeSL]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_YongYeSL]["nIndex"] = CONST_TRANSFER_INDEX.YONGYESENLIN

rwtNpcGroup[nTransfer_MiWuSL] = {} --迷雾森林(传送阵)
rwtNpcGroup[nTransfer_MiWuSL]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_MiWuSL]["nIndex"] = CONST_TRANSFER_INDEX.MIWUSENLIN


rwtNpcGroup[nTransfer_BuDong] = {} --不冬岛(传送阵)
rwtNpcGroup[nTransfer_BuDong]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_BuDong]["nIndex"] = CONST_TRANSFER_INDEX.BUDONGDAO

rwtNpcGroup[nTransfer_JingJi] = {} --鲸脊岛(传送阵)
rwtNpcGroup[nTransfer_JingJi]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_JingJi]["nIndex"] = CONST_TRANSFER_INDEX.JINGJIDAO

rwtNpcGroup[nTransfer_ANuoTe] = {} --阿诺特岛(传送阵)
rwtNpcGroup[nTransfer_ANuoTe]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_ANuoTe]["nIndex"] = CONST_TRANSFER_INDEX.ANUOTEDAO

rwtNpcGroup[nTransfer_TianKong] = {} --天空城(传送阵)
rwtNpcGroup[nTransfer_TianKong]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_TianKong]["nIndex"] = CONST_TRANSFER_INDEX.TIANKONGCHENG

rwtNpcGroup[nTransfer_KoDaiDao] = {} --口袋岛(传送阵)
rwtNpcGroup[nTransfer_KoDaiDao]["Type"] = CONST_NPCGROUP_TYPE.Transfer
rwtNpcGroup[nTransfer_KoDaiDao]["nIndex"] = CONST_TRANSFER_INDEX.KOUDAIDAO