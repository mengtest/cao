
--Ps1(对白相关需要有对应英雄)
--Ps2()

--景点介绍
local tSingleNpc = {}




--景点 罗兰大帝雕像 2001
tSingleNpc.nNpc_LuoLanDaDi = 3446
tSingleNpc.nNpcGroup_LuoLanDaDi = 70003
tSingleNpc.nGenId_NpcGroup_LuoLanDaDi = 20010125

rwtNpc[tSingleNpc.nNpc_LuoLanDaDi] = rwtNpc[tSingleNpc.nNpc_LuoLanDaDi] or {}
rwtNpc[tSingleNpc.nNpc_LuoLanDaDi]["DialogId"] = {1600}

rwtNpcGroup[tSingleNpc.nNpcGroup_LuoLanDaDi] = rwtNpcGroup[tSingleNpc.nNpcGroup_LuoLanDaDi] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LuoLanDaDi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LuoLanDaDi]["NpcId"]= tSingleNpc.nNpc_LuoLanDaDi


--废弃对白Id:1636,1637


--景点 大帝重刃 2002
tSingleNpc.nNpc_DaDiZhongRen = 3450
tSingleNpc.nNpcGroup_DaDiZhongRen  = 70004
tSingleNpc.nGenId_NpcGroup_DaDiZhongRen = 2002019

rwtNpc[tSingleNpc.nNpc_DaDiZhongRen] = rwtNpc[tSingleNpc.nNpc_DaDiZhongRen] or {}
rwtNpc[tSingleNpc.nNpc_DaDiZhongRen]["DialogId"] = {1602}
rwtNpc[tSingleNpc.nNpc_DaDiZhongRen]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1601,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_DaDiZhongRen] = rwtNpcGroup[tSingleNpc.nNpcGroup_DaDiZhongRen] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_DaDiZhongRen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DaDiZhongRen]["NpcId"]= tSingleNpc.nNpc_DaDiZhongRen




--废弃对白Id:1638


--景点 魔力石风车(3451-70005-20010126)(1603,1604)



--景点 法石遗迹 2001
tSingleNpc.nNpc_FaShiYiJi = 3452
tSingleNpc.nNpcGroup_FaShiYiJi  = 70006
tSingleNpc.nGenId_NpcGroup_FaShiYiJi = 20010127

rwtNpc[tSingleNpc.nNpc_FaShiYiJi] = rwtNpc[tSingleNpc.nNpc_FaShiYiJi] or {}
rwtNpc[tSingleNpc.nNpc_FaShiYiJi]["DialogId"] = {1610}
rwtNpc[tSingleNpc.nNpc_FaShiYiJi]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1609,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_FaShiYiJi] = rwtNpcGroup[tSingleNpc.nNpcGroup_FaShiYiJi] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_FaShiYiJi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_FaShiYiJi]["NpcId"]= tSingleNpc.nNpc_FaShiYiJi


--景点 纹章石 2001
tSingleNpc.nNpc_WenZhangShi = 3453
tSingleNpc.nNpcGroup_WenZhangShi  = 70007
tSingleNpc.nGenId_NpcGroup_WenZhangShi = 20010128

rwtNpc[tSingleNpc.nNpc_WenZhangShi] = rwtNpc[tSingleNpc.nNpc_WenZhangShi] or {}
rwtNpc[tSingleNpc.nNpc_WenZhangShi]["DialogId"] = {1612}
rwtNpc[tSingleNpc.nNpc_WenZhangShi]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1611,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_WenZhangShi] = rwtNpcGroup[tSingleNpc.nNpcGroup_WenZhangShi] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_WenZhangShi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_WenZhangShi]["NpcId"]= tSingleNpc.nNpc_WenZhangShi





--景点 银月湖 2003
tSingleNpc.nNpc_YinYueHu = 3455
tSingleNpc.nNpcGroup_YinYueHu = 70009
tSingleNpc.nGenId_NpcGroup_YinYueHu = 20030477

