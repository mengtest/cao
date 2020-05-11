--region [CopyMap]AoZiJiaZu_Day4.lua
--Purpose:		奥兹家族第四天副本
--Creator: 		黄业勤
--Created:		2019-09-18
--Modifier:		$Author: 黄业勤 $
--Modified:		$Date: 19-11-9 $
--RCS-ID:		$Revision: 3 $
--endregion
--副本id 3149

--入口NPC
local nRuKou_NPCGroup = 50070
local nRuKou_GenId = 3149001

local nCopyMapId = 3149

--怪物ID  9000665 	副本怪物组200740
local tMonster = {}

tMonster.nMonster_ShouWei = 9000665
tMonster.nMonsterGroup_ShouWei = 200740
--tMonster.nMonsterGroup_GenId_ShouWei = 3149002~6

--进入副本NPC
rwtNpcGroup[nRuKou_NPCGroup] = rwtNpcGroup[nRuKou_NPCGroup] or {}
rwtNpcGroup[nRuKou_NPCGroup]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
--rwtNpcGroup[50026]["UnlockDialog"] = 5238
--rwtNpcGroup[50026]["Dialog"] = 5239s
rwtNpcGroup[nRuKou_NPCGroup]["CopyMapList"] = {nCopyMapId}

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1


--对话ID	6923	6930   and  7045	7049     	7068	7077
local tDialog = {}
tDialog.nDialog1 = 6923  --进入副本
tDialog.nDialog2 = 6924  --进下一层
tDialog.nDialog3 = 6925  --采集点1对白
tDialog.nDialog4 = 6926  --采集点2对白
--tDialog.nDialog5 = 6927  --采集点3对白1
--tDialog.nDialog6 = 6928  --采集点3对白2
tDialog.nDialog7 = 6929  --采集点3对白3
tDialog.nDialog8 = 6930  --左房间所有采集完成后触发
tDialog.nDialog9 = 7045  --采集4
tDialog.nDialog10 = 7046 --采集5
tDialog.nDialog11 = 7047 --采集6
tDialog.nDialog12 = 7048 --右房间采集完
tDialog.nDialog13 = 7049 --跳水地点

tDialog.nDialog14 = 7061 --右边房间触发陷阱对白
tDialog.nDialog_KaiTou = 7062 --开头对白  这道门需要输入3位数密码才能破解……会是什么呢？
tDialog.nDialog_TiMu = 7063 --题目对白  就3个数。与其在那猜，不如先排列组合一下，试试看。
tDialog.nDialog_err_1 = 7064 --第一次错
tDialog.nDialog_err_2 = 7065 --第二次或更多次错了
tDialog.nDialog_rig_1 = 7066 --第一次就对了
tDialog.nDialog_rig_2 = 7067 --第二次或更多次对了

--机关	1123

--空气墙
local nValve_1 = 1123
local nValve_GenId = 3149011

--空气墙
tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_1]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
    local nState = rwGetValveData(nGenId)
    if nState == 0 then
        return
    end
    --打开提示对白
    rwOpenNpcChatDialog(7068)
    --设置机关状态
    rwUpdateValveData(nValve_GenId,0)
end

----------------------密码门---------------------------
--密码门  1134
local nGenId_Valve_MiMa = 3149018
local nValve_MiMa = 1134

--密码门
tValve[nValve_MiMa] = tValve[nValve_MiMa] or {}
tValve[nValve_MiMa]["Type"] = CONST_VALVE_TYPE.DOOR
tValve[nValve_MiMa]["ValveEnterFunc"] =  function(nValveType, nGenId, nValveId)
--    local nUserId = rwUserGetId()
--    local nError_Times = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["CuoWu_Times"]
    --打开对白
--    if nError_Times == 0 then
        rwOpenNpcChatDialog(tDialog.nDialog_KaiTou)
--    elseif nError_Times == 1 then 

--    else
--    end

--    --设置机关状态
--    rwUpdateValveData(nGenId_Valve_1,0)
--    rwUpdateValveData(nGenId_Valve_2,0)
end


