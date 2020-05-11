--region ItemUse.lua
--Purpose:		物品使用逻辑
--Creator: 		余锦鑫
--Created:		2018-08-08
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 19-09-26 $
--RCS-ID:		$Revision: 4 $
--endregion



--罗兰币礼包
rwtItem[8000221] = rwtItem[8000221] or {}
rwtItem[8000221]["Awards"] = {}
rwtItem[8000221]["Awards"]["Events"] = {}
rwtItem[8000221]["Awards"]["Events"][1] = {}
rwtItem[8000221]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[8000221]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[8000221]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 8000221
rwtItem[8000221]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[8000221]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000022

--联盟宝箱
rwtItem[410012] = rwtItem[410012] or {}
rwtItem[410012]["Awards"] = {}
rwtItem[410012]["Awards"]["Events"] = {}
rwtItem[410012]["Awards"]["Events"][1] = {}
rwtItem[410012]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[410012]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[410012]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 410012
rwtItem[410012]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[410012]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000027

--银币宝箱
rwtItem[450013] = rwtItem[450013] or {}
rwtItem[450013]["Awards"] = {}
rwtItem[450013]["Awards"]["Events"] = {}
rwtItem[450013]["Awards"]["Events"][1] = {}
rwtItem[450013]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[450013]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[450013]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 450013
rwtItem[450013]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[450013]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000035

--英雄经验宝箱
rwtItem[450023] = rwtItem[450023] or {}
rwtItem[450023]["Awards"] = {}
rwtItem[450023]["Awards"]["Events"] = {}
rwtItem[450023]["Awards"]["Events"][1] = {}
rwtItem[450023]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[450023]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[450023]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 450023
rwtItem[450023]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[450023]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000036

--本命经验宝箱
rwtItem[450033] = rwtItem[450033] or {}
rwtItem[450033]["Awards"] = {}
rwtItem[450033]["Awards"]["Events"] = {}
rwtItem[450033]["Awards"]["Events"][1] = {}
rwtItem[450033]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[450033]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[450033]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 450033
rwtItem[450033]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[450033]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000037

--劣质银币卡
rwtItem[201000] = rwtItem[201000] or {}
rwtItem[201000]["Awards"] = {}
rwtItem[201000]["Awards"]["Events"] = {}
rwtItem[201000]["Awards"]["Events"][1] = {}
rwtItem[201000]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[201000]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[201000]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 201000
rwtItem[201000]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[201000]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000048

--一般银币卡
rwtItem[201001] = rwtItem[201001] or {}
rwtItem[201001]["Awards"] = {}
rwtItem[201001]["Awards"]["Events"] = {}
rwtItem[201001]["Awards"]["Events"][1] = {}
rwtItem[201001]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[201001]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[201001]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 201001
rwtItem[201001]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[201001]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000049

--普通银币卡
rwtItem[201002] = rwtItem[201002] or {}
rwtItem[201002]["Awards"] = {}
rwtItem[201002]["Awards"]["Events"] = {}
rwtItem[201002]["Awards"]["Events"][1] = {}
rwtItem[201002]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[201002]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[201002]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 201002
rwtItem[201002]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[201002]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000050

--高等银币卡
rwtItem[201003] = rwtItem[201003] or {}
rwtItem[201003]["Awards"] = {}
rwtItem[201003]["Awards"]["Events"] = {}
rwtItem[201003]["Awards"]["Events"][1] = {}
rwtItem[201003]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[201003]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[201003]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 201003
rwtItem[201003]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[201003]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000051

--特等银币卡
rwtItem[201004] = rwtItem[201004] or {}
rwtItem[201004]["Awards"] = {}
rwtItem[201004]["Awards"]["Events"] = {}
rwtItem[201004]["Awards"]["Events"][1] = {}
rwtItem[201004]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[201004]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[201004]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 201004
rwtItem[201004]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[201004]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000052

