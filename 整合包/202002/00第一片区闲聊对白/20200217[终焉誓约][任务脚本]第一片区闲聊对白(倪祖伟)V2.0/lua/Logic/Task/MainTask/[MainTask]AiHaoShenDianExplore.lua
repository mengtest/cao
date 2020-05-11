--region [MainTask]AiHaoShenDianExplore.lua
--Purpose:		哀嚎神殿主线
--Creator: 		黄业勤
--Created:		2019-08-23
--Modifier:		$Author: 倪祖伟$
--Modified:		$Date: 20-02-22 $
--RCS-ID:		$Revision: 21 $
--endregion
--TaskId
local tAiHaoShenDianTask = {}
 tAiHaoShenDianTask[1] = 10173 --不见踪影 赫丽失踪
 tAiHaoShenDianTask[2] = 10174 --不见踪影 可怕的哀嚎神殿 护送 
 tAiHaoShenDianTask[3] = 10175 --不见踪影 可怕的哀嚎神殿 对话
 tAiHaoShenDianTask[4] = 10176 --偷披风的小贼 返回哀嚎神殿
 tAiHaoShenDianTask[5] = 10177 --赫丽的踪迹 盘问暗黑哥布林
 tAiHaoShenDianTask[6] = 10178 --赫丽的踪迹 寻找
 tAiHaoShenDianTask[7] = 10179 --赫丽的踪迹 叫醒赫丽
 tAiHaoShenDianTask[8] = 10180 --幕后黑手是他！ 诺尔的阴谋
 tAiHaoShenDianTask[9] = 10181 --幕后黑手是他 护送赫丽
 tAiHaoShenDianTask[10] = 10182 --哀嚎神殿副本
 tAiHaoShenDianTask[12] = 10184 --你听说过圣界吗 寻求泰雷庇护
 tAiHaoShenDianTask[13] = 10185 --你听说过圣界吗 听听特罗德的意见
 tAiHaoShenDianTask[15] = 10187 --帝国的新生 赫丽登基动画
 tAiHaoShenDianTask[16] = 10188 --普天同庆 拜访特罗德

 tAiHaoShenDianTask[18] = 10190 --你听说过圣界吗 前往泰雷家
 tAiHaoShenDianTask[19] = 10226 --赫丽的踪迹 找到赫丽
 tAiHaoShenDianTask[20] = 10229 --帝国的新生 倒计时 

 local tBranchTask = {}
tBranchTask.Tuanjiandejingsui = 70213
tBranchTask.Werdiguoerzhan = 70214

local tBranchDialog = {}
tBranchDialog.Werdiguoerzhan = 11964
tBranchDialog.Tuanjiandejingsui = 11963

--NPC  
local nNpc_Tailei= 102  
local nNpc_Teluode = 3028
local nNpc_Heli = 3001
local nNpc_Nuoer = 4159
local nNpc_Deleike = 3074
rwtNpc[nNpc_Tailei] = rwtNpc[nNpc_Tailei] or{}
rwtNpc[nNpc_Teluode] = rwtNpc[nNpc_Teluode] or{}
rwtNpc[nNpc_Heli] = rwtNpc[nNpc_Heli] or{}
rwtNpc[nNpc_Nuoer] = rwtNpc[nNpc_Nuoer] or{}
rwtNpc[nNpc_Nuoer]["DialogId"] = {2357,2358,2359,2360}
--哥布林德雷克
rwtNpc[nNpc_Deleike] = rwtNpc[nNpc_Deleike] or{}
rwtNpc[nNpc_Deleike]["DialogId"] = {1151,2361}

--佣兵委托任务NPC
--泽欧密探
local nNpc_MiTan = 3070--3045
rwtNpc[nNpc_MiTan] = rwtNpc[nNpc_MiTan] or{}
rwtNpc[nNpc_MiTan]["DialogId"] = {1052,1053,1054}
--佣兵托尼
local nNpc_TuoNi = 3069
rwtNpc[nNpc_TuoNi] = rwtNpc[nNpc_TuoNi] or{}
rwtNpc[nNpc_TuoNi]["DialogId"] = {1055,1056,1057,2362}
--NPCGroup
--临时
--local nCollect = 60000
--正式
local nCollect = 60049

local nTrap_Aihao = 30015
local nTrap_TaileiHome = 30018
local nTrap_Xianqu = 30016
local nTrap_Heli = 30017
local nTrap_TeluodeHome = 30019
local nTrap_Wanggong = 30020
local nTrap_LuxiRukou = 30054
local nTrap_Shulin = 30172
local nTrap_Donghua = 30451


local nNpcgroup_taiH = 10007
local nNpcgroup_teH = 10008

