--region [ExploreCopyMap]ShaHaiYiJi.lua
--Purpose:		沙海遗迹片区探索副本
--Creator: 		倪祖伟
--Created:		2020-04-11
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 2020-04-11 $
--RCS-ID:		$Revision: 1 $
--endregion

local nCopyMap = 3160
local nTaskid = 60356
local nTempdata = 1302
--掩码
--data1：机关门、光墙；=1表示已经触碰过
--data2：机关传送；=1表示已传送
--data3：遇怪次数，宝箱怪1
--data4：遇怪次数，宝箱怪2
--data5：遇怪次数，采集怪物1
--data6：遇怪次数，采集怪物2组合
--data7：传送状态，0表示可传送，1暂停传送

local nEffetc_huo = 2017
local nEffetc_shui= 2018
local nEffetc_an  = 2019

local tValveGenIdInfo = {}
tValveGenIdInfo[3160035] = {}
tValveGenIdInfo[3160036] = {}
tValveGenIdInfo[3160037] = {}
tValveGenIdInfo[3160038] = {}
tValveGenIdInfo[3160039] = {}
tValveGenIdInfo[3160040] = {}
tValveGenIdInfo[3160041] = {}
tValveGenIdInfo[3160042] = {}
tValveGenIdInfo[3160043] = {}
tValveGenIdInfo[3160044] = {}
tValveGenIdInfo[3160045] = {}
tValveGenIdInfo[3160046] = {}
tValveGenIdInfo[3160047] = {}
tValveGenIdInfo[3160048] = {}
tValveGenIdInfo[3160049] = {}
tValveGenIdInfo[3160050] = {}

tValveGenIdInfo[3160035]["Pos"] = "-179.00,-21.16,4.4501"
tValveGenIdInfo[3160036]["Pos"] = "-236.10,-21.16,48.221"
tValveGenIdInfo[3160037]["Pos"] = "-199.90,-21.16,-33.21"
tValveGenIdInfo[3160038]["Pos"] = "-295.20,-21.16,52.321"
tValveGenIdInfo[3160039]["Pos"] = "-158.80,-21.16,-28.61"
tValveGenIdInfo[3160040]["Pos"] = "-311.03,-21.16,11.421"
tValveGenIdInfo[3160041]["Pos"] = "-242.10,-12.66,90.671"
tValveGenIdInfo[3160042]["Pos"] = "-306.80,-21.16,61.799"
tValveGenIdInfo[3160043]["Pos"] = "-168.40,-21.18,-31.73"
tValveGenIdInfo[3160044]["Pos"] = "-307.70,-21.16,78.464"
tValveGenIdInfo[3160045]["Pos"] = "-240.70,-21.16,-59.91"
tValveGenIdInfo[3160046]["Pos"] = "-266.40,-21.16,-35.77"
tValveGenIdInfo[3160047]["Pos"] = "-239.60,-21.16,-0.511"
tValveGenIdInfo[3160048]["Pos"] = "-312.00,-21.16,38.021"
tValveGenIdInfo[3160049]["Pos"] = "-230.10,-12.66,90.671"
tValveGenIdInfo[3160050]["Pos"] = "-225.60,-21.16,-20.05"

local sPos = {}
sPos[1]  = "-236.10,-21.16,48.221"
sPos[2]  = "-179.00,-21.16,4.4501"
sPos[3]  = "-295.20,-21.16,52.321"
sPos[4]  = "-199.90,-21.16,-33.21"
sPos[5]  = "-311.03,-21.16,11.421"
sPos[6]  = "-158.80,-21.16,-28.61"
sPos[7]  = "-306.80,-21.16,61.799"
sPos[8]  = "-242.10,-12.66,90.671"
sPos[9]  = "-307.70,-21.16,78.464"
sPos[10] = "-168.40,-21.18,-31.73"
sPos[11] = "-266.40,-21.16,-35.77"
sPos[12] = "-240.70,-21.16,-59.91"
sPos[13] = "-312.00,-21.16,38.021"
sPos[14] = "-239.60,-21.16,-0.511"
sPos[15] = "-225.60,-21.16,-20.05"
sPos[16] = "-230.10,-12.66,90.671"

