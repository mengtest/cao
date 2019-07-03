--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--第三片区宝箱
--by:mzy
--date:2019.01.02

--endregion



--==============================模板配置======================
-------------------------数据定义-------------------------
local nMapId = 2005

----时间掩码
--local nTimeData = 1147
--刷新掩码
local nRefreshData = 1148

--每次刷新宝箱总数量
local nRefreshNum = 10

--前置任务id（需完成上一片区任务后开放当前片区宝箱）
local nPreAreaLastTaskId = 10405
--------------------------npcgroup--------------
--金宝箱
local nBoxType_Gold = 40177
--银宝箱2
local nBoxType_Silver_2 = 40176
--铜宝箱2
local nBoxType_Copper_2 = 40175
--银宝箱1
local nBoxType_Silver_1 = 40174
--铜宝箱1
local nBoxType_Copper_1 = 40173

--------------------奖励id--------------
--金宝箱奖励
local nAwardId_Gold = 5000000
--银宝箱2奖励
local nAwardId_Silver_2 = 5000001
--银宝箱1奖励
local nAwardId_Silver_1 = 5000002
--铜宝箱2奖励
local nAwardId_Copper_2 = 5000003
--铜宝箱1奖励
local nAwardId_Copper_1 = 5000004
--------------------物品id----------------
--金宝箱钥匙
local nItem_Key_Gold = 310020

--银宝箱钥匙
local nItem_Key_Silver = 310010

------------------------对白id---------------
local nErrorDialog_Silver_1 = 11035
local nErrorDialog_Silver_2 = 11036
local nErrorDialog_Gold_1 = 11038
local nErrorDialog_Gold_2 = 11039

----------------------------片区宝箱数据配置-----------------------------
tAreaBoxInfo[nMapId] = {}
--tAreaBoxInfo[nMapId]["TimeData"] = nTimeData
tAreaBoxInfo[nMapId]["RefreshData"] = nRefreshData
tAreaBoxInfo[nMapId]["LoopModeNum"] = 3
--前置任务id
tAreaBoxInfo[nMapId]["PreTaskId"] = nPreAreaLastTaskId

tAreaBoxInfo[nMapId]["RefreshNum"] = nRefreshNum

tAreaBoxInfo[nMapId]["TimeConfig"] = {}
tAreaBoxInfo[nMapId]["TimeConfig"][1] = {Hour = 0,Min = 0}
tAreaBoxInfo[nMapId]["TimeConfig"][2] = {Hour = 12,Min = 0}

