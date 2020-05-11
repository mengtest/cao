--region [MainTask]SanYueBianChui.lua
--Purpose:		三月边陲主线
--Creator: 		倪祖伟
--Created:		2019-08-27
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-08-27 $
--RCS-ID:		$Revision: 3 $
--endregion

----***************************数据定义***************************----
-------------------任务ID--第一个任务：10230；最后一个任务10255---------------
local nLastTownTask = 10291

local tTask_SanYueBianChui={}
tTask_SanYueBianChui[1] =  10230			-- 抵达三月边陲-解读信件
tTask_SanYueBianChui[2] =  10231			-- 抵达三月边陲-找人打听
tTask_SanYueBianChui[3] =  10424			-- 孩童小镇-和阿比旦对话
tTask_SanYueBianChui[4] =  10232			-- 孩童小镇-打听玛瑙街32号-格雷
tTask_SanYueBianChui[5] =  10233			-- 孩童小镇-打听玛瑙街32号-安斯利
tTask_SanYueBianChui[6] =  10234			-- 孩童小镇-打听玛瑙街32号-库伯
tTask_SanYueBianChui[7] =  10236			-- 猎魔人的危机-找矮人打听消息
tTask_SanYueBianChui[8] =  10237			-- 猎魔人的危机-送信到玛瑙街32号
tTask_SanYueBianChui[9] =  10238			-- 猎魔人的危机-关闭水闸-战斗
tTask_SanYueBianChui[10] = 10239			-- 猎魔人的危机-关闭水闸-采集
tTask_SanYueBianChui[11] = 10240			-- 猎魔人的危机-排空污水
tTask_SanYueBianChui[12] = 10241			-- 鹿角兽的灭族危机-返回玛瑙街32号
tTask_SanYueBianChui[13] = 10243			-- 鹿角兽的灭族危机-了解鹿角兽发飙原因
tTask_SanYueBianChui[14] = 10244			-- 可怜又可恨的矮人-让黄胡子说出真相
tTask_SanYueBianChui[15] = 10245			-- 解药在哪里-找阿比旦
tTask_SanYueBianChui[16] = 10246			-- 沙海虫巢-通过沙海虫巢
tTask_SanYueBianChui[17] = 10247			-- 平复童稚事件-回酒馆
tTask_SanYueBianChui[18] = 10248			-- 平复童稚事件-解药辨认
tTask_SanYueBianChui["KaDengJi"] = 10545    -- 平复童稚事件-达到37级
tTask_SanYueBianChui[19] = 10249			-- 平复童稚事件-给镇长解药--解毒
tTask_SanYueBianChui[20] = 10250			-- 泰坦之魂-解读邀请函
tTask_SanYueBianChui[21] = 10410			-- 泰坦之魂-清除亡魂首领
tTask_SanYueBianChui[22] = 10411			-- 泰坦之魂-清除巨熊首领
tTask_SanYueBianChui[23] = 10412			-- 泰坦之魂-清除巨石首领
tTask_SanYueBianChui[24] = 10414			-- 泰坦之魂-赢得战斗
tTask_SanYueBianChui[25] = 10415			-- 是骗局吗？-泰坦的命运
tTask_SanYueBianChui[26] = 10251			-- 是骗局吗？-质问小女孩
-- tTask_SanYueBianChui[27] = 10252			-- 是骗局吗？-去会议地点
tTask_SanYueBianChui[28] = 10413			-- 神谕会议说明-神谕会议说明
tTask_SanYueBianChui[29] = 10253			-- 神谕会议-参与神谕会议
tTask_SanYueBianChui[30] = 10242			-- 精灵公主的请求-逃跑
tTask_SanYueBianChui[31] = 10254			-- 精灵公主的请求-葛莱蒂丝的自诉
-- 补充采集之后的对白任务
tTask_SanYueBianChui[32] = 10447			-- 猎魔人的危机-关闭水闸-采集
tTask_SanYueBianChui[33] = 10448			-- 猎魔人的危机-排空污水
tTask_SanYueBianChui[34] = 10622            -- 精灵公主的请求-圣界齐聚
------------------------------------------------------------------------------
------------position------------
local tPos = {}
tPos.JingLing             = "-162.25,0.40,-68.72"     --精灵自述
tPos.build32Hao           = "-155.44,0.15,-50.08"     --32号位子
tPos.HuangHuZi            = "-135.5,0.11,-41.2"       --酒馆黄胡子
tPos.ShaHai               = "-88.12,0.11,-79.51"      --沙海虫巢
tPos.HuiYi                = "-142.74,0.15,-35.19"     --神谕会议陷阱地址
tPos.CopyHuiYi            = "-143.6,0.11,-40.2"       --神谕会议副本位子
tPos.TaiTan_3             = "-222.972,0.096,-36.674"     --泰坦第三陷阱
tPos.FengSha              = "-141.78,0.153,-38.8319"  --风沙堡
tPos.FengSha_TaoLi        = "-150.94,0.153,-36.76"    --逃离风沙堡
tPos.CloseSZ              = "-142.81,0.15,-22.22"     --关闭水闸-采集
tPos.OpenPSK              = "-165.55,0.15,-33.14"     --排空污水
------------------------------------------------------------------------------
--gen_event_ID
--陷阱
local tGenId = {}
tGenId.Trap_ArriveSanYue      = 20030007   --陷阱到达三月边陲
tGenId.Trap_ZhenLi            = 20030008   --镇里打听陷阱
tGenId.Trap_BangYuRen         = 20030009   --半鱼人陷阱
tGenId.Trap_WuShui            = 20030010   --污水陷阱
tGenId.Trap_ShaHai            = 20030011   --沙海虫卵门口陷阱
tGenId.Trap_HuiYi             = 20030012   --前往会议陷阱
tGenId.Trap_JingLing          = 20030013   --精灵葛莱蒂丝自述陷阱
tGenId.Trap_HeiTiLJS          = 20030253   --与黑蹄鹿角兽战斗陷阱
tGenId.Trap_CloseSZ           = 20030387   --关闭水闸陷阱
tGenId.Trap_OpenPSK           = 20030388   --排空污水陷阱
tGenId.Trap_ShengJieQiJu      = 20030521   --圣界齐聚陷阱
--NPC
tGenId.NPC_ABiDan             = 20030014  --阿比旦        --3216
tGenId.NPC_HuangHuZi          = 20030015  --黄胡子        --3121
tGenId.NPC_GeLeiSmall         = 20030016  --小格雷        --3122
tGenId.NPC_GeLei              = 20030017  --格雷          --3123
tGenId.NPC_AnSiLiSmall        = 20030018  --小安斯利      --3124
tGenId.NPC_AnSiLi             = 20030019  --安斯利        --3125
tGenId.NPC_KuBoSmall          = 20030020  --小库伯        --3126
tGenId.NPC_KuBo               = 20030021  --库伯          --3127
tGenId.NPC_YiNuoKeSmall       = 20030022  --小伊诺克      --3128
tGenId.NPC_YiNuoKe            = 20030023  --伊诺克        --3129
tGenId.NPC_LuJiaoShou         = 20030024  --黑蹄鹿角兽    --3130
tGenId.NPC_TaiTan             = 20030254  --泰坦    
tGenId.NPC_WeiBin             = 20030588  --德鲁伊守卫
--monster
tGenId.Monster_BCShaHu        = 20030025  --边陲沙湖
tGenId.Monster_MJBanRenYu     = 20030026  --魔脊半人鱼
tGenId.Monster_HTLuJiao       = 20030027  --黑蹄鹿角兽
--collect
tGenId.Collect_ShuiZa         = 20030028  --水闸
tGenId.Collect_ChuShuiKou     = 20030029  --出水口
--building
tGenId.Build_32Hao            = 20030030  --玛瑙街32号
--local finialGenId = 20030034

--新增陷阱
tGenId.Trap_TaiTan_1          = 20030222  -- 泰坦之魂任务1陷阱
tGenId.Trap_TaiTan_2          = 20030223  -- 泰坦之魂任务2陷阱
tGenId.Trap_TaiTan_3          = 20030224  -- 泰坦之魂任务3陷阱
tGenId.Trap_TaiTan_4          = 20030226  -- 泰坦之魂任务4陷阱
tGenId.Trap_HeiTiLJS          = 20030253  -- 黑蹄鹿角兽陷阱