--二阶晶尘宝箱 (多人本魔族之心获得）
rwtItem[460024] = rwtItem[460024] or {}
rwtItem[460024]["Awards"] = {}
rwtItem[460024]["Awards"]["Events"] = {}
rwtItem[460024]["Awards"]["Events"][1] = {}
rwtItem[460024]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[460024]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[460024]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 460024
rwtItem[460024]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[460024]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000055

--三阶晶尘宝箱 (多人本森之幻界获得）
rwtItem[460034] = rwtItem[460034] or {}
rwtItem[460034]["Awards"] = {}
rwtItem[460034]["Awards"]["Events"] = {}
rwtItem[460034]["Awards"]["Events"][1] = {}
rwtItem[460034]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[460034]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[460034]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 460034
rwtItem[460034]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[460034]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000056

--密林赠礼·① (第一期14日循环活动兑换）
rwtItem[8000305] = rwtItem[8000305] or {}
rwtItem[8000305]["Awards"] = {}
rwtItem[8000305]["Awards"]["Events"] = {}
rwtItem[8000305]["Awards"]["Events"][1] = {}
rwtItem[8000305]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[8000305]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[8000305]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 8000305
rwtItem[8000305]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[8000305]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000057


--密林赠礼·② (第二期14日循环活动兑换）
rwtItem[8000315] = rwtItem[8000315] or {}
rwtItem[8000315]["Awards"] = {}
rwtItem[8000315]["Awards"]["Events"] = {}
rwtItem[8000315]["Awards"]["Events"][1] = {}
rwtItem[8000315]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[8000315]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[8000315]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 8000315
rwtItem[8000315]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[8000315]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 4000058

--罗兰钻月卡体验券 (特权卡功能）
rwtItem[210104] = rwtItem[210104] or {}
rwtItem[210104]["UseNotDel"] = true
rwtItem[210104]["Awards"] = {}
rwtItem[210104]["Awards"]["Events"] = {}
rwtItem[210104]["Awards"]["Events"][1] = {}
rwtItem[210104]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[210104]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[210104]["Awards"]["Events"][2] = {}
rwtItem[210104]["Awards"]["Events"][2]["OpenWnd"] = {}
rwtItem[210104]["Awards"]["Events"][2]["OpenWnd"]["WndId"] = 2100


--付费召唤卷
rwtItem[120033] = rwtItem[120033] or {}
rwtItem[120033]["Function"] = function()
--暂无功能（后续修改）
end


--体力道具1
rwtItem[204010] = rwtItem[204010] or {}
rwtItem[204010]["UseNotDel"] = true
rwtItem[204010]["Awards"] = {}
rwtItem[204010]["Awards"]["Events"] = {}
rwtItem[204010]["Awards"]["Events"][1] = {}
rwtItem[204010]["Awards"]["Events"][1]["OpenWnd"] = {}
rwtItem[204010]["Awards"]["Events"][1]["OpenWnd"]["WndId"] = CONST_MENUTYPE.ApPanel


--体力道具2
rwtItem[204020] = rwtItem[204020] or {}
rwtItem[204020]["UseNotDel"] = true
rwtItem[204020]["Awards"] = {}
rwtItem[204020]["Awards"]["Events"] = {}
rwtItem[204020]["Awards"]["Events"][1] = {}
rwtItem[204020]["Awards"]["Events"][1]["OpenWnd"] = {}
rwtItem[204020]["Awards"]["Events"][1]["OpenWnd"]["WndId"] = CONST_MENUTYPE.ApPanel


--体力道具3
rwtItem[204030] = rwtItem[204030] or {}
rwtItem[204030]["UseNotDel"] = true
rwtItem[204030]["Awards"] = {}
rwtItem[204030]["Awards"]["Events"] = {}
rwtItem[204030]["Awards"]["Events"][1] = {}
rwtItem[204030]["Awards"]["Events"][1]["OpenWnd"] = {}
rwtItem[204030]["Awards"]["Events"][1]["OpenWnd"]["WndId"] = CONST_MENUTYPE.ApPanel

--日曜之杯（主线卡点加速道具-哀嚎神殿）
rwtItem[7000240] = rwtItem[7000240] or {}
rwtItem[7000240]["UseNotDel"] = true
rwtItem[7000240]["Awards"] = {}
rwtItem[7000240]["Awards"]["Events"] = {}
rwtItem[7000240]["Awards"]["Events"][1] = {}
rwtItem[7000240]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000240]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000240]["Awards"]["Events"][2] = {}
rwtItem[7000240]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000240]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000240]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 1000
rwtItem[7000240]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20228
rwtItem[7000240]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 1000047

--魔棱晶（主线卡点加速道具-冒险者营地）
rwtItem[7000250] = rwtItem[7000250] or {}
rwtItem[7000250]["UseNotDel"] = true
rwtItem[7000250]["Awards"] = {}
rwtItem[7000250]["Awards"]["Events"] = {}
rwtItem[7000250]["Awards"]["Events"][1] = {}
rwtItem[7000250]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000250]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000250]["Awards"]["Events"][2] = {}
rwtItem[7000250]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000250]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000250]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2003
rwtItem[7000250]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20203
rwtItem[7000250]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20030133

