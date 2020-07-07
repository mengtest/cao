--region [RandomPool]Mercenary.lua
--Purpose:		自律联盟随机池
--Creator: 		李宏伟
--Created:		2020-04-08
--Modifier:		$Author: 倪祖伟$
--Modified:		$Date:2020-06-28$
--RCS-ID:		$Revision:5	$
--endregion

--任务Id
--自律联盟
local tNpcTask_Mercenary = {}

tNpcTask_Mercenary.Task1_1 = 70489

tNpcTask_Mercenary.Task2_1 = 70490

tNpcTask_Mercenary.Task3_1 = 70491
tNpcTask_Mercenary.Task3_4 = 70494

tNpcTask_Mercenary.Task4_1 = 70496

tNpcTask_Mercenary.Task13_1 = 70512
tNpcTask_Mercenary.Task14_1 = 70513
tNpcTask_Mercenary.Task15_1 = 70514

tNpcTask_Mercenary.LunNaDe_BaoShi_Start = 70626
tNpcTask_Mercenary.LunNaDe_BaoShi_End = 70631

--巡查任务
local tXunChaTask = {}

tXunChaTask.HuPanZhen = {}
tXunChaTask.HuPanZhen.Start = {50066}
tXunChaTask.HuPanZhen.End = {50072,50076,50080}

tXunChaTask.LuoLanZhen = {}
tXunChaTask.LuoLanZhen.Start = {50081}
tXunChaTask.LuoLanZhen.End = {50041,50046,50049,50250}

tXunChaTask.FengCheZhen = {}
tXunChaTask.FengCheZhen.Start = {50083}
tXunChaTask.FengCheZhen.End = {50053,50055,50057,50061,50259,50262,50065}

tXunChaTask.AKeLaiSi = {}
tXunChaTask.AKeLaiSi.Start = {50019}
tXunChaTask.AKeLaiSi.End = {50023,50025,50027,50031,50035}

tXunChaTask.AiHaoShenDian = {}
tXunChaTask.AiHaoShenDian.Start = {50000}
tXunChaTask.AiHaoShenDian.End = {50004,50006,50008,50013,50018,50217}

tXunChaTask.MaoXianZhe = {}
tXunChaTask.MaoXianZhe.Start = {50103}
tXunChaTask.MaoXianZhe.End = {50107,50113}

tXunChaTask.SanYueBianChui = {}
tXunChaTask.SanYueBianChui.Start = {50126}
tXunChaTask.SanYueBianChui.End = {50131,50136}

tXunChaTask.YueShenSengLin = {}
tXunChaTask.YueShenSengLin.Start = {50093}
tXunChaTask.YueShenSengLin.End = {50097,50283,50102}

tXunChaTask.YongYeSenLin = {}
tXunChaTask.YongYeSenLin.Start = {50084}
tXunChaTask.YongYeSenLin.End = {50088,50092}

tXunChaTask.MiWuSenLin = {}
tXunChaTask.MiWuSenLin.Start = {50114}
tXunChaTask.MiWuSenLin.End = {50275,50119,50124}

tXunChaTask.BuDongDao = {}
tXunChaTask.BuDongDao.Start = {50290}
tXunChaTask.BuDongDao.End = {50298,50306,50312,50316}

tXunChaTask.TianKongCheng = {}
tXunChaTask.TianKongCheng.Start = {50317}
tXunChaTask.TianKongCheng.End = {50324,50331,50336}

--NPC
local tNpcId_MCY = {}
tNpcId_MCY.LunNaDe = 3043
tNpcId_MCY.ZhuoNa = 3183
tNpcId_MCY.TaKe = 3184
tNpcId_MCY.WuTe = 3647
tNpcId_MCY.BiDuoMao = 3080
tNpcId_MCY.JiLa = 3042



--NPC配置

rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe] = {} --伦纳德
rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe]["NpcRecord"] = 1284
rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe]["GenId"] = 2001656
rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe]["EffectId"] = 2004
rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe]["EffectScale"] = 100
rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe]["EffectPos"] = "-0.674,3.6,0.652"
rwtNpcRE_NpcData[tNpcId_MCY.LunNaDe]["EffectAngle"] = "0,50,0"

rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa] = {} --卓娜
rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa]["NpcRecord"] = 1285
rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa]["GenId"] = 1001011
rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa]["EffectId"] = 2004
rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa]["EffectScale"] = 100
rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa]["EffectPos"] = "-0.674,3.6,0.652"
rwtNpcRE_NpcData[tNpcId_MCY.ZhuoNa]["EffectAngle"] = "0,50,0"

rwtNpcRE_NpcData[tNpcId_MCY.TaKe] = {} --巨斧战士塔克
rwtNpcRE_NpcData[tNpcId_MCY.TaKe]["NpcRecord"] = 1286
rwtNpcRE_NpcData[tNpcId_MCY.TaKe]["GenId"] = 1001012
rwtNpcRE_NpcData[tNpcId_MCY.TaKe]["EffectId"] = 2004
rwtNpcRE_NpcData[tNpcId_MCY.TaKe]["EffectScale"] = 100
rwtNpcRE_NpcData[tNpcId_MCY.TaKe]["EffectPos"] = "-0.674,3.6,0.652"
rwtNpcRE_NpcData[tNpcId_MCY.TaKe]["EffectAngle"] = "0,50,0"

rwtNpcRE_NpcData[tNpcId_MCY.WuTe] = {} --佣兵特伍德
rwtNpcRE_NpcData[tNpcId_MCY.WuTe]["NpcRecord"] = 1287
rwtNpcRE_NpcData[tNpcId_MCY.WuTe]["GenId"] = 1001027
rwtNpcRE_NpcData[tNpcId_MCY.WuTe]["EffectId"] = 2004
rwtNpcRE_NpcData[tNpcId_MCY.WuTe]["EffectScale"] = 100
rwtNpcRE_NpcData[tNpcId_MCY.WuTe]["EffectPos"] = "-0.674,3.6,0.652"
rwtNpcRE_NpcData[tNpcId_MCY.WuTe]["EffectAngle"] = "0,50,0"

rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao] = {} --比多猫
rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao]["NpcRecord"] = 1289
rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao]["GenId"] = 2001658
rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao]["EffectId"] = 2004
rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao]["EffectScale"] = 100
rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao]["EffectPos"] = "-0.674,3.6,0.652"
rwtNpcRE_NpcData[tNpcId_MCY.BiDuoMao]["EffectAngle"] = "0,50,0"

rwtNpcRE_NpcData[tNpcId_MCY.JiLa] = {} --吉拉
rwtNpcRE_NpcData[tNpcId_MCY.JiLa]["NpcRecord"] = 1301
rwtNpcRE_NpcData[tNpcId_MCY.JiLa]["GenId"] = 1001026
rwtNpcRE_NpcData[tNpcId_MCY.JiLa]["EffectId"] = 2004
rwtNpcRE_NpcData[tNpcId_MCY.JiLa]["EffectScale"] = 100
rwtNpcRE_NpcData[tNpcId_MCY.JiLa]["EffectPos"] = "-0.674,3.6,0.652"
rwtNpcRE_NpcData[tNpcId_MCY.JiLa]["EffectAngle"] = "0,50,0"


--随机池配置

rwtNpcRE_AreaData[100001] = {}
rwtNpcRE_AreaData[100001]["MapId"] = 1000
rwtNpcRE_AreaData[100001]["Priority"] = 1
rwtNpcRE_AreaData[100001]["AreaRecord"] = 1282
rwtNpcRE_AreaData[100001]["Weight"] = 55
rwtNpcRE_AreaData[100001]["Type"] = CONST_NPCRANDOMEVENT_UPTYPE.TaskFinish
rwtNpcRE_AreaData[100001]["Param"] = {70519}

