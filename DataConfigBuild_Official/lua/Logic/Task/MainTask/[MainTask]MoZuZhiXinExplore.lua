--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--endregion

--下个片区任务id
local nNextExploreTaskId = 10271

local tMoZuZhiXinTask = {}
tMoZuZhiXinTask[1]= 10191  --风波又起   请教特罗德
tMoZuZhiXinTask[2]= 10192  --风波又起   了解赫丽的担忧
tMoZuZhiXinTask[3]= 10256  --传说的魔族高地 寻找高地入口
tMoZuZhiXinTask[4]= 10257  --传说的魔族高地 获得泰雷的讯息
tMoZuZhiXinTask[5]= 10260  --传说的魔族高地 破坏隐藏入口的魔法阵
tMoZuZhiXinTask[6]= 10261  --传说的魔族高地 击退怒蝎统领强森
tMoZuZhiXinTask[7]= 10263  --传说的魔族高地 开启高地入口
tMoZuZhiXinTask[22]= 10649 --失踪的泰雷 特殊的受困者
tMoZuZhiXinTask[8]= 10436  --失踪的泰雷 特殊的受困者
tMoZuZhiXinTask[9]= 10193  --失踪的泰雷 治愈泰雷的伤势
tMoZuZhiXinTask[10]= 10196 --泰雷的回忆 泰雷进行回忆
tMoZuZhiXinTask[11]= 10198 --消失的入口 特罗德的叮嘱
tMoZuZhiXinTask[12]= 10199 --消失的入口 击败铠甲幽灵
tMoZuZhiXinTask[13]= 10200 --消失的入口 往深处去
tMoZuZhiXinTask[14]= 10201 --消失的入口 击败驭魂法师
tMoZuZhiXinTask[15]= 10202 --消失的入口 前往大帝重刃的所在
tMoZuZhiXinTask[16]= 10203 --消失的入口 击败弑魂领主
tMoZuZhiXinTask[17]= 10204 --消失的入口 破坏封印 -采集
tMoZuZhiXinTask[18]= 10205 --消失的入口 破坏封印 -对白
tMoZuZhiXinTask[19]= 10221 --魔族之心   击败萨米尔
tMoZuZhiXinTask[20]= 10222 --神谕会议   前往参加神谕会议
tMoZuZhiXinTask[21]= 10542 --神谕会议   卡等级


--local nMoZuZhiXinTask1  = 10191 
--local nMoZuZhiXinTask2  = 10192 
--local nMoZuZhiXinTask18 = 10256 
--local nMoZuZhiXinTask19 = 10257 
--local nMoZuZhiXinTask22 = 10260 
--local nMoZuZhiXinTask23 = 10261 
--local nMoZuZhiXinTask25 = 10263 
--local nMoZuZhiXinTask26 = 10436 
--local nMoZuZhiXinTask3  = 10193 
--local nMoZuZhiXinTask6  = 10196 
--local nMoZuZhiXinTask8  = 10198 
--local nMoZuZhiXinTask9  = 10199 
--local nMoZuZhiXinTask16 = 10200 
--local nMoZuZhiXinTask10 = 10201 
--local nMoZuZhiXinTask17 = 10202 
--local nMoZuZhiXinTask11 = 10203 
--local nMoZuZhiXinTask12 = 10204 
--local nMoZuZhiXinTask13 = 10205 
--local nMoZuZhiXinTask14 = 10221 
--local nMoZuZhiXinTask15 = 10222 





--坐标
local sPos_Teluode = "16.62,1.18,-25.05"
local sPos_Heli = "0.25,5.22,-69.61 "  
local sPos_MozuRukou = "-53.22,7.54,-13.45"  
local sPos_DaodiTailei = "-0.80,3.87,-6.82"
local sPos_UpTailei = "-0.81,3.87,-6.82"    
local sPos_Yuyao = "27.35,9.93,9.08"
local sPos_Tailei = "1.38,3.87,-6.79"
local sPos_GuanAi = "6.43,3.91,7.96" 

local sPos_Youling = "-11.55,3.73,10.57"

local sPos_Fashi = "-38.90,1.91,8.71"

local sPos_FaZhen = "-38.75,1.86,-20.69" 
local sPos_Fubenchukou = "9.23,3.99,8.22"
local sPos_MozuChukou = "0.16,3.83,-18.43"  
local sPos_FengYin = "-39.01,1.65,-21.52" 

local sPos_Xunxi = "-13.77,0.13,-84.21"
local sPos_Rukouxianjing = "-18.47,0.13,-80.35"
local sPos_Rukou_New = "-19.26,0.10,-80.24"
--NPCGroup
--采集
local nCollect = 60063
local nCollect_New_Letter_1 =60081
local nCollect_New_Letter_2 =60110
local nCollect_New_Letter_3 =60111
--建筑 
local nNpcgroup_teH = 10008
local nNpcgroup_Wanggong = 21000001
--陷阱
local nTrap_DaodiTailei = 30161
local nTrap_Yuyao = 30162
local nTrap_Dingzhu = 30163




local nTrap_Youling  = 30164
local nTrap_Fashi  = 30165
local nTrap_Lingzhu  = 30166
local nTrap_Fengyin = 30167
local nTrap_FaZhen = 30168
local nTrap_Fubenchukou = 30169

local nTrap_new = 30319

local nTrap_New_Rukou = 30203
local nTrap_New_Xunxi = 30204
local nTrap_New_Shenyuanlingzhu = 30205
local nTrap_New_Caoyuanlingzhu = 30206

local nTrap_New_FaxianTailei = 30355
--NPC
local nNpcgroup_Heli = 20108
local nNpcgroup_DaodiTailei = 20109
local nNpcgroup_Tailei = 20110
local nNpcGroup_Teluode = 20228