--沙海虫卵（主线卡点加速道具-三月边陲）
rwtItem[7000260] = rwtItem[7000260] or {}
rwtItem[7000260]["UseNotDel"] = true
rwtItem[7000260]["Awards"] = {}
rwtItem[7000260]["Awards"]["Events"] = {}
rwtItem[7000260]["Awards"]["Events"][1] = {}
rwtItem[7000260]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000260]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000260]["Awards"]["Events"][2] = {}
rwtItem[7000260]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000260]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000260]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2003
rwtItem[7000260]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 10013
rwtItem[7000260]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20030015

--明银之枝（主线卡点加速道具-月神森林）
rwtItem[7000270] = rwtItem[7000270] or {}
rwtItem[7000270]["UseNotDel"] = true
rwtItem[7000270]["Awards"] = {}
rwtItem[7000270]["Awards"]["Events"] = {}
rwtItem[7000270]["Awards"]["Events"][1] = {}
rwtItem[7000270]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000270]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000270]["Awards"]["Events"][2] = {}
rwtItem[7000270]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000270]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000270]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2003
rwtItem[7000270]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20194
rwtItem[7000270]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20030082

--桑木（主线卡点加速道具-永夜森林）
rwtItem[7000280] = rwtItem[7000280] or {}
rwtItem[7000280]["UseNotDel"] = true
rwtItem[7000280]["Awards"] = {}
rwtItem[7000280]["Awards"]["Events"] = {}
rwtItem[7000280]["Awards"]["Events"][1] = {}
rwtItem[7000280]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000280]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000280]["Awards"]["Events"][2] = {}
rwtItem[7000280]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000280]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000280]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2003
rwtItem[7000280]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20209
rwtItem[7000280]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20030159

--卡诺萨奖章（主线卡点加速道具-第三片区先导任务1）
rwtItem[7000290] = rwtItem[7000290] or {}
rwtItem[7000290]["UseNotDel"] = true
rwtItem[7000290]["Awards"] = {}
rwtItem[7000290]["Awards"]["Events"] = {}
rwtItem[7000290]["Awards"]["Events"][1] = {}
rwtItem[7000290]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000290]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000290]["Awards"]["Events"][2] = {}
rwtItem[7000290]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000290]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000290]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 1000
rwtItem[7000290]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20228
rwtItem[7000290]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 1000047

--B型转换器（主线卡点加速道具-第三片区先导任务2）
rwtItem[7000300] = rwtItem[7000300] or {}
rwtItem[7000300]["UseNotDel"] = true
rwtItem[7000300]["Awards"] = {}
rwtItem[7000300]["Awards"]["Events"] = {}
rwtItem[7000300]["Awards"]["Events"][1] = {}
rwtItem[7000300]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000300]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000300]["Awards"]["Events"][2] = {}
rwtItem[7000300]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000300]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000300]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 1000
rwtItem[7000300]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20228
rwtItem[7000300]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 1000047

