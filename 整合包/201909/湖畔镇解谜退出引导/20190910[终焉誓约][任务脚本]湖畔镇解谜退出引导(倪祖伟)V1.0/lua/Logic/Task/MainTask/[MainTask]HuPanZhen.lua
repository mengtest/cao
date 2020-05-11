--region [MainTask]LuoLanZhen.lua
--Purpose:		罗兰镇主线
--Creator: 		余锦鑫
--Created:		2017-11-21
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-09-10 $
--RCS-ID:		$Revision: 1 $
--罗兰镇主线


--endregion

----***************************数据定义***************************----
-------------------任务ID-----------------

local tTask_HuPanZhen = {}
tTask_HuPanZhen[1] =  10100			-- 湖畔镇，我来了！,抵达湖畔镇
tTask_HuPanZhen[2] =  10101			-- 由问路引发的……,向镇民问路
tTask_HuPanZhen[3] =  10102			-- 正义的使者,安慰由莉
tTask_HuPanZhen[4] =  10103			-- 正义的使者,击败温丽
tTask_HuPanZhen[5] =  10104			-- 温丽的乌龙,化解误会
tTask_HuPanZhen[6] =  10105			-- 温丽的乌龙,核实赫丽的身份
tTask_HuPanZhen[7] =  10106			-- 有执念的祭司,向桑妮祭司请教
tTask_HuPanZhen[8] =  10225			-- 有执念的祭司,《罗兰颂歌》在这里
tTask_HuPanZhen[9] =  10109			-- 有执念的祭司,《罗兰颂歌》在这里
tTask_HuPanZhen[10] = 10108			-- 博学的重要性,查看《罗兰颂歌》
-- tTask_HuPanZhen[11] = 10107			-- 危机！怪物来袭,击败野蛮孤狼
-- tTask_HuPanZhen[12] = 10171			-- 危机！怪物来袭,击败野蛮孤狼(补充)
tTask_HuPanZhen[13] = 10110			-- 由莉的执念,治疗由莉
tTask_HuPanZhen[14] = 10111			-- 由莉的执念,关于由莉的真相
tTask_HuPanZhen[15] = 10266			-- 提升实力饿狼巢穴,通关饿狼巢穴
tTask_HuPanZhen[16] = 10112			-- 饿狼巢穴,通关饿狼巢穴
tTask_HuPanZhen[17] = 10113			-- 再见了，由莉,前往教堂
tTask_HuPanZhen[18] = 10114			-- 再见了，由莉,前往教堂
tTask_HuPanZhen[19] = 10115			-- 再见了，由莉,去湖边找由莉
tTask_HuPanZhen[20] = 10116			-- 再见了，由莉,安慰温丽
tTask_HuPanZhen[21] = 10267			-- 温丽的预言,接受桑妮的提议--新增对白任务
tTask_HuPanZhen[22] = 10117			-- 温丽的预言,回旅馆休息
tTask_HuPanZhen[23] = 10118			-- 温丽的预言,温丽的奇妙梦境
tTask_HuPanZhen[24] = 10119			-- 下一个旅程,《罗兰颂歌》的解读
tTask_HuPanZhen[25] = 10223			-- 下一个旅程,命运的羁绊
tTask_HuPanZhen[26] = 10224			-- 下一个旅程,取队名

tTask_HuPanZhen[27] = 10676			-- 新增湖畔镇，我来了！
tTask_HuPanZhen[28] = 10677			-- 新增再见了，由莉


local nNextLuolanTask = 10126           --接罗兰镇主线

tTask_HuPanZhen.HuaiJiaHuo = 70203      -- 坏家伙们
-- tTask_HuPanZhen.JiuWeiBiShi = 70204     -- 久违的比试

--------------------------------------------------------------------
--========================================================--
--local jiaotang = 2001112 --10004
--local zahuodian = 2001113 -- 10005
--local lvdian = 2001134 -- 10006
-----------------------陷阱genId---------------------------
local tGenId = {}
tGenId.CunKou     = 2001108           -- 入村口陷阱
tGenId.YL_CkTrap  = 2001109           -- 由莉村口陷阱
tGenId.YL_CunLi   = 2001110           -- 由莉村里陷阱
tGenId.YL_HuBian  = 2001111           -- 由莉再见陷阱湖边

tGenId.EL         = 2001106           -- 海利大妈陷阱
tGenId.ZhenMin    = 2001107           -- 镇民陷阱
tGenId.ZaHuoPu    = 2001114           -- 杂货铺陷阱
tGenId.JieMiWu    = 2001120           -- 解密屋前陷井
tGenId.WinLyMeng  = 20010198          -- 温丽预言梦陷阱
-----------------------陷阱groupTypeid---------------------------
local tTrap = {}
tTrap.CunKou      = 30081           -- 入村口陷阱
tTrap.YL_Cunkou   = 30082           -- 由莉村口陷阱
tTrap.YL_CunLi    = 30083           -- 由莉村里陷阱
tTrap.YL_HuBian   = 30084           -- 由莉再见陷阱

tTrap.EL          = 30085           -- 饿狼陷阱--海利大妈陷阱
tTrap.ZhenMin     = 30086           -- 镇民陷阱
tTrap.ZaHuoPu     = 30087           -- 杂货铺陷阱
tTrap.JieMiWu     = 30211           -- 解密屋前陷井
tTrap.WinLyMeng   = 30574           -- 温丽梦境陷阱

tTrap.YuCiTongShi = 30583           --与此同时

tGenId.ChuFa = 2001688  --出发取队名
tTrap.ChuFa       = 30088 --出发取队名

--支线引导任务定义
--陷阱ID

tTrap.HuaiJiaHuo = 30578
tTrap.GenId_HuaiJiaHuo = 20010199
rwtNpcGroup[tTrap.HuaiJiaHuo] = rwtNpcGroup[tTrap.HuaiJiaHuo] or {} 
rwtNpcGroup[tTrap.HuaiJiaHuo]["Type"] = CONST_NPCGROUP_TYPE.Trap
-----------------------Npc_genId---------------------------
tGenId.YL_CunKou   = 2001101          -- 村口由莉
tGenId.YL_CunLiNpc = 2001102          -- 村里由莉
tGenId.YL_HuBianNpc= 2001103          -- 湖边由莉

tGenId.HaiLi       = 2001104          -- 海莉大妈
-- tGenId.ZhenMin     = 2001105          -- 镇民
-- tGenId.WenLi       = 2001105          -- 温丽
-----------------------Npc_groupTypeid---------------------------
local tNPCGroup={}
tNPCGroup.YL_CunKou   = 20046          -- 由莉
tNPCGroup.HaiLi       = 20047          -- 海莉大妈
tNPCGroup.ZhenMin     = 20048          -- 镇民
-- tNPCGroup.WenLi       = 20128          -- 温丽

--闲聊NPC
tNPCGroup.QiNa = 20139    --齐娜
tNPCGroup.RuiXi = 20143    --瑞茜
tNPCGroup.AiLi = 20141    --旅行者艾力

