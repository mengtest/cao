--region *.lua
--Date
--鲸脊岛佣兵任务
--Nizw

--endregion

--**************************************数据****************************************
--月神森林任务城镇ID
local nMercenaryTownId = 200503
--龟长老的补品	将补品带给长老罗希
local tJingJiDaoMercenaryTask1 = {20822,20823,20824,20825,20826}
--归还人鱼之心	将人鱼之心归还蕾茵
local tJingJiDaoMercenaryTask2 = {20827,20828,20829,20830,20831}
--旅行的乌龟	拜访龟族旅行家
local tJingJiDaoMercenaryTask3 = {20832,20833,20834,20835,20836}
--珍贵的珊瑚	采集珊瑚（0/1）
local tJingJiDaoMercenaryTask4 = {20837,20838,20839,20840,20841}
--鲸脊遗骸之谜	前往调查鲸脊遗骸
local tJingJiDaoMercenaryTask5 = {20842,20843,20844,20845,20846}
--海洋结晶	采集海洋结晶（0/1）
local tJingJiDaoMercenaryTask6 = {20847,20848,20849,20850,20851} 
--驱赶鱼妖	驱赶鱼妖（0/1）
local tJingJiDaoMercenaryTask7 = {20852,20853,20854,20855,20856}
--水怪之患	清除作恶的水怪（0/1）
local tJingJiDaoMercenaryTask8 = {20857,20858,20859,20860,20861}
--守护深海宝藏	击败深海探宝者（0/1）
local tJingJiDaoMercenaryTask9 = {20862,20863,20864,20865,20866}
--联盟通缉令	追缉深海巨魔（0/1）
local tJingJiDaoMercenaryTask10 = {20867,20868,20869,20870,20871}


-------------对白ID-------------

local nAccept_Dialog = {}
      nAccept_Dialog[1]= 12134 
      nAccept_Dialog[2]= 12136
      nAccept_Dialog[3]= 12138
      nAccept_Dialog[4]= 12140
      nAccept_Dialog[5]= 12142
      nAccept_Dialog[6]= 12144
      nAccept_Dialog[7]= 12146
      nAccept_Dialog[8]= 12148
      nAccept_Dialog[9]= 12150
      nAccept_Dialog[10]=12152

local nDialog = {}
      nDialog[1] = 12135
      nDialog[2] = 12137
      nDialog[3] = 12139
      nDialog[4] = 12141
      nDialog[5] = 12143
      nDialog[6] = 12145
    --   nDialog[7] = 12147
    -- --   nDialog[8] = 12149
    --   nDialog[9] = 12151
    --   nDialog[10]= 12153  

-------------NPC组-----------------------

------NPC---------
--长老罗希
local nNpc_ZhangLaoLX       = 3433
local nNPCGroup_ZhangLaoLX  = 20436
local nGenID_ZhangLaoLX     = 20050050

--美人鱼蕾茵
local nNpc_RenYuLY          = 3436
local nBuild_RenYuLY        = 20439
local nGenID_Build_RenYuLY  = 20050053

--龟族男老头
local nNpc_GuiLaoTou        = 3668
local nNpcGroup_GuiLaoTou   = 20589
local nGenID_GuiLaoTou      = 20050189
rwtNpc[nNpc_GuiLaoTou] = rwtNpc[nNpc_GuiLaoTou] or {}
rwtNpcGroup[nNpcGroup_GuiLaoTou] = rwtNpcGroup[nNpcGroup_GuiLaoTou] or {}
rwtNpcGroup[nNpcGroup_GuiLaoTou]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_GuiLaoTou]["NpcId"] = nNpc_GuiLaoTou
---------采集物-----------
--珍贵的珊瑚
local nCollect_ShanHu       = 60324
local nGenId_ShanHu         = 20050190

--鲸脊遗骸
local nCollect_YiHai        = 60325
local nGenId_YiHai          = 20050191

--海洋结晶
local nCollect_JieJing      = 60326
local nGenId_JieJing        = 20050192
-------------Monster组-----------

--鱼妖
local nMonster_YuYao        = 900446
local nGenId_Monster_YuYao  = 20050193

--水怪
local nMonster_ShuiGuai     = 900447
local nGenId_Monster_ShuiGuai = 20050194

--深海探宝者
local nMonster_TanBaoZhe    = 900448
local nGenId_Monster_TanBaoZhe = 20050195