local nNpcgroup_New_Mohulingzhu = 20174
local nNpcgroup_New_Shanyanlingzhu = 20175

local nNpcgroup_TeluodeInWanggong = 20415
--传送NPC
local nTransfer_MozuRukou = 57000
local nTransfer_MozuChukou = 57001

local nTransfer_ClickEnterNpc = 70002

--怪物 
local nMonster_Shenyuan = 900192
local nMonster_Caoyuan = 900193
--GenID
--陷阱gen
local nGenID_Trap_DaodiTailei = 2001507
local nGenID_Trap_Yuyao = 2001508
local nGenID_Trap_Dingzhu = 2001509




local nGenID_Trap_Youling = 2001510
local nGenID_Trap_Fashi   = 2001511
local nGenID_Trap_Lingzhu = 2001512
local nGenID_Trap_Fengyin  = 2001513
local nGenID_Trap_FaZhen = 2001514
local nGenID_Trap_Fubenchukou = 2001515

local nGenID_New_Trap_Rukou = 2001729
local nGenID_New_Trap_Xunxi = 2001730
local nGenID_New_Trap_Shenyuanlingzhu = 2001731
local nGenID_New_Trap_Caoyuanlingzhu = 2001732

local nGenID_New_Trap = 2001839

local nGenID_New_Trap_FaxianTailei = 2002017
--怪物组gen
local nGenID_Monster_Yuyao = 2001516
local nGenID_Monster_Youling = 2001517
local nGenID_Monster_Fashi   = 2001518
local nGenID_Monster_Lingzhu = 2001519

local nGenID_New_Monster_Shenyuan = 2001733
local nGenID_New_Monster_Caoyuan = 2001734

local nGenID_New_Monster = 2001840
--采集gen
local nGenID_Collect = 2001520
local nGenID_Collect_new_letter_1 = 2001735
local nGenID_Collect_new_letter_2 = 2001837
local nGenID_Collect_new_letter_3 = 2001838
--传送gen
local nGenID_Tran_MozuRukou  = 2001521
local nGenID_Tran_MozuChukou = 2001522

local nGenID_Tran_ClickEnterNpc = 2001959
--NPCgen
local nGenID_Npcgroup_Heli = 2001523
local nGenID_Npcgroup_DaodiTailei = 2001524
local nGenID_Npcgroup_Tailei = 2001525
local nGenID_Npcgroup_Teluode = 1000047

local nGenID_New_Npcgrop_Mohulingzhu = 2001736
local nGenID_New_Npcgrop_Shanyanlingzhu = 2001737

local nGenID_Npcgroup_Touming = 2001906

local nGenID_Npcgroup_TeluodeInWanggong = 2001987
--Npc
local nNpc_Teluode = 3028
rwtNpc[nNpc_Teluode] = rwtNpc[nNpc_Teluode] or {}
local nNpc_Heli = 3314
rwtNpc[nNpc_Heli] = rwtNpc[nNpc_Heli] or {}
local nNpc_Tailei = 102
rwtNpc[nNpc_Tailei] = rwtNpc[nNpc_Tailei] or {}

local nNpc_Mohulingzhu = 3134
rwtNpc[nNpc_Mohulingzhu] = rwtNpc[nNpc_Mohulingzhu] or {}
local nNpc_Shanyanlingzhu = 3135
rwtNpc[nNpc_Shanyanlingzhu] = rwtNpc[nNpc_Shanyanlingzhu] or {}


rwtNpc[nNpc_Tailei] = rwtNpc[nNpc_Tailei] or {}
rwtNpcGroup[nNpcgroup_teH] = rwtNpcGroup[nNpcgroup_teH] or {}  --特罗德家
rwtNpcGroup[nNpcgroup_teH]["Type"] = CONST_NPCGROUP_TYPE.MapNpc
rwtNpcGroup[nNpcgroup_teH]["NpcId1"]= nNpc_Teluode

rwtNpcGroup[nNpcgroup_DaodiTailei] = rwtNpcGroup[nNpcgroup_DaodiTailei] or {}  --倒地泰雷
rwtNpcGroup[nNpcgroup_DaodiTailei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_DaodiTailei]["NpcId"]= nNpc_Tailei

rwtNpcGroup[nNpcgroup_Tailei] = rwtNpcGroup[nNpcgroup_Tailei] or {}  --泰雷
rwtNpcGroup[nNpcgroup_Tailei]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_Tailei]["NpcId"]= nNpc_Tailei

rwtNpcGroup[nNpcgroup_TeluodeInWanggong] = rwtNpcGroup[nNpcgroup_TeluodeInWanggong] or {}  --特罗德(王宫)
rwtNpcGroup[nNpcgroup_TeluodeInWanggong]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_TeluodeInWanggong]["NpcId1"]= nNpc_Teluode

rwtNpcGroup[nNpcgroup_New_Mohulingzhu] = rwtNpcGroup[nNpcgroup_New_Mohulingzhu] or {}  --魔湖领主
rwtNpcGroup[nNpcgroup_New_Mohulingzhu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_New_Mohulingzhu]["NpcId"]= nNpc_Mohulingzhu

rwtNpcGroup[nNpcgroup_New_Shanyanlingzhu] = rwtNpcGroup[nNpcgroup_New_Shanyanlingzhu] or {}  --山岩领主
rwtNpcGroup[nNpcgroup_New_Shanyanlingzhu]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcgroup_New_Shanyanlingzhu]["NpcId"]= nNpc_Shanyanlingzhu