local tDialogOption = {}
tDialogOption[1]={}
tDialogOption[1]["Option"] = {}
tDialogOption[1]["Option"][1] = {}
tDialogOption[1]["Option"][1]["Text"] = "第一位数字是2。"
tDialogOption[1]["Option"][1]["Func"] = "</F>rwTiMu_1_Yes"
tDialogOption[1]["Option"][2] = {}
tDialogOption[1]["Option"][2]["Text"] = "第一位数字是3。"
tDialogOption[1]["Option"][2]["Func"] = "</F>rwTiMu_1_No"
tDialogOption[2]={}
tDialogOption[2]["Option"] = {}
tDialogOption[2]["Option"][1] = {}
tDialogOption[2]["Option"][1]["Text"] = "第二位数字是8。"
tDialogOption[2]["Option"][1]["Func"] = "</F>rwTiMu_2_Yes"
tDialogOption[2]["Option"][2] = {}
tDialogOption[2]["Option"][2]["Text"] = "第二位数字是9。"
tDialogOption[2]["Option"][2]["Func"] = "</F>rwTiMu_2_No"
tDialogOption[3]={}
tDialogOption[3]["Option"] = {}
tDialogOption[3]["Option"][1] = {}
tDialogOption[3]["Option"][1]["Text"] = "第三位数字是8。"
tDialogOption[3]["Option"][1]["Func"] = "</F>rwTiMu_3_No"
tDialogOption[3]["Option"][2] = {}
tDialogOption[3]["Option"][2]["Text"] = "第三位数字是9。"
tDialogOption[3]["Option"][2]["Func"] = "</F>rwTiMu_3_Yes"

--以下对白后都接题目对白
rwtDialog[tDialog.nDialog_KaiTou] = rwtDialog[tDialog.nDialog_KaiTou] or {}
rwtDialog[tDialog.nDialog_KaiTou]["DialogEnd"] = function ()
     rwOpenNpcChatDialog(tDialog.nDialog_TiMu)
    rwNpcDialogOption(tDialogOption[1]["Option"])
end 
rwtDialog[tDialog.nDialog_err_1] = rwtDialog[tDialog.nDialog_KaiTou] or {}
rwtDialog[tDialog.nDialog_err_2] = rwtDialog[tDialog.nDialog_err_1] or {}


function rwTiMu_1_Yes()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
    rwOpenNpcChatDialog(tDialog.nDialog_TiMu)
    rwNpcDialogOption(tDialogOption[2]["Option"])
end
function rwTiMu_1_No()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
    local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"] = false
   rwOpenNpcChatDialog(tDialog.nDialog_TiMu)
    rwNpcDialogOption(tDialogOption[2]["Option"])
end


function rwTiMu_2_Yes()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
    rwOpenNpcChatDialog(tDialog.nDialog_TiMu)
    rwNpcDialogOption(tDialogOption[3]["Option"])
end
function rwTiMu_2_No()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
    local nUserId = rwUserGetId()
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"] = false
    rwOpenNpcChatDialog(tDialog.nDialog_TiMu)
    rwNpcDialogOption(tDialogOption[3]["Option"])
end

function rwTiMu_3_Yes()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
    local nUserId = rwUserGetId()
    local nError_Times = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["CuoWu_Times"]
    local nIf_AllRight = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"]
    if nIf_AllRight == false then --不全对
        if nError_Times == 0 then  --第一次错误
             rwOpenNpcChatDialog(tDialog.nDialog_err_1)
        else
            rwOpenNpcChatDialog(tDialog.nDialog_err_2)
        end
        rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["CuoWu_Times"]  = nError_Times + 1
    else --全对
        if nError_Times == 0 then   --第一次就对了
             rwOpenNpcChatDialog(tDialog.nDialog_rig_1)
        else
            rwOpenNpcChatDialog(tDialog.nDialog_rig_2)
        end
        --删掉光墙
        rwDelGenEvent(nGenId_Valve_MiMa)
    end
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"] = true
end
function rwTiMu_3_No()
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
     local nUserId = rwUserGetId()
     rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"] = false
    local nError_Times = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["CuoWu_Times"]
    local nIf_AllRight = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"]
    rwCloseLocalDialog(CONST_MENUTYPE.NpcTalk,tDialog.nDialog_TiMu)
    if nError_Times == 0 then  --第一次错误
            rwOpenNpcChatDialog(tDialog.nDialog_err_1)
    else
        rwOpenNpcChatDialog(tDialog.nDialog_err_2)
    end
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["CuoWu_Times"]  = nError_Times + 1
    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["If_AllRight"] = true
end