--深海巨魔
local nMonster_JuMo         = 900449
local nGenId_Monster_JuMo   = 20050196

-----------采集物--------
rwtNpcGroup[nCollect_ShanHu] = rwtNpcGroup[nCollect_ShanHu] or {}
rwtNpcGroup[nCollect_ShanHu]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nCollect_YiHai] = rwtNpcGroup[nCollect_YiHai] or {}
rwtNpcGroup[nCollect_YiHai]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nCollect_JieJing] = rwtNpcGroup[nCollect_JieJing] or {}
rwtNpcGroup[nCollect_JieJing]["Type"] = CONST_NPCGROUP_TYPE.Collect
--****************************************任务*******************************************
-------龟长老的补品------
--品质D
rwtTask[tJingJiDaoMercenaryTask1[1]] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask1[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[1]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask1[1]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[1]]["DialogId"] = nDialog[1]
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskNpc"] = nNpc_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask1[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayGroupId"] =nNPCGroup_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[1]]["StartAutoWay"]["FindWayGenId"] =nGenID_ZhangLaoLX
--品质C
rwtTask[tJingJiDaoMercenaryTask1[2]] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask1[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[2]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask1[2]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[2]]["DialogId"] = nDialog[1]
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskNpc"] = nNpc_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask1[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayGroupId"] =nNPCGroup_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[2]]["StartAutoWay"]["FindWayGenId"] =nGenID_ZhangLaoLX
--品质B
rwtTask[tJingJiDaoMercenaryTask1[3]] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask1[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[3]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask1[3]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[3]]["DialogId"] = nDialog[1]
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskNpc"] = nNpc_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask1[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayGroupId"] =nNPCGroup_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[3]]["StartAutoWay"]["FindWayGenId"] =nGenID_ZhangLaoLX
--品质A
rwtTask[tJingJiDaoMercenaryTask1[4]] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask1[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[4]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask1[4]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[4]]["DialogId"] = nDialog[1]
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskNpc"] = nNpc_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask1[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayGroupId"] =nNPCGroup_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[4]]["StartAutoWay"]["FindWayGenId"] =nGenID_ZhangLaoLX
--品质S
rwtTask[tJingJiDaoMercenaryTask1[5]] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21551]
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask1[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask1[5]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask1[5]]["AcceptDialogId"] = nAccept_Dialog[1]
rwtTask[tJingJiDaoMercenaryTask1[5]]["DialogId"] = nDialog[1]
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskNpc"] = nNpc_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask1[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayGroupId"] =nNPCGroup_ZhangLaoLX
rwtTask[tJingJiDaoMercenaryTask1[5]]["StartAutoWay"]["FindWayGenId"] =nGenID_ZhangLaoLX


-------归还人鱼之心------
--品质D
rwtTask[tJingJiDaoMercenaryTask2[1]] = {}
rwtTask[tJingJiDaoMercenaryTask2[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask2[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[1]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask2[1]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[1]]["DialogId"] = nDialog[2]
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskNpc"] = nNpc_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask2[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayGroupId"] = nBuild_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[1]]["StartAutoWay"]["FindWayGenId"] = nGenID_Build_RenYuLY

--品质C
rwtTask[tJingJiDaoMercenaryTask2[2]] = {}
rwtTask[tJingJiDaoMercenaryTask2[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask2[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[2]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask2[2]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[2]]["DialogId"] = nDialog[2]
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskNpc"] = nNpc_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask2[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayGroupId"] = nBuild_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[2]]["StartAutoWay"]["FindWayGenId"] = nGenID_Build_RenYuLY
--品质B
rwtTask[tJingJiDaoMercenaryTask2[3]] = {}
rwtTask[tJingJiDaoMercenaryTask2[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask2[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[3]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask2[3]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[3]]["DialogId"] = nDialog[2]
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskNpc"] = nNpc_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask2[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayGroupId"] = nBuild_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[3]]["StartAutoWay"]["FindWayGenId"] = nGenID_Build_RenYuLY
--品质A
rwtTask[tJingJiDaoMercenaryTask2[4]] = {}
rwtTask[tJingJiDaoMercenaryTask2[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask2[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[4]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask2[4]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[4]]["DialogId"] = nDialog[2]
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskNpc"] = nNpc_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask2[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayGroupId"] = nBuild_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[4]]["StartAutoWay"]["FindWayGenId"] = nGenID_Build_RenYuLY
--品质S
rwtTask[tJingJiDaoMercenaryTask2[5]] = {}
rwtTask[tJingJiDaoMercenaryTask2[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21552]
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask2[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask2[5]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask2[5]]["AcceptDialogId"] = nAccept_Dialog[2]
rwtTask[tJingJiDaoMercenaryTask2[5]]["DialogId"] = nDialog[2]
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskNpc"] = nNpc_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask2[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayGroupId"] = nBuild_RenYuLY
rwtTask[tJingJiDaoMercenaryTask2[5]]["StartAutoWay"]["FindWayGenId"] = nGenID_Build_RenYuLY