-----------------------Monster_genId---------------------------
tGenId.HuKeSi  = 2001115        -- 胡克斯
tGenId.WenLi   = 2001116        -- 温丽
tGenId.Lang_1  = 2001117        -- 狼1
tGenId.Lang_2  = 2001118        -- 狼2
tGenId.Lang_3  = 2001119        -- 狼3
-----------------------Monster_groupTypeid---------------------
local tMonsterGroup = {}
tMonsterGroup.HuKeSi  = 900126        -- 胡克斯
tMonsterGroup.Lang_1  = 900127        -- 狼1
tMonsterGroup.WenLi   = 900128        -- 温丽

--====================Trap===========================--
rwtNpcGroup[tTrap.CunKou] = rwtNpcGroup[tTrap.CunKou] or {}
rwtNpcGroup[tTrap.CunKou]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.YL_Cunkou] = rwtNpcGroup[tTrap.YL_Cunkou] or {}
rwtNpcGroup[tTrap.YL_Cunkou]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.YL_CunLi] = rwtNpcGroup[tTrap.YL_CunLi] or {}
rwtNpcGroup[tTrap.YL_CunLi]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.YL_HuBian] = rwtNpcGroup[tTrap.YL_HuBian] or {}
rwtNpcGroup[tTrap.YL_HuBian]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.EL] = rwtNpcGroup[tTrap.EL] or {}
rwtNpcGroup[tTrap.EL]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.ZhenMin] = rwtNpcGroup[tTrap.ZhenMin] or {}
rwtNpcGroup[tTrap.ZhenMin]["Type"] = CONST_NPCGROUP_TYPE.Trap



rwtNpcGroup[tTrap.ZaHuoPu] = rwtNpcGroup[tTrap.ZaHuoPu] or {}
rwtNpcGroup[tTrap.ZaHuoPu]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.ChuFa] = rwtNpcGroup[tTrap.ChuFa] or {}
rwtNpcGroup[tTrap.ChuFa]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.JieMiWu] = rwtNpcGroup[tTrap.JieMiWu] or {}
rwtNpcGroup[tTrap.JieMiWu]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.WinLyMeng] = rwtNpcGroup[tTrap.WinLyMeng] or {}
rwtNpcGroup[tTrap.WinLyMeng]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[tTrap.YuCiTongShi] = rwtNpcGroup[tTrap.YuCiTongShi] or {}
rwtNpcGroup[tTrap.YuCiTongShi]["Type"] = CONST_NPCGROUP_TYPE.Trap
-----------------

--与此同时陷阱
local nTrap_2 = 30582
local nTrap_2_GenId = 20010203

local nTrap_3 = 30640
local nTrap_3_GenId = 1000192

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}   --与此同时陷阱1
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
--rwtNpcGroup[nTrap_2]["TrapFunc"] = function ()
--     rwEnterMap(2001,"0.01,0.02,16.29")
--end


rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}   --前往湖畔镇陷阱
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
-------------------NPCID-----------------
local tNPC = {}
tNPC.SanNi = 2035  --桑妮
tNPC.LaoBan = 3044  --旅馆老板
tNPC.TanYuan = 3045  --秘密探员
-- tNPC.JieRui = 3046  --杰瑞
-- tNPC.JieRuiMa = 3047  --杰瑞妈妈
tNPC.XiEr = 3048   --老希尔
tNPC.HaiLi = 3036 -- 海莉大妈
tNPC.YouLi = 2032 -- 由莉

--闲聊NPC
tNPC.QiNa = 3095    --齐娜
tNPC.RuiXi = 3096    --瑞茜
tNPC.AiLi = 3186    --旅行者艾力
--桑尼
rwtNpc[tNPC.SanNi] = {}
rwtNpc[tNPC.SanNi]["DialogId"] = {1089,1090,1091}
--旅馆老板
rwtNpc[tNPC.LaoBan] = {}
rwtNpc[tNPC.LaoBan]["DialogId"] = {1040,1041,1042}

rwtNpc[tNPC.TanYuan] = {}
-- rwtNpc[tNPC.JieRui] = {}
-- rwtNpc[tNPC.JieRuiMa] = {}
-- 希尔
rwtNpc[tNPC.XiEr] = {}
rwtNpc[tNPC.XiEr]["DialogId"] = {1037,1038,1039}
--海莉大妈
rwtNpc[tNPC.HaiLi] = {}
rwtNpc[tNPC.HaiLi]["DialogId"] = {1102,1103,1104}
--由莉
rwtNpc[tNPC.YouLi] = {}
rwtNpc[tNPC.YouLi]["DialogId"] = {1099,1100,1101}

rwtNpc[3037] = {} --镇民
rwtNpc[3037]["DialogId"] = {1105,1106,1107}

--齐娜
rwtNpc[tNPC.QiNa] = rwtNpc[tNPC.QiNa]  or {}
rwtNpc[tNPC.QiNa]["DialogId"] = {1058,1059,1060}
--瑞茜
rwtNpc[tNPC.RuiXi] = rwtNpc[tNPC.RuiXi] or {}
rwtNpc[tNPC.RuiXi]["DialogId"] = {1061,1062,1063}
--旅行者艾力
rwtNpc[tNPC.AiLi] = rwtNpc[tNPC.AiLi] or {}
rwtNpc[tNPC.AiLi]["DialogId"] = {1064,1065,1066}

rwtNpcGroup[10004] = rwtNpcGroup[10004] or {}  --教堂
rwtNpcGroup[10004]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[10004]["NpcId1"]= tNPC.SanNi

rwtNpcGroup[10005] = rwtNpcGroup[10005] or {}  --杂货屋
rwtNpcGroup[10005]["Type"] = CONST_NPCGROUP_TYPE.PuzzleNpc
rwtNpcGroup[10005]["PuzzleId"] = 101
rwtNpcGroup[10005]["DialogId"] = 1768

rwtNpcGroup[10006] = rwtNpcGroup[10006] or {}  --旅馆
rwtNpcGroup[10006]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[10006]["NpcId1"]= tNPC.LaoBan

rwtNpcGroup[20076] = rwtNpcGroup[20076] or {}  --秘密探员
rwtNpcGroup[20076]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20076]["NpcId"]= tNPC.TanYuan

rwtNpcGroup[20079] = rwtNpcGroup[20079] or {}  --老希尔
rwtNpcGroup[20079]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20079]["NpcId"]= tNPC.XiEr

rwtNpcGroup[20048] = rwtNpcGroup[20048] or {}  --镇民
rwtNpcGroup[20048]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20048]["NpcId"]= 3037

rwtNpcGroup[20047] = rwtNpcGroup[20047] or {}  --海莉大妈
rwtNpcGroup[20047]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20047]["NpcId"]= tNPC.HaiLi

rwtNpcGroup[20046] = rwtNpcGroup[20046] or {}  --由莉
rwtNpcGroup[20046]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20046]["NpcId"]= tNPC.YouLi