--刷新方式1
tAreaBoxInfo[nMapId]["LoopMode1"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["TypeId"] = nBoxType_Gold
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["PosType"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType1"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["TypeId"] = nBoxType_Silver_2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["PosType"] = 2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType2"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"]["TypeId"] = nBoxType_Silver_1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType3"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["TypeId"] = nBoxType_Copper_2
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["PosType"] = 3
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType4"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType5"] = {}
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType5"]["TypeId"] = nBoxType_Copper_1
tAreaBoxInfo[nMapId]["LoopMode1"]["BoxType5"]["FinalType"] = 1

--刷新方式2
tAreaBoxInfo[nMapId]["LoopMode2"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["TypeId"] = nBoxType_Gold
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["PosType"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType1"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["TypeId"] = nBoxType_Silver_2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["PosType"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["MinNum"] = 0
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType2"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"]["TypeId"] = nBoxType_Silver_1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"]["MinNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType3"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["TypeId"] = nBoxType_Copper_2
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["PosType"] = 3
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType4"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType5"] = {}
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType5"]["TypeId"] = nBoxType_Copper_1
tAreaBoxInfo[nMapId]["LoopMode2"]["BoxType5"]["FinalType"] = 1

--刷新方式3
tAreaBoxInfo[nMapId]["LoopMode3"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["TypeId"] = nBoxType_Gold
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["PosType"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType1"]["MaxNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["TypeId"] = nBoxType_Silver_2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["PosType"] = 2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["MinNum"] = 0
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType2"]["MaxNum"] = 0
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"]["TypeId"] = nBoxType_Silver_1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"]["MinNum"] = 2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType3"]["MaxNum"] = 3
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["TypeId"] = nBoxType_Copper_2
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["PosType"] = 3
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["MinNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType4"]["MaxNum"] = 1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType5"] = {}
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType5"]["TypeId"] = nBoxType_Copper_1
tAreaBoxInfo[nMapId]["LoopMode3"]["BoxType5"]["FinalType"] = 1

--坐标信息
tAreaBoxInfo[nMapId]["PosInfo"] = {}
--金点
tAreaBoxInfo[nMapId]["PosInfo"][1] = {PosType = 1,sPos = "46.54,18.13,-47.30",nRot = 10}
tAreaBoxInfo[nMapId]["PosInfo"][2] = {PosType = 1,sPos = "375.265,10.52,74.12",nRot = 50}
tAreaBoxInfo[nMapId]["PosInfo"][3] = {PosType = 1,sPos = "394.12,11.13,-436.67",nRot = 310}

--银点
tAreaBoxInfo[nMapId]["PosInfo"][4] = {PosType = 2,sPos = "-8.14,16.65,-85.60",nRot = 50}
tAreaBoxInfo[nMapId]["PosInfo"][5] = {PosType = 2,sPos = "22.544,7.30,-0.98",nRot = 270}
tAreaBoxInfo[nMapId]["PosInfo"][6] = {PosType = 2,sPos = "42.37,11.56,-5.23",nRot = 300}
tAreaBoxInfo[nMapId]["PosInfo"][7] = {PosType = 2,sPos = "388.846,9.71,86.59",nRot = 315}
tAreaBoxInfo[nMapId]["PosInfo"][8] = {PosType = 2,sPos = "444.69,0.38,66.50",nRot = 300}
tAreaBoxInfo[nMapId]["PosInfo"][9] = {PosType = 2,sPos = "402.68,3.38,-396.74",nRot = 230}
tAreaBoxInfo[nMapId]["PosInfo"][10] = {PosType = 2,sPos = "325.01,-3.75,-261.59",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][11] = {PosType = 2,sPos = "317.59,-3.77,-235.14",nRot = 220}
tAreaBoxInfo[nMapId]["PosInfo"][12] = {PosType = 2,sPos = "-19.08,22.91,-377.86",nRot = 120}
tAreaBoxInfo[nMapId]["PosInfo"][13] = {PosType = 2,sPos = "24.10,9.61,-285.72",nRot = 130}

--铜点
tAreaBoxInfo[nMapId]["PosInfo"][14] = {PosType = 3,sPos = "-18.491,-5.42,18.429",nRot = 320}
tAreaBoxInfo[nMapId]["PosInfo"][15] = {PosType = 3,sPos = "42.22,2.43,11.01",nRot = 210}
tAreaBoxInfo[nMapId]["PosInfo"][16] = {PosType = 3,sPos = "31.03,16.62,-62.42",nRot = 200}
tAreaBoxInfo[nMapId]["PosInfo"][17] = {PosType = 3,sPos = "61.15,15.65,-70.17",nRot = 300}
tAreaBoxInfo[nMapId]["PosInfo"][18] = {PosType = 3,sPos = "370.39,0.66,168.49",nRot = 200}
tAreaBoxInfo[nMapId]["PosInfo"][19] = {PosType = 3,sPos = "390.47,-0.01,106.08",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][20] = {PosType = 3,sPos = "414.08,0.41,91.20",nRot = 0}
tAreaBoxInfo[nMapId]["PosInfo"][21] = {PosType = 3,sPos = "441.91,0.66,122.54",nRot = 180}
tAreaBoxInfo[nMapId]["PosInfo"][22] = {PosType = 3,sPos = "332.301,-0.21,-379.68",nRot = 100}
tAreaBoxInfo[nMapId]["PosInfo"][23] = {PosType = 3,sPos = "276.93,3.54,-264.24",nRot = 190}
tAreaBoxInfo[nMapId]["PosInfo"][24] = {PosType = 3,sPos = "303.58,7.39,-292.56",nRot = 230}
tAreaBoxInfo[nMapId]["PosInfo"][25] = {PosType = 3,sPos = "363.01,0.67,-284.18",nRot = 200}
tAreaBoxInfo[nMapId]["PosInfo"][26] = {PosType = 3,sPos = "47.60,17.47,-275.89",nRot = 120}
tAreaBoxInfo[nMapId]["PosInfo"][27] = {PosType = 3,sPos = "96.08,29.10,-371.58",nRot = 220}
tAreaBoxInfo[nMapId]["PosInfo"][28] = {PosType = 3,sPos = "49.86,29.15,-353.76",nRot = 120}
tAreaBoxInfo[nMapId]["PosInfo"][29] = {PosType = 3,sPos = "-44.60,11.43,-291.67",nRot = 100}


--掩码记录宝箱信息
--data1:宝箱npcgrouptype
--data2:posIndex
--data3:isOpen
tAreaBoxInfo[nMapId]["BoxTempData"] = {}
tAreaBoxInfo[nMapId]["BoxTempData"][1] = 1149
tAreaBoxInfo[nMapId]["BoxTempData"][2] = 1150
tAreaBoxInfo[nMapId]["BoxTempData"][3] = 1151
tAreaBoxInfo[nMapId]["BoxTempData"][4] = 1152
tAreaBoxInfo[nMapId]["BoxTempData"][5] = 1153
tAreaBoxInfo[nMapId]["BoxTempData"][6] = 1154
tAreaBoxInfo[nMapId]["BoxTempData"][7] = 1155
tAreaBoxInfo[nMapId]["BoxTempData"][8] = 1156
tAreaBoxInfo[nMapId]["BoxTempData"][9] = 1157
tAreaBoxInfo[nMapId]["BoxTempData"][10] = 1158

--GenId，每个gen对应相同索引的掩码
tAreaBoxInfo[nMapId]["GenId"] = {}
tAreaBoxInfo[nMapId]["GenId"][1] = 20050161
tAreaBoxInfo[nMapId]["GenId"][2] = 20050162
tAreaBoxInfo[nMapId]["GenId"][3] = 20050163
tAreaBoxInfo[nMapId]["GenId"][4] = 20050164
tAreaBoxInfo[nMapId]["GenId"][5] = 20050165
tAreaBoxInfo[nMapId]["GenId"][6] = 20050166
tAreaBoxInfo[nMapId]["GenId"][7] = 20050167
tAreaBoxInfo[nMapId]["GenId"][8] = 20050168
tAreaBoxInfo[nMapId]["GenId"][9] = 20050169
tAreaBoxInfo[nMapId]["GenId"][10] = 20050170

--------------------------逻辑-------------------------------
--金宝箱
rwtNpcGroup[nBoxType_Gold] = rwtNpcGroup[nBoxType_Gold] or {}
rwtNpcGroup[nBoxType_Gold]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Gold]["AreaBoxType"] = CONST_AREABOX_TYPE.Gold
rwtNpcGroup[nBoxType_Gold]["Awards"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Gold
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Gold]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Gold  
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1]["id"] = nItem_Key_Gold
rwtNpcGroup[nBoxType_Gold]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBoxType_Gold]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = {nErrorDialog_Gold_1,nErrorDialog_Gold_2}