--新增怪物
tGenId.Monster_JiaChongSL     = 20030218  -- 怪物亡魂首领
tGenId.Monster_ShaHuSL        = 20030219  -- 怪物巨熊首领
tGenId.Monster_JuRenSL        = 20030220  -- 沙漠巨人首领
tGenId.Monster_TaiTan         = 20030221  -- 沙漠巨人首领
----------------------------------------------------------------------------
--NPCGroupId
--Trap
local tTrap = {}
tTrap.ArriveSanYue    = 30196   --陷阱到达三月边陲
tTrap.ZhenLi          = 30197   --镇里打听陷阱
tTrap.BangYuRen       = 30198   --半鱼人陷阱
tTrap.WuShui          = 30199   --污水陷阱
tTrap.ShaHai          = 30200   --沙海虫卵门口陷阱
tTrap.HuiYi           = 30201   --前往会议陷阱
tTrap.JingLing        = 30202   --精灵葛莱蒂丝自述陷阱
tTrap.HeiTiLJS        = 30316   --黑蹄鹿角兽陷阱

tTrap.TaiTan_1        = 30309   --泰坦之魂任务1陷阱
tTrap.TaiTan_2        = 30310   --泰坦之魂任务2陷阱
tTrap.TaiTan_3        = 30311   --泰坦之魂任务3陷阱
tTrap.TaiTan_4        = 30313   --泰坦之魂任务4陷阱
tTrap.CloseSZ         = 30403   --关闭水闸陷阱
tTrap.OpenPSK         = 30404   --排空污水陷阱
tTrap.ShengJieQiJu    = 30593   --圣界齐聚陷阱
--NPC
local tNPC = {}
tNPC.ABiDan           = 20156  --阿比旦
tNPC.HuangHuZi        = 20157  --黄胡子
tNPC.GeLeiSmall       = 20158  --小格雷
tNPC.GeLei            = 20159  --格雷
tNPC.AnSiLiSmall      = 20160  --小安斯利
tNPC.AnSiLi           = 20161  --安斯利
tNPC.KuBoSmall        = 20162  --小库伯
tNPC.KuBo             = 20163  --库伯
tNPC.YiNuoKeSmall     = 20164  --小伊诺克
tNPC.YiNuoKe          = 20165  --伊诺克
tNPC.LuJiaoShou       = 20166  --黑蹄鹿角兽
tNPC.TaiTan           = 20317  --泰坦
tNPC.WeiBin           = 21036  --卫兵
--collect
local tCollect = {}
tCollect.ShuiZa       = 60079  --水闸
tCollect.ChuShuiKou   = 60080  --出水口
--building
local tBuild = {}
tBuild.build32Hao     = 10011  --玛瑙街32号
tBuild.JiuGuan        = 10013  --酒馆
----------------------------------------------------------------------------
--monstergroup
local tMonsterGroup ={}
tMonsterGroup.BCShaHu         = 900189    --边陲沙狐
tMonsterGroup.MJBanRenYu      = 900190    --魔脊半人鱼
tMonsterGroup.HTLuJiao        = 900191    --黑蹄鹿角兽
tMonsterGroup.JiaChongSL      = 900240    --亡魂首领
tMonsterGroup.ShaHuSL         = 900241    --巨熊首领
tMonsterGroup.JuRenSL         = 900242    --巨人首领
tMonsterGroup.TaiTan          = 900243    --泰坦之魂

-- nMonster_BCShaHu              = 9000071    --边陲沙狐
-- nMonster_MJBanRenYu           = 9000072    --魔脊半人鱼
-- nMonster_HTLuJiao             = 9000073    --黑蹄鹿角兽
-- nMonster_JiaChongSL           = 9000130    --亡魂首领
-- nMonster_ShaHuSL              = 9000131    --巨熊首领
-- nMonster_JuRenSL              = 9000132    --巨人首领


------------------------------其他----------------------------------------------
--倒计时相关
--倒计时加速物品id
local nSpeedItem = 7000260
--卡点任务无道具提示
local sLackTips = tLuaText[LANGUAGE_CONFIG][10222]
--提交道具对白
local nSpeedDialog = 12955
--副本掉落奖励
local nSpeedAwardId = 1000816
----***************************初始化***************************----
--=====Trap==
--到达边陲陷阱
rwtNpcGroup[tTrap.ArriveSanYue] = rwtNpcGroup[tTrap.ArriveSanYue] or {}
rwtNpcGroup[tTrap.ArriveSanYue]["Type"] = CONST_NPCGROUP_TYPE.Trap

--镇里打听陷阱
rwtNpcGroup[tTrap.ZhenLi] = rwtNpcGroup[tTrap.ZhenLi] or {}
rwtNpcGroup[tTrap.ZhenLi]["Type"] = CONST_NPCGROUP_TYPE.Trap

--半人鱼陷阱
rwtNpcGroup[tTrap.BangYuRen] = rwtNpcGroup[tTrap.BangYuRen] or {}
rwtNpcGroup[tTrap.BangYuRen]["Type"] = CONST_NPCGROUP_TYPE.Trap

--污水陷阱
rwtNpcGroup[tTrap.WuShui] = rwtNpcGroup[tTrap.WuShui] or {}
rwtNpcGroup[tTrap.WuShui]["Type"] = CONST_NPCGROUP_TYPE.Trap

--沙海虫卵门口陷阱
rwtNpcGroup[tTrap.ShaHai] = rwtNpcGroup[tTrap.ShaHai] or {}
rwtNpcGroup[tTrap.ShaHai]["Type"] = CONST_NPCGROUP_TYPE.Trap

--前往会议陷阱
rwtNpcGroup[tTrap.HuiYi] = rwtNpcGroup[tTrap.HuiYi] or {}
rwtNpcGroup[tTrap.HuiYi]["Type"] = CONST_NPCGROUP_TYPE.Trap

--精灵葛莱蒂丝自述陷阱
rwtNpcGroup[tTrap.JingLing] = rwtNpcGroup[tTrap.JingLing] or {}
rwtNpcGroup[tTrap.JingLing]["Type"] = CONST_NPCGROUP_TYPE.Trap