rwtNpcGroup[tNPCGroup.QiNa] = rwtNpcGroup[tNPCGroup.QiNa] or {}  --齐娜
rwtNpcGroup[tNPCGroup.QiNa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPCGroup.QiNa]["NpcId"]= tNPC.QiNa

rwtNpcGroup[tNPCGroup.RuiXi] = rwtNpcGroup[tNPCGroup.RuiXi] or {}  --瑞茜
rwtNpcGroup[tNPCGroup.RuiXi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPCGroup.RuiXi]["NpcId"]= tNPC.RuiXi

rwtNpcGroup[tNPCGroup.AiLi] = rwtNpcGroup[tNPCGroup.AiLi] or {}  --艾力
rwtNpcGroup[tNPCGroup.AiLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPCGroup.AiLi]["NpcId"]= tNPC.AiLi
--==========================sPos=======================================--
-- tPos.Haili            = "16.29,0.05,-20.79"   --海莉大妈
local tPos = {}
tPos.JiaoTang         = "8.73,0.05,-17.75"    --教堂
tPos.ZaWuWu           = "-13.7,0.1,-8.2"      --杂物屋
tPos.ZaWuWu_Wai       = "-7.79,0.05,-15.66"   --杂物屋外
tPos.Fuben            = "-30.71,0.05,-10.79"  --副本入口
tPos.YouliShengTian   = "13.88,1.22,-27.59"   --由莉升天
tPos.Youli            = "-7.79,0.05,4.87"     --由莉
tPos.Youli_jinCun     = "10.62,0.05,-11.93"    --由莉--进村
tPos.ZhenMin          = "-0.23,0.32,-15.32"   --镇民
tPos.LvDian           = "-1.61,0.05,-1.41"    -- 旅店
tPos.QuDuiMing        = "10.32,0.05,-11.34"    -- 取队名
tPos.Trap_ZhenMin     = "1.50,0.05,-11.93"    --打狼人时的陷阱
tPos.ZaHuoWu_qian     = "-5.91,0.05,-14.87"   --杂货屋前面
tPos.FirstTask        = "-3.40,0.13,14.41"    --第一个任务
tPos.WinLyMeng        = "1.52,0.15,-0.06"    --温丽梦境陷阱


--奖励
--rwtSrvAward[2000031] = {}
--rwtSrvAward[2000031]["PetPackSpace"] = 1
local tAwardId = {}
tAwardId[1] = 2000021   --湖畔镇，我来了！
tAwardId[2] = 2000022   --由问路引发的……
tAwardId[3] = 2000023   --正义的使者
local nAward_getHero = 2000024  --在子任务“化解误会”结束后额外奖励：英雄-温丽
tAwardId[4] = 2000025   --温丽的乌龙
tAwardId[5] = 2000026   --有执念的祭司
tAwardId[6] = 2000027   --博学的重要性
tAwardId[7] = 2000028   --危机！怪物来袭
tAwardId[8] = 2000030   --由莉的执念
tAwardId[9] = 2000031   --饿狼巢穴
tAwardId[10] = 2000032  --再见了，由莉
tAwardId[11] = 2000033  --温丽的预言
tAwardId[12] = 2000034  --下一个旅程


--==============================函数======================================--
----***************************任务***************************----

--湖畔镇，我来了！
rwtTask[tTask_HuPanZhen[27]] = {}
rwtTask[tTask_HuPanZhen[27]]["Title"] = tLuaText[LANGUAGE_CONFIG][20217]
rwtTask[tTask_HuPanZhen[27]]["PreTaskId"] = 10210
rwtTask[tTask_HuPanZhen[27]]["NextTaskId"] = tTask_HuPanZhen[1]
rwtTask[tTask_HuPanZhen[27]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[27]]["DialogId"] = 12438--12441
rwtTask[tTask_HuPanZhen[27]]["ReqTrap1"] = nTrap_3
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][1]["GenId"] = nTrap_3_GenId
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][1]["MapId"] = 1000

rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][2]["GenId"] = 1000175
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][3]["GenId"] = 1000176
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][3]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][4]["GenId"] = 1000193
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][5] = {}
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][5]["GenId"] = 1000194
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayGenId"] = nTrap_3_GenId
rwtTask[tTask_HuPanZhen[27]]["DialogueEndFunc"] = function ()
	rwEnterMap(2001,"0.01,0.02,16.29")
end

-- --与此同时
-- rwtTask[10611] = {}
-- rwtTask[10611]["Title"] = tLuaText[LANGUAGE_CONFIG][20217]
-- rwtTask[10611]["PreTaskId"] = tTask_HuPanZhen[27]
-- rwtTask[10611]["NextTaskId"] = tTask_HuPanZhen[1]
-- rwtTask[10611]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[10611]["DialogId"] = 12438
-- rwtTask[10611]["ReqTrap1"] = nTrap_2
-- rwtTask[10611]["DynaNpcGroupGen"] = {}
-- rwtTask[10611]["DynaNpcGroupGen"][1] = {}
-- rwtTask[10611]["DynaNpcGroupGen"][1]["GenId"] = nTrap_2_GenId
-- rwtTask[10611]["DynaNpcGroupGen"][1]["MapId"] = 1000
-- rwtTask[10611]["StartAutoWay"] = {}
-- rwtTask[10611]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[10611]["StartAutoWay"]["FindWayMapId"] = 1000
-- rwtTask[10611]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
-- rwtTask[10611]["StartAutoWay"]["FindWayGenId"] = nTrap_2_GenId
-- rwtTask[10611]["DialogueEndFunc"] = function ()
-- 	rwEnterMap(2001,"0.01,0.02,16.29")
-- end
-- --rwtTask[10611]["IsClickComplete"] = 1

----与此同时
--rwtTask[10621] = {}
--rwtTask[10621]["Title"] = tLuaText[LANGUAGE_CONFIG][20217]
--rwtTask[10621]["PreTaskId"] = 10611
--rwtTask[10621]["NextTaskId"] = tTask_HuPanZhen[1]
--rwtTask[10621]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[10621]["DialogId"] = 11985
--rwtTask[10621]["ReqTrap1"] = nTrap_3
--rwtTask[10621]["DynaNpcGroupGen"] = {}
--rwtTask[10621]["DynaNpcGroupGen"][1] = {}
--rwtTask[10621]["DynaNpcGroupGen"][1]["GenId"] = nTrap_3_GenId
--rwtTask[10621]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[10621]["StartAutoWay"] = {}
--rwtTask[10621]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[10621]["StartAutoWay"]["FindWayMapId"] = 2001
--rwtTask[10621]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
--rwtTask[10621]["StartAutoWay"]["FindWayGenId"] = nTrap_3_GenId
----rwtTask[10621]["DialogueEndFunc"] = function ()
----	rwEnterMap(2001,"0.01,0.02,16.29")
----end

