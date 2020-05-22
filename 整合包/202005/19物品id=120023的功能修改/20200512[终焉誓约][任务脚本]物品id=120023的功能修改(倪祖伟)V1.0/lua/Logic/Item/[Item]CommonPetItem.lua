--region [Item]CommonPetItem.lua
--Purpose:		普通宠物道具
--Creator: 		余锦鑫
--Created:		2018-07-26
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-5-12 $
--RCS-ID:		$Revision: 3 $
--endregion
--=======================================================================--
--=========					  幻兽经验卡							=========--
--=======================================================================--
--500经验卡
--rwtItem[6002002] = rwtItem[6002002] or {}
--rwtItem[6002002]["Awards"] = {}
--rwtItem[6002002]["Awards"]["Events"] = {}
--rwtItem[6002002]["Awards"]["Events"][1] = {}
--rwtItem[6002002]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtItem[6002002]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
--rwtItem[6002002]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 6002002
--rwtItem[6002002]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtItem[6002002]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000010

--1000经验卡
--rwtItem[6002003] = rwtItem[6002003] or {}
--rwtItem[6002003]["Awards"] = {}
--rwtItem[6002003]["Awards"]["Events"] = {}
--rwtItem[6002003]["Awards"]["Events"][1] = {}
--rwtItem[6002003]["Awards"]["Events"][1]["GetServerAward"] = {}
--rwtItem[6002003]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
--rwtItem[6002003]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 6002003
--rwtItem[6002003]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--rwtItem[6002003]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000011

--劣质本命经验卡
rwtItem[203000] = rwtItem[203000] or {}
rwtItem[203000]["Awards"] = {}
rwtItem[203000]["Awards"]["Events"] = {}
rwtItem[203000]["Awards"]["Events"][1] = {}
rwtItem[203000]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[203000]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[203000]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 203000
rwtItem[203000]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[203000]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000043

--一般本命经验卡
rwtItem[203001] = rwtItem[203001] or {}
rwtItem[203001]["Awards"] = {}
rwtItem[203001]["Awards"]["Events"] = {}
rwtItem[203001]["Awards"]["Events"][1] = {}
rwtItem[203001]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[203001]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[203001]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 203001
rwtItem[203001]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[203001]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000044

--普通本命经验卡
rwtItem[203002] = rwtItem[203002] or {}
rwtItem[203002]["Awards"] = {}
rwtItem[203002]["Awards"]["Events"] = {}
rwtItem[203002]["Awards"]["Events"][1] = {}
rwtItem[203002]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[203002]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[203002]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 203002
rwtItem[203002]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[203002]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000045

--高等本命经验卡
rwtItem[203003] = rwtItem[203003] or {}
rwtItem[203003]["Awards"] = {}
rwtItem[203003]["Awards"]["Events"] = {}
rwtItem[203003]["Awards"]["Events"][1] = {}
rwtItem[203003]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[203003]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[203003]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 203003
rwtItem[203003]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[203003]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000046

--特等本命经验卡
rwtItem[203004] = rwtItem[203004] or {}
rwtItem[203004]["Awards"] = {}
rwtItem[203004]["Awards"]["Events"] = {}
rwtItem[203004]["Awards"]["Events"][1] = {}
rwtItem[203004]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[203004]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[203004]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 203004
rwtItem[203004]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[203004]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000047



--=======================================================================--
--=========					  幻兽礼包							=========--
--=======================================================================--
--                 ！！！给玩家幻兽一定要配需求的幻兽背包格子数              --
--                 ！！！给玩家幻兽一定要配需求的幻兽背包格子数              --
--                 ！！！给玩家幻兽一定要配需求的幻兽背包格子数              --
--=======================================================================--

--蓝色本命匣
rwtItem[421012] = rwtItem[421012] or {}
rwtItem[421012]["Awards"] = {}
rwtItem[421012]["Awards"]["PetPackSpace"] = 1
rwtItem[421012]["Awards"]["Events"] = {}
rwtItem[421012]["Awards"]["Events"][1] = {}
rwtItem[421012]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[421012]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[421012]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 421012
rwtItem[421012]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[421012]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000053

--星辉本命匣
rwtItem[421013] = rwtItem[421013] or {}
rwtItem[421013]["Awards"] = {}
rwtItem[421013]["Awards"]["PetPackSpace"] = 1
rwtItem[421013]["Awards"]["Events"] = {}
rwtItem[421013]["Awards"]["Events"][1] = {}
rwtItem[421013]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[421013]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[421013]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 421013
rwtItem[421013]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[421013]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000028

--荣耀本命匣
rwtItem[421014] = rwtItem[421014] or {}
rwtItem[421014]["Awards"] = {}
rwtItem[421014]["Awards"]["PetPackSpace"] = 1
rwtItem[421014]["Awards"]["Events"] = {}
rwtItem[421014]["Awards"]["Events"][1] = {}
rwtItem[421014]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[421014]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[421014]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 421014
rwtItem[421014]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[421014]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000029

--专属本命匣
rwtItem[421024] = rwtItem[421024] or {}
rwtItem[421024]["Awards"] = {}
rwtItem[421024]["Awards"]["PetPackSpace"] = 1
rwtItem[421024]["Awards"]["Events"] = {}
rwtItem[421024]["Awards"]["Events"][1] = {}
rwtItem[421024]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[421024]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[421024]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 421024
rwtItem[421024]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[421024]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000054


--=======================================================================--
--=========			          抽奖券					    =========--
--=======================================================================--
--圣纹符
rwtItem[120022] = rwtItem[120022] or {}
--rwtItem[120022]["UseNotDel"] = true
rwtItem[120022]["Awards"] = {}
rwtItem[120022]["Awards"]["Events"] = {}
rwtItem[120022]["Awards"]["Events"][1] = {}
rwtItem[120022]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[120022]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[120022]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 120022
rwtItem[120022]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[120022]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000059

--圣兽符
rwtItem[120023] = rwtItem[120023] or {}
rwtItem[120023]["UseNotDel"] = true
rwtItem[120023]["Awards"] = {}
rwtItem[120023]["Awards"]["CostSysFuncUnlock"] = CONST_SYSTEM_FUNCTION.HERO_LOTTERY
rwtItem[120023]["Awards"]["ErrorMsg"] = {}
rwtItem[120023]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock] = {}
rwtItem[120023]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock]["MsgType"] = CONST_MSG_SHOW.Msg_ShowTip
rwtItem[120023]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock]["Param"] = tLuaText[LANGUAGE_CONFIG][10064]
rwtItem[120023]["Awards"]["Events"] = {}
rwtItem[120023]["Awards"]["Events"][1] = {}
rwtItem[120023]["Awards"]["Events"][1]["OpenWnd"] = {}
rwtItem[120023]["Awards"]["Events"][1]["OpenWnd"]["WndId"] = CONST_MENUTYPE.Lottery1