--泰坦之魂陷阱1
rwtNpcGroup[tTrap.TaiTan_1] = rwtNpcGroup[tTrap.TaiTan_1] or {}
rwtNpcGroup[tTrap.TaiTan_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

--泰坦之魂陷阱2
rwtNpcGroup[tTrap.TaiTan_2] = rwtNpcGroup[tTrap.TaiTan_2] or {}
rwtNpcGroup[tTrap.TaiTan_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

--泰坦之魂陷阱3
rwtNpcGroup[tTrap.TaiTan_3] = rwtNpcGroup[tTrap.TaiTan_3] or {}
rwtNpcGroup[tTrap.TaiTan_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
--泰坦之魂陷阱4
rwtNpcGroup[tTrap.TaiTan_4] = rwtNpcGroup[tTrap.TaiTan_4] or {}
rwtNpcGroup[tTrap.TaiTan_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

--黑蹄鹿角兽陷阱
rwtNpcGroup[tTrap.HeiTiLJS] = rwtNpcGroup[tTrap.HeiTiLJS] or {}
rwtNpcGroup[tTrap.HeiTiLJS]["Type"] = CONST_NPCGROUP_TYPE.Trap

--关闭水闸陷阱
rwtNpcGroup[tTrap.CloseSZ] = rwtNpcGroup[tTrap.CloseSZ] or {}
rwtNpcGroup[tTrap.CloseSZ]["Type"] = CONST_NPCGROUP_TYPE.Trap

--排空污水陷阱
rwtNpcGroup[tTrap.OpenPSK] = rwtNpcGroup[tTrap.OpenPSK] or {}
rwtNpcGroup[tTrap.OpenPSK]["Type"] = CONST_NPCGROUP_TYPE.Trap

--排空污水陷阱
rwtNpcGroup[tTrap.ShengJieQiJu] = rwtNpcGroup[tTrap.ShengJieQiJu] or {}
rwtNpcGroup[tTrap.ShengJieQiJu]["Type"] = CONST_NPCGROUP_TYPE.Trap
--=====npc==
------------------------------------------
rwtNpc[3216] = rwtNpc[3216] or {}--阿比旦
rwtNpc[3216]["DialogId"] = {1232,1233,1234}

rwtNpc[3121] = rwtNpc[3121] or {}--黄胡子
rwtNpc[3121]["DialogId"] = {1235,1236,1237}
rwtNpc[3121]["Option"] = {}
rwtNpc[3121]["Option"][1] = {}
rwtNpc[3121]["Option"][1]["Title"]= tLuaText[LANGUAGE_CONFIG][40022]
rwtNpc[3121]["Option"][1]["State"] = 0
rwtNpc[3121]["Option"][1]["Chk"] = function(nNpcId)
    if rwCountDownTaskChkUserInTask(tTask_SanYueBianChui["KaDengJi"]) then
        return true
    end
    return false
end
rwtNpc[3121]["Option"][1]["Func"] = function(nNpcTypeId) --点击按钮触发
    rwCountDownSpeedLogic(tTask_SanYueBianChui["KaDengJi"])
end

-- rwtNpc[3122] = rwtNpc[3122] or {}--小格雷
rwtNpc[3123] = rwtNpc[3123] or {}--格雷
rwtNpc[3123]["DialogId"] = {1238,1239,1240}

-- rwtNpc[3124] = rwtNpc[3124] or {}--小安斯利
rwtNpc[3125] = rwtNpc[3125] or {}--安斯利
rwtNpc[3125]["DialogId"] = {1241,1242,1243}

-- rwtNpc[3126] = rwtNpc[3126] or {}--小库伯
rwtNpc[3127] = rwtNpc[3127] or {}--库伯
rwtNpc[3127]["DialogId"] = {1244,1245,1246}

-- rwtNpc[3128] = rwtNpc[3128] or {}--小伊诺克
rwtNpc[3129] = rwtNpc[3129] or {}--伊诺克
rwtNpc[3129]["DialogId"] = {1247,1248,1249}

rwtNpc[3130] = rwtNpc[3130] or {}--黑蹄鹿角兽
rwtNpc[3130]["DialogId"] = {1250,1251,1252}

rwtNpc[3131] = rwtNpc[3131] or {}--小精灵葛莱蒂丝
rwtNpc[3131]["DialogId"] = {1591,1592,1593}

rwtNpc[3132] = rwtNpc[3132] or {}--精灵葛莱蒂丝
rwtNpc[3132]["DialogId"] = {1594,1595,1596}
rwtNpc[3132]["ChkUserTempData"] = {}
rwtNpc[3132]["ChkUserTempData"]["Id"] = 1115
rwtNpc[3132]["ChkUserTempData"]["Data"] = 1
rwtNpc[3132]["ChkUserTempData"]["DoOtherDialogId"] = 1598

rwtNpc[3260] = rwtNpc[3260] or {}--泰坦

rwtNpc[3923] = rwtNpc[3923] or {}--卫兵

rwtDialog[1596] = rwtDialog[1596] or {}
rwtDialog[1596]["CloseDialog1"] = 0
rwtDialog[1596]["OptionFunc1"] = function ()
	rwOpenNpcChatDialog(1597,CONST_NPCCHAT_TYPE.NPC,3132)
end
rwtDialog[1596]["CloseDialog2"] = 0
rwtDialog[1596]["OptionFunc2"] = function (nIndex,nType,nId,nOptionIndex)
    rwUserTempDataSet(1115,1,CONST_TEMP_DATA.Data1,rwUserGetId())
	rwOpenNpcChatDialog(1598)
end

rwtNpcGroup[tNPC.ABiDan] = rwtNpcGroup[tNPC.ABiDan] or {}           --阿比旦
rwtNpcGroup[tNPC.ABiDan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.ABiDan]["NpcId"]= 3216

rwtNpcGroup[tNPC.HuangHuZi] = rwtNpcGroup[tNPC.HuangHuZi] or {}     --黄胡子
rwtNpcGroup[tNPC.HuangHuZi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.HuangHuZi]["NpcId"]= 3121

rwtNpcGroup[tNPC.GeLeiSmall] = rwtNpcGroup[tNPC.GeLeiSmall] or {}   --小格雷
rwtNpcGroup[tNPC.GeLeiSmall]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.GeLeiSmall]["NpcId"]= 3122

rwtNpcGroup[tNPC.GeLei] = rwtNpcGroup[tNPC.GeLei] or {}             --格雷
rwtNpcGroup[tNPC.GeLei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.GeLei]["NpcId"]= 3123

rwtNpcGroup[tNPC.AnSiLiSmall] = rwtNpcGroup[tNPC.AnSiLiSmall] or {}  --小安斯利
rwtNpcGroup[tNPC.AnSiLiSmall]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.AnSiLiSmall]["NpcId"]= 3124

rwtNpcGroup[tNPC.AnSiLi] = rwtNpcGroup[tNPC.AnSiLi] or {}            --安斯利
rwtNpcGroup[tNPC.AnSiLi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.AnSiLi]["NpcId"]= 3125

rwtNpcGroup[tNPC.KuBoSmall] = rwtNpcGroup[tNPC.KuBoSmall] or {}      --小库伯
rwtNpcGroup[tNPC.KuBoSmall]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.KuBoSmall]["NpcId"]= 3126

rwtNpcGroup[tNPC.KuBo] = rwtNpcGroup[tNPC.KuBo] or {}                --库伯
rwtNpcGroup[tNPC.KuBo]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.KuBo]["NpcId"]= 3127

rwtNpcGroup[tNPC.YiNuoKeSmall] = rwtNpcGroup[tNPC.YiNuoKeSmall] or {}--小伊诺克
rwtNpcGroup[tNPC.YiNuoKeSmall]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.YiNuoKeSmall]["NpcId"]= 3128

rwtNpcGroup[tNPC.YiNuoKe] = rwtNpcGroup[tNPC.YiNuoKe] or {}          --伊诺克
rwtNpcGroup[tNPC.YiNuoKe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.YiNuoKe]["NpcId"]= 3129

rwtNpcGroup[tNPC.LuJiaoShou] = rwtNpcGroup[tNPC.LuJiaoShou] or {}    --黑蹄鹿角兽
rwtNpcGroup[tNPC.LuJiaoShou]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.LuJiaoShou]["NpcId"]= 3130

rwtNpcGroup[tNPC.TaiTan] = rwtNpcGroup[tNPC.TaiTan] or {}    --泰坦
rwtNpcGroup[tNPC.TaiTan]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.TaiTan]["NpcId"]= 3260

rwtNpcGroup[tNPC.WeiBin] = rwtNpcGroup[tNPC.WeiBin] or {}    --卫兵
rwtNpcGroup[tNPC.WeiBin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNPC.WeiBin]["NpcId"]= 3923
--=====collect==
--采集水闸
rwtNpcGroup[tCollect.ShuiZa] = rwtNpcGroup[tCollect.ShuiZa] or {}
rwtNpcGroup[tCollect.ShuiZa]["Type"] = CONST_NPCGROUP_TYPE.Collect

--采集出水口
rwtNpcGroup[tCollect.ChuShuiKou] = rwtNpcGroup[tCollect.ChuShuiKou] or {}
rwtNpcGroup[tCollect.ChuShuiKou]["Type"] = CONST_NPCGROUP_TYPE.Collect


--======build==
--玛瑙街32号
rwtNpcGroup[tBuild.build32Hao] = rwtNpcGroup[tBuild.build32Hao] or {}
rwtNpcGroup[tBuild.build32Hao]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tBuild.build32Hao]["ChkTempdata"] = {}
rwtNpcGroup[tBuild.build32Hao]["ChkTempdata"]["Id"] = 1129
rwtNpcGroup[tBuild.build32Hao]["ChkTempdata"]["FailData"] = 1
rwtNpcGroup[tBuild.build32Hao]["ChkTempdata"]["FailDialogId"] = 10719

rwtNpcGroup[tBuild.build32Hao]["NpcId1"] = 3131
rwtNpcGroup[tBuild.build32Hao]["NpcChkFuc1"] = function(nNpcId)
    if rwTaskIsSuccess(tTask_SanYueBianChui[19]) then
        return false
    else
        return true
    end
end
rwtNpcGroup[tBuild.build32Hao]["NpcId2"] = 3132
rwtNpcGroup[tBuild.build32Hao]["SetFirst2"] = 1
rwtNpcGroup[tBuild.build32Hao]["NpcChkFuc2"] = function(nNpcId)
    if rwTaskIsSuccess(tTask_SanYueBianChui[19]) then
        return true
    else
        return false
    end