rwtTask[tTask_HuPanZhen[1]] = {}
rwtTask[tTask_HuPanZhen[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20217]
rwtTask[tTask_HuPanZhen[1]]["PreTaskId"] = tTask_HuPanZhen[27]
rwtTask[tTask_HuPanZhen[1]]["NextTaskId"] = tTask_HuPanZhen[2]
rwtTask[tTask_HuPanZhen[1]]["DialogId"] = 10111
rwtTask[tTask_HuPanZhen[1]]["ReqTrap1"] = tTrap.CunKou
rwtTask[tTask_HuPanZhen[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.CunKou
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.YL_CunKou
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][3] = {}
--rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][3]["GenId"] = 1000033 --主城萨林
--rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][3]["MapId"] = 1000
--rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][4]["GenId"] = 1000175 --主城汉莎
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][4]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][5] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][5]["GenId"] = 1000176 --主城斯达
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][5]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][5]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][6] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][6]["GenId"] = 1000193 --主城哥布林怀特
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][6]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][6]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][7] = {}
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][7]["GenId"] = 1000194 --主城贝蒂
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][7]["MapId"] = 1000
rwtTask[tTask_HuPanZhen[1]]["DynaNpcGroupGen"][7]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

--rwtTask[tTask_HuPanZhen[1]]["AwardId"] = 2000021
rwtTask[tTask_HuPanZhen[1]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[1]
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[1]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[1]
rwtTask[tTask_HuPanZhen[1]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[1]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[1]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[1]]["StartAutoWay"]["FindWayPos"] = tPos.FirstTask
rwtTask[tTask_HuPanZhen[1]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.WELFARE}  --福利系统


rwtTask[tTask_HuPanZhen[2]] = {}
rwtTask[tTask_HuPanZhen[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20218]
rwtTask[tTask_HuPanZhen[2]]["PreTaskId"] = tTask_HuPanZhen[1]
rwtTask[tTask_HuPanZhen[2]]["NextTaskId"] = tTask_HuPanZhen[3]
rwtTask[tTask_HuPanZhen[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[2]]["DialogId"] = 10112
rwtTask[tTask_HuPanZhen[2]]["TaskNpc"] = tNPC.YouLi
rwtTask[tTask_HuPanZhen[2]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[2]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_CunKou
rwtTask[tTask_HuPanZhen[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask_HuPanZhen[2]]["AwardId"] = 2000022
rwtTask[tTask_HuPanZhen[2]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[2]
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[2]
-- rwtTask[tTask_HuPanZhen[2]]["StartAutoWay"] = {}
-- rwtTask[tTask_HuPanZhen[2]]["StartAutoWay"]["FindWayTypeId"] = 1
-- rwtTask[tTask_HuPanZhen[2]]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask_HuPanZhen[2]]["StartAutoWay"]["FindWayGroupId"] = tNPCGroup.YL_CunKou
-- rwtTask[tTask_HuPanZhen[2]]["StartAutoWay"]["FindWayGenId"] = tGenId.YL_CunKou


rwtTask[tTask_HuPanZhen[3]] = {}
rwtTask[tTask_HuPanZhen[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20219]
rwtTask[tTask_HuPanZhen[3]]["PreTaskId"] = tTask_HuPanZhen[2]
rwtTask[tTask_HuPanZhen[3]]["NextTaskId"] = tTask_HuPanZhen[4]
rwtTask[tTask_HuPanZhen[3]]["DialogId"] = 10113
rwtTask[tTask_HuPanZhen[3]]["TaskNpc"] = tNPC.YouLi
rwtTask[tTask_HuPanZhen[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[3]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[3]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_CunKou
rwtTask[tTask_HuPanZhen[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_HuPanZhen[3]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[3]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_HuPanZhen[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[3]]["StartAutoWay"]["FindWayGroupId"] = tNPCGroup.YL_CunKou
rwtTask[tTask_HuPanZhen[3]]["StartAutoWay"]["FindWayGenId"] = tGenId.YL_CunKou



rwtTask[tTask_HuPanZhen[4]] = {}
rwtTask[tTask_HuPanZhen[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20220]
rwtTask[tTask_HuPanZhen[4]]["PreTaskId"] = tTask_HuPanZhen[3]
rwtTask[tTask_HuPanZhen[4]]["NextTaskId"] = tTask_HuPanZhen[5]
rwtTask[tTask_HuPanZhen[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[4]]["DialogId"] = 10114
rwtTask[tTask_HuPanZhen[4]]["TaskNpc"] = tNPC.YouLi
rwtTask[tTask_HuPanZhen[4]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[4]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_CunKou
rwtTask[tTask_HuPanZhen[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tTask_HuPanZhen[4]]["AwardId"] = 2000023
rwtTask[tTask_HuPanZhen[4]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[3]
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[4]
rwtTask[tTask_HuPanZhen[4]]["AutoTaskDialog"] = 10114



rwtTask[tTask_HuPanZhen[5]] = {}
rwtTask[tTask_HuPanZhen[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20221]
rwtTask[tTask_HuPanZhen[5]]["PreTaskId"] = tTask_HuPanZhen[4]
rwtTask[tTask_HuPanZhen[5]]["NextTaskId"] = tTask_HuPanZhen[6]
rwtTask[tTask_HuPanZhen[5]]["DialogId"] = 10115
rwtTask[tTask_HuPanZhen[5]]["TaskNpc"] = tNPC.YouLi
rwtTask[tTask_HuPanZhen[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[5]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[5]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_CunKou
rwtTask[tTask_HuPanZhen[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask_HuPanZhen[5]]["AwardId"] = 2000024

rwtTask[tTask_HuPanZhen[5]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[5]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_HuPanZhen[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[5]]["StartAutoWay"]["FindWayGroupId"] = tNPCGroup.YL_CunKou
rwtTask[tTask_HuPanZhen[5]]["StartAutoWay"]["FindWayGenId"] = tGenId.YL_CunKou


rwtTask[tTask_HuPanZhen[6]] = {}
rwtTask[tTask_HuPanZhen[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20222]
rwtTask[tTask_HuPanZhen[6]]["PreTaskId"] = tTask_HuPanZhen[5]
rwtTask[tTask_HuPanZhen[6]]["NextTaskId"] = tTask_HuPanZhen[7]
rwtTask[tTask_HuPanZhen[6]]["DialogId"] = 10116
rwtTask[tTask_HuPanZhen[6]]["TaskNpc"] =tNPC.HaiLi
rwtTask[tTask_HuPanZhen[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tTask_HuPanZhen[6]]["AwardId"] = 2000025
rwtTask[tTask_HuPanZhen[6]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[4]
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[6]
rwtTask[tTask_HuPanZhen[6]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[6]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_HuPanZhen[6]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[6]]["StartAutoWay"]["FindWayGroupId"] = tNPCGroup.HaiLi
rwtTask[tTask_HuPanZhen[6]]["StartAutoWay"]["FindWayGenId"] = tGenId.HaiLi




rwtTask[tTask_HuPanZhen[7]] = {}
rwtTask[tTask_HuPanZhen[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20223]
rwtTask[tTask_HuPanZhen[7]]["PreTaskId"] = tTask_HuPanZhen[6]
rwtTask[tTask_HuPanZhen[7]]["NextTaskId"] = tTask_HuPanZhen[8]
rwtTask[tTask_HuPanZhen[7]]["DialogId"] = 10117
rwtTask[tTask_HuPanZhen[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[7]]["TaskNpc"] = tNPC.SanNi
rwtTask[tTask_HuPanZhen[7]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[7]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[7]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[7]]["StartAutoWay"]["FindWayPos"] = tPos.JiaoTang


rwtTask[tTask_HuPanZhen[8]] = {}
rwtTask[tTask_HuPanZhen[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20224]
rwtTask[tTask_HuPanZhen[8]]["PreTaskId"] = tTask_HuPanZhen[7]
rwtTask[tTask_HuPanZhen[8]]["NextTaskId"] = tTask_HuPanZhen[9]
rwtTask[tTask_HuPanZhen[8]]["DialogId"] = 11049
rwtTask[tTask_HuPanZhen[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[8]]["ReqTrap1"] = tTrap.ZaHuoPu
rwtTask[tTask_HuPanZhen[8]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[8]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.ZaHuoPu
rwtTask[tTask_HuPanZhen[8]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[8]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[8]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[8]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[8]]["StartAutoWay"]["FindWayPos"] = "-5.91,0.05,-14.87"



rwtTask[tTask_HuPanZhen[9]] = {}
rwtTask[tTask_HuPanZhen[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20225]
rwtTask[tTask_HuPanZhen[9]]["PreTaskId"] = tTask_HuPanZhen[8]
rwtTask[tTask_HuPanZhen[9]]["NextTaskId"] = tTask_HuPanZhen[10]
rwtTask[tTask_HuPanZhen[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PUZZLE
rwtTask[tTask_HuPanZhen[9]]["PuzzleTitle"] = tLuaText[LANGUAGE_CONFIG][40016]
rwtTask[tTask_HuPanZhen[9]]["ReqPuzzleId"] = 101
rwtTask[tTask_HuPanZhen[9]]["ReqPuzzleObj"] = 101006
rwtTask[tTask_HuPanZhen[9]]["ReqPuzzleEnterDialog"] = 10697
rwtTask[tTask_HuPanZhen[9]]["ReqPuzzleEndDialog"] = 13005
rwtTask[tTask_HuPanZhen[9]]["IsClickComplete"] = 1
rwtTask[tTask_HuPanZhen[9]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[5]
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[9]
rwtTask[tTask_HuPanZhen[9]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[9]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[9]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[9]]["StartAutoWay"]["FindWayPos"] = tPos.ZaWuWu_Wai


rwtTask[tTask_HuPanZhen[10]] = {}
rwtTask[tTask_HuPanZhen[10]]["Title"] = tLuaText[LANGUAGE_CONFIG][20226]
rwtTask[tTask_HuPanZhen[10]]["PreTaskId"] = tTask_HuPanZhen[9]
rwtTask[tTask_HuPanZhen[10]]["NextTaskId"] = tTask_HuPanZhen[13]
--rwtTask[tTask_HuPanZhen[10]]["AcceptExtraTaskId"] = tTask_HuPanZhen.HuaiJiaHuo
rwtTask[tTask_HuPanZhen[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[10]]["DialogId"] = 10118
rwtTask[tTask_HuPanZhen[10]]["ReqTrap1"] = tTrap.ZaHuoPu
rwtTask[tTask_HuPanZhen[10]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[10]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[10]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.ZaHuoPu
rwtTask[tTask_HuPanZhen[10]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[tTask_HuPanZhen[10]]["AwardId"] = 2000027
rwtTask[tTask_HuPanZhen[10]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[6]
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[10]

rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][2] = {}
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = tAwardId[7]
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[10]]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[10]

rwtTask[tTask_HuPanZhen[10]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[10]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[10]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[10]]["StartAutoWay"]["FindWayPos"] = tPos.ZaHuoWu_qian


-- rwtTask[tTask_HuPanZhen[11]] = {}
-- rwtTask[tTask_HuPanZhen[11]]["Title"] = tLuaText[LANGUAGE_CONFIG][20227]
-- rwtTask[tTask_HuPanZhen[11]]["PreTaskId"] = tTask_HuPanZhen[10]
-- rwtTask[tTask_HuPanZhen[11]]["NextTaskId"] = tTask_HuPanZhen[13]
-- rwtTask[tTask_HuPanZhen[11]]["AcceptExtraTaskId"] = tTask_HuPanZhen.HuaiJiaHuo
-- rwtTask[tTask_HuPanZhen[11]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tTask_HuPanZhen[11]]["DialogId"] = 10695
-- rwtTask[tTask_HuPanZhen[11]]["ReqTrap1"] = tTrap.ZhenMin
-- rwtTask[tTask_HuPanZhen[11]]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask_HuPanZhen[11]]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask_HuPanZhen[11]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.ZhenMin
-- rwtTask[tTask_HuPanZhen[11]]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tTask_HuPanZhen[11]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- --rwtTask[tTask_HuPanZhen[11]]["AwardId"] = 2000028
-- rwtTask[tTask_HuPanZhen[11]]["Awards"] = {}
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"] = {}
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"][1] = {}
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[7]
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tTask_HuPanZhen[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[11]
-- rwtTask[tTask_HuPanZhen[11]]["StartAutoWay"] = {}
-- rwtTask[tTask_HuPanZhen[11]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_HuPanZhen[11]]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask_HuPanZhen[11]]["StartAutoWay"]["FindWayPos"] = "2.01,0.05,-15.46"

-- rwtTask[tTask_HuPanZhen[12]] = {}
-- rwtTask[tTask_HuPanZhen[12]]["Title"] = "击败赤瞳战狼"
-- rwtTask[tTask_HuPanZhen[12]]["PreTaskId"] = tTask_HuPanZhen[11]
-- rwtTask[tTask_HuPanZhen[12]]["NextTaskId"] = tTask_HuPanZhen[13]
-- rwtTask[tTask_HuPanZhen[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tTask_HuPanZhen[12]]["DialogId"] = 10495
-- rwtTask[tTask_HuPanZhen[12]]["ReqTrap1"] = tTrap.ZhenMin
-- rwtTask[tTask_HuPanZhen[12]]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask_HuPanZhen[12]]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask_HuPanZhen[12]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.ZhenMin
-- rwtTask[tTask_HuPanZhen[12]]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tTask_HuPanZhen[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_HuPanZhen[12]]["IsClickComplete"] = 1
-- rwtTask[tTask_HuPanZhen[12]]["AwardId"] = 2000028
-- rwtTask[tTask_HuPanZhen[12]]["StartAutoWay"] = {}
-- rwtTask[tTask_HuPanZhen[12]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_HuPanZhen[12]]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask_HuPanZhen[12]]["StartAutoWay"]["FindWayPos"] = tPos.Trap_ZhenMin





rwtTask[tTask_HuPanZhen[13]] = {}
rwtTask[tTask_HuPanZhen[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][20229]
rwtTask[tTask_HuPanZhen[13]]["PreTaskId"] = tTask_HuPanZhen[10]
rwtTask[tTask_HuPanZhen[13]]["NextTaskId"] = tTask_HuPanZhen[14]
rwtTask[tTask_HuPanZhen[13]]["DialogId"] = 10120
rwtTask[tTask_HuPanZhen[13]]["ReqTrap1"] = tTrap.YL_CunLi
rwtTask[tTask_HuPanZhen[13]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[13]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[13]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_CunLi
rwtTask[tTask_HuPanZhen[13]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[13]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
-- rwtTask[tTask_HuPanZhen[13]]["AwardId"] = 2000029
-- rwtTask[tTask_HuPanZhen[13]]["Awards"] = {}
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"] = {}
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"][1] = {}
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000029
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tTask_HuPanZhen[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[13]
rwtTask[tTask_HuPanZhen[13]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[13]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[13]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[13]]["StartAutoWay"]["FindWayPos"] = tPos.Trap_ZhenMin



rwtTask[tTask_HuPanZhen[14]] = {}
rwtTask[tTask_HuPanZhen[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][20230]
rwtTask[tTask_HuPanZhen[14]]["PreTaskId"] = tTask_HuPanZhen[13]
rwtTask[tTask_HuPanZhen[14]]["NextTaskId"] = tTask_HuPanZhen[15]
rwtTask[tTask_HuPanZhen[14]]["DialogId"] = 10121
rwtTask[tTask_HuPanZhen[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[14]]["TaskNpc"] = tNPC.SanNi
-- rwtTask[tTask_HuPanZhen[14]]["IsClickComplete"] = 1
--rwtTask[tTask_HuPanZhen[14]]["AwardId"] = 2000030
rwtTask[tTask_HuPanZhen[14]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[8]
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[14]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[14]

rwtTask[tTask_HuPanZhen[14]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[14]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[14]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[14]]["StartAutoWay"]["FindWayPos"] = tPos.JiaoTang

rwtTask[tTask_HuPanZhen[15]] = {}
rwtTask[tTask_HuPanZhen[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20231]
rwtTask[tTask_HuPanZhen[15]]["PreTaskId"] = tTask_HuPanZhen[14]
rwtTask[tTask_HuPanZhen[15]]["NextTaskId"] = tTask_HuPanZhen[16]
rwtTask[tTask_HuPanZhen[15]]["DialogId"] = 10541
rwtTask[tTask_HuPanZhen[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[15]]["ReqTrap1"] = tTrap.EL
rwtTask[tTask_HuPanZhen[15]]["UnlockCopyMap1"] = 3011
rwtTask[tTask_HuPanZhen[15]]["UnlockCopyMap2"] = 3038
rwtTask[tTask_HuPanZhen[15]]["UnlockCopyMap3"] = 3012
rwtTask[tTask_HuPanZhen[15]]["UnlockCopyMap4"] = 3013
rwtTask[tTask_HuPanZhen[15]]["UnlockCopyMap5"] = 3014
rwtTask[tTask_HuPanZhen[15]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[15]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[15]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.EL
rwtTask[tTask_HuPanZhen[15]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[15]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[15]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[15]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_HuPanZhen[15]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[15]]["StartAutoWay"]["FindWayGroupId"] = tTrap.EL
rwtTask[tTask_HuPanZhen[15]]["StartAutoWay"]["FindWayGenId"] = tGenId.EL
rwtTask[tTask_HuPanZhen[15]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.UPLEV_HERO}   --英雄升级



rwtTask[tTask_HuPanZhen[16]] = {}
rwtTask[tTask_HuPanZhen[16]]["Title"] = tLuaText[LANGUAGE_CONFIG][20232]
rwtTask[tTask_HuPanZhen[16]]["PreTaskId"] = tTask_HuPanZhen[15]
rwtTask[tTask_HuPanZhen[16]]["NextTaskId"] = tTask_HuPanZhen[17]
rwtTask[tTask_HuPanZhen[16]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTask_HuPanZhen[16]]["PassCopyMap1"] = {3011}
rwtTask[tTask_HuPanZhen[16]]["OpenCopyMap"] = 3011
rwtTask[tTask_HuPanZhen[16]]["IsClickComplete"] = 1
--rwtTask[tTask_HuPanZhen[16]]["Awards"] = {}
--rwtTask[tTask_HuPanZhen[16]]["Awards"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtTask[tTask_HuPanZhen[16]]["Awards"]["AwardId"] = 2000031
--rwtTask[tTask_HuPanZhen[16]]["Awards"]["PetPackSpace"] = 1
rwtTask[tTask_HuPanZhen[16]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[9]
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[16]
-- rwtTask[tTask_HuPanZhen[16]]["StartAutoWay"] = {}
-- rwtTask[tTask_HuPanZhen[16]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_HuPanZhen[16]]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask_HuPanZhen[16]]["StartAutoWay"]["FindWayPos"] = tPos.Fuben
rwtTask[tTask_HuPanZhen[16]]["AwardFunc"] = function ()

	rwUnlockTrain(3)

end


rwtTask[tTask_HuPanZhen[17]] = {}
rwtTask[tTask_HuPanZhen[17]]["Title"] = tLuaText[LANGUAGE_CONFIG][20233]
rwtTask[tTask_HuPanZhen[17]]["PreTaskId"] = tTask_HuPanZhen[16]
rwtTask[tTask_HuPanZhen[17]]["NextTaskId"] = tTask_HuPanZhen[18]
rwtTask[tTask_HuPanZhen[17]]["DialogId"] = 10122
-- rwtTask[tTask_HuPanZhen[17]]["ReqTrap1"] = tTrap.EL
rwtTask[tTask_HuPanZhen[17]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask_HuPanZhen[17]]["AutoTaskDialog"] = 10122
-- rwtTask[tTask_HuPanZhen[17]]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask_HuPanZhen[17]]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask_HuPanZhen[17]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.EL
-- rwtTask[tTask_HuPanZhen[17]]["DynaNpcGroupGen"][1]["MapId"] = 2001
-- rwtTask[tTask_HuPanZhen[17]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_HuPanZhen[17]]["StartAutoWay"] = {}
-- rwtTask[tTask_HuPanZhen[17]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_HuPanZhen[17]]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask_HuPanZhen[17]]["StartAutoWay"]["FindWayPos"] = tPos.Fuben



rwtTask[tTask_HuPanZhen[18]] = {}
rwtTask[tTask_HuPanZhen[18]]["Title"] = tLuaText[LANGUAGE_CONFIG][20234]
rwtTask[tTask_HuPanZhen[18]]["PreTaskId"] = tTask_HuPanZhen[17]
rwtTask[tTask_HuPanZhen[18]]["NextTaskId"] = tTask_HuPanZhen[19]
rwtTask[tTask_HuPanZhen[18]]["DialogId"] = 10123
rwtTask[tTask_HuPanZhen[18]]["TaskNpc"] = tNPC.SanNi
rwtTask[tTask_HuPanZhen[18]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[18]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[18]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[18]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[18]]["StartAutoWay"]["FindWayPos"] = tPos.JiaoTang


rwtTask[tTask_HuPanZhen[19]] = {}
rwtTask[tTask_HuPanZhen[19]]["Title"] = tLuaText[LANGUAGE_CONFIG][20235]
rwtTask[tTask_HuPanZhen[19]]["PreTaskId"] = tTask_HuPanZhen[18]
rwtTask[tTask_HuPanZhen[19]]["NextTaskId"] = tTask_HuPanZhen[20]
rwtTask[tTask_HuPanZhen[19]]["DialogId"] = 10124
rwtTask[tTask_HuPanZhen[19]]["TaskNpc"] = tNPC.YouLi
rwtTask[tTask_HuPanZhen[19]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[19]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[19]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[19]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_HuBianNpc
rwtTask[tTask_HuPanZhen[19]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[19]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_HuPanZhen[19]]["UnlockHeadIcon"] = {}
rwtTask[tTask_HuPanZhen[19]]["UnlockHeadIcon"][1] = {}
rwtTask[tTask_HuPanZhen[19]]["UnlockHeadIcon"][1]["HeadIconId"] = 10056 --由莉头像解锁
rwtTask[tTask_HuPanZhen[19]]["UnlockHeadIcon"][1]["RecordId"] = 11
rwtTask[tTask_HuPanZhen[19]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[19]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_HuPanZhen[19]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[19]]["StartAutoWay"]["FindWayGroupId"] = tNPCGroup.YL_CunKou
rwtTask[tTask_HuPanZhen[19]]["StartAutoWay"]["FindWayGenId"] = tGenId.YL_HuBianNpc


rwtTask[tTask_HuPanZhen[20]] = {}
rwtTask[tTask_HuPanZhen[20]]["Title"] = tLuaText[LANGUAGE_CONFIG][20236]
rwtTask[tTask_HuPanZhen[20]]["PreTaskId"] = tTask_HuPanZhen[19]
rwtTask[tTask_HuPanZhen[20]]["NextTaskId"] = tTask_HuPanZhen[28]
rwtTask[tTask_HuPanZhen[20]]["DialogId"] = 10125
rwtTask[tTask_HuPanZhen[20]]["ReqTrap1"] = tTrap.YL_HuBian
rwtTask[tTask_HuPanZhen[20]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[20]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[20]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[20]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_HuBian
rwtTask[tTask_HuPanZhen[20]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[20]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_HuPanZhen[20]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[20]]["Awards"]["PetPackSpace"] = 1
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[10]
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[20]
-- rwtTask[tTask_HuPanZhen[20]]["IsClickComplete"] = 1
rwtTask[tTask_HuPanZhen[20]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[20]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[20]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[20]]["StartAutoWay"]["FindWayPos"] = tPos.YouliShengTian
rwtTask[tTask_HuPanZhen[20]]["UnlockHeadIcon"] = {}
rwtTask[tTask_HuPanZhen[20]]["UnlockHeadIcon"][1] = {}
rwtTask[tTask_HuPanZhen[20]]["UnlockHeadIcon"][1]["HeadIconId"] = 10101 --米修头像解锁
rwtTask[tTask_HuPanZhen[20]]["UnlockHeadIcon"][1]["RecordId"] = 11

--新增解迷啊噗语=================
rwtTask[tTask_HuPanZhen[28]] = {}
rwtTask[tTask_HuPanZhen[28]]["Title"] = tLuaText[LANGUAGE_CONFIG][20236]
rwtTask[tTask_HuPanZhen[28]]["PreTaskId"] = tTask_HuPanZhen[20]
rwtTask[tTask_HuPanZhen[28]]["NextTaskId"] = tTask_HuPanZhen[21]
rwtTask[tTask_HuPanZhen[28]]["DialogId"] = 12439
rwtTask[tTask_HuPanZhen[28]]["ReqTrap1"] = tTrap.YL_HuBian
rwtTask[tTask_HuPanZhen[28]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[28]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[28]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[28]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.YL_HuBian
rwtTask[tTask_HuPanZhen[28]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[28]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_HuPanZhen[28]]["Awards"] = {}
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["PetPackSpace"] = 1
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"] = {}
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"][1] = {}
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[10]
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tTask_HuPanZhen[28]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[20]
rwtTask[tTask_HuPanZhen[28]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[28]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[28]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[28]]["StartAutoWay"]["FindWayPos"] = tPos.YouliShengTian
-- rwtTask[tTask_HuPanZhen[28]]["UnlockHeadIcon"] = {}
-- rwtTask[tTask_HuPanZhen[28]]["UnlockHeadIcon"][1] = {}
-- rwtTask[tTask_HuPanZhen[28]]["UnlockHeadIcon"][1]["HeadIconId"] = 10101 --米修头像解锁
-- rwtTask[tTask_HuPanZhen[28]]["UnlockHeadIcon"][1]["RecordId"] = 11
rwtTask[tTask_HuPanZhen[28]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.PET_COMPLEX,CONST_SYSTEM_FUNCTION.UPLEV_PET,CONST_SYSTEM_FUNCTION.UP_STAR_PET}   --本命助力，升级，升星

--================

rwtTask[tTask_HuPanZhen[21]] = {}
rwtTask[tTask_HuPanZhen[21]]["Title"] = tLuaText[LANGUAGE_CONFIG][20237]
rwtTask[tTask_HuPanZhen[21]]["PreTaskId"] = tTask_HuPanZhen[28]
rwtTask[tTask_HuPanZhen[21]]["NextTaskId"] = tTask_HuPanZhen[22]
rwtTask[tTask_HuPanZhen[21]]["DialogId"] = 10532
rwtTask[tTask_HuPanZhen[21]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
--rwtTask[tTask_HuPanZhen[21]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.WENJUAN2}  --问卷2
--解锁后一个任务不自动寻路
--rwtTask[tTask_HuPanZhen[21]]["StartAutoWay"] = {}
--rwtTask[tTask_HuPanZhen[21]]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[tTask_HuPanZhen[21]]["StartAutoWay"]["FindWayMapId"] = 2001
--rwtTask[tTask_HuPanZhen[21]]["StartAutoWay"]["FindWayPos"] = tPos.JiaoTang

--与此同时
--rwtTask[tTask_HuPanZhen[27]] = {}
--rwtTask[tTask_HuPanZhen[27]]["Title"] = tLuaText[LANGUAGE_CONFIG][21474]
--rwtTask[tTask_HuPanZhen[27]]["PreTaskId"] = tTask_HuPanZhen[21]
--rwtTask[tTask_HuPanZhen[27]]["NextTaskId"] = tTask_HuPanZhen[22]
--rwtTask[tTask_HuPanZhen[27]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[tTask_HuPanZhen[27]]["DialogId"] = 11988
--rwtTask[tTask_HuPanZhen[27]]["ReqTrap1"] = tTrap.YuCiTongShi
--rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"] = {}
--rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][1] = {}
--rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][1]["GenId"] = 20010204
--rwtTask[tTask_HuPanZhen[27]]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"] = {}
--rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayMapId"] = 2001
--rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayGroupId"] = tTrap.YuCiTongShi
--rwtTask[tTask_HuPanZhen[27]]["StartAutoWay"]["FindWayGenId"] = 20010204
--rwtTask[tTask_HuPanZhen[27]]["IsClickComplete"] = 1


rwtTask[tTask_HuPanZhen[22]] = {}
rwtTask[tTask_HuPanZhen[22]]["Title"] = tLuaText[LANGUAGE_CONFIG][20238]
rwtTask[tTask_HuPanZhen[22]]["PreTaskId"] = tTask_HuPanZhen[21]
rwtTask[tTask_HuPanZhen[22]]["NextTaskId"] = tTask_HuPanZhen[23]
rwtTask[tTask_HuPanZhen[22]]["DialogId"] = 10126
rwtTask[tTask_HuPanZhen[22]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[22]]["ReqTrap1"] = tTrap.WinLyMeng
rwtTask[tTask_HuPanZhen[22]]["CloseDialog"] = 0
--解锁后一个任务不自动寻路
rwtTask[tTask_HuPanZhen[22]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[22]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[22]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[22]]["StartAutoWay"]["FindWayPos"] = tPos.WinLyMeng
rwtTask[tTask_HuPanZhen[22]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[22]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[22]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.WinLyMeng
rwtTask[tTask_HuPanZhen[22]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[22]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete


rwtTask[tTask_HuPanZhen[23]] = {}
rwtTask[tTask_HuPanZhen[23]]["Title"] = tLuaText[LANGUAGE_CONFIG][20239]
rwtTask[tTask_HuPanZhen[23]]["PreTaskId"] = tTask_HuPanZhen[22]
rwtTask[tTask_HuPanZhen[23]]["NextTaskId"] = tTask_HuPanZhen[24]
rwtTask[tTask_HuPanZhen[23]]["DialogId"] = 10435
rwtTask[tTask_HuPanZhen[23]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[23]]["TaskNpc"] = tNPC.LaoBan
rwtTask[tTask_HuPanZhen[23]]["AutoTaskDialog"] = 10435
rwtTask[tTask_HuPanZhen[23]]["CloseDialog"] = 1
rwtTask[tTask_HuPanZhen[23]]["IsClickComplete"] = 1
--rwtTask[tTask_HuPanZhen[23]]["AwardId"] = 2000033
rwtTask[tTask_HuPanZhen[23]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[11]
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[23]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[23]



rwtTask[tTask_HuPanZhen[24]] = {}
rwtTask[tTask_HuPanZhen[24]]["Title"] = tLuaText[LANGUAGE_CONFIG][20240]
rwtTask[tTask_HuPanZhen[24]]["PreTaskId"] = tTask_HuPanZhen[23]
rwtTask[tTask_HuPanZhen[24]]["NextTaskId"] = tTask_HuPanZhen[25]
rwtTask[tTask_HuPanZhen[24]]["DialogId"] = 10128
rwtTask[tTask_HuPanZhen[24]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[24]]["TaskNpc"] = tNPC.SanNi
rwtTask[tTask_HuPanZhen[24]]["CloseDialog"] = 0
rwtTask[tTask_HuPanZhen[24]]["StartAutoWay"] = {}
rwtTask[tTask_HuPanZhen[24]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_HuPanZhen[24]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tTask_HuPanZhen[24]]["StartAutoWay"]["FindWayPos"] = tPos.JiaoTang


rwtTask[tTask_HuPanZhen[25]] = {}
rwtTask[tTask_HuPanZhen[25]]["Title"] = tLuaText[LANGUAGE_CONFIG][20241]
rwtTask[tTask_HuPanZhen[25]]["PreTaskId"] = tTask_HuPanZhen[24]
rwtTask[tTask_HuPanZhen[25]]["NextTaskId"] = tTask_HuPanZhen[26]
rwtTask[tTask_HuPanZhen[25]]["DialogId"] = 10129
rwtTask[tTask_HuPanZhen[25]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_HuPanZhen[25]]["TaskNpc"] = tNPC.SanNi
rwtTask[tTask_HuPanZhen[25]]["AutoTaskDialog"] = 10129
rwtTask[tTask_HuPanZhen[25]]["OpenMercenaryTask"] = {}
rwtTask[tTask_HuPanZhen[25]]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tTask_HuPanZhen[25]]["OpenMercenaryTask"]["TownId"] = 200101
rwtTask[tTask_HuPanZhen[25]]["CloseDialog"] = 1
rwtTask[tTask_HuPanZhen[25]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.CHANGE_USER_NAME,CONST_SYSTEM_FUNCTION.FRIEND}   --取名,好友



rwtTask[tTask_HuPanZhen[26]] = {}
rwtTask[tTask_HuPanZhen[26]]["Title"] = tLuaText[LANGUAGE_CONFIG][20242]
rwtTask[tTask_HuPanZhen[26]]["PreTaskId"] = tTask_HuPanZhen[25]
rwtTask[tTask_HuPanZhen[26]]["NextTaskId"] = nNextLuolanTask
rwtTask[tTask_HuPanZhen[26]]["DialogId"] = 10130
rwtTask[tTask_HuPanZhen[26]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen[26]]["ReqTrap1"] = tTrap.ChuFa
--rwtTask[tTask_HuPanZhen[26]]["AwardId"] = 2000034
rwtTask[tTask_HuPanZhen[26]]["Awards"] = {}
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[12]
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen[26]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen[26]
rwtTask[tTask_HuPanZhen[26]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen[26]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen[26]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.ChuFa
rwtTask[tTask_HuPanZhen[26]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen[26]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_HuPanZhen[26]]["StartAutoWay"] = {}
-- rwtTask[tTask_HuPanZhen[26]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_HuPanZhen[26]]["StartAutoWay"]["FindWayMapId"] = 2001
-- rwtTask[tTask_HuPanZhen[26]]["StartAutoWay"]["FindWayPos"] = tPos.QuDuiMing
rwtTask[tTask_HuPanZhen[26]]["AwardCreateGen"] = {20010131}
rwtTask[tTask_HuPanZhen[26]]["AwardDeleteGen"] = {20010134}

--==引导支线=========================================================




--坏家伙们
rwtTask[tTask_HuPanZhen.HuaiJiaHuo] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Title"] = tLuaText[LANGUAGE_CONFIG][21471]
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["TaskType"] = CONST_TASK_TYPE.SIDE
-- rwtTask[tTask.HuaiJiaHuo]["PreTaskId"] = 
-- rwtTask[tTask.HuaiJiaHuo]["NextTaskId"] = nil
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["IsClickComplete"] = 0
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["DialogId"] = 11931
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["ReqTrap1"] = tTrap.HuaiJiaHuo

rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["DynaNpcGroupGen"] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["DynaNpcGroupGen"][1]["GenId"] = tTrap.GenId_HuaiJiaHuo
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"][1] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000258
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_HuPanZhen.HuaiJiaHuo]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_HuPanZhen.HuaiJiaHuo