--乌铁（主线卡点加速道具-不冬岛）
rwtItem[7000310] = rwtItem[7000310] or {}
rwtItem[7000310]["UseNotDel"] = true
rwtItem[7000310]["Awards"] = {}
rwtItem[7000310]["Awards"]["Events"] = {}
rwtItem[7000310]["Awards"]["Events"][1] = {}
rwtItem[7000310]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000310]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000310]["Awards"]["Events"][2] = {}
rwtItem[7000310]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000310]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000310]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2005
rwtItem[7000310]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20408
rwtItem[7000310]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20050035

--实验数据表（主线卡点加速道具 -鲸脊岛）
rwtItem[7000320] = rwtItem[7000320] or {}
rwtItem[7000320]["UseNotDel"] = true
rwtItem[7000320]["Awards"] = {}
rwtItem[7000320]["Awards"]["Events"] = {}
rwtItem[7000320]["Awards"]["Events"][1] = {}
rwtItem[7000320]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000320]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000320]["Awards"]["Events"][2] = {}
rwtItem[7000320]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000320]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000320]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2005
rwtItem[7000320]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20436
rwtItem[7000320]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20050050

--废旧部件（主线卡点加速道具-口袋岛）
rwtItem[7000330] = rwtItem[7000330] or {}
rwtItem[7000330]["UseNotDel"] = true
rwtItem[7000330]["Awards"] = {}
rwtItem[7000330]["Awards"]["Events"] = {}
rwtItem[7000330]["Awards"]["Events"][1] = {}
rwtItem[7000330]["Awards"]["Events"][1]["CloseWnd"] = {}
rwtItem[7000330]["Awards"]["Events"][1]["CloseWnd"]["WndId"] = CONST_MENUTYPE.Bag
rwtItem[7000330]["Awards"]["Events"][2] = {}
rwtItem[7000330]["Awards"]["Events"][2]["AutoWay"] = {}
rwtItem[7000330]["Awards"]["Events"][2]["AutoWay"]["FindWayTypeId"] = 1
rwtItem[7000330]["Awards"]["Events"][2]["AutoWay"]["FindWayMapId"] = 2005
rwtItem[7000330]["Awards"]["Events"][2]["AutoWay"]["FindWayGroupId"] = 20593
rwtItem[7000330]["Awards"]["Events"][2]["AutoWay"]["FindWayGenId"] = 20050209

--祝福之匣	福利博彩活动
rwtItem[8000107] = rwtItem[8000107] or {}
rwtItem[8000107]["UseNotDel"] = true
rwtItem[8000107]["Awards"] = {}
rwtItem[8000107]["Awards"]["Events"] = {}
rwtItem[8000107]["Awards"]["Events"][1] = {}
rwtItem[8000107]["Awards"]["Events"][1]["ChkDataDayJudgment"] = 1246
rwtItem[8000107]["Awards"]["Events"][1]["DeleteItem"] = {}
rwtItem[8000107]["Awards"]["Events"][1]["DeleteItem"]["ItemId"] = 8000107
rwtItem[8000107]["Awards"]["Events"][1]["DeleteItem"]["DelNum"] = 1
rwtItem[8000107]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtItem[8000107]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtItem[8000107]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 7000899
rwtItem[8000107]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.GIFT
rwtItem[8000107]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 8000107
rwtItem[8000107]["Awards"]["Events"][1]["FailEvents"] = {}
rwtItem[8000107]["Awards"]["Events"][1]["FailEvents"]["UserMsg"] = {}
rwtItem[8000107]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["MsgType"] = 2
rwtItem[8000107]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["Content"] = tLuaText[LANGUAGE_CONFIG][10230]
rwtItem[8000107]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["ShowType"] = 1
rwtItem[8000107]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["AwardTarget"] = CONST_AWARD_TARGET.SELF