rwtNpcGroup[nTransfer_ClickEnterNpc] = rwtNpcGroup[nTransfer_ClickEnterNpc] or {} 
rwtNpcGroup[nTransfer_ClickEnterNpc]["InterfaceFunc"] = function ()
    rwEnterMap(2002,"2.82,3.88,-15.95")
	if rwTaskIsExist (tMoZuZhiXinTask[22]) then
		ENUM_TASK_TEMPLATE[CONST_TASK_DETAIL_TYPE.TRAP_IN]:create(tMoZuZhiXinTask[22]):CompleteTask()
	end
end
--陷阱
rwtNpcGroup[nTrap_DaodiTailei] = rwtNpcGroup[nTrap_DaodiTailei] or {} 
rwtNpcGroup[nTrap_DaodiTailei]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Yuyao] = rwtNpcGroup[nTrap_Yuyao] or {} 
rwtNpcGroup[nTrap_Yuyao]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Dingzhu] = rwtNpcGroup[nTrap_Dingzhu] or {} 
rwtNpcGroup[nTrap_Dingzhu]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Youling] = rwtNpcGroup[nTrap_Youling] or {} 
rwtNpcGroup[nTrap_Youling]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Fashi] = rwtNpcGroup[nTrap_Fashi] or {} 
rwtNpcGroup[nTrap_Fashi]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Lingzhu] = rwtNpcGroup[nTrap_Lingzhu] or {} 
rwtNpcGroup[nTrap_Lingzhu]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Fengyin] = rwtNpcGroup[nTrap_Fengyin] or {} 
rwtNpcGroup[nTrap_Fengyin]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_FaZhen] = rwtNpcGroup[nTrap_FaZhen] or {} 
rwtNpcGroup[nTrap_FaZhen]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Fubenchukou] = rwtNpcGroup[nTrap_Fubenchukou] or {}  
rwtNpcGroup[nTrap_Fubenchukou]["Type"] = CONST_NPCGROUP_TYPE.Trap    
rwtNpcGroup[nTrap_New_Rukou] = rwtNpcGroup[nTrap_New_Rukou] or {}  
rwtNpcGroup[nTrap_New_Rukou]["Type"] = CONST_NPCGROUP_TYPE.Trap    
rwtNpcGroup[nTrap_New_Xunxi] = rwtNpcGroup[nTrap_New_Xunxi] or {}  
rwtNpcGroup[nTrap_New_Xunxi]["Type"] = CONST_NPCGROUP_TYPE.Trap    
rwtNpcGroup[nTrap_New_Shenyuanlingzhu] = rwtNpcGroup[nTrap_New_Shenyuanlingzhu] or {}  
rwtNpcGroup[nTrap_New_Shenyuanlingzhu]["Type"] = CONST_NPCGROUP_TYPE.Trap    
rwtNpcGroup[nTrap_New_Caoyuanlingzhu] = rwtNpcGroup[nTrap_New_Caoyuanlingzhu] or {}  
rwtNpcGroup[nTrap_New_Caoyuanlingzhu]["Type"] = CONST_NPCGROUP_TYPE.Trap    
rwtNpcGroup[nTrap_new] = rwtNpcGroup[nTrap_new] or {}  
rwtNpcGroup[nTrap_new]["Type"] = CONST_NPCGROUP_TYPE.Trap  
rwtNpcGroup[nTrap_New_FaxianTailei] = rwtNpcGroup[nTrap_New_FaxianTailei] or {}  
rwtNpcGroup[nTrap_New_FaxianTailei]["Type"] = CONST_NPCGROUP_TYPE.Trap  

--采集    
rwtNpcGroup[nCollect] = rwtNpcGroup[nCollect] or {}
rwtNpcGroup[nCollect]["Type"] = CONST_NPCGROUP_TYPE.Collect 
rwtNpcGroup[nCollect]["DialogId"] = 10736 --10363             
rwtNpcGroup[nCollect_New_Letter_1] = rwtNpcGroup[nCollect_New_Letter_1] or {}
rwtNpcGroup[nCollect_New_Letter_1]["Type"] = CONST_NPCGROUP_TYPE.Collect       
rwtNpcGroup[nCollect_New_Letter_2] = rwtNpcGroup[nCollect_New_Letter_2] or {}
rwtNpcGroup[nCollect_New_Letter_2]["Type"] = CONST_NPCGROUP_TYPE.Collect   
rwtNpcGroup[nCollect_New_Letter_3] = rwtNpcGroup[nCollect_New_Letter_3] or {}
rwtNpcGroup[nCollect_New_Letter_3]["Type"] = CONST_NPCGROUP_TYPE.Collect                                                      
--地图初始化                                                           
local nGenIdCopyMapPlot = 3034001
local nGenIdCopyMapNormal = 3026001

function MainTask_Mozuzhixin_Leiming_CreatNpc() --第一片区探索层创建NPC判断

    if rwTaskGetFinishMask(tMoZuZhiXinTask[7]) == 1 then      
        if not rwHasGenEvent(nGenID_Tran_ClickEnterNpc) then 
--            rwAddGenEvent(nGenID_Tran_MozuRukou)   --创建魔族入口切屏NPC
            rwAddGenEvent(nGenID_Tran_ClickEnterNpc) 
            rwSpecialStatus_AddEffect(7,0,2033,"-17.67,0.13,-85.67")
        end
    end
end

rwtSceneLoad_Func[2001] = rwtSceneLoad_Func[2001] or {}
table.insert(rwtSceneLoad_Func[2001],MainTask_Mozuzhixin_Leiming_CreatNpc)  --插入切图函数

