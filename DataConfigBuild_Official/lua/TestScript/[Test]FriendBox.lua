--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion

--获取玩家剩余好友宝箱空间
function Test_FriendBox_GetBoxSpaceLeft()
    return GetBoxSpaceLeft()
end

--tips提示剩余好友宝箱空间
function Test_FriendBoxSpace_Tips()
    local nSpace = Test_FriendBox_GetBoxSpaceLeft()
    rwSendSystemMessage("玩家剩余好友宝箱空间为："..nSpace ,2,1)
end


----怪物死亡掉落奖励
----普通怪
--local tNormalMonster = {300048,300047,300046,300045,300073,300074,300075,300076,300078,300115,300116,300117,300118,300119,300120,300121,300122,300123,300124,300125,300126,300128,300143,300144,300145,300148}

----精英怪
--local tElitesMonster = {300043,300032,300029,300028,300027,300026,300025,300022,300021,300051,300105,300106,300107,300108,300109,300110,300111,300112,300113,300114,300127,300137,300138,300139,300140,300141,300142,300147}


----普通怪
--function AreaMonstr_NormalMonsterBeKill(nMonsterGroupType, nMonsterGroupId, nGenId)
--    local tAwardInfo  = {}
--    tAwardInfo["FriendBoxSpace"] = 1
--    tAwardInfo["ErrorMsg"] = {}
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace] = {}
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace]["MsgType"] = CONST_MSG_SHOW.Msg_ShowTip
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace]["Param"] = "宝箱空间不足，不能获得宝箱"
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace]["ShowType"] = 1
--    tAwardInfo["Events"] = {}
--    tAwardInfo["Events"][1] = {}
--    tAwardInfo["Events"][1]["GetServerAward"] = {}
--    tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.WINDOWS
--    tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--    tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = 6000094 

--    rwBaseAward:create(tAwardInfo):Process()
--end
--for k,v in pairs(tNormalMonster) do
--    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
--    table.insert(rwtMonsterGroup_Func[v],AreaMonstr_NormalMonsterBeKill)
--end

----精英怪
--function AreaMonstr_ElitesMonsterBeKill(nMonsterGroupType, nMonsterGroupId, nGenId)
--    local tAwardInfo  = {}
--    tAwardInfo["FriendBoxSpace"] = 1
--    tAwardInfo["ErrorMsg"] = {}
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace] = {}
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace]["MsgType"] = CONST_MSG_SHOW.Msg_ShowTip
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace]["Param"] = "宝箱空间不足，不能获得宝箱"
--    tAwardInfo["ErrorMsg"][CONST_CODE.Error_ChkFriendBoxSpace]["ShowType"] = 1
--    tAwardInfo["Events"] = {}
--    tAwardInfo["Events"][1] = {}
--    tAwardInfo["Events"][1]["GetServerAward"] = {}
--    tAwardInfo["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.WINDOWS
--    tAwardInfo["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
--    tAwardInfo["Events"][1]["GetServerAward"]["AwardId"] = 6000095

--    rwBaseAward:create(tAwardInfo):Process()
--end
--for k,v in pairs(tElitesMonster) do
--    rwtMonsterGroup_Func[v] = rwtMonsterGroup_Func[v] or {}
--    table.insert(rwtMonsterGroup_Func[v],AreaMonstr_ElitesMonsterBeKill)
--end