-------旅行的乌龟------
--品质D
rwtTask[tJingJiDaoMercenaryTask3[1]] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask3[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[1]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask3[1]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[1]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask3[1]]["TaskNpc"] = nNpc_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[1]]["StartAutoWay"]["FindWayGenId"] =nGenID_GuiLaoTou

--品质C
rwtTask[tJingJiDaoMercenaryTask3[2]] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask3[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[2]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask3[2]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[2]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask3[2]]["TaskNpc"] = nNpc_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[2]]["StartAutoWay"]["FindWayGenId"] =nGenID_GuiLaoTou

--品质B
rwtTask[tJingJiDaoMercenaryTask3[3]] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask3[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[3]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask3[3]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[3]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask3[3]]["TaskNpc"] = nNpc_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[3]]["StartAutoWay"]["FindWayGenId"] =nGenID_GuiLaoTou
--品质A
rwtTask[tJingJiDaoMercenaryTask3[4]] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask3[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[4]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask3[4]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[4]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask3[4]]["TaskNpc"] = nNpc_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[4]]["StartAutoWay"]["FindWayGenId"] =nGenID_GuiLaoTou

--品质S
rwtTask[tJingJiDaoMercenaryTask3[5]] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21553]
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tJingJiDaoMercenaryTask3[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask3[5]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask3[5]]["AcceptDialogId"] = nAccept_Dialog[3]
rwtTask[tJingJiDaoMercenaryTask3[5]]["DialogId"] = nDialog[3]
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask3[5]]["TaskNpc"] = nNpc_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenID_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask3[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask3[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GuiLaoTou
rwtTask[tJingJiDaoMercenaryTask3[5]]["StartAutoWay"]["FindWayGenId"] =nGenID_GuiLaoTou

-------珍贵的珊瑚------
--品质D
rwtTask[tJingJiDaoMercenaryTask4[1]] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask4[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[1]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask4[1]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[1]]["DialogId"] = nDialog[4]
rwtTask[tJingJiDaoMercenaryTask4[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask4[1]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[1]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu

--品质C
rwtTask[tJingJiDaoMercenaryTask4[2]] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask4[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[2]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask4[2]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[2]]["DialogId"] = nDialog[4]
rwtTask[tJingJiDaoMercenaryTask4[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask4[2]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[2]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu

--品质B
rwtTask[tJingJiDaoMercenaryTask4[3]] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask4[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[3]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask4[3]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[3]]["DialogId"] = nDialog[4]
rwtTask[tJingJiDaoMercenaryTask4[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask4[3]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[3]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu
--品质A
rwtTask[tJingJiDaoMercenaryTask4[4]] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask4[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[4]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask4[4]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[4]]["DialogId"] = nDialog[4]
rwtTask[tJingJiDaoMercenaryTask4[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask4[4]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[4]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu

--品质S
rwtTask[tJingJiDaoMercenaryTask4[5]] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21554]
rwtTask[tJingJiDaoMercenaryTask4[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask4[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask4[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask4[5]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask4[5]]["AcceptDialogId"] = nAccept_Dialog[4]
rwtTask[tJingJiDaoMercenaryTask4[5]]["DialogId"] = nDialog[4]
rwtTask[tJingJiDaoMercenaryTask4[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask4[5]]["ReqCollectId1"] = nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask4[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask4[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayMapId"] =2005
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ShanHu
rwtTask[tJingJiDaoMercenaryTask4[5]]["StartAutoWay"]["FindWayGenId"] =nGenId_ShanHu

-------鲸脊遗骸之谜------
--品质D
rwtTask[tJingJiDaoMercenaryTask5[1]] = {}
rwtTask[tJingJiDaoMercenaryTask5[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21555]
rwtTask[tJingJiDaoMercenaryTask5[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask5[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask5[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask5[1]]["AwardGroupId"] = 5
rwtTask[tJingJiDaoMercenaryTask5[1]]["AcceptDialogId"] = nAccept_Dialog[5]
rwtTask[tJingJiDaoMercenaryTask5[1]]["DialogId"] = nDialog[5]
rwtTask[tJingJiDaoMercenaryTask5[1]]["ReqCollectId1"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask5[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask5[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask5[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YiHai
rwtTask[tJingJiDaoMercenaryTask5[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask5[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask5[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask5[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask5[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[1]]["StartAutoWay"]["FindWayGroupId"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_YiHai

--品质C
rwtTask[tJingJiDaoMercenaryTask5[2]] = {}
rwtTask[tJingJiDaoMercenaryTask5[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21555]
rwtTask[tJingJiDaoMercenaryTask5[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask5[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask5[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask5[2]]["AwardGroupId"] = 5
rwtTask[tJingJiDaoMercenaryTask5[2]]["AcceptDialogId"] = nAccept_Dialog[5]
rwtTask[tJingJiDaoMercenaryTask5[2]]["DialogId"] = nDialog[5]
rwtTask[tJingJiDaoMercenaryTask5[2]]["ReqCollectId1"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask5[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask5[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask5[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YiHai
rwtTask[tJingJiDaoMercenaryTask5[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask5[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask5[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask5[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask5[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[2]]["StartAutoWay"]["FindWayGroupId"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_YiHai

--品质B
rwtTask[tJingJiDaoMercenaryTask5[3]] = {}
rwtTask[tJingJiDaoMercenaryTask5[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21555]
rwtTask[tJingJiDaoMercenaryTask5[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask5[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask5[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask5[3]]["AwardGroupId"] = 5
rwtTask[tJingJiDaoMercenaryTask5[3]]["AcceptDialogId"] = nAccept_Dialog[5]
rwtTask[tJingJiDaoMercenaryTask5[3]]["DialogId"] = nDialog[5]
rwtTask[tJingJiDaoMercenaryTask5[3]]["ReqCollectId1"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask5[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask5[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask5[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YiHai
rwtTask[tJingJiDaoMercenaryTask5[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask5[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask5[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask5[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask5[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[3]]["StartAutoWay"]["FindWayGroupId"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_YiHai

--品质A
rwtTask[tJingJiDaoMercenaryTask5[4]] = {}
rwtTask[tJingJiDaoMercenaryTask5[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21555]
rwtTask[tJingJiDaoMercenaryTask5[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask5[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask5[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask5[4]]["AwardGroupId"] = 5
rwtTask[tJingJiDaoMercenaryTask5[4]]["AcceptDialogId"] = nAccept_Dialog[5]
rwtTask[tJingJiDaoMercenaryTask5[4]]["DialogId"] = nDialog[5]
rwtTask[tJingJiDaoMercenaryTask5[4]]["ReqCollectId1"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask5[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask5[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask5[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YiHai
rwtTask[tJingJiDaoMercenaryTask5[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask5[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask5[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask5[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask5[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[4]]["StartAutoWay"]["FindWayGroupId"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_YiHai
--品质S
rwtTask[tJingJiDaoMercenaryTask5[5]] = {}
rwtTask[tJingJiDaoMercenaryTask5[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21555]
rwtTask[tJingJiDaoMercenaryTask5[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask5[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask5[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask5[5]]["AwardGroupId"] = 5
rwtTask[tJingJiDaoMercenaryTask5[5]]["AcceptDialogId"] = nAccept_Dialog[5]
rwtTask[tJingJiDaoMercenaryTask5[5]]["DialogId"] = nDialog[5]
rwtTask[tJingJiDaoMercenaryTask5[5]]["ReqCollectId1"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask5[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask5[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask5[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_YiHai
rwtTask[tJingJiDaoMercenaryTask5[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask5[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask5[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask5[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask5[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask5[5]]["StartAutoWay"]["FindWayGroupId"] = nCollect_YiHai
rwtTask[tJingJiDaoMercenaryTask5[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_YiHai

-------海洋结晶------
--品质D
rwtTask[tJingJiDaoMercenaryTask6[1]] = {}
rwtTask[tJingJiDaoMercenaryTask6[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21556]
rwtTask[tJingJiDaoMercenaryTask6[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask6[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask6[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask6[1]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask6[1]]["AcceptDialogId"] = nAccept_Dialog[6]
rwtTask[tJingJiDaoMercenaryTask6[1]]["DialogId"] = nDialog[6]
rwtTask[tJingJiDaoMercenaryTask6[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask6[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask6[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask6[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_JieJing
rwtTask[tJingJiDaoMercenaryTask6[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask6[1]]["ReqCollectId1"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[1]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask6[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask6[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask6[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[1]]["StartAutoWay"]["FindWayGroupId"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_JieJing

--品质C
rwtTask[tJingJiDaoMercenaryTask6[2]] = {}
rwtTask[tJingJiDaoMercenaryTask6[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21556]
rwtTask[tJingJiDaoMercenaryTask6[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask6[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask6[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask6[2]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask6[2]]["AcceptDialogId"] = nAccept_Dialog[6]
rwtTask[tJingJiDaoMercenaryTask6[2]]["DialogId"] = nDialog[6]
rwtTask[tJingJiDaoMercenaryTask6[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask6[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask6[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask6[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_JieJing
rwtTask[tJingJiDaoMercenaryTask6[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask6[2]]["ReqCollectId1"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[2]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask6[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask6[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask6[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[2]]["StartAutoWay"]["FindWayGroupId"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_JieJing

--品质B
rwtTask[tJingJiDaoMercenaryTask6[3]] = {}
rwtTask[tJingJiDaoMercenaryTask6[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21556]
rwtTask[tJingJiDaoMercenaryTask6[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask6[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask6[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask6[3]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask6[3]]["AcceptDialogId"] = nAccept_Dialog[6]
rwtTask[tJingJiDaoMercenaryTask6[3]]["DialogId"] = nDialog[6]
rwtTask[tJingJiDaoMercenaryTask6[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask6[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask6[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask6[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_JieJing
rwtTask[tJingJiDaoMercenaryTask6[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask6[3]]["ReqCollectId1"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[3]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask6[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask6[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask6[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[3]]["StartAutoWay"]["FindWayGroupId"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_JieJing

--品质A
rwtTask[tJingJiDaoMercenaryTask6[4]] = {}
rwtTask[tJingJiDaoMercenaryTask6[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21556]
rwtTask[tJingJiDaoMercenaryTask6[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask6[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask6[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask6[4]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask6[4]]["AcceptDialogId"] = nAccept_Dialog[6]
rwtTask[tJingJiDaoMercenaryTask6[4]]["DialogId"] = nDialog[6]
rwtTask[tJingJiDaoMercenaryTask6[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask6[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask6[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask6[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_JieJing
rwtTask[tJingJiDaoMercenaryTask6[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Completelete
rwtTask[tJingJiDaoMercenaryTask6[4]]["ReqCollectId1"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[4]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask6[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask6[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask6[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[4]]["StartAutoWay"]["FindWayGroupId"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_JieJing

--品质S
rwtTask[tJingJiDaoMercenaryTask6[5]] = {}
rwtTask[tJingJiDaoMercenaryTask6[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21556]
rwtTask[tJingJiDaoMercenaryTask6[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask6[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tJingJiDaoMercenaryTask6[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask6[5]]["AwardGroupId"] = 1
rwtTask[tJingJiDaoMercenaryTask6[5]]["AcceptDialogId"] = nAccept_Dialog[6]
rwtTask[tJingJiDaoMercenaryTask6[5]]["DialogId"] = nDialog[6]
rwtTask[tJingJiDaoMercenaryTask6[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask6[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask6[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask6[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_JieJing
rwtTask[tJingJiDaoMercenaryTask6[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask6[5]]["ReqCollectId1"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[5]]["IsClickComplete"] = 0
rwtTask[tJingJiDaoMercenaryTask6[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask6[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tJingJiDaoMercenaryTask6[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask6[5]]["StartAutoWay"]["FindWayGroupId"] = nCollect_JieJing
rwtTask[tJingJiDaoMercenaryTask6[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_JieJing

-------驱赶鱼妖------
--品质D
rwtTask[tJingJiDaoMercenaryTask7[1]] = {}
rwtTask[tJingJiDaoMercenaryTask7[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21557]
rwtTask[tJingJiDaoMercenaryTask7[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask7[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask7[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask7[1]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask7[1]]["AcceptDialogId"] = nAccept_Dialog[7]
rwtTask[tJingJiDaoMercenaryTask7[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask7[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask7[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask7[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask7[1]]["KillMonsterGroup1"]= nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[1]]["MonsterGroupGenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask7[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask7[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_YuYao

--品质C
rwtTask[tJingJiDaoMercenaryTask7[2]] = {}
rwtTask[tJingJiDaoMercenaryTask7[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21557]
rwtTask[tJingJiDaoMercenaryTask7[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask7[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask7[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask7[2]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask7[2]]["AcceptDialogId"] = nAccept_Dialog[7]
rwtTask[tJingJiDaoMercenaryTask7[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask7[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask7[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask7[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask7[2]]["KillMonsterGroup1"]= nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[2]]["MonsterGroupGenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask7[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask7[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_YuYao
--品质B
rwtTask[tJingJiDaoMercenaryTask7[3]] = {}
rwtTask[tJingJiDaoMercenaryTask7[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21557]
rwtTask[tJingJiDaoMercenaryTask7[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask7[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask7[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask7[3]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask7[3]]["AcceptDialogId"] = nAccept_Dialog[7]
rwtTask[tJingJiDaoMercenaryTask7[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask7[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask7[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask7[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask7[3]]["KillMonsterGroup1"]= nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[3]]["MonsterGroupGenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask7[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask7[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_YuYao
--品质A
rwtTask[tJingJiDaoMercenaryTask7[4]] = {}
rwtTask[tJingJiDaoMercenaryTask7[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21557]
rwtTask[tJingJiDaoMercenaryTask7[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask7[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask7[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask7[4]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask7[4]]["AcceptDialogId"] = nAccept_Dialog[7]
rwtTask[tJingJiDaoMercenaryTask7[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask7[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask7[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask7[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask7[4]]["KillMonsterGroup1"]= nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[4]]["MonsterGroupGenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask7[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask7[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_YuYao
--品质S

rwtTask[tJingJiDaoMercenaryTask7[5]] = {}
rwtTask[tJingJiDaoMercenaryTask7[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21557]
rwtTask[tJingJiDaoMercenaryTask7[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask7[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask7[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask7[5]]["AwardGroupId"] = 2
rwtTask[tJingJiDaoMercenaryTask7[5]]["AcceptDialogId"] = nAccept_Dialog[7]
rwtTask[tJingJiDaoMercenaryTask7[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask7[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask7[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask7[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask7[5]]["KillMonsterGroup1"]= nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[5]]["MonsterGroupGenId"] = nGenId_Monster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask7[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask7[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask7[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_YuYao
rwtTask[tJingJiDaoMercenaryTask7[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_YuYao


-------水怪之患------
--品质D
rwtTask[tJingJiDaoMercenaryTask8[1]] = {}
rwtTask[tJingJiDaoMercenaryTask8[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21558]
rwtTask[tJingJiDaoMercenaryTask8[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask8[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask8[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask8[1]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask8[1]]["AcceptDialogId"] = nAccept_Dialog[8]
rwtTask[tJingJiDaoMercenaryTask8[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask8[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask8[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask8[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask8[1]]["KillMonsterGroup1"]= nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[1]]["MonsterGroupGenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask8[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask8[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_ShuiGuai

--品质C
rwtTask[tJingJiDaoMercenaryTask8[2]] = {}
rwtTask[tJingJiDaoMercenaryTask8[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21558]
rwtTask[tJingJiDaoMercenaryTask8[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask8[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask8[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask8[2]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask8[2]]["AcceptDialogId"] = nAccept_Dialog[8]
rwtTask[tJingJiDaoMercenaryTask8[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask8[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask8[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask8[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask8[2]]["KillMonsterGroup1"]= nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[2]]["MonsterGroupGenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask8[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask8[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_ShuiGuai
--品质B
rwtTask[tJingJiDaoMercenaryTask8[3]] = {}
rwtTask[tJingJiDaoMercenaryTask8[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21558]
rwtTask[tJingJiDaoMercenaryTask8[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask8[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask8[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask8[3]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask8[3]]["AcceptDialogId"] = nAccept_Dialog[8]
rwtTask[tJingJiDaoMercenaryTask8[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask8[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask8[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask8[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask8[3]]["KillMonsterGroup1"]= nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[3]]["MonsterGroupGenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask8[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask8[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_ShuiGuai
--品质A
rwtTask[tJingJiDaoMercenaryTask8[4]] = {}
rwtTask[tJingJiDaoMercenaryTask8[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21558]
rwtTask[tJingJiDaoMercenaryTask8[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask8[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask8[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask8[4]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask8[4]]["AcceptDialogId"] = nAccept_Dialog[8]
rwtTask[tJingJiDaoMercenaryTask8[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask8[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask8[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask8[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask8[4]]["KillMonsterGroup1"]= nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[4]]["MonsterGroupGenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask8[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask8[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_ShuiGuai
--品质S
rwtTask[tJingJiDaoMercenaryTask8[5]] = {}
rwtTask[tJingJiDaoMercenaryTask8[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21558]
rwtTask[tJingJiDaoMercenaryTask8[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask8[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask8[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask8[5]]["AwardGroupId"] = 3
rwtTask[tJingJiDaoMercenaryTask8[5]]["AcceptDialogId"] = nAccept_Dialog[8]
rwtTask[tJingJiDaoMercenaryTask8[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask8[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask8[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask8[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask8[5]]["KillMonsterGroup1"]= nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[5]]["MonsterGroupGenId"] = nGenId_Monster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask8[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask8[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask8[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_ShuiGuai
rwtTask[tJingJiDaoMercenaryTask8[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_ShuiGuai



-------守护深海宝藏------
--品质D
rwtTask[tJingJiDaoMercenaryTask9[1]] = {}
rwtTask[tJingJiDaoMercenaryTask9[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21559]
rwtTask[tJingJiDaoMercenaryTask9[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask9[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask9[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask9[1]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask9[1]]["AcceptDialogId"] = nAccept_Dialog[9]
rwtTask[tJingJiDaoMercenaryTask9[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask9[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask9[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask9[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask9[1]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[1]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask9[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask9[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_TanBaoZhe

--品质C
rwtTask[tJingJiDaoMercenaryTask9[2]] = {}
rwtTask[tJingJiDaoMercenaryTask9[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21559]
rwtTask[tJingJiDaoMercenaryTask9[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask9[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask9[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask9[2]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask9[2]]["AcceptDialogId"] = nAccept_Dialog[9]
rwtTask[tJingJiDaoMercenaryTask9[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask9[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask9[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask9[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask9[2]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[2]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask9[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask9[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_TanBaoZhe
--品质B
rwtTask[tJingJiDaoMercenaryTask9[3]] = {}
rwtTask[tJingJiDaoMercenaryTask9[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21559]
rwtTask[tJingJiDaoMercenaryTask9[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask9[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask9[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask9[3]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask9[3]]["AcceptDialogId"] = nAccept_Dialog[9]
rwtTask[tJingJiDaoMercenaryTask9[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask9[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask9[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask9[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask9[3]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[3]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask9[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask9[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_TanBaoZhe
--品质A
rwtTask[tJingJiDaoMercenaryTask9[4]] = {}
rwtTask[tJingJiDaoMercenaryTask9[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21559]
rwtTask[tJingJiDaoMercenaryTask9[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask9[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask9[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask9[4]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask9[4]]["AcceptDialogId"] = nAccept_Dialog[9]
rwtTask[tJingJiDaoMercenaryTask9[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask9[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask9[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask9[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask9[4]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[4]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask9[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask9[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_TanBaoZhe
--品质S
rwtTask[tJingJiDaoMercenaryTask9[5]] = {}
rwtTask[tJingJiDaoMercenaryTask9[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21559]
rwtTask[tJingJiDaoMercenaryTask9[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask9[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask9[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask9[5]]["AwardGroupId"] = 4
rwtTask[tJingJiDaoMercenaryTask9[5]]["AcceptDialogId"] = nAccept_Dialog[9]
rwtTask[tJingJiDaoMercenaryTask9[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask9[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask9[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask9[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask9[5]]["KillMonsterGroup1" ]= nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[5]]["MonsterGroupGenId"] = nGenId_Monster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask9[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask9[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask9[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_TanBaoZhe
rwtTask[tJingJiDaoMercenaryTask9[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_TanBaoZhe


-------联盟通缉令------
--品质D
rwtTask[tJingJiDaoMercenaryTask10[1]] = {}
rwtTask[tJingJiDaoMercenaryTask10[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21560]
rwtTask[tJingJiDaoMercenaryTask10[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask10[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask10[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask10[1]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask10[1]]["AcceptDialogId"] = nAccept_Dialog[10]
rwtTask[tJingJiDaoMercenaryTask10[1]]["TaskQuality"] = 1
rwtTask[tJingJiDaoMercenaryTask10[1]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask10[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask10[1]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[1]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask10[1]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[1]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[1]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask10[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask10[1]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo

--品质C
rwtTask[tJingJiDaoMercenaryTask10[2]] = {}
rwtTask[tJingJiDaoMercenaryTask10[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21560]
rwtTask[tJingJiDaoMercenaryTask10[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask10[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask10[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask10[2]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask10[2]]["AcceptDialogId"] = nAccept_Dialog[10]
rwtTask[tJingJiDaoMercenaryTask10[2]]["TaskQuality"] = 2
rwtTask[tJingJiDaoMercenaryTask10[2]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask10[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask10[2]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[2]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask10[2]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[2]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[2]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask10[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask10[2]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
--品质B
rwtTask[tJingJiDaoMercenaryTask10[3]] = {}
rwtTask[tJingJiDaoMercenaryTask10[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21560]
rwtTask[tJingJiDaoMercenaryTask10[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask10[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask10[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask10[3]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask10[3]]["AcceptDialogId"] = nAccept_Dialog[10]
rwtTask[tJingJiDaoMercenaryTask10[3]]["TaskQuality"] = 3
rwtTask[tJingJiDaoMercenaryTask10[3]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask10[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask10[3]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[3]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask10[3]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[3]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[3]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask10[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask10[3]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
--品质A
rwtTask[tJingJiDaoMercenaryTask10[4]] = {}
rwtTask[tJingJiDaoMercenaryTask10[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21560]
rwtTask[tJingJiDaoMercenaryTask10[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask10[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask10[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask10[4]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask10[4]]["AcceptDialogId"] = nAccept_Dialog[10]
rwtTask[tJingJiDaoMercenaryTask10[4]]["TaskQuality"] = 4
rwtTask[tJingJiDaoMercenaryTask10[4]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask10[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask10[4]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[4]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask10[4]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[4]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[4]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask10[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask10[4]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
--品质S
rwtTask[tJingJiDaoMercenaryTask10[5]] = {}
rwtTask[tJingJiDaoMercenaryTask10[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21560]
rwtTask[tJingJiDaoMercenaryTask10[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tJingJiDaoMercenaryTask10[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tJingJiDaoMercenaryTask10[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tJingJiDaoMercenaryTask10[5]]["AwardGroupId"] = 6
rwtTask[tJingJiDaoMercenaryTask10[5]]["AcceptDialogId"] = nAccept_Dialog[10]
rwtTask[tJingJiDaoMercenaryTask10[5]]["TaskQuality"] = 5
rwtTask[tJingJiDaoMercenaryTask10[5]]["DynaNpcGroupGen"] = {}
rwtTask[tJingJiDaoMercenaryTask10[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tJingJiDaoMercenaryTask10[5]]["DynaNpcGroupGen"][1]["GenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[5]]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tJingJiDaoMercenaryTask10[5]]["KillMonsterGroup1" ]= nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[5]]["MonsterGroupGenId"] = nGenId_Monster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[5]]["StartAutoWay"] = {}
rwtTask[tJingJiDaoMercenaryTask10[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tJingJiDaoMercenaryTask10[5]]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tJingJiDaoMercenaryTask10[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_JuMo
rwtTask[tJingJiDaoMercenaryTask10[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_Monster_JuMo