rwtNpcRE_AreaData[100001]["RandomPool"] = {}
rwtNpcRE_AreaData[100001]["RandomPool"][1] = {}  --伦纳德
rwtNpcRE_AreaData[100001]["RandomPool"][1]["NpcId"] = tNpcId_MCY.LunNaDe
rwtNpcRE_AreaData[100001]["RandomPool"][1]["Param1"] = {2}
rwtNpcRE_AreaData[100001]["RandomPool"][1]["tTaskStart1"] = {tNpcTask_Mercenary.Task1_1}
rwtNpcRE_AreaData[100001]["RandomPool"][1]["tTaskEnd1"] = {tNpcTask_Mercenary.Task1_1}
rwtNpcRE_AreaData[100001]["RandomPool"][1]["Param2"] = {2,10340}
rwtNpcRE_AreaData[100001]["RandomPool"][1]["Type2"] = CONST_NPCRANDOMEVENT_UPTYPE.LeagueAndTaskFinish
rwtNpcRE_AreaData[100001]["RandomPool"][1]["tTaskStart2"] = {tNpcTask_Mercenary.LunNaDe_BaoShi_Start}
rwtNpcRE_AreaData[100001]["RandomPool"][1]["tTaskEnd2"] = {tNpcTask_Mercenary.LunNaDe_BaoShi_End}
rwtNpcRE_AreaData[100001]["RandomPool"][2] = {}  --卓娜
rwtNpcRE_AreaData[100001]["RandomPool"][2]["NpcId"] = tNpcId_MCY.ZhuoNa
rwtNpcRE_AreaData[100001]["RandomPool"][2]["Param1"] = {2}
rwtNpcRE_AreaData[100001]["RandomPool"][2]["tTaskStart1"] = {tNpcTask_Mercenary.Task4_1}
rwtNpcRE_AreaData[100001]["RandomPool"][2]["tTaskEnd1"] = {tNpcTask_Mercenary.Task4_1}
rwtNpcRE_AreaData[100001]["RandomPool"][3] = {}  --巨斧战士塔克
rwtNpcRE_AreaData[100001]["RandomPool"][3]["NpcId"] = tNpcId_MCY.TaKe
rwtNpcRE_AreaData[100001]["RandomPool"][3]["Param1"] = {1}
rwtNpcRE_AreaData[100001]["RandomPool"][3]["Type1"] = CONST_NPCRANDOMEVENT_UPTYPE.LeagueLess
rwtNpcRE_AreaData[100001]["RandomPool"][3]["tTaskStart1"] = {tNpcTask_Mercenary.Task15_1}
rwtNpcRE_AreaData[100001]["RandomPool"][3]["tTaskEnd1"] = {tNpcTask_Mercenary.Task15_1}
rwtNpcRE_AreaData[100001]["RandomPool"][4] = {}  --佣兵特伍德
rwtNpcRE_AreaData[100001]["RandomPool"][4]["NpcId"] = tNpcId_MCY.WuTe
rwtNpcRE_AreaData[100001]["RandomPool"][4]["Param1"] = {1}
rwtNpcRE_AreaData[100001]["RandomPool"][4]["Type1"] = CONST_NPCRANDOMEVENT_UPTYPE.LeagueLess
rwtNpcRE_AreaData[100001]["RandomPool"][4]["tTaskStart1"] = {tNpcTask_Mercenary.Task14_1}
rwtNpcRE_AreaData[100001]["RandomPool"][4]["tTaskEnd1"] = {tNpcTask_Mercenary.Task14_1}
rwtNpcRE_AreaData[100001]["RandomPool"][4]["Param2"] = {2}
rwtNpcRE_AreaData[100001]["RandomPool"][4]["tTaskStart2"] = {70551}
rwtNpcRE_AreaData[100001]["RandomPool"][4]["tTaskEnd2"] = {70557}
rwtNpcRE_AreaData[100001]["RandomPool"][5] = {}  --比多猫
rwtNpcRE_AreaData[100001]["RandomPool"][5]["NpcId"] = tNpcId_MCY.BiDuoMao
rwtNpcRE_AreaData[100001]["RandomPool"][5]["Param1"] = {4,10367}
rwtNpcRE_AreaData[100001]["RandomPool"][5]["Type1"] = CONST_NPCRANDOMEVENT_UPTYPE.LeagueAndTaskFinish
rwtNpcRE_AreaData[100001]["RandomPool"][5]["tTaskStart1"] = {tNpcTask_Mercenary.Task2_1}
rwtNpcRE_AreaData[100001]["RandomPool"][5]["tTaskEnd1"] = {tNpcTask_Mercenary.Task2_1}
rwtNpcRE_AreaData[100001]["RandomPool"][5]["Param2"] = {2,10188}
rwtNpcRE_AreaData[100001]["RandomPool"][5]["Type2"] = CONST_NPCRANDOMEVENT_UPTYPE.LeagueAndTaskFinish
rwtNpcRE_AreaData[100001]["RandomPool"][5]["tTaskStart2"] = {tNpcTask_Mercenary.Task3_1}
rwtNpcRE_AreaData[100001]["RandomPool"][5]["tTaskEnd2"] = {tNpcTask_Mercenary.Task3_4}
rwtNpcRE_AreaData[100001]["RandomPool"][6] = {}  --吉拉
rwtNpcRE_AreaData[100001]["RandomPool"][6]["NpcId"] = tNpcId_MCY.JiLa
rwtNpcRE_AreaData[100001]["RandomPool"][6]["Param1"] = {1}
rwtNpcRE_AreaData[100001]["RandomPool"][6]["Type1"] = CONST_NPCRANDOMEVENT_UPTYPE.LeagueLess
rwtNpcRE_AreaData[100001]["RandomPool"][6]["tTaskStart1"] = {tNpcTask_Mercenary.Task13_1}
rwtNpcRE_AreaData[100001]["RandomPool"][6]["tTaskEnd1"] = {tNpcTask_Mercenary.Task13_1}