----------------------密码门---------------------------


tValve[nValve_1] = tValve[nValve_1] or {}
tValve[nValve_1]["Type"] = CONST_VALVE_TYPE.OBSTACLE


--rwtDialog[tDialog.nDialog3] = rwtDialog[tDialog.nDialog3] or {}
--rwtDialog[tDialog.nDialog3]["OptionFunc1"] = function ()
--    rwOpenNpcChatDialog(tDialog.nDialog4)
--end
--rwtDialog[tDialog.nDialog3]["OptionFunc2"] = function ()
--    rwOpenNpcChatDialog(tDialog.nDialog5)
--end


--陷阱 	30687	30691
local tNpcGroup = {}
tNpcGroup.nTrap2 = 30687				--上层吊篮	陷阱2
tNpcGroup.nGenId_Trap2 = 3149007


rwtNpcGroup[tNpcGroup.nTrap2] = rwtNpcGroup[tNpcGroup.nTrap2] or {}
rwtNpcGroup[tNpcGroup.nTrap2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.nTrap2]["DelTrap"] = 0
rwtNpcGroup[tNpcGroup.nTrap2]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.nTrap2]["Awards"]["Events"] = {}           
rwtNpcGroup[tNpcGroup.nTrap2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.nTrap2]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[tNpcGroup.nTrap2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nDialog2

--rwtNpcGroup[tNpcGroup.Trap2] = rwtNpcGroup[tNpcGroup.Trap2] or {} --吊篮2-->1
--rwtNpcGroup[tNpcGroup.Trap2]["Type"] = CONST_NPCGROUP_TYPE.ChangeMap
--rwtNpcGroup[tNpcGroup.Trap2]["ChangeMap"] = {3149,"56.20,-0.01,13.18"}

tNpcGroup.nTrap3 = 30688				--欧斯家族陷阱3				
tNpcGroup.nGenId_Trap3 = 3149008
rwtNpcGroup[tNpcGroup.nTrap3] = rwtNpcGroup[tNpcGroup.nTrap3] or {}
rwtNpcGroup[tNpcGroup.nTrap3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.nTrap3]["DelTrap"] = 1
rwtNpcGroup[tNpcGroup.nTrap3]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.nTrap3]["Awards"]["Events"] = {}           
rwtNpcGroup[tNpcGroup.nTrap3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.nTrap3]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[tNpcGroup.nTrap3]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 7069

--右边房间中间陷阱
tNpcGroup.nTrap4 = 30689				--欧斯家族陷阱4			
tNpcGroup.nGenId_Trap4 = 3149009
rwtNpcGroup[tNpcGroup.nTrap4] = rwtNpcGroup[tNpcGroup.nTrap4] or {}
rwtNpcGroup[tNpcGroup.nTrap4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.nTrap4]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.nTrap4]["Awards"]["Events"] = {}           
rwtNpcGroup[tNpcGroup.nTrap4]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.nTrap4]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[tNpcGroup.nTrap4]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nDialog14--价值不菲

--右边房间门口跳水陷阱
tNpcGroup.nTrap5 = 30690				--欧斯家族陷阱5		跳水地点		
tNpcGroup.nGenId_Trap5 = 3149010
rwtNpcGroup[tNpcGroup.nTrap5] = rwtNpcGroup[tNpcGroup.nTrap5] or {}
rwtNpcGroup[tNpcGroup.nTrap5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tNpcGroup.nTrap5]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.nTrap5]["Awards"]["Events"] = {}           
rwtNpcGroup[tNpcGroup.nTrap5]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.nTrap5]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[tNpcGroup.nTrap5]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nDialog13



--采集物	60482	60487
--左边房间第一个采集物
tNpcGroup.Collect_1 = 60482
tNpcGroup.nGenId_Collect_1 = 3149012
rwtNpcGroup[tNpcGroup.Collect_1] = rwtNpcGroup[tNpcGroup.Collect_1] or {}
rwtNpcGroup[tNpcGroup.Collect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_1]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup.Collect_1]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Collect_1]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Collect_1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Collect_1]["Awards"]["Events"][1]["OpenDialog"] = {}		 
rwtNpcGroup[tNpcGroup.Collect_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog3}
rwtNpcGroup[tNpcGroup.Collect_1]["Func"] = function(nGenEventId,nRandom)
    if not rwHasGenEvent(tNpcGroup.nGenId_Collect_2) then
        rwAddGenEvent(tNpcGroup.nGenId_Collect_3)
    end
