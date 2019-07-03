--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--boss分享系统掉落

--endregion
--=======================================================================--
--=========					boss宝箱							=========--
--=======================================================================--
--绿色宝箱
rwtItem[410021] = rwtItem[410021] or {}
rwtItem[410021]["Awards"] = {}
rwtItem[410021]["Awards"]["Events"] = {}
rwtItem[410021]["Awards"]["Events"][1] = {}
rwtItem[410021]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[410021]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[410021]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 410021
rwtItem[410021]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[410021]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 5000221
                                                                                     
--蓝色宝箱
rwtItem[410022] = rwtItem[410022] or {}
rwtItem[410022]["Awards"] = {}
rwtItem[410022]["Awards"]["Events"] = {}
rwtItem[410022]["Awards"]["Events"][1] = {}
rwtItem[410022]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[410022]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[410022]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 410022
rwtItem[410022]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[410022]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 5000222

--紫色宝箱
rwtItem[410023] = rwtItem[410023] or {}
rwtItem[410023]["Awards"] = {}
rwtItem[410023]["Awards"]["Events"] = {}
rwtItem[410023]["Awards"]["Events"][1] = {}
rwtItem[410023]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[410023]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[410023]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 410023
rwtItem[410023]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[410023]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 5000223

--橙色宝箱
rwtItem[410024] = rwtItem[410024] or {}
rwtItem[410024]["Awards"] = {}
rwtItem[410024]["Awards"]["Events"] = {}
rwtItem[410024]["Awards"]["Events"][1] = {}
rwtItem[410024]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[410024]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[410024]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 410024
rwtItem[410024]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[410024]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 5000224

--=======================================================================--
--=========					boss物品							=========--
--=======================================================================--

--领主召唤券
rwtItem[210023] = rwtItem[210023] or {}
rwtItem[210023]["UseNotDel"] = true
rwtItem[210023]["Awards"] = {}
rwtItem[210023]["Awards"]["CostSysFuncUnlock"] = CONST_SYSTEM_FUNCTION.SHARE_BOSS
rwtItem[210023]["Awards"]["ErrorMsg"] = {}
rwtItem[210023]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock] = {}
rwtItem[210023]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock]["MsgType"] = CONST_MSG_SHOW.Msg_ShowTip
rwtItem[210023]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock]["Param"] = tLuaText[LANGUAGE_CONFIG][10064]
rwtItem[210023]["Awards"]["Events"] = {}
rwtItem[210023]["Awards"]["Events"][1] = {}
rwtItem[210023]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[210023]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[210023]["Awards"]["Events"][2] = {}
rwtItem[210023]["Awards"]["Events"][2]["OpenWnd"] = {}
rwtItem[210023]["Awards"]["Events"][2]["OpenWnd"]["WndId"] = CONST_MENUTYPE.ShareBoss


--圣界领主召唤券
rwtItem[210024] = rwtItem[210024] or {}
rwtItem[210024]["UseNotDel"] = true
rwtItem[210024]["Awards"] = {}
rwtItem[210024]["Awards"]["CostSysFuncUnlock"] = CONST_SYSTEM_FUNCTION.SHARE_BOSS
rwtItem[210024]["Awards"]["ErrorMsg"] = {}
rwtItem[210024]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock] = {}
rwtItem[210024]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock]["MsgType"] = CONST_MSG_SHOW.Msg_ShowTip
rwtItem[210024]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkSysFuncUnlock]["Param"] = tLuaText[LANGUAGE_CONFIG][10064]
rwtItem[210024]["Awards"]["Events"] = {}
rwtItem[210024]["Awards"]["Events"][1] = {}
rwtItem[210024]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[210024]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[210024]["Awards"]["Events"][2] = {}
rwtItem[210024]["Awards"]["Events"][2]["OpenWnd"] = {}
rwtItem[210024]["Awards"]["Events"][2]["OpenWnd"]["WndId"] = CONST_MENUTYPE.ShareBoss