rwtNpc[tSingleNpc.nNpc_YinYueHu] = rwtNpc[tSingleNpc.nNpc_YinYueHu] or {}
rwtNpc[tSingleNpc.nNpc_YinYueHu]["DialogId"] = {1618}
rwtNpc[tSingleNpc.nNpc_YinYueHu]["SceneNpcChk"] = function()
	if rwHeroIsHas(104) and rwHeroIsHas(105) and rwHeroIsHas(108) then 
		rwOpenNpcChatDialog(1617,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_YinYueHu] = rwtNpcGroup[tSingleNpc.nNpcGroup_YinYueHu] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_YinYueHu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_YinYueHu]["NpcId"]= tSingleNpc.nNpc_YinYueHu


--废弃对白Id:1644



--景点 黄金立方(3456)(1619,1620)


--景点 六翼天神雕像
tSingleNpc.nNpc_LiuYiTS = 3457
tSingleNpc.nNpcGroup_LiuYiTS  = 70015
tSingleNpc.nGenId_NpcGroup_LiuYiTS = 20050135
rwtNpc[tSingleNpc.nNpc_LiuYiTS] = rwtNpc[tSingleNpc.nNpc_LiuYiTS] or {}
rwtNpc[tSingleNpc.nNpc_LiuYiTS]["DialogId"] = {1621,1622}
rwtNpcGroup[tSingleNpc.nNpcGroup_LiuYiTS] = rwtNpcGroup[tSingleNpc.nNpcGroup_LiuYiTS] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LiuYiTS]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LiuYiTS]["NpcId"]= tSingleNpc.nNpc_LiuYiTS

--景点 灯塔 2001（只显示名称）
tSingleNpc.nNpc_DengTa = 3458
tSingleNpc.nNpcGroup_DengTa  = 70010
tSingleNpc.nGenId_NpcGroup_DengTa = 20010129
rwtNpc[tSingleNpc.nNpc_DengTa] = rwtNpc[tSingleNpc.nNpc_DengTa] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_DengTa] = rwtNpcGroup[tSingleNpc.nNpcGroup_DengTa] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_DengTa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DengTa]["NpcId"]= tSingleNpc.nNpc_DengTa

--废弃对白Id:1623,1624,1645
--废弃动画Id:2133


--景点 翼族图腾
tSingleNpc.nNpc_NiaoZuTuTeng = 3459
tSingleNpc.nNpcGroup_NiaoZuTuTeng  = 70016
tSingleNpc.nGenId_NpcGroup_NiaoZuTuTeng = 20050136
rwtNpc[tSingleNpc.nNpc_NiaoZuTuTeng] = rwtNpc[tSingleNpc.nNpc_NiaoZuTuTeng] or {}
rwtNpc[tSingleNpc.nNpc_NiaoZuTuTeng]["DialogId"] = {1793}
rwtNpc[tSingleNpc.nNpc_NiaoZuTuTeng]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1626,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end
rwtNpcGroup[tSingleNpc.nNpcGroup_NiaoZuTuTeng] = rwtNpcGroup[tSingleNpc.nNpcGroup_NiaoZuTuTeng] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_NiaoZuTuTeng]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_NiaoZuTuTeng]["NpcId"]= tSingleNpc.nNpc_NiaoZuTuTeng 


----景点 自律联盟告示板（只显示名称 暂保留对白）
--tSingleNpc.nNpc_GaoShiByZLLM = 3460
--tSingleNpc.nNpcGroup_GaoShiByZLLM  = 70011
--tSingleNpc.nGenId_NpcGroup_GaoShiByZLLM = 1000151
--rwtNpc[tSingleNpc.nNpc_GaoShiByZLLM] = rwtNpc[tSingleNpc.nNpc_GaoShiByZLLM] or {}
----rwtNpc[tSingleNpc.nNpc_GaoShiByZLLM]["DialogId"] = {1627,1628}
--rwtNpcGroup[tSingleNpc.nNpcGroup_GaoShiByZLLM] = rwtNpcGroup[tSingleNpc.nNpcGroup_GaoShiByZLLM] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_GaoShiByZLLM]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_GaoShiByZLLM]["NpcId"]= tSingleNpc.nNpc_GaoShiByZLLM


--景点 主城告示板(3461-70012-1000152)(1629,1630)


--景点人物 码头工人加鲁 2001
tSingleNpc.nNpc_JiaLu = 3447
tSingleNpc.nNpcGroup_JiaLu  = 20448
tSingleNpc.nGenId_NpcGroup_JiaLu = 20010130
local tDialog_JiaLu = {1605,1606}