-------------------------------------任务--------------------------------------------------
rwtTask[tMoZuZhiXinTask[1]] = {}
rwtTask[tMoZuZhiXinTask[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][20350] --请教特罗德
rwtTask[tMoZuZhiXinTask[1]]["PreTaskId"] = 10229
rwtTask[tMoZuZhiXinTask[1]]["NextTaskId"] = tMoZuZhiXinTask[2]
rwtTask[tMoZuZhiXinTask[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMoZuZhiXinTask[1]]["DialogId"] = 10350
rwtTask[tMoZuZhiXinTask[1]]["TaskNpc"] = nNpc_Teluode
rwtTask[tMoZuZhiXinTask[1]]["IsClickComplete"] = 0 
rwtTask[tMoZuZhiXinTask[1]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[1]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMoZuZhiXinTask[1]]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMoZuZhiXinTask[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_Teluode
rwtTask[tMoZuZhiXinTask[1]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Teluode

rwtTask[tMoZuZhiXinTask[2]] = {}
rwtTask[tMoZuZhiXinTask[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][20351] --了解赫丽的担忧
rwtTask[tMoZuZhiXinTask[2]]["PreTaskId"] = tMoZuZhiXinTask[1]
rwtTask[tMoZuZhiXinTask[2]]["NextTaskId"] = tMoZuZhiXinTask[3]
rwtTask[tMoZuZhiXinTask[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMoZuZhiXinTask[2]]["DialogId"] = 10722 --10522
rwtTask[tMoZuZhiXinTask[2]]["TaskNpc"] = nNpc_Heli
rwtTask[tMoZuZhiXinTask[2]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[2]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[2]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMoZuZhiXinTask[2]]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[tMoZuZhiXinTask[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_Heli
rwtTask[tMoZuZhiXinTask[2]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Heli
rwtTask[tMoZuZhiXinTask[2]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Heli
rwtTask[tMoZuZhiXinTask[2]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMoZuZhiXinTask[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
--rwtTask[tMoZuZhiXinTask[2]]["AwardId"] = 2000057
rwtTask[tMoZuZhiXinTask[2]]["Awards"] = {}
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"] = {}
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"][1] = {}
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000057
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMoZuZhiXinTask[2]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMoZuZhiXinTask[2]

rwtTask[tMoZuZhiXinTask[3]] = {}
rwtTask[tMoZuZhiXinTask[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][20352] --寻找高地入口
rwtTask[tMoZuZhiXinTask[3]]["PreTaskId"] = tMoZuZhiXinTask[2]
rwtTask[tMoZuZhiXinTask[3]]["NextTaskId"] = tMoZuZhiXinTask[4]
rwtTask[tMoZuZhiXinTask[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[3]]["DialogId"] = 10723--10523
rwtTask[tMoZuZhiXinTask[3]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[3]]["ReqTrap1" ]= nTrap_New_Rukou
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_New_Trap_Rukou 
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_Touming 
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[3]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMoZuZhiXinTask[3]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[3]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[3]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMoZuZhiXinTask[3]]["StartAutoWay"]["FindWayPos"] = "-27.06,0.1,-70.38"

rwtTask[tMoZuZhiXinTask[4]] = {}
rwtTask[tMoZuZhiXinTask[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][20353] --获得泰雷的讯息--采集
rwtTask[tMoZuZhiXinTask[4]]["PreTaskId"] = tMoZuZhiXinTask[3]
rwtTask[tMoZuZhiXinTask[4]]["NextTaskId"] = tMoZuZhiXinTask[5]
rwtTask[tMoZuZhiXinTask[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT 
rwtTask[tMoZuZhiXinTask[4]]["ReqCollectId1"] = nCollect_New_Letter_1
rwtTask[tMoZuZhiXinTask[4]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Collect_new_letter_1 
rwtTask[tMoZuZhiXinTask[4]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[4]]["DialogId"] = 10724 
rwtTask[tMoZuZhiXinTask[4]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[4]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMoZuZhiXinTask[4]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMoZuZhiXinTask[4]]["StartAutoWay"]["FindWayGroupId"] = nCollect_New_Letter_1
rwtTask[tMoZuZhiXinTask[4]]["StartAutoWay"]["FindWayGenId"] = nGenID_Collect_new_letter_1
rwtTask[tMoZuZhiXinTask[4]]["IsClickComplete"] = 0


rwtTask[tMoZuZhiXinTask[5]] = {}
rwtTask[tMoZuZhiXinTask[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][20354] --破坏隐藏入口的魔法阵
rwtTask[tMoZuZhiXinTask[5]]["PreTaskId"] = tMoZuZhiXinTask[4]
rwtTask[tMoZuZhiXinTask[5]]["NextTaskId"] = tMoZuZhiXinTask[6]
rwtTask[tMoZuZhiXinTask[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[5]]["DialogId"] = 10727
rwtTask[tMoZuZhiXinTask[5]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[5]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_New_Trap 
rwtTask[tMoZuZhiXinTask[5]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[5]]["ReqTrap1" ]= nTrap_new
rwtTask[tMoZuZhiXinTask[5]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[5]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[5]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMoZuZhiXinTask[5]]["StartAutoWay"]["FindWayPos"] = sPos_Rukou_New

rwtTask[tMoZuZhiXinTask[6]] = {}
rwtTask[tMoZuZhiXinTask[6]]["Title"] = tLuaText[LANGUAGE_CONFIG][20355] --击退怒蝎统领强森
rwtTask[tMoZuZhiXinTask[6]]["PreTaskId"] = tMoZuZhiXinTask[5]
rwtTask[tMoZuZhiXinTask[6]]["NextTaskId"] = tMoZuZhiXinTask[7]
rwtTask[tMoZuZhiXinTask[6]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMoZuZhiXinTask[6]]["KillMonsterGroup1" ]= nMonster_Caoyuan
rwtTask[tMoZuZhiXinTask[6]]["DialogId"] = 10728
rwtTask[tMoZuZhiXinTask[6]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[6]]["ReqTrap1" ]= nTrap_new
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_New_Monster_Caoyuan 
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_New_Trap 
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[6]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[6]]["MonsterGroupGenId"] = nGenID_New_Monster_Caoyuan
rwtTask[tMoZuZhiXinTask[6]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[6]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[6]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMoZuZhiXinTask[6]]["StartAutoWay"]["FindWayPos"] = sPos_Rukou_New


rwtTask[tMoZuZhiXinTask[7]] = {}
rwtTask[tMoZuZhiXinTask[7]]["Title"] = tLuaText[LANGUAGE_CONFIG][20359] --开启高地入口
rwtTask[tMoZuZhiXinTask[7]]["PreTaskId"] = tMoZuZhiXinTask[6]
rwtTask[tMoZuZhiXinTask[7]]["NextTaskId"] = tMoZuZhiXinTask[22]
rwtTask[tMoZuZhiXinTask[7]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[7]]["DialogId"] = 10729
rwtTask[tMoZuZhiXinTask[7]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[7]]["ReqTrap1" ]= nTrap_new
rwtTask[tMoZuZhiXinTask[7]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[7]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[7]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_New_Trap 
rwtTask[tMoZuZhiXinTask[7]]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[tMoZuZhiXinTask[7]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[7]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[7]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[7]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMoZuZhiXinTask[7]]["StartAutoWay"]["FindWayPos"] = sPos_Rukou_New
rwtTask[tMoZuZhiXinTask[7]]["AwardCreateGen"] = {nGenID_Tran_ClickEnterNpc}
--rwtTask[tMoZuZhiXinTask[7]]["AwardId"] = 2000059
rwtTask[tMoZuZhiXinTask[7]]["Awards"] = {}
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"] = {}
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"][1] = {}
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000059
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMoZuZhiXinTask[7]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMoZuZhiXinTask[7]
rwtTask[tMoZuZhiXinTask[7]]["DialogueEndFunc"] = function ()
    rwSpecialStatus_AddEffect(7,0,2032,"-17.67,0.13,-85.67")
end 

rwtTask[tMoZuZhiXinTask[22]] = {}
rwtTask[tMoZuZhiXinTask[22]]["Title"] = tLuaText[LANGUAGE_CONFIG][20360] --特殊的受困者
rwtTask[tMoZuZhiXinTask[22]]["PreTaskId"] = tMoZuZhiXinTask[7]
rwtTask[tMoZuZhiXinTask[22]]["NextTaskId"] = tMoZuZhiXinTask[8]
rwtTask[tMoZuZhiXinTask[22]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TRAP_IN
rwtTask[tMoZuZhiXinTask[22]]["ReqTrap1" ]= 70002
rwtTask[tMoZuZhiXinTask[22]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[22]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[22]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[22]]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[tMoZuZhiXinTask[22]]["StartAutoWay"]["FindWayPos"] = "-17.67,0.13,-85.67"

rwtTask[tMoZuZhiXinTask[8]] = {}
rwtTask[tMoZuZhiXinTask[8]]["Title"] = tLuaText[LANGUAGE_CONFIG][20360] --特殊的受困者
rwtTask[tMoZuZhiXinTask[8]]["PreTaskId"] = tMoZuZhiXinTask[22]
rwtTask[tMoZuZhiXinTask[8]]["NextTaskId"] = tMoZuZhiXinTask[9]
rwtTask[tMoZuZhiXinTask[8]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[8]]["DialogId"] = 10852
rwtTask[tMoZuZhiXinTask[8]]["ReqTrap1" ]= nTrap_New_FaxianTailei
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_DaodiTailei 
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_New_Trap_FaxianTailei 
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][2]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[8]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[8]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[8]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[8]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[8]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[8]]["StartAutoWay"]["FindWayPos"] = "3.10,3.73,-14.33"

rwtTask[tMoZuZhiXinTask[9]] = {}
rwtTask[tMoZuZhiXinTask[9]]["Title"] = tLuaText[LANGUAGE_CONFIG][20361]--治愈泰雷的伤势
rwtTask[tMoZuZhiXinTask[9]]["PreTaskId"] = tMoZuZhiXinTask[8]
rwtTask[tMoZuZhiXinTask[9]]["NextTaskId"] = tMoZuZhiXinTask[10]
rwtTask[tMoZuZhiXinTask[9]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[9]]["DialogId"] = 10352
rwtTask[tMoZuZhiXinTask[9]]["ReqTrap1" ]= nTrap_DaodiTailei
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_DaodiTailei 
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Trap_DaodiTailei 
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][2]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[9]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[9]]["IsClickComplete"] = 1
rwtTask[tMoZuZhiXinTask[9]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[9]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMoZuZhiXinTask[9]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[9]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_DaodiTailei
rwtTask[tMoZuZhiXinTask[9]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_DaodiTailei
rwtTask[tMoZuZhiXinTask[9]]["DialogueEndFunc"] = function ()
    rwSpecialStatus_AddEffect(4,nGenID_Npcgroup_DaodiTailei,2031)
end 


rwtTask[tMoZuZhiXinTask[10]] = {}
rwtTask[tMoZuZhiXinTask[10]]["Title"] = tLuaText[LANGUAGE_CONFIG][20362] --泰雷进行回忆
rwtTask[tMoZuZhiXinTask[10]]["PreTaskId"] = tMoZuZhiXinTask[9]
rwtTask[tMoZuZhiXinTask[10]]["NextTaskId"] = tMoZuZhiXinTask[11]
rwtTask[tMoZuZhiXinTask[10]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMoZuZhiXinTask[10]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[10]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[10]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Tailei 
rwtTask[tMoZuZhiXinTask[10]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[10]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMoZuZhiXinTask[10]]["DialogId"] = 10738
rwtTask[tMoZuZhiXinTask[10]]["TaskNpc"] = nNpc_Tailei
rwtTask[tMoZuZhiXinTask[10]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[10]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[10]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMoZuZhiXinTask[10]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[10]]["StartAutoWay"]["FindWayGroupId"] = nNpcgroup_Tailei
rwtTask[tMoZuZhiXinTask[10]]["StartAutoWay"]["FindWayGenId"] = nGenID_Npcgroup_Tailei
--rwtTask[tMoZuZhiXinTask[10]]["AwardId"] = 2000060
rwtTask[tMoZuZhiXinTask[10]]["Awards"] = {}
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"] = {}
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"][1] = {}
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000060
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMoZuZhiXinTask[10]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMoZuZhiXinTask[10]
rwtTask[tMoZuZhiXinTask[10]]["UnlockHeadIcon"] = {}
rwtTask[tMoZuZhiXinTask[10]]["UnlockHeadIcon"][1] = {}
rwtTask[tMoZuZhiXinTask[10]]["UnlockHeadIcon"][1]["HeadIconId"] = 10166 --泰雷趣味头像解锁
rwtTask[tMoZuZhiXinTask[10]]["UnlockHeadIcon"][1]["RecordId"] = 11


--rwtTask[nMoZuZhiXinTask7] = {}
--rwtTask[nMoZuZhiXinTask7]["Title"] = tLuaText[LANGUAGE_CONFIG][20363] --泰雷的请求
--rwtTask[nMoZuZhiXinTask7]["PreTaskId"] = nMoZuZhiXinTask6
--rwtTask[nMoZuZhiXinTask7]["NextTaskId"] = nMoZuZhiXinTask8
--rwtTask[nMoZuZhiXinTask7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
--rwtTask[nMoZuZhiXinTask7]["ReqTrap1" ]= nTrap_DaodiTailei
--rwtTask[nMoZuZhiXinTask7]["DynaNpcGroupGen"] = {nGenID_Npcgroup_Tailei,nGenID_Trap_DaodiTailei}
--rwtTask[nMoZuZhiXinTask7]["DynaNpcGroupMapId"] = 2002
--rwtTask[nMoZuZhiXinTask7]["DialogId"] = 10356
--rwtTask[nMoZuZhiXinTask7]["TaskNpc"] = nNpc_Tailei
--rwtTask[nMoZuZhiXinTask7]["IsClickComplete"] = 1 
--rwtTask[nMoZuZhiXinTask7]["StartAutoWay"] = {}
--rwtTask[nMoZuZhiXinTask7]["StartAutoWay"]["FindWayTypeId"] = 0
--rwtTask[nMoZuZhiXinTask7]["StartAutoWay"]["FindWayMapId"] = 2002
--rwtTask[nMoZuZhiXinTask7]["StartAutoWay"]["FindWayPos"] = sPos_UpTailei




rwtTask[tMoZuZhiXinTask[11]] = {}
rwtTask[tMoZuZhiXinTask[11]]["Title"] = tLuaText[LANGUAGE_CONFIG][20364] --特罗德的叮嘱
rwtTask[tMoZuZhiXinTask[11]]["PreTaskId"] = tMoZuZhiXinTask[10]
rwtTask[tMoZuZhiXinTask[11]]["NextTaskId"] = tMoZuZhiXinTask[12]
rwtTask[tMoZuZhiXinTask[11]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[11]]["ReqTrap1" ]= nTrap_Dingzhu
rwtTask[tMoZuZhiXinTask[11]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[11]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[11]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_Dingzhu 
rwtTask[tMoZuZhiXinTask[11]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[11]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[11]]["DialogId"] = 10730--10357
rwtTask[tMoZuZhiXinTask[11]]["IsClickComplete"] = 0 
rwtTask[tMoZuZhiXinTask[11]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[11]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[11]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[11]]["StartAutoWay"]["FindWayPos"] = "6.43,3.91,7.96"



rwtTask[tMoZuZhiXinTask[12]] = {}
rwtTask[tMoZuZhiXinTask[12]]["Title"] = tLuaText[LANGUAGE_CONFIG][20365] --击败铠甲幽灵
rwtTask[tMoZuZhiXinTask[12]]["PreTaskId"] = tMoZuZhiXinTask[11]
rwtTask[tMoZuZhiXinTask[12]]["NextTaskId"] = tMoZuZhiXinTask[13]
rwtTask[tMoZuZhiXinTask[12]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMoZuZhiXinTask[12]]["KillMonsterGroup1" ]= 900184
rwtTask[tMoZuZhiXinTask[12]]["ReqTrap1" ]= nTrap_Youling
rwtTask[tMoZuZhiXinTask[12]]["DialogId"] = 10731  --10358
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_Youling 
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Monster_Youling 
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][2]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[12]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[12]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[12]]["MonsterGroupGenId"] = nGenID_Monster_Youling
rwtTask[tMoZuZhiXinTask[12]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[12]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMoZuZhiXinTask[12]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[12]]["StartAutoWay"]["FindWayGroupId"] = 900184
rwtTask[tMoZuZhiXinTask[12]]["StartAutoWay"]["FindWayGenId"] = nGenID_Monster_Youling

--插入新对话任务16
rwtTask[tMoZuZhiXinTask[13]] = {}
rwtTask[tMoZuZhiXinTask[13]]["Title"] = tLuaText[LANGUAGE_CONFIG][20366] --往深处去
rwtTask[tMoZuZhiXinTask[13]]["PreTaskId"] = tMoZuZhiXinTask[12]
rwtTask[tMoZuZhiXinTask[13]]["NextTaskId"] = tMoZuZhiXinTask[14]
rwtTask[tMoZuZhiXinTask[13]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[13]]["ReqTrap1" ]= nTrap_Youling
rwtTask[tMoZuZhiXinTask[13]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[13]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[13]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_Youling 
rwtTask[tMoZuZhiXinTask[13]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[13]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[13]]["DialogId"] = 10732 --10359
rwtTask[tMoZuZhiXinTask[13]]["IsClickComplete"] = 0 
rwtTask[tMoZuZhiXinTask[13]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[13]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[13]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[13]]["StartAutoWay"]["FindWayPos"] = sPos_Youling

rwtTask[tMoZuZhiXinTask[14]] = {}
rwtTask[tMoZuZhiXinTask[14]]["Title"] = tLuaText[LANGUAGE_CONFIG][20367] --击败暗夜法师和无魂骑士
rwtTask[tMoZuZhiXinTask[14]]["PreTaskId"] = tMoZuZhiXinTask[13]
rwtTask[tMoZuZhiXinTask[14]]["NextTaskId"] = tMoZuZhiXinTask[15]
rwtTask[tMoZuZhiXinTask[14]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMoZuZhiXinTask[14]]["KillMonsterGroup1" ]= 900185
rwtTask[tMoZuZhiXinTask[14]]["ReqTrap1" ]= nTrap_Fashi
rwtTask[tMoZuZhiXinTask[14]]["DialogId"] = 10733 --10360
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_Fashi 
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Monster_Fashi 
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][2]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[14]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[14]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[14]]["MonsterGroupGenId"] = nGenID_Monster_Fashi
rwtTask[tMoZuZhiXinTask[14]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[14]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMoZuZhiXinTask[14]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[14]]["StartAutoWay"]["FindWayGroupId"] = 900185
rwtTask[tMoZuZhiXinTask[14]]["StartAutoWay"]["FindWayGenId"] = nGenID_Monster_Fashi

--插入新对话任务17
rwtTask[tMoZuZhiXinTask[15]] = {}
rwtTask[tMoZuZhiXinTask[15]]["Title"] = tLuaText[LANGUAGE_CONFIG][20368] --往深处去
rwtTask[tMoZuZhiXinTask[15]]["PreTaskId"] = tMoZuZhiXinTask[14]
rwtTask[tMoZuZhiXinTask[15]]["NextTaskId"] = tMoZuZhiXinTask[16]
rwtTask[tMoZuZhiXinTask[15]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[15]]["ReqTrap1" ]= nTrap_Fashi
rwtTask[tMoZuZhiXinTask[15]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[15]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[15]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_Fashi 
rwtTask[tMoZuZhiXinTask[15]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[15]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[15]]["DialogId"] = 10734  --10361
rwtTask[tMoZuZhiXinTask[15]]["IsClickComplete"] = 0 
rwtTask[tMoZuZhiXinTask[15]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[15]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[15]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[15]]["StartAutoWay"]["FindWayPos"] = sPos_Fashi


rwtTask[tMoZuZhiXinTask[16]] = {}
rwtTask[tMoZuZhiXinTask[16]]["Title"] = tLuaText[LANGUAGE_CONFIG][20369] --击败弑魂领主
rwtTask[tMoZuZhiXinTask[16]]["PreTaskId"] = tMoZuZhiXinTask[15]
rwtTask[tMoZuZhiXinTask[16]]["NextTaskId"] = tMoZuZhiXinTask[17]
rwtTask[tMoZuZhiXinTask[16]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tMoZuZhiXinTask[16]]["KillMonsterGroup1" ]= 900186
rwtTask[tMoZuZhiXinTask[16]]["ReqTrap1" ]= nTrap_Lingzhu
rwtTask[tMoZuZhiXinTask[16]]["DialogId"] = 10735 -- 10362
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_Lingzhu 
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Monster_Lingzhu 
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][2]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[16]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[16]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[16]]["MonsterGroupGenId"] = nGenID_Monster_Lingzhu
rwtTask[tMoZuZhiXinTask[16]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[16]]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tMoZuZhiXinTask[16]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[16]]["StartAutoWay"]["FindWayGroupId"] = 900186
rwtTask[tMoZuZhiXinTask[16]]["StartAutoWay"]["FindWayGenId"] = nGenID_Monster_Lingzhu


rwtTask[tMoZuZhiXinTask[17]] = {}
rwtTask[tMoZuZhiXinTask[17]]["Title"] = tLuaText[LANGUAGE_CONFIG][20370]--破坏封印 --采集
rwtTask[tMoZuZhiXinTask[17]]["PreTaskId"] = tMoZuZhiXinTask[16]
rwtTask[tMoZuZhiXinTask[17]]["NextTaskId"] = tMoZuZhiXinTask[18]
rwtTask[tMoZuZhiXinTask[17]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT 
rwtTask[tMoZuZhiXinTask[17]]["ReqCollectId1"] = nCollect
rwtTask[tMoZuZhiXinTask[17]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[17]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[17]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Collect 
rwtTask[tMoZuZhiXinTask[17]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[17]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[17]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[17]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[17]]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tMoZuZhiXinTask[17]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[17]]["StartAutoWay"]["FindWayGroupId"] = nCollect
rwtTask[tMoZuZhiXinTask[17]]["StartAutoWay"]["FindWayGenId"] = nGenID_Collect


rwtTask[tMoZuZhiXinTask[18]] = {}
rwtTask[tMoZuZhiXinTask[18]]["Title"] = tLuaText[LANGUAGE_CONFIG][20371] --破坏封印 --对话
rwtTask[tMoZuZhiXinTask[18]]["PreTaskId"] = tMoZuZhiXinTask[17]
rwtTask[tMoZuZhiXinTask[18]]["NextTaskId"] = tMoZuZhiXinTask[19]
rwtTask[tMoZuZhiXinTask[18]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tMoZuZhiXinTask[18]]["ReqTrap1" ]= nTrap_FaZhen
rwtTask[tMoZuZhiXinTask[18]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[18]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[18]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Trap_FaZhen 
rwtTask[tMoZuZhiXinTask[18]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[18]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tMoZuZhiXinTask[18]]["DialogId"] = 10737--10431
rwtTask[tMoZuZhiXinTask[18]]["IsClickComplete"] = 0
rwtTask[tMoZuZhiXinTask[18]]["UnlockCopyMap1"] = 3034
rwtTask[tMoZuZhiXinTask[18]]["UnlockCopyMap2"] = 3026
rwtTask[tMoZuZhiXinTask[18]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[18]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[18]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[18]]["StartAutoWay"]["FindWayPos"] = sPos_FaZhen
--rwtTask[tMoZuZhiXinTask[18]]["AwardId"] = 2000061
rwtTask[tMoZuZhiXinTask[18]]["Awards"] = {}
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"] = {}
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"][1] = {}
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000061
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMoZuZhiXinTask[18]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMoZuZhiXinTask[18]


rwtTask[tMoZuZhiXinTask[19]] = {}
rwtTask[tMoZuZhiXinTask[19]]["Title" ]= tLuaText[LANGUAGE_CONFIG][20372] --击败萨米尔
rwtTask[tMoZuZhiXinTask[19]]["PreTaskId" ]= tMoZuZhiXinTask[18]
rwtTask[tMoZuZhiXinTask[19]]["NextTaskId" ]= tMoZuZhiXinTask[20]
rwtTask[tMoZuZhiXinTask[19]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tMoZuZhiXinTask[19]]["PassCopyMap1"] = {3034}
rwtTask[tMoZuZhiXinTask[19]]["PassCopyMapCount1"] = 1
rwtTask[tMoZuZhiXinTask[19]]["OpenCopyMap"] = 3034
rwtTask[tMoZuZhiXinTask[19]]["IsClickComplete"] = 1
rwtTask[tMoZuZhiXinTask[19]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[19]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[19]]["DynaNpcGroupGen"][1]["GenId"] = 3034001 
rwtTask[tMoZuZhiXinTask[19]]["DynaNpcGroupGen"][1]["MapId"] = 2002
rwtTask[tMoZuZhiXinTask[19]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Success
rwtTask[tMoZuZhiXinTask[19]]["StartAutoWay"] = {}
rwtTask[tMoZuZhiXinTask[19]]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tMoZuZhiXinTask[19]]["StartAutoWay"]["FindWayMapId"] = 2002
rwtTask[tMoZuZhiXinTask[19]]["StartAutoWay"]["FindWayPos"] = "9.37,3.80,7.80"
--rwtTask[tMoZuZhiXinTask[19]]["AwardId"] = 2000062
rwtTask[tMoZuZhiXinTask[19]]["Awards"] = {}
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"] = {}
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"][1] = {}
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000062
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMoZuZhiXinTask[19]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMoZuZhiXinTask[19]


rwtTask[tMoZuZhiXinTask[20]] = {}
rwtTask[tMoZuZhiXinTask[20]]["Title"] = tLuaText[LANGUAGE_CONFIG][20373] --参加神谕会议
rwtTask[tMoZuZhiXinTask[20]]["PreTaskId"] = tMoZuZhiXinTask[19]
rwtTask[tMoZuZhiXinTask[20]]["NextTaskId"] = nNextExploreTaskId
rwtTask[tMoZuZhiXinTask[20]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tMoZuZhiXinTask[20]]["DialogId"] = 10432
rwtTask[tMoZuZhiXinTask[20]]["TaskNpc"] = nNpc_Heli
rwtTask[tMoZuZhiXinTask[20]]["IsClickComplete"] = 0

--rwtTask[tMoZuZhiXinTask[20]]["AwardId"] = 2000063
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"] = {}
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][1] = {}
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_Npcgroup_Heli
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][2] = {}
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][2]["GenId"] = nGenID_Npcgroup_TeluodeInWanggong
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][2]["MapId"] = 1000
rwtTask[tMoZuZhiXinTask[20]]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel
rwtTask[tMoZuZhiXinTask[20]]["Awards"] = {}
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"] = {}
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"][1] = {}
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000063
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tMoZuZhiXinTask[20]]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tMoZuZhiXinTask[20]
rwtTask[tMoZuZhiXinTask[20]]["OpenMercenaryTask"] = {}
rwtTask[tMoZuZhiXinTask[20]]["OpenMercenaryTask"]["AreaId"] = 2001
rwtTask[tMoZuZhiXinTask[20]]["OpenMercenaryTask"]["TownId"] = 200106

--完成任务后刷新第二片区宝箱
rwtTask[tMoZuZhiXinTask[20]]["OpenAreaBox"] = 2003
--完成后接取四蹄神支线任务
rwtTask[tMoZuZhiXinTask[20]]["AcceptExtraTaskId"] = {70000,70108} --支线任务 四蹄神--阿米达铁律之认真


--rwtTask[tMoZuZhiXinTask[21]] = {}
--rwtTask[tMoZuZhiXinTask[21]]["Title"] = tLuaText[LANGUAGE_CONFIG][21233]
--rwtTask[tMoZuZhiXinTask[21]]["PreTaskId"] = tMoZuZhiXinTask[20]
--rwtTask[tMoZuZhiXinTask[21]]["NextTaskId"] = nNextExploreTaskId
--rwtTask[tMoZuZhiXinTask[21]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
--rwtTask[tMoZuZhiXinTask[21]]["NeedLevel"] = 32
--rwtTask[tMoZuZhiXinTask[21]]["LackDialogId"] = 11435
--rwtTask[tMoZuZhiXinTask[21]]["DialogId"] = 11436