local nNpcgroup_Xianqu = 20081
local nNpcgroup_Heli = 20082
local nNpcgroup_HeliDaodi = 20417
local nNpcgroup_HeliDaodi_TouMing = 21084
local nNpcgroup_Nuoer1 = 20129
local nNpcgroup_Nuoer2 = 20130
local nNpcgroup_Heli2 = 20131
--GenID
local nGenID_TrapAihao = 2001142
local nGenID_TrapTaileiHome = 2001145
local nGenID_TrapXianqu = 2001143
local nGenID_TrapHeli = 2001144
local nGenID_TrapTeluodeHome = 2001146
local nGenID_TrapWanggong = 2001147
local nGenID_TrapLuxi = 2001154
local nGenID_TrapShulin = 2001535
local nGenID_TrapDonghua = 20010021


local nGenID_Collect = 2001148

local nGenID_Npcgroup_Xianqu = 2001149
local nGenID_Npcgroup_Heli = 2001150
local nGenID_Npcgroup_HeliDaoDi = 2001989
local nGenID_Npcgroup_HeliDaoDi_TouMing = 20010291
local nGenID_Npcgroup_Nuoer1 = 2001693
local nGenID_Npcgroup_Nuoer2 = 2001694
local nGenID_Npcgroup_Heli2 = 2001695

local nGenID_Monster = 2001151


--------------------其他------------------------
--倒计时相关
--倒计时加速物品id
local nSpeedItem = 7000240
--卡点任务无道具提示
local sLackTips = tLuaText[LANGUAGE_CONFIG][10220]
--提交道具对白
local nSpeedDialog = 12953
--副本掉落奖励
local nSpeedAwardId = 1000814

--陷阱------------------------------------------------------------------------------------------------------------- 
--哀嚎入口陷阱
rwtNpcGroup[nTrap_Aihao] = rwtNpcGroup[nTrap_Aihao] or {} 
rwtNpcGroup[nTrap_Aihao]["Type"] = CONST_NPCGROUP_TYPE.Trap
--泰雷家陷阱
rwtNpcGroup[nTrap_TaileiHome] = rwtNpcGroup[nTrap_TaileiHome] or {}  
rwtNpcGroup[nTrap_TaileiHome]["Type"] = CONST_NPCGROUP_TYPE.Trap

--先驱者1号陷阱
rwtNpcGroup[nTrap_Xianqu] = rwtNpcGroup[nTrap_Xianqu] or {} 
rwtNpcGroup[nTrap_Xianqu]["Type"] = CONST_NPCGROUP_TYPE.Trap
--赫丽陷阱
rwtNpcGroup[nTrap_Heli] = rwtNpcGroup[nTrap_Heli] or {} 
rwtNpcGroup[nTrap_Heli]["Type"] = CONST_NPCGROUP_TYPE.Trap

--特罗德家陷阱
rwtNpcGroup[nTrap_TeluodeHome] = rwtNpcGroup[nTrap_TeluodeHome] or {} 
rwtNpcGroup[nTrap_TeluodeHome]["Type"] = CONST_NPCGROUP_TYPE.Trap

--王宫陷阱
rwtNpcGroup[nTrap_Wanggong] = rwtNpcGroup[nTrap_Wanggong] or {} 
rwtNpcGroup[nTrap_Wanggong]["Type"] = CONST_NPCGROUP_TYPE.Trap

--爆破动画 
rwtNpcGroup[nTrap_Donghua] = rwtNpcGroup[nTrap_Donghua] or {} 
rwtNpcGroup[nTrap_Donghua]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_LuxiRukou] = rwtNpcGroup[nTrap_LuxiRukou] or {} 
rwtNpcGroup[nTrap_LuxiRukou]["Type"] = CONST_NPCGROUP_TYPE.Trap
--树林陷阱
rwtNpcGroup[nTrap_Shulin] = rwtNpcGroup[nTrap_Shulin] or {} 
rwtNpcGroup[nTrap_Shulin]["Type"] = CONST_NPCGROUP_TYPE.Trap

---------------------------------------------------------------------------------------------------------------
--采集
rwtNpcGroup[nCollect] = rwtNpcGroup[nCollect] or {}
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect]["DialogId"] = 10491
--建筑
rwtNpcGroup[nNpcgroup_taiH] = rwtNpcGroup[nNpcgroup_taiH] or {}  --泰雷家
rwtNpcGroup[nNpcgroup_taiH]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcgroup_taiH]["NpcId1"]= nNpc_Tailei

rwtNpcGroup[nNpcgroup_teH] = rwtNpcGroup[nNpcgroup_teH] or {}  --特罗德家
rwtNpcGroup[nNpcgroup_teH]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcgroup_teH]["NpcId1"]= nNpc_Teluode
--NPC
rwtNpcGroup[nNpcgroup_Heli] = rwtNpcGroup[nNpcgroup_Heli] or {}  --赫丽1
rwtNpcGroup[nNpcgroup_Heli]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_Heli]["NpcId"]= nNpc_Heli

rwtNpcGroup[nNpcgroup_HeliDaodi] = rwtNpcGroup[nNpcgroup_HeliDaodi] or {}  --赫丽倒地
rwtNpcGroup[nNpcgroup_HeliDaodi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_HeliDaodi]["NpcId"]= nNpc_Heli