rwtDialog[1605] = rwtDialog[1605] or {}
rwtDialog[1605]["CloseDialog"] = true

rwtDialog[1606] = rwtDialog[1606] or {}
rwtDialog[1606]["CloseDialog"] = true


rwtNpc[tSingleNpc.nNpc_JiaLu] = rwtNpc[tSingleNpc.nNpc_JiaLu] or {}
rwtNpc[tSingleNpc.nNpc_JiaLu]["DialogId"] = {1606}
rwtNpc[tSingleNpc.nNpc_JiaLu]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) then 
		local nRandom = math.random(1,#tDialog_JiaLu)
		rwOpenNpcChatDialog(tDialog_JiaLu[nRandom],CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_JiaLu] = rwtNpcGroup[tSingleNpc.nNpcGroup_JiaLu] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_JiaLu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_JiaLu]["NpcId"]= tSingleNpc.nNpc_JiaLu


--废弃对白Id:1639


--景点人物 沙漠土著帕帕拉
tSingleNpc.nNpc_PaPaLa = 3449
tSingleNpc.nNpcGroup_PaPaLa   =  20450
tSingleNpc.nGenId_NpcGroup_PaPaLa  = 20030478
rwtNpc[tSingleNpc.nNpc_PaPaLa] = rwtNpc[tSingleNpc.nNpc_PaPaLa] or {}
rwtNpc[tSingleNpc.nNpc_PaPaLa]["DialogId"] = {1613,1614}
rwtNpcGroup[tSingleNpc.nNpcGroup_PaPaLa] = rwtNpcGroup[tSingleNpc.nNpcGroup_PaPaLa] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_PaPaLa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_PaPaLa]["NpcId"]= tSingleNpc.nNpc_PaPaLa

--景点新增 
--3493 - 3496
--20480 - 20483 
--20010132,20010133,20030483,20030484

tSingleNpc.nNpc_LuBiao = 3493
tSingleNpc.nNpcGroup_LuBiao   =  20480
tSingleNpc.nGenId_NpcGroup_LuBiao  = 20010132
rwtNpc[tSingleNpc.nNpc_LuBiao] = rwtNpc[tSingleNpc.nNpc_LuBiao] or {}
rwtNpc[tSingleNpc.nNpc_LuBiao]["DialogId"] = {1652}
rwtNpcGroup[tSingleNpc.nNpcGroup_LuBiao] = rwtNpcGroup[tSingleNpc.nNpcGroup_LuBiao] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LuBiao]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LuBiao]["NpcId"]= tSingleNpc.nNpc_LuBiao


--景点 露西蒂尼雕像 2001
tSingleNpc.nNpc_LuxiDiaoxiang = 3494
tSingleNpc.nNpcGroup_LuxiDiaoxiang   =  20481
tSingleNpc.nGenId_NpcGroup_LuxiDiaoxiang  = 20010133

rwtNpc[tSingleNpc.nNpc_LuxiDiaoxiang] = rwtNpc[tSingleNpc.nNpc_LuxiDiaoxiang] or {}
rwtNpc[tSingleNpc.nNpc_LuxiDiaoxiang]["DialogId"] = {1654}
rwtNpc[tSingleNpc.nNpc_LuxiDiaoxiang]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then 
		rwOpenNpcChatDialog(1653,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end


rwtNpcGroup[tSingleNpc.nNpcGroup_LuxiDiaoxiang] = rwtNpcGroup[tSingleNpc.nNpcGroup_LuxiDiaoxiang] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_LuxiDiaoxiang]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_LuxiDiaoxiang]["NpcId"]= tSingleNpc.nNpc_LuxiDiaoxiang



tSingleNpc.nNpc_FeiTing = 3495
tSingleNpc.nNpcGroup_FeiTing   =  20482
tSingleNpc.nGenId_NpcGroup_FeiTing  = 20030483
rwtNpc[tSingleNpc.nNpc_FeiTing] = rwtNpc[tSingleNpc.nNpc_FeiTing] or {}
rwtNpc[tSingleNpc.nNpc_FeiTing]["DialogId"] = {1655,1656}
rwtNpcGroup[tSingleNpc.nNpcGroup_FeiTing] = rwtNpcGroup[tSingleNpc.nNpcGroup_FeiTing] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_FeiTing]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_FeiTing]["NpcId"]= tSingleNpc.nNpc_FeiTing