end
--左边房间第二个采集物
tNpcGroup.Collect_2 = 60483
tNpcGroup.nGenId_Collect_2 = 3149013
rwtNpcGroup[tNpcGroup.Collect_2] = rwtNpcGroup[tNpcGroup.Collect_2] or {}
rwtNpcGroup[tNpcGroup.Collect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_2]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup.Collect_2]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Collect_2]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Collect_2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Collect_2]["Awards"]["Events"][1]["OpenDialog"] = {}	
rwtNpcGroup[tNpcGroup.Collect_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog4}
rwtNpcGroup[tNpcGroup.Collect_2]["Func"] = function(nGenEventId,nRandom)
    if not rwHasGenEvent(tNpcGroup.nGenId_Collect_1) then
       rwAddGenEvent(tNpcGroup.nGenId_Collect_3)
    end
end

--左边房间第三个采集物
tNpcGroup.Collect_3 = 60484
tNpcGroup.nGenId_Collect_3 = 3149014
rwtNpcGroup[tNpcGroup.Collect_3] = rwtNpcGroup[tNpcGroup.Collect_3] or {}
rwtNpcGroup[tNpcGroup.Collect_3]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_3]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup.Collect_3]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Collect_3]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Collect_3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Collect_3]["Awards"]["Events"][1]["OpenDialog"] = {}	
rwtNpcGroup[tNpcGroup.Collect_3]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog7}

--rwtNpcGroup[tNpcGroup.Collect_3]["NotDel"] = 1
--rwtNpcGroup[tNpcGroup.Collect_3]["Func"] = function(nGenEventId,nRandom)
--    --每次采集都说不同的话
--     local nUserId = rwUserGetId()
--    if rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Collect3_Times"] == 1 then 
--        rwOpenNpcChatDialog(tDialog.nDialog5)
--    elseif rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Collect3_Times"] == 2 then 
--        rwOpenNpcChatDialog(tDialog.nDialog6)
--    elseif rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Collect3_Times"] == 3 then 
--        rwOpenNpcChatDialog(tDialog.nDialog7)
--    end
--    rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Collect3_Times"] = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["Collect3_Times"] + 1
--end
--右边房间第一个采集物
tNpcGroup.Collect_4 = 60485
tNpcGroup.nGenId_Collect_4 = 3149015
rwtNpcGroup[tNpcGroup.Collect_4] = rwtNpcGroup[tNpcGroup.Collect_4] or {}
rwtNpcGroup[tNpcGroup.Collect_4]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_4]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup.Collect_4]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Collect_4]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Collect_4]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Collect_4]["Awards"]["Events"][1]["OpenDialog"] = {}	
rwtNpcGroup[tNpcGroup.Collect_4]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog9}
--右边房间第二个采集物
tNpcGroup.Collect_5 = 60486
tNpcGroup.nGenId_Collect_5 = 3149016
rwtNpcGroup[tNpcGroup.Collect_5] = rwtNpcGroup[tNpcGroup.Collect_5] or {}
rwtNpcGroup[tNpcGroup.Collect_5]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_5]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup.Collect_5]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Collect_5]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Collect_5]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Collect_5]["Awards"]["Events"][1]["OpenDialog"] = {}	
rwtNpcGroup[tNpcGroup.Collect_5]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog10}
--右边房间第三个采集物
tNpcGroup.Collect_6 = 60487
tNpcGroup.nGenId_Collect_6 = 3149017
rwtNpcGroup[tNpcGroup.Collect_6] = rwtNpcGroup[tNpcGroup.Collect_6] or {}
rwtNpcGroup[tNpcGroup.Collect_6]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[tNpcGroup.Collect_6]["CollectTime"] = 1
rwtNpcGroup[tNpcGroup.Collect_6]["Awards"] = {}  
rwtNpcGroup[tNpcGroup.Collect_6]["Awards"]["Events"] = {}   
rwtNpcGroup[tNpcGroup.Collect_6]["Awards"]["Events"][1] = {}
rwtNpcGroup[tNpcGroup.Collect_6]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[tNpcGroup.Collect_6]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {tDialog.nDialog11}