local tDialogId = {}
tDialogId.EnterMap          = 7138
tDialogId.Qiang             = 7139
tDialogId.ChuanSong         = 7140
tDialogId.BoxMonster_1      = 7141
tDialogId.BoxMonster_2      = 7142
tDialogId.CollectMonster_1  = 7143
tDialogId.CollectMonster_2  = 7144
tDialogId.CollectMonster_3  = 7145
tDialogId.CollectMonster_4  = 7146
tDialogId.PassBox           = 7147

local tValveid = {}
tValveid.Meng     = 1147
tValveid.Qiang    = 1148
tValveid.RedFly   = 1149
tValveid.BlueFly  = 1150
tValveid.PurpleFly= 1151

local tBox = {}
tBox.Normal  = 40368
tBox.Special = 40369
tBox.PassBox = 40370
local nCollect = 60504

local tGenId = {}
tGenId.Monster_Box_1 = 3160012
tGenId.Monster_Box_2 = 3160013
tGenId.Monster_Col_1 = 3160014
tGenId.Monster_Col_2 = 3160015
tGenId.Monster_Col_3 = 3160016
tGenId.Monster_Col_4 = 3160017

local tTrap = {}
tTrap.RedFly   = 30751
tTrap.BlueFly  = 30752
tTrap.PurpleFly= 30753

local tAward = {}
tAward.Normal  = 1001050
tAward.Special = 1001051
tAward.PassBox = 1001052
tAward.Collect = 1001053
-- tAward.Pass = 1001054
--===function===========
function CopyMap_ShaHaiYiJi_Fly(nGenId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data7,rwUserGetId())
    if index == 1 then
        return
    end
    if rwChkTable(tValveGenIdInfo[nGenId]) then
        rwTeleport(1,rwUserGetId(),tValveGenIdInfo[nGenId]["Pos"])
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data7,rwUserGetId())
    end
end

--========================================================
tValve[tValveid.Meng] ={}
tValve[tValveid.Meng]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tValveid.Meng]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data1,rwUserGetId())
    if index == 0 then
        rwOpenNpcChatDialog(tDialogId.Qiang)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data1,rwUserGetId())
    end
end
tValve[tValveid.Qiang] = tValve[tValveid.Meng]


tValve[tValveid.BlueFly] = {}
tValve[tValveid.BlueFly]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[tValveid.BlueFly]["ValveEnterFunc"] = function(nValveType, nGenId, nValveId)
    local index = rwTempDataGetValue(nTempdata,CONST_TEMP_DATA.Data2,rwUserGetId())
    if index == 0 then
        rwOpenNpcChatDialog(tDialogId.ChuanSong,CONST_NPCCHAT_TYPE.NPC,nGenId)
        rwUserTempDataSet(nTempdata,1,CONST_TEMP_DATA.Data2,rwUserGetId())
    else
        CopyMap_ShaHaiYiJi_Fly(nGenId)
    end
end
tValve[tValveid.BlueFly]["ValveLeaveFunc"] = function(nValveType, nGenId, nValveId)
    rwUserTempDataSet(nTempdata,0,CONST_TEMP_DATA.Data7,rwUserGetId())
end

tValve[tValveid.RedFly] =tValve[tValveid.BlueFly]
tValve[tValveid.PurpleFly] =tValve[tValveid.BlueFly]

--===========================对白
rwtDialog[tDialogId.ChuanSong] = {}
rwtDialog[tDialogId.ChuanSong]["DialogEnd"] = function (nId)
	CopyMap_ShaHaiYiJi_Fly(nId)
end
rwtDialog[tDialogId.BoxMonster_1] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.BoxMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Box_1
rwtDialog[tDialogId.BoxMonster_2] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.BoxMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Box_2

rwtDialog[tDialogId.CollectMonster_1] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_1]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_1
rwtDialog[tDialogId.CollectMonster_2] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_2]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_2
rwtDialog[tDialogId.CollectMonster_3] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_3]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_3
rwtDialog[tDialogId.CollectMonster_4] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"][1]["AutoBattle"]={}
rwtDialog[tDialogId.CollectMonster_4]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"]=tGenId.Monster_Col_4