tSingleNpc.nNpc_ShuShen= 3496
tSingleNpc.nNpcGroup_ShuShen   =  20483
tSingleNpc.nGenId_NpcGroup_ShuShen  = 20030484
rwtNpc[tSingleNpc.nNpc_ShuShen] = rwtNpc[tSingleNpc.nNpc_ShuShen] or {}
rwtNpc[tSingleNpc.nNpc_ShuShen]["DialogId"] = {1657,1658}
rwtNpcGroup[tSingleNpc.nNpcGroup_ShuShen] = rwtNpcGroup[tSingleNpc.nNpcGroup_ShuShen] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_ShuShen]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_ShuShen]["NpcId"]= tSingleNpc.nNpc_ShuShen





--景点人物 吟游诗人达达 2001
tSingleNpc.nNpc_DaDa = 3448
tSingleNpc.nNpcGroup_DaDa   = 20449
tSingleNpc.nGenId_NpcGroup_DaDa  = 20010131
local tDialog_1_DaDa = {1607,1608,1640}
local tDialog_2_DaDa = {1607,1608}

rwtNpc[tSingleNpc.nNpc_DaDa] = rwtNpc[tSingleNpc.nNpc_DaDa] or {}
rwtNpc[tSingleNpc.nNpc_DaDa]["DialogId"] = {1602}
rwtNpc[tSingleNpc.nNpc_DaDa]["SceneNpcChk"] = function()
	if rwTaskIsSuccess (10224) then 
		local nRandom = math.random(1,#tDialog_1_DaDa)
		rwOpenNpcChatDialog(tDialog_1_DaDa[nRandom],CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		local nRandom = math.random(1,#tDialog_2_DaDa)
		rwOpenNpcChatDialog(tDialog_2_DaDa[nRandom],CONST_NPCCHAT_TYPE.NPC)
		return true
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_DaDa] = rwtNpcGroup[tSingleNpc.nNpcGroup_DaDa] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_DaDa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_DaDa]["NpcId"]= tSingleNpc.nNpc_DaDa


--废弃对白Id:1641

--景点人物 吟游诗人达达(旧数据)(3499-20485-20010134)



--景点 泰坦遗骸 2003
tSingleNpc.nNpc_TaiTanYiHai = 3500
tSingleNpc.nNpcGroup_TaiTanYiHai  = 20486
tSingleNpc.nGenId_NpcGroup_TaiTanYiHai = 20030485

rwtNpc[tSingleNpc.nNpc_TaiTanYiHai] = rwtNpc[tSingleNpc.nNpc_TaiTanYiHai] or {}
rwtNpc[tSingleNpc.nNpc_TaiTanYiHai]["DialogId"] = {1643}
rwtNpc[tSingleNpc.nNpc_TaiTanYiHai]["SceneNpcChk"] = function()
	local IsHero = rwHeroIsHas(201)
	if IsHero and rwSysGetTaskLockMask(2003,200302) then 
		rwOpenNpcChatDialog(1616,CONST_NPCCHAT_TYPE.NPC)
		return true
	elseif IsHero then
		rwOpenNpcChatDialog(1615,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_TaiTanYiHai] = rwtNpcGroup[tSingleNpc.nNpcGroup_TaiTanYiHai] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_TaiTanYiHai]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_TaiTanYiHai]["NpcId"]= tSingleNpc.nNpc_TaiTanYiHai



--景点 泰坦遗骸(旧数据)(3454-70008-20030476)

--废弃对白Id:1642

--翼祖石
tSingleNpc.nNpc_YiZuShi = 3690
tSingleNpc.nNpcGroup_YiZuShi   =  70017
tSingleNpc.nGenId_NpcGroup_YiZuShi  = 20050221
rwtNpc[tSingleNpc.nNpc_YiZuShi] = rwtNpc[tSingleNpc.nNpc_YiZuShi] or {}
rwtNpc[tSingleNpc.nNpc_YiZuShi]["DialogId"] = {1790}
rwtNpc[tSingleNpc.nNpc_YiZuShi]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1769,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end