local tGen_LeftRoom = {tNpcGroup.nGenId_Collect_1,tNpcGroup.nGenId_Collect_2,tNpcGroup.nGenId_Collect_3}
local tGen_RightRoom = {tNpcGroup.nGenId_Collect_4,tNpcGroup.nGenId_Collect_5,tNpcGroup.nGenId_Collect_6}

--对白后的动作
--对白后飞到楼下
rwtDialog[tDialog.nDialog2] = rwtDialog[tDialog.nDialog2] or {}
rwtDialog[tDialog.nDialog2]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog2]["DialogEndInit"]["Events"][1]["UserTeleport"] = {}
rwtDialog[tDialog.nDialog2]["DialogEndInit"]["Events"][1]["UserTeleport"]["Pos"] = "60.97,-9.28,4.10"
rwtDialog[tDialog.nDialog2]["DialogEndInit"]["Events"][1]["UserTeleport"]["RotationY"] = 0

--rwtDialog[tDialog.nDialog3] = rwtDialog[tDialog.nDialog3] or {}
--rwtDialog[tDialog.nDialog3]["DialogEnd"] = function ()
--    --GenId检测
--    if rwChkTable(tGen_LeftRoom) then
--        for _,v in pairs(tGen_LeftRoom) do
--            if rwHasGenEvent(v) then
--                return false
--            end
--        end
--        --播放全采集完对白
--        rwOpenNpcChatDialog(tDialog.nDialog8)
--    end
--end 

--rwtDialog[tDialog.nDialog4] = rwtDialog[tDialog.nDialog3] or {}
----说完采集物三的第三句话要删除采集物3
rwtDialog[tDialog.nDialog7] = rwtDialog[tDialog.nDialog7] or {}
rwtDialog[tDialog.nDialog7]["DialogEnd"] = function ()
    --删除光墙
        rwDelGenEvent(nValve_GenId)
        --生成右边房间门口的陷阱    诶？这里刚刚不是无法通过吗？怎么被打开了？
     if not rwHasGenEvent(tNpcGroup.nGenId_Trap3) then
		rwAddGenEvent(tNpcGroup.nGenId_Trap3)
 	end
--        --播放全采集完对白
--        rwOpenNpcChatDialog(tDialog.nDialog8)
end 

----播放完全采集完对白删除右边房间光墙
--rwtDialog[tDialog.nDialog8] = rwtDialog[tDialog.nDialog8] or {}
--rwtDialog[tDialog.nDialog8]["DialogEnd"] = function ()
--    rwDelGenEvent(nValve_GenId)
--    --    rwDelGenEvent(tNpcGroup.nGenId_Trap3)
--    --生成右边房间门口的陷阱    诶？这里刚刚不是无法通过吗？怎么被打开了？
--     if not rwHasGenEvent(tNpcGroup.nGenId_Trap3) then
--		rwAddGenEvent(tNpcGroup.nGenId_Trap3)
-- 	end
--end 

--采集完右边采集物检测是否全采集完
rwtDialog[tDialog.nDialog9] = rwtDialog[tDialog.nDialog9] or {}
rwtDialog[tDialog.nDialog9]["DialogEnd"] = function ()
    --GenId检测
    if rwChkTable(tGen_RightRoom) then
        for _,v in pairs(tGen_RightRoom) do
            if rwHasGenEvent(v) then
                return false
            end
        end
        --播放全采集完对白
        rwOpenNpcChatDialog(tDialog.nDialog12)
    end
end 

rwtDialog[tDialog.nDialog10] = rwtDialog[tDialog.nDialog9] or {}
rwtDialog[tDialog.nDialog11] = rwtDialog[tDialog.nDialog9] or {}

--右边房间采集完，生成陷阱
rwtDialog[tDialog.nDialog12] = rwtDialog[tDialog.nDialog12] or {}
rwtDialog[tDialog.nDialog12]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog12]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog12]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog12]["DialogEndInit"]["Events"][1]["DynCreate"] = {} 
rwtDialog[tDialog.nDialog12]["DialogEndInit"]["Events"][1]["DynCreate"][1] = tNpcGroup.nGenId_Trap5