rwtDialog[tDialogId.PassBox] = {}
rwtDialog[tDialogId.PassBox]["DialogEndInit"] = {}
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.PassBox
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialogId.PassBox]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.PassBox
--===========================宝箱
rwtNpcGroup[tBox.Normal] = {}
rwtNpcGroup[tBox.Normal]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Normal]["Awards"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"] = {}   
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["MinRate"] = 0
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["MaxRate"] = 3000
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialogId.BoxMonster_1
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data3
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = tBox.Normal
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Normal
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["MinRate"] = 3001
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["MaxRate"] = 3500
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialogId.BoxMonster_2
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data4
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = tBox.Norma1
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Normal
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["MinRate"] = 3501
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["MaxRate"] = 10000
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tBox.Normal
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Normal]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.Normal

rwtNpcGroup[tBox.Special] = {}
rwtNpcGroup[tBox.Special]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.Special]["Awards"] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBox.Special
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tBox.Special]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAward.Special


rwtNpcGroup[tBox.PassBox] = {}
rwtNpcGroup[tBox.PassBox]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tBox.PassBox]["NotDel"] = 1
rwtNpcGroup[tBox.PassBox]["Awards"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tBox.PassBox]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.PassBox

rwtNpcGroup[nCollect] = {}
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect]["CollectTime"] = 1
rwtNpcGroup[nCollect]["Awards"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"] = {}   
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["MinRate"] = 0
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["MaxRate"] = 2000
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data5
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = {0,1}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_1
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data5
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = nCollect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][1]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["MinRate"] = 2001
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["MaxRate"] = 3000
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_2
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = nCollect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][2]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["MinRate"] = 3001
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["MaxRate"] = 4000
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_3
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["FailEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = nCollect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][3]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["MinRate"] = 4001
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["MaxRate"] = 4500
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Record"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["DataValue"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["ChkUserTempData"][1]["Value"] = 0
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["OpenDialog"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["OpenDialog"]["DialogId"] = tDialogId.CollectMonster_4
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["DataIndex"] = CONST_TEMP_DATA.Data6
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["SetUserTempData"][1]["AddValue"] = 1
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["FailEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["ActionId"] = nCollect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][4]["RandomToNormalEvents"][1]["Events"]["FailEvents"]["GetServerAward"]["AwardId"] = tAward.Collect
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["MinRate"] = 4501
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["MaxRate"] = 10000
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1]["Events"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1]["Events"]["GetServerAward"] = {}
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["ActionId"] = tBox.Normal
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nCollect]["Awards"]["RandomGroupEvents"][5]["RandomToNormalEvents"][1]["Events"]["GetServerAward"]["AwardId"] = tAward.Normal

--===========================目标
rwtTarget[nTaskid] = {}
rwtTarget[nTaskid]["Title"] = tLuaText[LANGUAGE_CONFIG][22001]
rwtTarget[nTaskid]["ReqDialogId"] = tDialogId.PassBox
rwtTarget[nTaskid]["ReqCount"] = 1

rwtCopyMapMission[nCopyMap] = {}
rwtCopyMapMission[nCopyMap]["ReqLev"] = 1
rwtCopyMapMission[nCopyMap]["Difficulty"] = 1
rwtCopyMapMission[nCopyMap]["TargetStepNum"] = 1
rwtCopyMapMission[nCopyMap]["Target1"] = {nTaskid}
rwtCopyMapMission[nCopyMap]["Target99"] = {60072}
rwtCopyMapMission[nCopyMap]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialogId.EnterMap
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][1]["SetValue"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["TempDataID"] = nTempdata
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["SetUserTempData"][2]["ResetValue"] = true
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][1]["Pos"] = sPos[1]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][2]["Pos"] = sPos[2]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][3]["Pos"] = sPos[3]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["EffectId"] = nEffetc_huo
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][4]["Pos"] = sPos[4]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][5]["Pos"] = sPos[5]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][6]["Pos"] = sPos[6]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][7]["Pos"] = sPos[7]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][8]["Pos"] = sPos[8]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][9]["Pos"] = sPos[9]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["EffectId"] = nEffetc_shui
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][10]["Pos"] = sPos[10]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][11]["Pos"] = sPos[11]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][12]["Pos"] = sPos[12]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][13]["Pos"] = sPos[13]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][14]["Pos"] = sPos[14]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][15]["Pos"] = sPos[15]
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16] = {}
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["TargetType"] = 7
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["TargetId"] = 0
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["EffectId"] = nEffetc_an
rwtCopyMapMission[nCopyMap]["CopyMapInit"]["Events"][1]["AddEffect"][16]["Pos"] = sPos[16]