rwtNpcGroup[tSingleNpc.nNpcGroup_YiZuShi] = rwtNpcGroup[tSingleNpc.nNpcGroup_YiZuShi] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_YiZuShi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_YiZuShi]["NpcId"]= tSingleNpc.nNpc_YiZuShi

--鳄龟岩
tSingleNpc.nNpc_EGuiYan = 3691
tSingleNpc.nNpcGroup_EGuiYan   =  70018
tSingleNpc.nGenId_NpcGroup_EGuiYan  = 20050222
rwtNpc[tSingleNpc.nNpc_EGuiYan] = rwtNpc[tSingleNpc.nNpc_EGuiYan] or {}
rwtNpc[tSingleNpc.nNpc_EGuiYan]["DialogId"] = {1791}
rwtNpc[tSingleNpc.nNpc_EGuiYan]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1772,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end
rwtNpcGroup[tSingleNpc.nNpcGroup_EGuiYan] = rwtNpcGroup[tSingleNpc.nNpcGroup_EGuiYan] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_EGuiYan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_EGuiYan]["NpcId"]= tSingleNpc.nNpc_EGuiYan

--巨鲸遗骸
tSingleNpc.nNpc_JuJingCanHai = 3692
tSingleNpc.nNpcGroup_JuJingCanHai   =  70019
tSingleNpc.nGenId_NpcGroup_JuJingCanHai  = 20050223
rwtNpc[tSingleNpc.nNpc_JuJingCanHai] = rwtNpc[tSingleNpc.nNpc_JuJingCanHai] or {}
rwtNpc[tSingleNpc.nNpc_JuJingCanHai]["DialogId"] = {1792}
rwtNpc[tSingleNpc.nNpc_JuJingCanHai]["SceneNpcChk"] = function()
	if rwHeroIsHas(201) and rwHeroIsHas(301) then
		rwOpenNpcChatDialog(1775,CONST_NPCCHAT_TYPE.NPC)
		return true
	else
		return false
	end
end
rwtNpcGroup[tSingleNpc.nNpcGroup_JuJingCanHai] = rwtNpcGroup[tSingleNpc.nNpcGroup_JuJingCanHai] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_JuJingCanHai]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_JuJingCanHai]["NpcId"]= tSingleNpc.nNpc_JuJingCanHai


--远航号战舰残骸
tSingleNpc.nNpc_YuanHangHao = 3694
tSingleNpc.nNpcGroup_YuanHangHao   =  70021
tSingleNpc.nGenId_NpcGroup_YuanHangHao  = 20050225
rwtNpc[tSingleNpc.nNpc_YuanHangHao] = rwtNpc[tSingleNpc.nNpc_YuanHangHao] or {}
rwtNpc[tSingleNpc.nNpc_YuanHangHao]["DialogId"] = {1780}
rwtNpcGroup[tSingleNpc.nNpcGroup_YuanHangHao] = rwtNpcGroup[tSingleNpc.nNpcGroup_YuanHangHao] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_YuanHangHao]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_YuanHangHao]["NpcId"]= tSingleNpc.nNpc_YuanHangHao

--修行者禅那
tSingleNpc.nNpc_XiuXingZhe = 3669
tSingleNpc.nNpcGroup_XiuXingZhe   =  20590
tSingleNpc.nGenId_NpcGroup_XiuXingZhe  = 20050181
rwtNpc[tSingleNpc.nNpc_XiuXingZhe] = rwtNpc[tSingleNpc.nNpc_XiuXingZhe] or {}
rwtNpc[tSingleNpc.nNpc_XiuXingZhe]["DialogId"] = {1783,1784}
rwtNpcGroup[tSingleNpc.nNpcGroup_XiuXingZhe] = rwtNpcGroup[tSingleNpc.nNpcGroup_XiuXingZhe] or {}
rwtNpcGroup[tSingleNpc.nNpcGroup_XiuXingZhe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tSingleNpc.nNpcGroup_XiuXingZhe]["NpcId"]= tSingleNpc.nNpc_XiuXingZhe