--右边房间踩到陷阱后删除陷阱
rwtDialog[tDialog.nDialog14] = rwtDialog[tDialog.nDialog14] or {}
rwtDialog[tDialog.nDialog14]["DialogEndInit"] = {}
rwtDialog[tDialog.nDialog14]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.nDialog14]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.nDialog14]["DialogEndInit"]["Events"][1]["DynDelete"] = {} 
rwtDialog[tDialog.nDialog14]["DialogEndInit"]["Events"][1]["DynDelete"][1] = tNpcGroup.nGenId_Trap4

    
--副本任务目标  
local nTarget1 = 60324	  
local nTarget2 = 60325	  
local nTarget3 = 60326	
local nTarget4 = 60327	 

rwtTarget[nTarget1] = {}   --解开封印去楼下
rwtTarget[nTarget1]["Title"] = tLuaText[LANGUAGE_CONFIG][21856]
rwtTarget[nTarget1]["ReqDialogId"] = tDialog.nDialog2
rwtTarget[nTarget1]["ReqCount"] = 1

--rwtTarget[nTarget2] = {}    --查阅罗兰二世投影
--rwtTarget[nTarget2]["Title"] = tLuaText[LANGUAGE_CONFIG][21857]
--rwtTarget[nTarget2]["ReqDialogId"] = tDialog.nDialog8
--rwtTarget[nTarget2]["ReqCount"] = 1

--rwtTarget[nTarget3] = {}    --进一步调查	
--rwtTarget[nTarget3]["Title"] = tLuaText[LANGUAGE_CONFIG][21858]
--rwtTarget[nTarget3]["ReqDialogId"] = tDialog.nDialog12
--rwtTarget[nTarget3]["ReqCount"] = 1

rwtTarget[nTarget3] = {}    --进一步调查	
rwtTarget[nTarget3]["Title"] = tLuaText[LANGUAGE_CONFIG][21890]
rwtTarget[nTarget3]["ReqCollectId"] = {tNpcGroup.Collect_1,tNpcGroup.Collect_2,tNpcGroup.Collect_3,tNpcGroup.Collect_4,tNpcGroup.Collect_5,tNpcGroup.Collect_6}
rwtTarget[nTarget3]["ReqCount"] = 6


rwtTarget[nTarget4] = {}    --跳入水槽进行逃脱	
rwtTarget[nTarget4]["Title"] = tLuaText[LANGUAGE_CONFIG][21859]
rwtTarget[nTarget4]["ReqDialogId"] = tDialog.nDialog13
rwtTarget[nTarget4]["ReqCount"] = 1

--副本
rwtCopyMapMission[nCopyMapId] = rwtCopyMapMission[nCopyMapId] or {}
rwtCopyMapMission[nCopyMapId]["ReqLev"] = 1
rwtCopyMapMission[nCopyMapId]["Difficulty"] = 1
rwtCopyMapMission[nCopyMapId]["TargetStepNum"] = 3
rwtCopyMapMission[nCopyMapId]["Target1"] = {nTarget1}
--rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget2}
rwtCopyMapMission[nCopyMapId]["Target2"] = {nTarget3}
rwtCopyMapMission[nCopyMapId]["Target3"] = {nTarget4}
rwtCopyMapMission[nCopyMapId]["Target99"] = {60072}


--rwtCopyMapMission[nCopyMapId]["EnterNpcMap"] = 2001 --传送NPC所在地图
--rwtCopyMapMission[nCopyMapId]["CopyNpcType"] = CONST_COPYMAP_TASK_TYPE.PLOT --副本类型 （PLOT剧情，NORMAL普通）
--rwtCopyMapMission[nCopyMapId]["EnterNpcGen"] = nRuKou_GenId --副本传送NPC的GENID
rwtCopyMapMission[nCopyMapId]["CopyMapInit"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][1]["OpenDialog"]["DialogId"] = tDialog.nDialog1
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][2]["DynCreate"] = {nValve_GenId} --光墙生成
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1] = {}
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1]["SetValue"] = 1
--rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1]["ValueRes"] = "Collect3_Times"   --采集物三的采集次数
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][2] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][2]["SetValue"] = 0
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][2]["ValueRes"] = "CuoWu_Times"   --密码错误次数
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1] = {}
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1]["SetValue"] = true
rwtCopyMapMission[nCopyMapId]["CopyMapInit"]["Events"][3]["CopyMapTableSetValue"][1]["ValueRes"] = "If_AllRight"   --是否密码输入错误 --第一次选择是对的话就变成对，然后第二三次都只错的时候变成错