--巡查任务随机池
rwtNpcRE_AreaData[100002] = {}
rwtNpcRE_AreaData[100002]["MapId"] = 1000
rwtNpcRE_AreaData[100002]["Priority"] = 1
rwtNpcRE_AreaData[100002]["AreaRecord"] = 1318
rwtNpcRE_AreaData[100002]["Weight"] = 45
rwtNpcRE_AreaData[100002]["Type"] = CONST_NPCRANDOMEVENT_UPTYPE.League
rwtNpcRE_AreaData[100002]["Param"] = {2}
--第一片区
rwtNpcRE_AreaData[100002]["RandomPool"] = {}
rwtNpcRE_AreaData[100002]["RandomPool"][1] = {}  --比多猫 
rwtNpcRE_AreaData[100002]["RandomPool"][1]["NpcId"] = tNpcId_MCY.BiDuoMao
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param1"] = {2001,200101} --湖畔镇
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type1"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart1"] = tXunChaTask.HuPanZhen.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd1"] = tXunChaTask.HuPanZhen.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param2"] = {2001,200102} -- 罗兰镇
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type2"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart2"] = tXunChaTask.LuoLanZhen.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd2"] = tXunChaTask.LuoLanZhen.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param3"] = {2001,200103}  -- 风车镇
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type3"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart3"] = tXunChaTask.FengCheZhen.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd3"] = tXunChaTask.FengCheZhen.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param4"] = {2001,200104}  -- 阿克莱斯
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type4"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart4"] = tXunChaTask.AKeLaiSi.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd4"] = tXunChaTask.AKeLaiSi.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param5"] = {2001,200105}  -- 哀嚎神殿
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type5"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart5"] = tXunChaTask.AiHaoShenDian.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd5"] = tXunChaTask.AiHaoShenDian.End
--第二片区
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param6"] = {2003,200301}  -- 冒险者营地
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type6"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart6"] = tXunChaTask.MaoXianZhe.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd6"] = tXunChaTask.MaoXianZhe.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param7"] = {2003,200302}  -- 三月边陲
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type7"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart7"] = tXunChaTask.SanYueBianChui.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd7"] = tXunChaTask.SanYueBianChui.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param8"] = {2003,200303}  -- 月神森林
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type8"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart8"] = tXunChaTask.YueShenSengLin.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd8"] = tXunChaTask.YueShenSengLin.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param9"] = {2003,200304}  -- 永夜森林
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type9"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart9"] = tXunChaTask.YongYeSenLin.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd9"] = tXunChaTask.YongYeSenLin.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param10"] = {2003,200305}  -- 迷雾深林
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type10"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart10"] = tXunChaTask.MiWuSenLin.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd10"] = tXunChaTask.MiWuSenLin.End
--第三片区
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param11"] = {2005,200501}  -- 不冬岛
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type11"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart11"] = tXunChaTask.BuDongDao.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd11"] = tXunChaTask.BuDongDao.End
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Param12"] = {2005,200502}  -- 天空城
rwtNpcRE_AreaData[100002]["RandomPool"][1]["Type12"] = CONST_NPCRANDOMEVENT_UPTYPE.AreaUnLock
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskStart12"] = tXunChaTask.TianKongCheng.Start
rwtNpcRE_AreaData[100002]["RandomPool"][1]["tTaskEnd12"] = tXunChaTask.TianKongCheng.End