rwtNpcGroup[nNpcgroup_HeliDaodi_TouMing] = rwtNpcGroup[nNpcgroup_HeliDaodi_TouMing] or {}  --赫丽倒地透明
rwtNpcGroup[nNpcgroup_HeliDaodi_TouMing]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_HeliDaodi_TouMing]["NpcId"]= nNpc_Heli

rwtNpcGroup[nNpcgroup_Heli2] = rwtNpcGroup[nNpcgroup_Heli2] or {}  --赫丽2
rwtNpcGroup[nNpcgroup_Heli2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_Heli2]["NpcId"]= nNpc_Heli

rwtNpcGroup[nNpcgroup_Nuoer1] = rwtNpcGroup[nNpcgroup_Nuoer1] or {}  --诺尔1
rwtNpcGroup[nNpcgroup_Nuoer1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_Nuoer1]["NpcId"]= nNpc_Nuoer 

rwtNpcGroup[nNpcgroup_Nuoer2] = rwtNpcGroup[nNpcgroup_Nuoer2] or {}  --诺尔2
rwtNpcGroup[nNpcgroup_Nuoer2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_Nuoer2]["NpcId"]= nNpc_Nuoer

rwtNpcGroup[nNpcgroup_Xianqu] = rwtNpcGroup[nNpcgroup_Xianqu] or {}  --哥布林德雷克
rwtNpcGroup[nNpcgroup_Xianqu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_Xianqu]["NpcId"]= nNpc_Deleike
--------------------------------------------------------------------------------
--怪物
--战斗失败引导
--local  nDialogGuideId = 351
--rwtMonsterGroup[900150] = rwtMonsterGroup[900150] or {}
--rwtMonsterGroup[900150]["BattleLose"] = function()
--	rwOpenNpcChatDialog(nDialogGuideId)
--end
--------------------------------------------------------------------------------
--任务   
--------------------------------------------------------------------------------
rwtTask[tAiHaoShenDianTask[1]] = {}
rwtTask[tAiHaoShenDianTask[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20130]  --赫丽失踪
rwtTask[tAiHaoShenDianTask[1]]["PreTaskId" ]= 10092
rwtTask[tAiHaoShenDianTask[1]]["NextTaskId"] = tAiHaoShenDianTask[2]
rwtTask[tAiHaoShenDianTask[1]]["ReqTrap1" ]= nTrap_Donghua
rwtTask[tAiHaoShenDianTask[1]]["DialogId"] = 11288 
--rwtTask[tAiHaoShenDianTask[1]]["TaskNpc"] = nNpc_Nuoer
rwtTask[tAiHaoShenDianTask[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_TrapDonghua
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_Nuoer1
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[1]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[1]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[1]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[1]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Donghua
rwtTask[tAiHaoShenDianTask[1]]["StartAutoWay"]["FindWayGenId"] = nGenID_TrapDonghua
rwtTask[tAiHaoShenDianTask[1]]["IsClickComplete"] = 0 
rwtTask[tAiHaoShenDianTask[1]]["OpenTransfer"] = CONST_TRANSFER_INDEX.AIHAOSHENDIAN
rwtTask[tAiHaoShenDianTask[1]]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10030]

rwtTask[tAiHaoShenDianTask[2]] = {}
rwtTask[tAiHaoShenDianTask[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20130]  --可怕的哀嚎神殿
rwtTask[tAiHaoShenDianTask[2]]["PreTaskId" ]= tAiHaoShenDianTask[1]
rwtTask[tAiHaoShenDianTask[2]]["NextTaskId"] = tAiHaoShenDianTask[3]
rwtTask[tAiHaoShenDianTask[2]]["ReqTrap1" ]= nTrap_Aihao
rwtTask[tAiHaoShenDianTask[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tAiHaoShenDianTask[2]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[2]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_TrapAihao
rwtTask[tAiHaoShenDianTask[2]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[2]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[2]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[2]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Aihao
rwtTask[tAiHaoShenDianTask[2]]["StartAutoWay"]["FindWayGenId"] = nGenID_TrapAihao

rwtTask[tAiHaoShenDianTask[2]]["AwardFunc"] = function()
    if not rwHasGenEvent(nGenID_Npcgroup_Nuoer2) then
        rwAddGenEvent(nGenID_Npcgroup_Nuoer2)
    end
end

rwtTask[tAiHaoShenDianTask[3]] = {}
rwtTask[tAiHaoShenDianTask[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20130]  --可怕的哀嚎神殿
rwtTask[tAiHaoShenDianTask[3]]["PreTaskId" ]= tAiHaoShenDianTask[2]
rwtTask[tAiHaoShenDianTask[3]]["NextTaskId"] = tAiHaoShenDianTask[4]
rwtTask[tAiHaoShenDianTask[3]]["ReqTrap1" ]= nTrap_Aihao
rwtTask[tAiHaoShenDianTask[3]]["DialogId"] = 10247
rwtTask[tAiHaoShenDianTask[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask[3]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_TrapAihao
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_Nuoer2
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[3]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[3]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[3]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Aihao
rwtTask[tAiHaoShenDianTask[3]]["StartAutoWay"]["FindWayGenId"] = nGenID_TrapAihao
--rwtTask[tAiHaoShenDianTask[3]]["AwardId"] = 2000012
rwtTask[tAiHaoShenDianTask[3]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000012
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[3]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[3]

---------------------------------------------------
rwtTask[70215] = {}
rwtTask[70215]["Title"] = tLuaText[LANGUAGE_CONFIG][21467] 
rwtTask[70215]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[70215]["PreTaskId"] = tAiHaoShenDianTask[3]
rwtTask[70215]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[70215]["DialogId"] = 11966
rwtTask[70215]["Awards"] = {}
rwtTask[70215]["Awards"]["Events"] = {}
rwtTask[70215]["Awards"]["Events"][1] = {}
rwtTask[70215]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[70215]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[70215]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000273
rwtTask[70215]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[70215]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = 70215

-----------------------------------------------------------


rwtTask[tAiHaoShenDianTask[4]] = {}
rwtTask[tAiHaoShenDianTask[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20133]--返回哀嚎神殿
rwtTask[tAiHaoShenDianTask[4]]["PreTaskId" ]= tAiHaoShenDianTask[3]
rwtTask[tAiHaoShenDianTask[4]]["NextTaskId" ]= tAiHaoShenDianTask[5]
--rwtTask[tAiHaoShenDianTask[4]]["ReqTrap1" ]= nTrap_Xianqu
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Monster
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_Xianqu
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[4]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tAiHaoShenDianTask[4]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[4]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tAiHaoShenDianTask[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tAiHaoShenDianTask[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_Xianqu
rwtTask[tAiHaoShenDianTask[4]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Xianqu
rwtTask[tAiHaoShenDianTask[4]]["TaskNpc"] = nNpc_Deleike
rwtTask[tAiHaoShenDianTask[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tAiHaoShenDianTask[4]]["KillMonsterGroup1" ]= 900150
rwtTask[tAiHaoShenDianTask[4]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[4]]["DialogId"] = 10249
rwtTask[tAiHaoShenDianTask[4]]["MonsterGroupGenId"] = nGenID_Monster

rwtTask[tAiHaoShenDianTask[4]]["AwardFunc"] = function()
    if rwHasGenEvent(nGenID_Npcgroup_Nuoer2) then
        rwDelGenEvent(nGenID_Npcgroup_Nuoer2)
    end
end
--rwtTask[tAiHaoShenDianTask[4]]["AwardId"] = 2000013
rwtTask[tAiHaoShenDianTask[4]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000013
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[4]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[4]

rwtTask[tAiHaoShenDianTask[5]] = {}
rwtTask[tAiHaoShenDianTask[5]]["Title"] =tLuaText[LANGUAGE_CONFIG][20134] --盘问先驱者1号
rwtTask[tAiHaoShenDianTask[5]]["PreTaskId"] = tAiHaoShenDianTask[4]
rwtTask[tAiHaoShenDianTask[5]]["NextTaskId"] = tAiHaoShenDianTask[6]
--rwtTask[tAiHaoShenDianTask[5]]["ReqTrap1" ]= nTrap_Xianqu
rwtTask[tAiHaoShenDianTask[5]]["DialogId"] = 10250
rwtTask[tAiHaoShenDianTask[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask[5]]["TaskNpc"] = nNpc_Deleike
rwtTask[tAiHaoShenDianTask[5]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Xianqu
rwtTask[tAiHaoShenDianTask[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[5]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[5]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_Xianqu
rwtTask[tAiHaoShenDianTask[5]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Xianqu
rwtTask[tAiHaoShenDianTask[5]]["IsClickComplete"] = 0


rwtTask[tAiHaoShenDianTask[6]] = {}
rwtTask[tAiHaoShenDianTask[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20134] --寻找赫丽
rwtTask[tAiHaoShenDianTask[6]]["PreTaskId"] = tAiHaoShenDianTask[5]
rwtTask[tAiHaoShenDianTask[6]]["NextTaskId"] = tAiHaoShenDianTask[19]
rwtTask[tAiHaoShenDianTask[6]]["DialogId"] = 10251
rwtTask[tAiHaoShenDianTask[6]]["ReqTrap1" ]= nTrap_Shulin
rwtTask[tAiHaoShenDianTask[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_TrapShulin
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_HeliDaoDi
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[6]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[6]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[6]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[6]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[6]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Shulin
rwtTask[tAiHaoShenDianTask[6]]["StartAutoWay"]["FindWayGenId"] = nGenID_TrapShulin

rwtTask[tAiHaoShenDianTask[6]]["IsClickComplete"] = 0

rwtTask[tAiHaoShenDianTask[19]] = {}
rwtTask[tAiHaoShenDianTask[19]]["Title"] = tLuaText[LANGUAGE_CONFIG][20134] --找到赫丽
rwtTask[tAiHaoShenDianTask[19]]["PreTaskId"] = tAiHaoShenDianTask[6]
rwtTask[tAiHaoShenDianTask[19]]["NextTaskId"] = tAiHaoShenDianTask[8]
rwtTask[tAiHaoShenDianTask[19]]["DialogId"] = 10255
rwtTask[tAiHaoShenDianTask[19]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask[19]]["TaskNpc"] = nNpc_Heli
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_HeliDaoDi
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][2] = {}
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_HeliDaoDi_TouMing
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[19]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[19]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[19]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[19]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[19]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_HeliDaodi
rwtTask[tAiHaoShenDianTask[19]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_HeliDaoDi
rwtTask[tAiHaoShenDianTask[19]]["IsClickComplete"] = 0
--rwtTask[tAiHaoShenDianTask[19]]["AwardId"] = 2000014
rwtTask[tAiHaoShenDianTask[19]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000014
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[19]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[19]

--rwtTask[tAiHaoShenDianTask[7]] = {}                                                                      
--rwtTask[tAiHaoShenDianTask[7]]["Title"]= "赫丽的踪迹" --叫醒赫丽                                         
--rwtTask[tAiHaoShenDianTask[7]]["PreTaskId"]= tAiHaoShenDianTask[19]                                           
--rwtTask[tAiHaoShenDianTask[7]]["NextTaskId"]= tAiHaoShenDianTask[8]                                       
--rwtTask[tAiHaoShenDianTask[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT                        
--rwtTask[tAiHaoShenDianTask[7]]["ReqCollectId1"] = nCollect                                                                                                 
--rwtTask[tAiHaoShenDianTask[7]]["DynaNpcGroupGen"] = {nGenID_Collect}
--rwtTask[tAiHaoShenDianTask[7]]["DynaNpcGroupMapId"] = 2001
--rwtTask[tAiHaoShenDianTask[7]]["IsClickComplete"] = 0
--rwtTask[tAiHaoShenDianTask[7]]["AwardFunc"] = function()
--    if rwHasGenEvent(nGenID_Collect) then
--        rwDelGenEvent(nGenID_Collect)
--    end
--end



rwtTask[tAiHaoShenDianTask[8]] = {}
rwtTask[tAiHaoShenDianTask[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20138] --诺尔的阴谋
rwtTask[tAiHaoShenDianTask[8]]["PreTaskId"] = tAiHaoShenDianTask[19]
rwtTask[tAiHaoShenDianTask[8]]["NextTaskId"] = tAiHaoShenDianTask[9]
rwtTask[tAiHaoShenDianTask[8]]["DialogId"] = 10252
--rwtTask[tAiHaoShenDianTask[8]]["ReqTrap1" ]= nTrap_Heli
rwtTask[tAiHaoShenDianTask[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask[8]]["TaskNpc"] = nNpc_Heli
rwtTask[tAiHaoShenDianTask[8]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[8]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Heli
rwtTask[tAiHaoShenDianTask[8]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[8]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[8]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[8]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[8]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_Heli
rwtTask[tAiHaoShenDianTask[8]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Heli
rwtTask[tAiHaoShenDianTask[8]]["IsClickComplete"] = 0


rwtTask[tAiHaoShenDianTask[9]] = {}
rwtTask[tAiHaoShenDianTask[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20138]  --护送赫丽
rwtTask[tAiHaoShenDianTask[9]]["PreTaskId" ]= tAiHaoShenDianTask[8]
rwtTask[tAiHaoShenDianTask[9]]["NextTaskId"] = tAiHaoShenDianTask[10]
rwtTask[tAiHaoShenDianTask[9]]["ReqTrap1" ]= nTrap_Aihao
rwtTask[tAiHaoShenDianTask[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tAiHaoShenDianTask[9]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[9]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[9]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[9]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_TrapAihao
rwtTask[tAiHaoShenDianTask[9]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[9]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[9]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[9]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[9]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[9]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Aihao
rwtTask[tAiHaoShenDianTask[9]]["StartAutoWay"]["FindWayGenId"] = nGenID_TrapAihao

rwtTask[tAiHaoShenDianTask[9]]["UnlockCopyMap1"] = 3032
rwtTask[tAiHaoShenDianTask[9]]["UnlockCopyMap2"] = 3036
--rwtTask[tAiHaoShenDianTask[9]]["AwardId"] = 2000015
rwtTask[tAiHaoShenDianTask[9]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000015
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[9]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[9]

rwtTask[tAiHaoShenDianTask[10]] = {}
rwtTask[tAiHaoShenDianTask[10]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20140] --阻止诺尔
rwtTask[tAiHaoShenDianTask[10]]["PreTaskId" ]= tAiHaoShenDianTask[9]
rwtTask[tAiHaoShenDianTask[10]]["NextTaskId" ]= tAiHaoShenDianTask[18]
rwtTask[tAiHaoShenDianTask[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tAiHaoShenDianTask[10]]["PassCopyMap1"] = {3032}
rwtTask[tAiHaoShenDianTask[10]]["PassCopyMapCount1"] = 1
rwtTask[tAiHaoShenDianTask[10]]["OpenCopyMap"] = 3032
rwtTask[tAiHaoShenDianTask[10]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[10]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[10]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[10]]["StartAutoWay"]["FindWayGroupId"] = 50003
rwtTask[tAiHaoShenDianTask[10]]["StartAutoWay"]["FindWayGenId"] = 3032050
rwtTask[tAiHaoShenDianTask[10]]["IsClickComplete"] = 1
rwtTask[tAiHaoShenDianTask[10]]["UnlockHeadIcon"] = {}
rwtTask[tAiHaoShenDianTask[10]]["UnlockHeadIcon"][1] = {}
rwtTask[tAiHaoShenDianTask[10]]["UnlockHeadIcon"][1]["HeadIconId"] = 10103 --贪婪头像解锁
rwtTask[tAiHaoShenDianTask[10]]["UnlockHeadIcon"][1]["RecordId"] = 11
rwtTask[tAiHaoShenDianTask[10]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[10]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[10]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Heli2
rwtTask[tAiHaoShenDianTask[10]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel

rwtTask[tAiHaoShenDianTask[10]]["UnLockZhouHui"] = 3036

rwtTask[tAiHaoShenDianTask[10]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000016
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[10]
rwtTask[tAiHaoShenDianTask[10]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.MUL_COPY_MAP} --多人副本
--rwtTask[tAiHaoShenDianTask[10]]["AcceptExtraTaskId"] = tBranchTask.Tuanjiandejingsui


rwtTask[tBranchTask.Tuanjiandejingsui] = {}
rwtTask[tBranchTask.Tuanjiandejingsui]["Title"] = tLuaText[LANGUAGE_CONFIG][21462] --团建的精髓
rwtTask[tBranchTask.Tuanjiandejingsui]["PreTaskId"] = tAiHaoShenDianTask[10]
rwtTask[tBranchTask.Tuanjiandejingsui]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Tuanjiandejingsui]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.Tuanjiandejingsui]["IsClickComplete"] = 0
rwtTask[tBranchTask.Tuanjiandejingsui]["DialogId"] = tBranchDialog.Tuanjiandejingsui
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"] = {}
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000270
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Tuanjiandejingsui]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Tuanjiandejingsui



rwtTask[tAiHaoShenDianTask[18]] = {}
rwtTask[tAiHaoShenDianTask[18]]["Title"] = tLuaText[LANGUAGE_CONFIG][20141] --前往泰雷家
rwtTask[tAiHaoShenDianTask[18]]["PreTaskId"] = tAiHaoShenDianTask[10]
rwtTask[tAiHaoShenDianTask[18]]["NextTaskId"] = tAiHaoShenDianTask[12]
rwtTask[tAiHaoShenDianTask[18]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask[18]]["TaskNpc"] = nNpc_Heli
--rwtTask[tAiHaoShenDianTask[18]]["ReqTrap1" ]= nTrap_Aihao 
rwtTask[tAiHaoShenDianTask[18]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[18]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[18]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Heli2
rwtTask[tAiHaoShenDianTask[18]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[18]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tAiHaoShenDianTask[18]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[18]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[18]]["StartAutoWay"]["FindWayMapId"] =2001
rwtTask[tAiHaoShenDianTask[18]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_Heli2
rwtTask[tAiHaoShenDianTask[18]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Heli2
rwtTask[tAiHaoShenDianTask[18]]["DialogId"] = 10253
rwtTask[tAiHaoShenDianTask[18]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[18]]["AcceptExtraTaskId"] = 70468 --70084  --温丽梦境支线


rwtTask[tAiHaoShenDianTask[12]] = {}
rwtTask[tAiHaoShenDianTask[12]]["Title"] = tLuaText[LANGUAGE_CONFIG][20141] --寻求泰雷庇护
rwtTask[tAiHaoShenDianTask[12]]["PreTaskId"] = tAiHaoShenDianTask[18]
rwtTask[tAiHaoShenDianTask[12]]["NextTaskId"] = tAiHaoShenDianTask[13]
rwtTask[tAiHaoShenDianTask[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask[12]]["DialogId"] = 10254
rwtTask[tAiHaoShenDianTask[12]]["TaskNpc"] = nNpc_Tailei
rwtTask[tAiHaoShenDianTask[12]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[12]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[12]]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask[12]]["StartAutoWay"]["FindWayGroupId"] = 20227
rwtTask[tAiHaoShenDianTask[12]]["StartAutoWay"]["FindWayGenId"] = 1000046
rwtTask[tAiHaoShenDianTask[12]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[12]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[12]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Heli2
rwtTask[tAiHaoShenDianTask[12]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tAiHaoShenDianTask[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tAiHaoShenDianTask[12]]["IsClickComplete"] = 0

rwtTask[tAiHaoShenDianTask[13]] = {}
rwtTask[tAiHaoShenDianTask[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][20141] --听听特罗德的意见
rwtTask[tAiHaoShenDianTask[13]]["PreTaskId"] = tAiHaoShenDianTask[12]
rwtTask[tAiHaoShenDianTask[13]]["NextTaskId"] = tAiHaoShenDianTask[15]
rwtTask[tAiHaoShenDianTask[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tAiHaoShenDianTask[13]]["DialogId"] = 10256
rwtTask[tAiHaoShenDianTask[13]]["TaskNpc"] = nNpc_Teluode
rwtTask[tAiHaoShenDianTask[13]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[13]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[13]]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask[13]]["StartAutoWay"]["FindWayGroupId"] = 20228
rwtTask[tAiHaoShenDianTask[13]]["StartAutoWay"]["FindWayGenId"] = 1000047
rwtTask[tAiHaoShenDianTask[13]]["IsClickComplete"] = 0
--rwtTask[tAiHaoShenDianTask[13]]["AwardId"] = 2000017
rwtTask[tAiHaoShenDianTask[13]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000017
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[13]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[13]

--rwtTask[tAiHaoShenDianTask[13]]["AcceptExtraTaskId"] = tBranchTask.Werdiguoerzhan

rwtTask[tBranchTask.Werdiguoerzhan] = {}
rwtTask[tBranchTask.Werdiguoerzhan]["Title"] = tLuaText[LANGUAGE_CONFIG][21463] --为帝国而战
rwtTask[tBranchTask.Werdiguoerzhan]["PreTaskId"] = tAiHaoShenDianTask[13]
rwtTask[tBranchTask.Werdiguoerzhan]["TaskType"] = CONST_TASK_TYPE.SIDE
rwtTask[tBranchTask.Werdiguoerzhan]["TaskDetailType"] =  CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBranchTask.Werdiguoerzhan]["IsClickComplete"] = 0
rwtTask[tBranchTask.Werdiguoerzhan]["DialogId"] = tBranchDialog.Werdiguoerzhan
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"] = {}
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"] = {}
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"][1] = {}
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000271
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBranchTask.Werdiguoerzhan]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBranchTask.Werdiguoerzhan

rwtTask[tAiHaoShenDianTask[15]] = {}
rwtTask[tAiHaoShenDianTask[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20146] --赫丽登基
rwtTask[tAiHaoShenDianTask[15]]["PreTaskId"] = tAiHaoShenDianTask[13]
rwtTask[tAiHaoShenDianTask[15]]["NextTaskId"] = tAiHaoShenDianTask[16]
rwtTask[tAiHaoShenDianTask[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tAiHaoShenDianTask[15]]["ReqTrap1" ]= nTrap_Wanggong
rwtTask[tAiHaoShenDianTask[15]]["DialogId"] = 10721
rwtTask[tAiHaoShenDianTask[15]]["DynaNpcGroupGen"] = {}
rwtTask[tAiHaoShenDianTask[15]]["DynaNpcGroupGen"][1] = {}
rwtTask[tAiHaoShenDianTask[15]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_TrapWanggong
rwtTask[tAiHaoShenDianTask[15]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tAiHaoShenDianTask[15]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--解锁后一个任务屏蔽自动寻路
--rwtTask[tAiHaoShenDianTask[15]]["StartAutoWay"] = {}
--rwtTask[tAiHaoShenDianTask[15]]["StartAutoWay"]["FindWayTypeId"]=1
--rwtTask[tAiHaoShenDianTask[15]]["StartAutoWay"]["FindWayMapId"] =1000
--rwtTask[tAiHaoShenDianTask[15]]["StartAutoWay"]["FindWayGroupId"] = nTrap_Wanggong
--rwtTask[tAiHaoShenDianTask[15]]["StartAutoWay"]["FindWayGenId"] = nGenID_TrapWanggong
rwtTask[tAiHaoShenDianTask[15]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[15]]["UnlockHeadIcon"] = {}
rwtTask[tAiHaoShenDianTask[15]]["UnlockHeadIcon"][1] = {}
rwtTask[tAiHaoShenDianTask[15]]["UnlockHeadIcon"][1]["HeadIconId"] = 10028 --赫丽头像解锁
rwtTask[tAiHaoShenDianTask[15]]["UnlockHeadIcon"][1]["RecordId"] = 11
rwtTask[tAiHaoShenDianTask[15]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000018
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[15]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[15]
rwtTask[tAiHaoShenDianTask[15]]["OpenMercenaryTask"] = {}
rwtTask[tAiHaoShenDianTask[15]]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tAiHaoShenDianTask[15]]["OpenMercenaryTask"]["TownId"] = 200105
rwtTask[tAiHaoShenDianTask[15]]["UnLockSysId"] = {CONST_SYSTEM_FUNCTION.PVP_KNIGHT,CONST_SYSTEM_FUNCTION.WENJUAN3} --问卷3  CBT1版本新增

rwtTask[tAiHaoShenDianTask[16]] = {}
rwtTask[tAiHaoShenDianTask[16]]["Title"] = tLuaText[LANGUAGE_CONFIG][20148] --拜访特罗德
rwtTask[tAiHaoShenDianTask[16]]["PreTaskId"] = tAiHaoShenDianTask[15]
rwtTask[tAiHaoShenDianTask[16]]["NextTaskId"] = tAiHaoShenDianTask[20]
rwtTask[tAiHaoShenDianTask[16]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[tAiHaoShenDianTask[16]]["ReqTrap1" ]= nTrap_TeluodeHome
rwtTask[tAiHaoShenDianTask[16]]["DialogId"] = 10258
rwtTask[tAiHaoShenDianTask[16]]["TaskNpc"] = nNpc_Teluode
rwtTask[tAiHaoShenDianTask[16]]["StartAutoWay"] = {}
rwtTask[tAiHaoShenDianTask[16]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tAiHaoShenDianTask[16]]["StartAutoWay"]["FindWayMapId"] =1000
rwtTask[tAiHaoShenDianTask[16]]["StartAutoWay"]["FindWayGroupId"] = 20228
rwtTask[tAiHaoShenDianTask[16]]["StartAutoWay"]["FindWayGenId"] = 1000047
rwtTask[tAiHaoShenDianTask[16]]["IsClickComplete"] = 0
--rwtTask[tAiHaoShenDianTask[16]]["AwardId"] = 2000019
rwtTask[tAiHaoShenDianTask[16]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000019
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[16]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[16]

rwtTask[tAiHaoShenDianTask[20]] = {}
rwtTask[tAiHaoShenDianTask[20]]["Title"] = tLuaText[LANGUAGE_CONFIG][20145] --倒计时
rwtTask[tAiHaoShenDianTask[20]]["PreTaskId"] = tAiHaoShenDianTask[16]
rwtTask[tAiHaoShenDianTask[20]]["NextTaskId"] = 10191
rwtTask[tAiHaoShenDianTask[20]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
--rwtTask[tAiHaoShenDianTask[20]]["TaskFinishTime"] = 28800
rwtTask[tAiHaoShenDianTask[20]]["NeedLevel"] = 28
--rwtTask[tAiHaoShenDianTask[20]]["TaskFinishTime"] = 60
--rwtTask[tAiHaoShenDianTask[20]]["ReqTrap1" ]= nTrap_TeluodeHome
--rwtTask[tAiHaoShenDianTask[20]]["DynaNpcGroupGen"] = {nGenID_TrapTeluodeHome}
rwtTask[tAiHaoShenDianTask[20]]["DynaNpcGroupMapId"] = 1000
rwtTask[tAiHaoShenDianTask[20]]["IsClickComplete"] = 0
rwtTask[tAiHaoShenDianTask[20]]["DialogId"] = 12918
rwtTask[tAiHaoShenDianTask[20]]["LackDialogId"] = 11973
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"] = {}
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"]["Events"][1]["AutoWay"] = {}
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayTypeId"] = 0
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayMapId"] = 1000
rwtTask[tAiHaoShenDianTask[20]]["LackDialogOption1"]["Events"][1]["AutoWay"]["FindWayPos"] = "-27.83,555.04,109.71"

--rwtTask[tAiHaoShenDianTask[20]]["DropCopyMapId"] = {3038,3029,3030,3028,3036}
--rwtTask[tAiHaoShenDianTask[20]]["DropAwardId"] = nSpeedAwardId

rwtTask[tAiHaoShenDianTask[20]]["CountDownSpeed"] = {}
rwtTask[tAiHaoShenDianTask[20]]["CountDownSpeed"]["SpeedItem"] = nSpeedItem
rwtTask[tAiHaoShenDianTask[20]]["CountDownSpeed"]["SpeedDialog"] = nSpeedDialog
rwtTask[tAiHaoShenDianTask[20]]["CountDownSpeed"]["LackTips"] = sLackTips


rwtTask[tAiHaoShenDianTask[20]]["Awards"] = {}
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"] = {}
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][1] = {}
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][1]["DeleteItem"] = {}
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][1]["DeleteItem"]["ItemId"] = nSpeedItem
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][1]["DeleteItem"]["DeleteAll"] = 1
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][2] = {}
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][2]["GetServerAward"] = {}
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][2]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][2]["GetServerAward"]["AwardId"] = 2000598
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][2]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tAiHaoShenDianTask[20]]["Awards"]["Events"][2]["GetServerAward"]["ActionId"] =tAiHaoShenDianTask[20]