end

--酒馆
rwtNpcGroup[tBuild.JiuGuan] = rwtNpcGroup[tBuild.JiuGuan] or {}
rwtNpcGroup[tBuild.JiuGuan]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[tBuild.JiuGuan]["NpcId1"] = 3121


local tAwardId ={}
tAwardId[1] = 2000086  --抵达三月边陲
tAwardId[2] = 2000087  --孩童小镇
tAwardId[3] = 2000088  --阿比旦的危机
tAwardId[4] = 2000089  --鹿角兽的灭族危机
tAwardId[5] = 2000090  --可怜又可恨的矮人
tAwardId[6] = 2000091  --解药在哪里
tAwardId[7] = 2000092  --沙海虫巢
tAwardId[8] = 2000093  --平复童稚事件
tAwardId[9] = 2000094  --泰坦之魂
tAwardId[10] = 2000095 --是骗局吗？
tAwardId[11] = 2000115 --神谕会议
tAwardId[12] = 2000096 --通关黑锤塞垒
tAwardId[13] = 2000097 --精灵公主的请求
--===============================================================================================
--=================================================Task===========================================
rwtTask[tTask_SanYueBianChui[1]] = {}
rwtTask[tTask_SanYueBianChui[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20374]
rwtTask[tTask_SanYueBianChui[1]]["PreTaskId"] = nLastTownTask
rwtTask[tTask_SanYueBianChui[1]]["NextTaskId"] = tTask_SanYueBianChui[2]
rwtTask[tTask_SanYueBianChui[1]]["DialogId"] = 10497
rwtTask[tTask_SanYueBianChui[1]]["ReqTrap1"] = tTrap.ArriveSanYue
rwtTask[tTask_SanYueBianChui[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[1]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[1]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_ArriveSanYue
rwtTask[tTask_SanYueBianChui[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[1]]["OpenTransfer"] = CONST_TRANSFER_INDEX.SANYUEBIANCHUI
rwtTask[tTask_SanYueBianChui[1]]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10032]
rwtTask[tTask_SanYueBianChui[1]]["AutoTaskDialog"] = 10497


rwtTask[tTask_SanYueBianChui[2]] = {}
rwtTask[tTask_SanYueBianChui[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20375]
rwtTask[tTask_SanYueBianChui[2]]["PreTaskId"] = tTask_SanYueBianChui[1]
rwtTask[tTask_SanYueBianChui[2]]["NextTaskId"] = tTask_SanYueBianChui[3]
rwtTask[tTask_SanYueBianChui[2]]["DialogId"] = 10498
rwtTask[tTask_SanYueBianChui[2]]["TaskNpc"] = 3216
rwtTask[tTask_SanYueBianChui[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
-- rwtTask[tTask_SanYueBianChui[2]]["IsClickComplete"] = 1
rwtTask[tTask_SanYueBianChui[2]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[2]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_BCShaHu
rwtTask[tTask_SanYueBianChui[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[2]]["KillMonsterGroup1" ]= tMonsterGroup.BCShaHu
rwtTask[tTask_SanYueBianChui[2]]["MonsterGroupGenId"] = tGenId.Monster_BCShaHu
-- rwtTask[tTask_SanYueBianChui[2]]["AwardId"] = 2000086
rwtTask[tTask_SanYueBianChui[2]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[1]
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[2]
rwtTask[tTask_SanYueBianChui[2]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[2]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[2]]["StartAutoWay"]["FindWayGroupId"] = tNPC.ABiDan
rwtTask[tTask_SanYueBianChui[2]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_ABiDan




rwtTask[tTask_SanYueBianChui[3]] = {}
rwtTask[tTask_SanYueBianChui[3]]["Title"] =tLuaText[LANGUAGE_CONFIG][20376]
rwtTask[tTask_SanYueBianChui[3]]["PreTaskId"] = tTask_SanYueBianChui[2]
rwtTask[tTask_SanYueBianChui[3]]["NextTaskId"] = tTask_SanYueBianChui[4]
rwtTask[tTask_SanYueBianChui[3]]["DialogId"] = 10700
rwtTask[tTask_SanYueBianChui[3]]["TaskNpc"] = 3216
rwtTask[tTask_SanYueBianChui[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[3]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[3]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[3]]["StartAutoWay"]["FindWayGroupId"] = tNPC.ABiDan
rwtTask[tTask_SanYueBianChui[3]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_ABiDan

rwtTask[tTask_SanYueBianChui[4]] = {}
rwtTask[tTask_SanYueBianChui[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20377]
rwtTask[tTask_SanYueBianChui[4]]["PreTaskId"] = tTask_SanYueBianChui[3]
rwtTask[tTask_SanYueBianChui[4]]["NextTaskId"] = tTask_SanYueBianChui[5]
rwtTask[tTask_SanYueBianChui[4]]["DialogId"] = 10499
rwtTask[tTask_SanYueBianChui[4]]["TaskNpc"] = 3123
rwtTask[tTask_SanYueBianChui[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[4]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[4]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[4]]["StartAutoWay"]["FindWayGroupId"] = tNPC.GeLei
rwtTask[tTask_SanYueBianChui[4]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_GeLei


rwtTask[tTask_SanYueBianChui[5]] = {}
rwtTask[tTask_SanYueBianChui[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20378]
rwtTask[tTask_SanYueBianChui[5]]["PreTaskId"] = tTask_SanYueBianChui[4]
rwtTask[tTask_SanYueBianChui[5]]["NextTaskId"] = tTask_SanYueBianChui[6]
rwtTask[tTask_SanYueBianChui[5]]["DialogId"] = 10500
rwtTask[tTask_SanYueBianChui[5]]["TaskNpc"] = 3125
rwtTask[tTask_SanYueBianChui[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[5]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[5]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[5]]["StartAutoWay"]["FindWayGroupId"] = tNPC.AnSiLi
rwtTask[tTask_SanYueBianChui[5]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_AnSiLi

rwtTask[tTask_SanYueBianChui[6]] = {}
rwtTask[tTask_SanYueBianChui[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20379]
rwtTask[tTask_SanYueBianChui[6]]["PreTaskId"] = tTask_SanYueBianChui[5]
rwtTask[tTask_SanYueBianChui[6]]["NextTaskId"] = tTask_SanYueBianChui[7]
rwtTask[tTask_SanYueBianChui[6]]["DialogId"] = 10501
rwtTask[tTask_SanYueBianChui[6]]["TaskNpc"] = 3127
rwtTask[tTask_SanYueBianChui[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[6]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[6]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[6]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[6]]["StartAutoWay"]["FindWayGroupId"] = tNPC.KuBo
rwtTask[tTask_SanYueBianChui[6]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_KuBo
-- rwtTask[tTask_SanYueBianChui[6]]["AwardId"] = 2000087
rwtTask[tTask_SanYueBianChui[6]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[2]
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[6]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[6]




rwtTask[tTask_SanYueBianChui[7]] = {}
rwtTask[tTask_SanYueBianChui[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20380]
rwtTask[tTask_SanYueBianChui[7]]["PreTaskId"] = tTask_SanYueBianChui[6]
rwtTask[tTask_SanYueBianChui[7]]["NextTaskId"] = tTask_SanYueBianChui[8]
rwtTask[tTask_SanYueBianChui[7]]["DialogId"] = 10503
rwtTask[tTask_SanYueBianChui[7]]["TaskNpc"] = 3121
rwtTask[tTask_SanYueBianChui[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[7]]["CloseDialog"] = 1
rwtTask[tTask_SanYueBianChui[7]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[7]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[7]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[7]]["StartAutoWay"]["FindWayPos"] = tPos.HuangHuZi

rwtTask[tTask_SanYueBianChui[8]] = {}
rwtTask[tTask_SanYueBianChui[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20382]
rwtTask[tTask_SanYueBianChui[8]]["PreTaskId"] = tTask_SanYueBianChui[7]
rwtTask[tTask_SanYueBianChui[8]]["NextTaskId"] = tTask_SanYueBianChui[9]
rwtTask[tTask_SanYueBianChui[8]]["DialogId"] = 10504
rwtTask[tTask_SanYueBianChui[8]]["TaskNpc"] = 3131
rwtTask[tTask_SanYueBianChui[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[8]]["CloseDialog"] = 1
rwtTask[tTask_SanYueBianChui[8]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[8]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[8]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[8]]["StartAutoWay"]["FindWayPos"] = tPos.build32Hao

rwtTask[tTask_SanYueBianChui[9]] = {}
rwtTask[tTask_SanYueBianChui[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20381]
rwtTask[tTask_SanYueBianChui[9]]["PreTaskId"] = tTask_SanYueBianChui[8]
rwtTask[tTask_SanYueBianChui[9]]["NextTaskId"] = tTask_SanYueBianChui[10]
rwtTask[tTask_SanYueBianChui[9]]["DialogId"] = 10505
rwtTask[tTask_SanYueBianChui[9]]["ReqTrap1"] = tTrap.BangYuRen
rwtTask[tTask_SanYueBianChui[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_BangYuRen
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Monster_MJBanRenYu
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[9]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[9]]["KillMonsterGroup1"]= tMonsterGroup.MJBanRenYu
rwtTask[tTask_SanYueBianChui[9]]["MonsterGroupGenId"] = tGenId.Monster_MJBanRenYu
-- rwtTask[tTask_SanYueBianChui[9]]["IsClickComplete"] = 1
rwtTask[tTask_SanYueBianChui[9]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[9]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask_SanYueBianChui[9]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[9]]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.MJBanRenYu
rwtTask[tTask_SanYueBianChui[9]]["StartAutoWay"]["FindWayGenId"] = tGenId.Monster_MJBanRenYu

rwtTask[tTask_SanYueBianChui[10]] = {}                                                                      
rwtTask[tTask_SanYueBianChui[10]]["Title"]= tLuaText[LANGUAGE_CONFIG][20383]                                         
rwtTask[tTask_SanYueBianChui[10]]["PreTaskId"] = tTask_SanYueBianChui[9]
rwtTask[tTask_SanYueBianChui[10]]["NextTaskId"] = tTask_SanYueBianChui[32]
rwtTask[tTask_SanYueBianChui[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT                        
rwtTask[tTask_SanYueBianChui[10]]["ReqCollectId1"] = tCollect.ShuiZa
rwtTask[tTask_SanYueBianChui[10]]["ReqCollectCount1"] = 1 
rwtTask[tTask_SanYueBianChui[10]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[10]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[10]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_ShuiZa
rwtTask[tTask_SanYueBianChui[10]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[10]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[10]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[10]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[10]]["StartAutoWay"]["FindWayGroupId"] = tCollect.ShuiZa
rwtTask[tTask_SanYueBianChui[10]]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_ShuiZa

rwtTask[tTask_SanYueBianChui[32]] = {}
rwtTask[tTask_SanYueBianChui[32]]["Title"] = tLuaText[LANGUAGE_CONFIG][20384]
rwtTask[tTask_SanYueBianChui[32]]["PreTaskId"] = tTask_SanYueBianChui[10]
rwtTask[tTask_SanYueBianChui[32]]["NextTaskId"] = tTask_SanYueBianChui[11]
rwtTask[tTask_SanYueBianChui[32]]["DialogId"] = 10507
rwtTask[tTask_SanYueBianChui[32]]["ReqTrap1"] = tTrap.CloseSZ
rwtTask[tTask_SanYueBianChui[32]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[32]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[32]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[32]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_CloseSZ
rwtTask[tTask_SanYueBianChui[32]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[32]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[32]]["AutoTaskDialog"] = 10507

rwtTask[tTask_SanYueBianChui[11]] = {}                                                                      
rwtTask[tTask_SanYueBianChui[11]]["Title"]= tLuaText[LANGUAGE_CONFIG][20385]                                       
rwtTask[tTask_SanYueBianChui[11]]["PreTaskId"] = tTask_SanYueBianChui[32]
rwtTask[tTask_SanYueBianChui[11]]["NextTaskId"] = tTask_SanYueBianChui[33]
rwtTask[tTask_SanYueBianChui[11]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT                        
rwtTask[tTask_SanYueBianChui[11]]["ReqCollectId1"] = tCollect.ChuShuiKou                                                  
rwtTask[tTask_SanYueBianChui[11]]["ReqCollectCount1"] = 1 
rwtTask[tTask_SanYueBianChui[11]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[11]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[11]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Collect_ChuShuiKou
rwtTask[tTask_SanYueBianChui[11]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[11]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_SanYueBianChui[11]]["AwardId"] = 2000088
rwtTask[tTask_SanYueBianChui[11]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[3]
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[11]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[11]
rwtTask[tTask_SanYueBianChui[11]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[11]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[11]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[11]]["StartAutoWay"]["FindWayGroupId"] = tCollect.ChuShuiKou
rwtTask[tTask_SanYueBianChui[11]]["StartAutoWay"]["FindWayGenId"] = tGenId.Collect_ChuShuiKou

rwtTask[tTask_SanYueBianChui[33]] = {}
rwtTask[tTask_SanYueBianChui[33]]["Title"] = tLuaText[LANGUAGE_CONFIG][20386]
rwtTask[tTask_SanYueBianChui[33]]["PreTaskId"] = tTask_SanYueBianChui[11]
rwtTask[tTask_SanYueBianChui[33]]["NextTaskId"] = tTask_SanYueBianChui[12]
rwtTask[tTask_SanYueBianChui[33]]["DialogId"] = 10508
rwtTask[tTask_SanYueBianChui[33]]["ReqTrap1"] = tTrap.OpenPSK
rwtTask[tTask_SanYueBianChui[33]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[33]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[33]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[33]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_OpenPSK
rwtTask[tTask_SanYueBianChui[33]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[33]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[33]]["AutoTaskDialog"] = 10508



rwtTask[tTask_SanYueBianChui[12]] = {}
rwtTask[tTask_SanYueBianChui[12]]["Title"] = tLuaText[LANGUAGE_CONFIG][20387]
rwtTask[tTask_SanYueBianChui[12]]["PreTaskId"] = tTask_SanYueBianChui[33]
rwtTask[tTask_SanYueBianChui[12]]["NextTaskId"] = tTask_SanYueBianChui[13]
rwtTask[tTask_SanYueBianChui[12]]["DialogId"] = 10509
rwtTask[tTask_SanYueBianChui[12]]["TaskNpc"] = 3130
rwtTask[tTask_SanYueBianChui[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_HTLuJiao
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.NPC_LuJiaoShou
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[12]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_SanYueBianChui[12]]["KillMonsterGroup1"]= tMonsterGroup.HTLuJiao
rwtTask[tTask_SanYueBianChui[12]]["MonsterGroupGenId"] = tGenId.Monster_HTLuJiao
-- rwtTask[tTask_SanYueBianChui[12]]["IsClickComplete"] = 1
rwtTask[tTask_SanYueBianChui[12]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[12]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[12]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[12]]["StartAutoWay"]["FindWayGroupId"] = tNPC.LuJiaoShou
rwtTask[tTask_SanYueBianChui[12]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_LuJiaoShou

rwtTask[tTask_SanYueBianChui[13]] = {}
rwtTask[tTask_SanYueBianChui[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][20388]
rwtTask[tTask_SanYueBianChui[13]]["PreTaskId"] = tTask_SanYueBianChui[12]
rwtTask[tTask_SanYueBianChui[13]]["NextTaskId"] = tTask_SanYueBianChui[14]
rwtTask[tTask_SanYueBianChui[13]]["DialogId"] = 10510
rwtTask[tTask_SanYueBianChui[13]]["TaskNpc"] = 3130
rwtTask[tTask_SanYueBianChui[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[13]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[13]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[13]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPC_LuJiaoShou
rwtTask[tTask_SanYueBianChui[13]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[13]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
-- rwtTask[tTask_SanYueBianChui[13]]["AwardId"] = 2000089
rwtTask[tTask_SanYueBianChui[13]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[4]
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[13]
rwtTask[tTask_SanYueBianChui[13]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[13]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[13]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[13]]["StartAutoWay"]["FindWayGroupId"] = tNPC.LuJiaoShou
rwtTask[tTask_SanYueBianChui[13]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_LuJiaoShou



rwtTask[tTask_SanYueBianChui[14]] = {}
rwtTask[tTask_SanYueBianChui[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][20389]
rwtTask[tTask_SanYueBianChui[14]]["PreTaskId"] = tTask_SanYueBianChui[13]
rwtTask[tTask_SanYueBianChui[14]]["NextTaskId"] = tTask_SanYueBianChui[15]
rwtTask[tTask_SanYueBianChui[14]]["DialogId"] = 10511
rwtTask[tTask_SanYueBianChui[14]]["TaskNpc"] = 3121
rwtTask[tTask_SanYueBianChui[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[14]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[14]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[14]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPC_LuJiaoShou
rwtTask[tTask_SanYueBianChui[14]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[14]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
-- rwtTask[tTask_SanYueBianChui[14]]["AwardId"] = 2000090
rwtTask[tTask_SanYueBianChui[14]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[5]
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[14]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[14]
rwtTask[tTask_SanYueBianChui[14]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[14]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[14]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[14]]["StartAutoWay"]["FindWayPos"] = tPos.HuangHuZi



rwtTask[tTask_SanYueBianChui[15]] = {}
rwtTask[tTask_SanYueBianChui[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20390]
rwtTask[tTask_SanYueBianChui[15]]["PreTaskId"] = tTask_SanYueBianChui[14]
rwtTask[tTask_SanYueBianChui[15]]["NextTaskId"] = tTask_SanYueBianChui[16]
rwtTask[tTask_SanYueBianChui[15]]["DialogId"] = 10512
rwtTask[tTask_SanYueBianChui[15]]["TaskNpc"] = 3216
rwtTask[tTask_SanYueBianChui[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[15]]["UnlockCopyMap1"] = 3022
rwtTask[tTask_SanYueBianChui[15]]["UnlockCopyMap2"] = 3040
-- rwtTask[tTask_SanYueBianChui[15]]["AwardId"] = 2000091
rwtTask[tTask_SanYueBianChui[15]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[6]
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[15]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[15]
rwtTask[tTask_SanYueBianChui[15]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[15]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[15]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[15]]["StartAutoWay"]["FindWayGroupId"] = tNPC.ABiDan
rwtTask[tTask_SanYueBianChui[15]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_ABiDan



rwtTask[tTask_SanYueBianChui[16]] = {}
rwtTask[tTask_SanYueBianChui[16]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20391]
rwtTask[tTask_SanYueBianChui[16]]["PreTaskId"] = tTask_SanYueBianChui[15]
rwtTask[tTask_SanYueBianChui[16]]["NextTaskId"] = tTask_SanYueBianChui[17]
rwtTask[tTask_SanYueBianChui[16]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTask_SanYueBianChui[16]]["PassCopyMap1"] = {3022}
rwtTask[tTask_SanYueBianChui[16]]["PassCopyMapCount1"] = 1
rwtTask[tTask_SanYueBianChui[16]]["IsClickComplete"] = 1 
rwtTask[tTask_SanYueBianChui[16]]["OpenCopyMap"] = 3022
-- rwtTask[tTask_SanYueBianChui[16]]["AwardId"] = 2000092
rwtTask[tTask_SanYueBianChui[16]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[7]
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[16]
rwtTask[tTask_SanYueBianChui[16]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[16]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[16]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[16]]["StartAutoWay"]["FindWayPos"] = tPos.ShaHai





rwtTask[tTask_SanYueBianChui[17]] = {}
rwtTask[tTask_SanYueBianChui[17]]["Title"] = tLuaText[LANGUAGE_CONFIG][20392]
rwtTask[tTask_SanYueBianChui[17]]["PreTaskId"] = tTask_SanYueBianChui[16]
rwtTask[tTask_SanYueBianChui[17]]["NextTaskId"] = tTask_SanYueBianChui[18]
rwtTask[tTask_SanYueBianChui[17]]["DialogId"] = 10513
rwtTask[tTask_SanYueBianChui[17]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tTask_SanYueBianChui[17]]["IsClickComplete"] = 0 
--解锁后下一个任务，不自动播对白
--rwtTask[tTask_SanYueBianChui[17]]["AutoTaskDialog"] = 10513

rwtTask[tTask_SanYueBianChui[18]] = {}
rwtTask[tTask_SanYueBianChui[18]]["Title"] = tLuaText[LANGUAGE_CONFIG][20393]
rwtTask[tTask_SanYueBianChui[18]]["PreTaskId"] = tTask_SanYueBianChui[17]
rwtTask[tTask_SanYueBianChui[18]]["NextTaskId"] = tTask_SanYueBianChui["KaDengJi"]
rwtTask[tTask_SanYueBianChui[18]]["DialogId"] = 10514
rwtTask[tTask_SanYueBianChui[18]]["TaskNpc"] = 3121
rwtTask[tTask_SanYueBianChui[18]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[18]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[18]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[18]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[18]]["StartAutoWay"]["FindWayPos"] = tPos.HuangHuZi

--卡时间
rwtTask[tTask_SanYueBianChui["KaDengJi"]] = {}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Title"] = tLuaText[LANGUAGE_CONFIG][20393]
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["PreTaskId"] = tTask_SanYueBianChui[18]
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["NextTaskId"] = tTask_SanYueBianChui[19]
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["TaskFinishTime"] = 21600     --6H
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["LackDialogId"] = 11450
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["DialogId"] = 11451

rwtTask[tTask_SanYueBianChui["KaDengJi"]]["DropCopyMapId"] = {3040}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["DropAwardId"] = nSpeedAwardId

rwtTask[tTask_SanYueBianChui["KaDengJi"]]["CountDownSpeed"] = {}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["CountDownSpeed"]["SpeedItem"] = nSpeedItem
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["CountDownSpeed"]["SpeedDialog"] = nSpeedDialog
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["CountDownSpeed"]["LackTips"] = sLackTips

rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Awards"]["Events"][1]["DeleteItem"] = {}
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Awards"]["Events"][1]["DeleteItem"]["ItemId"] = nSpeedItem
rwtTask[tTask_SanYueBianChui["KaDengJi"]]["Awards"]["Events"][1]["DeleteItem"]["DeleteAll"] = 1

rwtTask[tTask_SanYueBianChui[19]] = {}
rwtTask[tTask_SanYueBianChui[19]]["Title"] = tLuaText[LANGUAGE_CONFIG][20394]
rwtTask[tTask_SanYueBianChui[19]]["PreTaskId"] = tTask_SanYueBianChui["KaDengJi"]
rwtTask[tTask_SanYueBianChui[19]]["NextTaskId"] = tTask_SanYueBianChui[20]
rwtTask[tTask_SanYueBianChui[19]]["DialogId"] = 10515
rwtTask[tTask_SanYueBianChui[19]]["TaskNpc"] = 3129
rwtTask[tTask_SanYueBianChui[19]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
-- rwtTask[tTask_SanYueBianChui[19]]["AwardId"] = 2000093
rwtTask[tTask_SanYueBianChui[19]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[8]
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[19]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[19]
rwtTask[tTask_SanYueBianChui[19]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[19]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[19]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[19]]["StartAutoWay"]["FindWayGroupId"] = tNPC.YiNuoKe
rwtTask[tTask_SanYueBianChui[19]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_YiNuoKe


rwtTask[tTask_SanYueBianChui[20]] = {}
rwtTask[tTask_SanYueBianChui[20]]["Title"] = tLuaText[LANGUAGE_CONFIG][20395]
rwtTask[tTask_SanYueBianChui[20]]["PreTaskId"] = tTask_SanYueBianChui[19]
rwtTask[tTask_SanYueBianChui[20]]["NextTaskId"] = tTask_SanYueBianChui[21]
rwtTask[tTask_SanYueBianChui[20]]["DialogId"] = 10516
rwtTask[tTask_SanYueBianChui[20]]["TaskNpc"] = 3132
rwtTask[tTask_SanYueBianChui[20]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[20]]["CloseDialog"] = 1
rwtTask[tTask_SanYueBianChui[20]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[20]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[20]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[20]]["StartAutoWay"]["FindWayPos"] = tPos.build32Hao

rwtTask[tTask_SanYueBianChui[21]] = {}
rwtTask[tTask_SanYueBianChui[21]]["Title"] = tLuaText[LANGUAGE_CONFIG][20395]
rwtTask[tTask_SanYueBianChui[21]]["PreTaskId"] = tTask_SanYueBianChui[20]
rwtTask[tTask_SanYueBianChui[21]]["NextTaskId"] = tTask_SanYueBianChui[22]
rwtTask[tTask_SanYueBianChui[21]]["DialogId"] = 10517
rwtTask[tTask_SanYueBianChui[21]]["ReqTrap1"] = tTrap.TaiTan_1
rwtTask[tTask_SanYueBianChui[21]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_JiaChongSL
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_TaiTan_1
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][3]["GenId"] = tGenId.Monster_ShaHuSL
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][4] = {}
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][4]["GenId"] = tGenId.Monster_JuRenSL
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][4]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[21]]["DynaNpcGroupGen"][4]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_SanYueBianChui[21]]["KillMonsterGroup1"]= tMonsterGroup.JiaChongSL
rwtTask[tTask_SanYueBianChui[21]]["MonsterGroupGenId"] = tGenId.Monster_JiaChongSL
-- rwtTask[tTask_SanYueBianChui[21]]["IsClickComplete"] = 1
rwtTask[tTask_SanYueBianChui[21]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[21]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask_SanYueBianChui[21]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[21]]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.JiaChongSL
rwtTask[tTask_SanYueBianChui[21]]["StartAutoWay"]["FindWayGenId"] = tGenId.Monster_JiaChongSL

rwtTask[tTask_SanYueBianChui[22]] = {}
rwtTask[tTask_SanYueBianChui[22]]["Title"] = tLuaText[LANGUAGE_CONFIG][20397]
rwtTask[tTask_SanYueBianChui[22]]["PreTaskId"] = tTask_SanYueBianChui[21]
rwtTask[tTask_SanYueBianChui[22]]["NextTaskId"] = tTask_SanYueBianChui[23]
rwtTask[tTask_SanYueBianChui[22]]["DialogId"] = 10676
rwtTask[tTask_SanYueBianChui[22]]["ReqTrap1"] = tTrap.TaiTan_2
rwtTask[tTask_SanYueBianChui[22]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_ShaHuSL
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_TaiTan_2
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][3] = {}
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][3]["GenId"] = tGenId.Monster_JuRenSL
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][3]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[22]]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tTask_SanYueBianChui[22]]["KillMonsterGroup1" ]= tMonsterGroup.ShaHuSL
rwtTask[tTask_SanYueBianChui[22]]["MonsterGroupGenId"] = tGenId.Monster_ShaHuSL
-- rwtTask[tTask_SanYueBianChui[22]]["IsClickComplete"] = 1
rwtTask[tTask_SanYueBianChui[22]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[22]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask_SanYueBianChui[22]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[22]]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.ShaHuSL
rwtTask[tTask_SanYueBianChui[22]]["StartAutoWay"]["FindWayGenId"] = tGenId.Monster_ShaHuSL

rwtTask[tTask_SanYueBianChui[23]] = {}
rwtTask[tTask_SanYueBianChui[23]]["Title"] = tLuaText[LANGUAGE_CONFIG][20398]
rwtTask[tTask_SanYueBianChui[23]]["PreTaskId"] = tTask_SanYueBianChui[22]
rwtTask[tTask_SanYueBianChui[23]]["NextTaskId"] = tTask_SanYueBianChui[24]
rwtTask[tTask_SanYueBianChui[23]]["DialogId"] = 10677
rwtTask[tTask_SanYueBianChui[23]]["ReqTrap1"] = tTrap.TaiTan_3
rwtTask[tTask_SanYueBianChui[23]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_JuRenSL
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_TaiTan_3
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[23]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[23]]["KillMonsterGroup1" ]= tMonsterGroup.JuRenSL
rwtTask[tTask_SanYueBianChui[23]]["MonsterGroupGenId"] = tGenId.Monster_JuRenSL
-- rwtTask[tTask_SanYueBianChui[23]]["IsClickComplete"] = 1
rwtTask[tTask_SanYueBianChui[23]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[23]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tTask_SanYueBianChui[23]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[23]]["StartAutoWay"]["FindWayGroupId"] = tMonsterGroup.JuRenSL
rwtTask[tTask_SanYueBianChui[23]]["StartAutoWay"]["FindWayGenId"] = tGenId.Monster_JuRenSL


rwtTask[tTask_SanYueBianChui[24]] = {}
rwtTask[tTask_SanYueBianChui[24]]["Title"] = tLuaText[LANGUAGE_CONFIG][20399]
rwtTask[tTask_SanYueBianChui[24]]["PreTaskId"] = tTask_SanYueBianChui[23]
rwtTask[tTask_SanYueBianChui[24]]["NextTaskId"] = tTask_SanYueBianChui[25]
rwtTask[tTask_SanYueBianChui[24]]["DialogId"] = 10678--10693
rwtTask[tTask_SanYueBianChui[24]]["ReqTrap1"] = tTrap.TaiTan_3
rwtTask[tTask_SanYueBianChui[24]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Monster_TaiTan
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Trap_TaiTan_3
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[24]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[24]]["KillMonsterGroup1" ]= tMonsterGroup.TaiTan
rwtTask[tTask_SanYueBianChui[24]]["MonsterGroupGenId"] = tGenId.Monster_TaiTan
-- rwtTask[tTask_SanYueBianChui[24]]["IsClickComplete"] = 1
-- rwtTask[tTask_SanYueBianChui[24]]["AwardId"] = 2000094
rwtTask[tTask_SanYueBianChui[24]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[9]
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[24]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[24]
rwtTask[tTask_SanYueBianChui[24]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[24]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[24]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[24]]["StartAutoWay"]["FindWayPos"] = tPos.TaiTan_3



rwtTask[tTask_SanYueBianChui[25]] = {}
rwtTask[tTask_SanYueBianChui[25]]["Title"] = tLuaText[LANGUAGE_CONFIG][20400]
rwtTask[tTask_SanYueBianChui[25]]["PreTaskId"] = tTask_SanYueBianChui[24]
rwtTask[tTask_SanYueBianChui[25]]["NextTaskId"] = tTask_SanYueBianChui[26]
rwtTask[tTask_SanYueBianChui[25]]["DialogId"] = 10679
rwtTask[tTask_SanYueBianChui[25]]["ReqTrap1"] = tTrap.TaiTan_3
rwtTask[tTask_SanYueBianChui[25]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_TaiTan_3
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][2] = {}
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][2]["GenId"] = tGenId.Monster_TaiTan
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][2]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[25]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[25]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[25]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[25]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[25]]["StartAutoWay"]["FindWayPos"] = tPos.TaiTan_3

rwtTask[tTask_SanYueBianChui[26]] = {}
rwtTask[tTask_SanYueBianChui[26]]["Title"] = tLuaText[LANGUAGE_CONFIG][20401]
rwtTask[tTask_SanYueBianChui[26]]["PreTaskId"] = tTask_SanYueBianChui[25]
rwtTask[tTask_SanYueBianChui[26]]["NextTaskId"] = tTask_SanYueBianChui[28]
rwtTask[tTask_SanYueBianChui[26]]["DialogId"] = 10680
rwtTask[tTask_SanYueBianChui[26]]["TaskNpc"] = 3132
rwtTask[tTask_SanYueBianChui[26]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[26]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[26]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[26]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[26]]["StartAutoWay"]["FindWayPos"] = tPos.build32Hao
rwtTask[tTask_SanYueBianChui[26]]["AwardFunc"] = function()
    rwUserTempDataSet(1129,1,CONST_TEMP_DATA.Data1,rwUserGetId())
end

-- rwtTask[tTask_SanYueBianChui[27]] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["Title"] = tLuaText[LANGUAGE_CONFIG][20402]
-- rwtTask[tTask_SanYueBianChui[27]]["PreTaskId"] = tTask_SanYueBianChui[26]
-- rwtTask[tTask_SanYueBianChui[27]]["NextTaskId"] = tTask_SanYueBianChui[28]
-- rwtTask[tTask_SanYueBianChui[27]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
-- rwtTask[tTask_SanYueBianChui[27]]["ReqTrap1"] = tTrap.HuiYi
-- rwtTask[tTask_SanYueBianChui[27]]["DynaNpcGroupGen"] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["DynaNpcGroupGen"][1] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_HuiYi
-- rwtTask[tTask_SanYueBianChui[27]]["DynaNpcGroupGen"][1]["MapId"] = 2003
-- rwtTask[tTask_SanYueBianChui[27]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- -- rwtTask[tTask_SanYueBianChui[27]]["AwardId"] = 2000095
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"][1] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"][1]["GetServerAward"] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[10]
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
-- rwtTask[tTask_SanYueBianChui[27]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[27]
-- rwtTask[tTask_SanYueBianChui[27]]["StartAutoWay"] = {}
-- rwtTask[tTask_SanYueBianChui[27]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_SanYueBianChui[27]]["StartAutoWay"]["FindWayMapId"] = 2003
-- rwtTask[tTask_SanYueBianChui[27]]["StartAutoWay"]["FindWayPos"] = tPos.HuiYi
-- rwtTask[tTask_SanYueBianChui[27]]["AwardFunc"] = function()
--     rwUserTempDataSet(1129,1,CONST_TEMP_DATA.Data1,rwUserGetId())
-- end



rwtTask[tTask_SanYueBianChui[28]] = {}
rwtTask[tTask_SanYueBianChui[28]]["Title"] = tLuaText[LANGUAGE_CONFIG][20403]
rwtTask[tTask_SanYueBianChui[28]]["PreTaskId"] = tTask_SanYueBianChui[26]
rwtTask[tTask_SanYueBianChui[28]]["NextTaskId"] = tTask_SanYueBianChui[29]
rwtTask[tTask_SanYueBianChui[28]]["DialogId"] = 12907
rwtTask[tTask_SanYueBianChui[28]]["TaskNpc"] = 3923
rwtTask[tTask_SanYueBianChui[28]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tTask_SanYueBianChui[28]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[28]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[28]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.NPC_WeiBin
rwtTask[tTask_SanYueBianChui[28]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[28]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[28]]["UnlockCopyMap1"] = 3027
-- rwtTask[tTask_SanYueBianChui[28]]["AwardId"] = 2000115
rwtTask[tTask_SanYueBianChui[28]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[11]
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[28]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[28]
rwtTask[tTask_SanYueBianChui[28]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[28]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tTask_SanYueBianChui[28]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[28]]["StartAutoWay"]["FindWayGroupId"] = tNPC.WeiBin
rwtTask[tTask_SanYueBianChui[28]]["StartAutoWay"]["FindWayGenId"] = tGenId.NPC_WeiBin
rwtTask[tTask_SanYueBianChui[28]]["DialogueEndFunc"] = function()
    rwEnterMap(3027)
end




rwtTask[tTask_SanYueBianChui[29]] = {}
rwtTask[tTask_SanYueBianChui[29]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20404]
rwtTask[tTask_SanYueBianChui[29]]["PreTaskId"] = tTask_SanYueBianChui[28]
rwtTask[tTask_SanYueBianChui[29]]["NextTaskId"] = tTask_SanYueBianChui[30]
rwtTask[tTask_SanYueBianChui[29]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tTask_SanYueBianChui[29]]["OpenCopyMap"] = 3027
rwtTask[tTask_SanYueBianChui[29]]["PassCopyMap1"] = {3027}
rwtTask[tTask_SanYueBianChui[29]]["PassCopyMapCount1"] = 1
rwtTask[tTask_SanYueBianChui[29]]["IsClickComplete"] = 1 
rwtTask[tTask_SanYueBianChui[29]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[29]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[29]]["DynaNpcGroupGen"][1]["GenId"] = 20030161
rwtTask[tTask_SanYueBianChui[29]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[29]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_SanYueBianChui[29]]["AwardId"] = 2000096
rwtTask[tTask_SanYueBianChui[29]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[12]
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[29]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[29]
rwtTask[tTask_SanYueBianChui[29]]["UnlockCopyMap1"] = 3039
-- rwtTask[tTask_SanYueBianChui[29]]["StartAutoWay"] = {}
-- rwtTask[tTask_SanYueBianChui[29]]["StartAutoWay"]["FindWayTypeId"] = 0
-- rwtTask[tTask_SanYueBianChui[29]]["StartAutoWay"]["FindWayMapId"] = 2003
-- rwtTask[tTask_SanYueBianChui[29]]["StartAutoWay"]["FindWayPos"] = tPos.FengSha



rwtTask[tTask_SanYueBianChui[30]] = {}
rwtTask[tTask_SanYueBianChui[30]]["Title"] = tLuaText[LANGUAGE_CONFIG][20405]
rwtTask[tTask_SanYueBianChui[30]]["PreTaskId"] = tTask_SanYueBianChui[29]
rwtTask[tTask_SanYueBianChui[30]]["NextTaskId"] = tTask_SanYueBianChui[34]
rwtTask[tTask_SanYueBianChui[30]]["DialogId"] = 10718
rwtTask[tTask_SanYueBianChui[30]]["ReqTrap1"] = tTrap.ZhenLi
rwtTask[tTask_SanYueBianChui[30]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[30]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[30]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[30]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_ZhenLi
rwtTask[tTask_SanYueBianChui[30]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[30]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tTask_SanYueBianChui[30]]["StartAutoWay"] = {}
rwtTask[tTask_SanYueBianChui[30]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tTask_SanYueBianChui[30]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tTask_SanYueBianChui[30]]["StartAutoWay"]["FindWayPos"] = tPos.FengSha_TaoLi

rwtTask[tTask_SanYueBianChui[34]] = {}
rwtTask[tTask_SanYueBianChui[34]]["Title"] = tLuaText[LANGUAGE_CONFIG][20406]
rwtTask[tTask_SanYueBianChui[34]]["PreTaskId"] = tTask_SanYueBianChui[30]
rwtTask[tTask_SanYueBianChui[34]]["NextTaskId"] = tTask_SanYueBianChui[31]
rwtTask[tTask_SanYueBianChui[34]]["DialogId"] = 12095
rwtTask[tTask_SanYueBianChui[34]]["AutoTaskDialog"] = 12095
rwtTask[tTask_SanYueBianChui[34]]["ReqTrap1"] = tTrap.ZhenLi
rwtTask[tTask_SanYueBianChui[34]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[34]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[34]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[34]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_ZhenLi
rwtTask[tTask_SanYueBianChui[34]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[34]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete

rwtTask[tTask_SanYueBianChui[31]] = {}
rwtTask[tTask_SanYueBianChui[31]]["Title"] = tLuaText[LANGUAGE_CONFIG][20406]
rwtTask[tTask_SanYueBianChui[31]]["PreTaskId"] = tTask_SanYueBianChui[34]
rwtTask[tTask_SanYueBianChui[31]]["NextTaskId"] = 10323
rwtTask[tTask_SanYueBianChui[31]]["DialogId"] = 10518
-- rwtTask[tTask_SanYueBianChui[31]]["AutoTaskDialog"] = 10518
rwtTask[tTask_SanYueBianChui[31]]["ReqTrap1"] = tTrap.ShengJieQiJu
rwtTask[tTask_SanYueBianChui[31]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tTask_SanYueBianChui[31]]["DynaNpcGroupGen"] = {}
rwtTask[tTask_SanYueBianChui[31]]["DynaNpcGroupGen"][1] = {}
rwtTask[tTask_SanYueBianChui[31]]["DynaNpcGroupGen"][1]["GenId"] = tGenId.Trap_ShengJieQiJu
rwtTask[tTask_SanYueBianChui[31]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tTask_SanYueBianChui[31]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
-- rwtTask[tTask_SanYueBianChui[31]]["AwardId"] = 2000097
rwtTask[tTask_SanYueBianChui[31]]["Awards"] = {}
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"] = {}
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"][1] = {}
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId[13]
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tTask_SanYueBianChui[31]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tTask_SanYueBianChui[31]
rwtTask[tTask_SanYueBianChui[31]]["OpenMercenaryTask"] = {}   --开放三月边陲佣兵系列任务
rwtTask[tTask_SanYueBianChui[31]]["OpenMercenaryTask"]["AreaId"] = 2003
rwtTask[tTask_SanYueBianChui[31]]["OpenMercenaryTask"]["TownId"] = 200302
rwtTask[tTask_SanYueBianChui[31]]["AwardCreateGen"] = {20030476}
rwtTask[tTask_SanYueBianChui[31]]["AwardDeleteGen"] = {20030485}