rwtNpcGroup[nBoxType_Gold]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end

--银宝箱2
rwtNpcGroup[nBoxType_Silver_2] = rwtNpcGroup[nBoxType_Silver_2] or {}
rwtNpcGroup[nBoxType_Silver_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Silver_2]["AreaBoxType"] = CONST_AREABOX_TYPE.Silver
rwtNpcGroup[nBoxType_Silver_2]["Awards"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Silver_2
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Silver_2  
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"][1]["id"] = nItem_Key_Silver
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBoxType_Silver_2]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = {nErrorDialog_Silver_1,nErrorDialog_Silver_2}

rwtNpcGroup[nBoxType_Silver_2]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end

--银宝箱1
rwtNpcGroup[nBoxType_Silver_1] = rwtNpcGroup[nBoxType_Silver_1] or {}
rwtNpcGroup[nBoxType_Silver_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Silver_1]["AreaBoxType"] = CONST_AREABOX_TYPE.Silver
rwtNpcGroup[nBoxType_Silver_1]["Awards"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Silver_1
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Silver_1 
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"][1] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"][1]["id"] = nItem_Key_Silver
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["CostItems"][1]["num"] = 1
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum] = {}
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["MsgType"] = CONST_MSG_SHOW.Msg_ShowLocalDialog
rwtNpcGroup[nBoxType_Silver_1]["Awards"]["ErrorMsg"][CONST_CODE.Error_ChkItemNum]["Param"] = {nErrorDialog_Silver_1,nErrorDialog_Silver_2}

rwtNpcGroup[nBoxType_Silver_1]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end


--铜宝箱2
rwtNpcGroup[nBoxType_Copper_2] = rwtNpcGroup[nBoxType_Copper_2] or {}
rwtNpcGroup[nBoxType_Copper_2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Copper_2]["AreaBoxType"] = CONST_AREABOX_TYPE.Copper
rwtNpcGroup[nBoxType_Copper_2]["Awards"] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Copper_2
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Copper_2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Copper_2 
rwtNpcGroup[nBoxType_Copper_2]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end

--铜宝箱1
rwtNpcGroup[nBoxType_Copper_1] = rwtNpcGroup[nBoxType_Copper_1] or {}
rwtNpcGroup[nBoxType_Copper_1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nBoxType_Copper_1]["AreaBoxType"] = CONST_AREABOX_TYPE.Copper
rwtNpcGroup[nBoxType_Copper_1]["Awards"] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nBoxType_Copper_1
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtNpcGroup[nBoxType_Copper_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = nAwardId_Copper_1 
rwtNpcGroup[nBoxType_Copper_1]["Function"] = function(nNpcGroupType,nGenEventId)
    local nIndex
    for k,v in pairs(tAreaBoxInfo[nMapId]["GenId"]) do
        if v == nGenEventId then
            nIndex = k
        end
    end
    local nTempData = tAreaBoxInfo[nMapId]["BoxTempData"][nIndex]
    --开启宝箱后掩码设为1
    rwUserTempDataSet(nTempData,1,CONST_TEMP_DATA.Data3)
end


function ShiLuoQunDaoAreaBox_TestFunc(index)
   tPosInfo = tAreaBoxInfo[nMapId]["PosInfo"][index]
   if rwHasGenEvent(20050161) then
        rwDelGenEvent(20050161)
   end
   rwAddGenEvent(20050161,tPosInfo.sPos,nBoxType_Copper_1,tPosInfo.nRot)
   rwUserTeleport(tPosInfo.sPos)
end
