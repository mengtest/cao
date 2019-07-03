--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--月神森林佣兵任务

--endregion

--**************************************数据****************************************
--月神森林任务城镇ID
local nMercenaryTownId = 200303
--YueShen
--树人部落的协议
local tYueShenMercenaryTask1 = {20502,20503,20504,20505,20506}
--德鲁伊部落的物资
local tYueShenMercenaryTask2 = {20507,20508,20509,20510,20511}
--为树神注灵
local tYueShenMercenaryTask3 = {20512,20513,20514,20515,20516}
--盛开的月神花
local tYueShenMercenaryTask4 = {20517,20518,20519,20520,20521}
--协助德鲁伊守卫
local tYueShenMercenaryTask5 = {20522,20523,20524,20525,20526}
--追缉矿洞盗贼
local tYueShenMercenaryTask6 = {20527,20528,20529,20530,20531} 
--联盟通缉令
local tYueShenMercenaryTask7 = {20532,20533,20534,20535,20536}
--树神的起源
local tYueShenMercenaryTask8 = {20677,20678,20679,20680,20681}
--森林蜂乱
local tYueShenMercenaryTask9 = {20682,20683,20684,20685,20686}
--无节制的开采
local tYueShenMercenaryTask10 = {20687,20688,20689,20690,20691}


-------------对白ID-------------

local nAccept_Dialog1 = 11349 
local nDialog1 = 11350 
local nAccept_Dialog2 = 11351 
local nDialog2 = 11352 
local nAccept_Dialog3 = 11353 
local nDialog3 = 11354 
local nAccept_Dialog4 = 11355 
local nDialog4 = 11356 
local nAccept_Dialog5 = 11357 
local nDialog5 = 11358 
local nAccept_Dialog6 = 11359 
-- local nDialog6 = 11360 
local nAccept_Dialog7 = 11361 
--local nDialog7 = 11362 
local nAccept_Dialog8 = 11613 
local nDialog8 = 11614 
local nAccept_Dialog9 = 11615 
-- local nDialog9 = 11616 
local nAccept_Dialog10 = 11617
-- local nDialog10 = 11618  

-------------NPC组-----------------------

------NPC---------
--树人首领
local nNpc_ShuRenShouLin          = 3150
local nNpcGroup_ShuRenShouLin     = 20192
local nNpcGroup_Gen_ShuRenShouLin = 20030080

--德鲁伊首领
local nNpc_DeluyiShouLin          = 3156
local nNpcGroup_DeluyiShouLin     = 20198
local nNpcGroup_Gen_DeluyiShouLin = 20030086

--德鲁伊守卫
local nNpc_DeluyiShouWei          = 3155
local nNpcGroup_DeluyiShouWei     = 20197
local nNpcGroup_Gen_DeluyiShouWei = 20030085

--树神守护者
local nNpc_ShuShen= 3496
local nNpcGroup_ShuShen   =  20483
local nGenId_NpcGroup_ShuShen  = 20030484
---------采集物-----------
--注灵
local nCollect_ZhuLing = 60227
local nCollectGenId_ZhuLing = 20030401

--月神花
local nCollect_YueShenHua = 60228
local nCollectGenId_YueShenHua = 20030402

-------------Monster组-----------

--森林猎手 10051
local nMonster1 = 9000260
local nMonster_Group1 = 900343
local nMonster_Gen1 = 20030403
--采矿工兵 10046
local nMonster2 = 9000261
local nMonster_Group2 = 900344
local nMonster_Gen2 = 20030404
--荒原女巫 10054
local nMonster3 = 9000262
local nMonster_Group3 = 900345
local nMonster_Gen3 = 20030405
--枯叶蜂 10043
local nMonster4 = 9000297
local nMonster_Group4 = 900378
local nMonster_Gen4 = 20030510
--矮人矿工 5001
local nMonster5 = 9000298
local nMonster_Group5 = 900379
local nMonster_Gen5 = 20030511

-----------采集物--------
rwtNpcGroup[nCollect_ZhuLing] = rwtNpcGroup[nCollect_ZhuLing] or {}
rwtNpcGroup[nCollect_ZhuLing]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nCollect_YueShenHua] = rwtNpcGroup[nCollect_YueShenHua] or {}
rwtNpcGroup[nCollect_YueShenHua]["Type"] = CONST_NPCGROUP_TYPE.Collect

--****************************************任务*******************************************
-------树人部落的协议------
--品质D
rwtTask[tYueShenMercenaryTask1[1]] = {}
rwtTask[tYueShenMercenaryTask1[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21087]
rwtTask[tYueShenMercenaryTask1[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask1[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask1[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask1[1]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask1[1]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tYueShenMercenaryTask1[1]]["DialogId"] = nDialog1
rwtTask[tYueShenMercenaryTask1[1]]["TaskNpc"] = nNpc_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask1[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask1[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask1[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask1[1]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask1[1]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[1]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_Gen_ShuRenShouLin
--品质C
rwtTask[tYueShenMercenaryTask1[2]] = {}
rwtTask[tYueShenMercenaryTask1[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21088]
rwtTask[tYueShenMercenaryTask1[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask1[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask1[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask1[2]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask1[2]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tYueShenMercenaryTask1[2]]["DialogId"] = nDialog1
rwtTask[tYueShenMercenaryTask1[2]]["TaskNpc"] = nNpc_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask1[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask1[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask1[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask1[2]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask1[2]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[2]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_Gen_ShuRenShouLin
--品质B
rwtTask[tYueShenMercenaryTask1[3]] = {}
rwtTask[tYueShenMercenaryTask1[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21089]
rwtTask[tYueShenMercenaryTask1[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask1[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask1[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask1[3]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask1[3]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tYueShenMercenaryTask1[3]]["DialogId"] = nDialog1
rwtTask[tYueShenMercenaryTask1[3]]["TaskNpc"] = nNpc_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask1[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask1[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask1[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask1[3]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask1[3]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[3]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_Gen_ShuRenShouLin
--品质A
rwtTask[tYueShenMercenaryTask1[4]] = {}
rwtTask[tYueShenMercenaryTask1[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21090]
rwtTask[tYueShenMercenaryTask1[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask1[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask1[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask1[4]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask1[4]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tYueShenMercenaryTask1[4]]["DialogId"] = nDialog1
rwtTask[tYueShenMercenaryTask1[4]]["TaskNpc"] = nNpc_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask1[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask1[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask1[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask1[4]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask1[4]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[4]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_Gen_ShuRenShouLin
--品质S
rwtTask[tYueShenMercenaryTask1[5]] = {}
rwtTask[tYueShenMercenaryTask1[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21091]
rwtTask[tYueShenMercenaryTask1[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask1[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask1[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask1[5]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask1[5]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tYueShenMercenaryTask1[5]]["DialogId"] = nDialog1
rwtTask[tYueShenMercenaryTask1[5]]["TaskNpc"] = nNpc_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask1[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask1[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask1[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask1[5]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask1[5]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_ShuRenShouLin
rwtTask[tYueShenMercenaryTask1[5]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_Gen_ShuRenShouLin


-------德鲁伊部落的物资------
--品质D
rwtTask[tYueShenMercenaryTask2[1]] = {}
rwtTask[tYueShenMercenaryTask2[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21092]
rwtTask[tYueShenMercenaryTask2[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask2[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask2[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask2[1]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask2[1]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tYueShenMercenaryTask2[1]]["DialogId"] = nDialog2
rwtTask[tYueShenMercenaryTask2[1]]["TaskNpc"] = nNpc_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask2[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask2[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask2[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask2[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask2[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin

--品质C
rwtTask[tYueShenMercenaryTask2[2]] = {}
rwtTask[tYueShenMercenaryTask2[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21093]
rwtTask[tYueShenMercenaryTask2[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask2[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask2[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask2[2]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask2[2]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tYueShenMercenaryTask2[2]]["DialogId"] = nDialog2
rwtTask[tYueShenMercenaryTask2[2]]["TaskNpc"] = nNpc_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask2[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask2[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask2[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask2[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask2[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin
--品质B
rwtTask[tYueShenMercenaryTask2[3]] = {}
rwtTask[tYueShenMercenaryTask2[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21094]
rwtTask[tYueShenMercenaryTask2[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask2[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask2[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask2[3]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask2[3]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tYueShenMercenaryTask2[3]]["DialogId"] = nDialog2
rwtTask[tYueShenMercenaryTask2[3]]["TaskNpc"] = nNpc_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask2[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask2[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask2[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask2[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask2[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin
--品质A
rwtTask[tYueShenMercenaryTask2[4]] = {}
rwtTask[tYueShenMercenaryTask2[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21095]
rwtTask[tYueShenMercenaryTask2[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask2[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask2[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask2[4]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask2[4]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tYueShenMercenaryTask2[4]]["DialogId"] = nDialog2
rwtTask[tYueShenMercenaryTask2[4]]["TaskNpc"] = nNpc_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask2[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask2[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask2[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask2[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask2[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin
--品质S
rwtTask[tYueShenMercenaryTask2[5]] = {}
rwtTask[tYueShenMercenaryTask2[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21096]
rwtTask[tYueShenMercenaryTask2[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask2[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask2[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask2[5]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask2[5]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tYueShenMercenaryTask2[5]]["DialogId"] = nDialog2
rwtTask[tYueShenMercenaryTask2[5]]["TaskNpc"] = nNpc_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask2[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask2[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask2[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask2[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask2[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouLin
rwtTask[tYueShenMercenaryTask2[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouLin

-------为树神注灵------
--品质D
rwtTask[tYueShenMercenaryTask3[1]] = {}
rwtTask[tYueShenMercenaryTask3[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21097]
rwtTask[tYueShenMercenaryTask3[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask3[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tYueShenMercenaryTask3[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask3[1]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask3[1]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tYueShenMercenaryTask3[1]]["DialogId"] = nDialog3
rwtTask[tYueShenMercenaryTask3[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask3[1]]["ReqCollectId1"] = nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask3[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask3[1]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_ZhuLing
rwtTask[tYueShenMercenaryTask3[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask3[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask3[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask3[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask3[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask3[1]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask3[1]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[1]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_ZhuLing

--品质C
rwtTask[tYueShenMercenaryTask3[2]] = {}
rwtTask[tYueShenMercenaryTask3[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21098]
rwtTask[tYueShenMercenaryTask3[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask3[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tYueShenMercenaryTask3[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask3[2]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask3[2]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tYueShenMercenaryTask3[2]]["DialogId"] = nDialog3
rwtTask[tYueShenMercenaryTask3[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask3[2]]["ReqCollectId1"] = nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask3[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask3[2]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_ZhuLing
rwtTask[tYueShenMercenaryTask3[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask3[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask3[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask3[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask3[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask3[2]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask3[2]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[2]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_ZhuLing

--品质B
rwtTask[tYueShenMercenaryTask3[3]] = {}
rwtTask[tYueShenMercenaryTask3[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21099]
rwtTask[tYueShenMercenaryTask3[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask3[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tYueShenMercenaryTask3[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask3[3]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask3[3]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tYueShenMercenaryTask3[3]]["DialogId"] = nDialog3
rwtTask[tYueShenMercenaryTask3[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask3[3]]["ReqCollectId1"] = nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask3[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask3[3]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_ZhuLing
rwtTask[tYueShenMercenaryTask3[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask3[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask3[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask3[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask3[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask3[3]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask3[3]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[3]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_ZhuLing
--品质A
rwtTask[tYueShenMercenaryTask3[4]] = {}
rwtTask[tYueShenMercenaryTask3[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21100]
rwtTask[tYueShenMercenaryTask3[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask3[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tYueShenMercenaryTask3[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask3[4]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask3[4]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tYueShenMercenaryTask3[4]]["DialogId"] = nDialog3
rwtTask[tYueShenMercenaryTask3[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask3[4]]["ReqCollectId1"] = nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask3[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask3[4]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_ZhuLing
rwtTask[tYueShenMercenaryTask3[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask3[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask3[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask3[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask3[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask3[4]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask3[4]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[4]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_ZhuLing

--品质S
rwtTask[tYueShenMercenaryTask3[5]] = {}
rwtTask[tYueShenMercenaryTask3[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21101]
rwtTask[tYueShenMercenaryTask3[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask3[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tYueShenMercenaryTask3[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask3[5]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask3[5]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tYueShenMercenaryTask3[5]]["DialogId"] = nDialog3
rwtTask[tYueShenMercenaryTask3[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask3[5]]["ReqCollectId1"] = nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask3[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask3[5]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_ZhuLing
rwtTask[tYueShenMercenaryTask3[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask3[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask3[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask3[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask3[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask3[5]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask3[5]]["StartAutoWay"]["FindWayGroupId"] =nCollect_ZhuLing
rwtTask[tYueShenMercenaryTask3[5]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_ZhuLing

-------盛开的月神花------
--品质D
rwtTask[tYueShenMercenaryTask4[1]] = {}
rwtTask[tYueShenMercenaryTask4[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21102]
rwtTask[tYueShenMercenaryTask4[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask4[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYueShenMercenaryTask4[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask4[1]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask4[1]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tYueShenMercenaryTask4[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask4[1]]["ReqCollectId1"] = nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask4[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask4[1]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_YueShenHua
rwtTask[tYueShenMercenaryTask4[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask4[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask4[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask4[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask4[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask4[1]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask4[1]]["StartAutoWay"]["FindWayGroupId"] =nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[1]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_YueShenHua

--品质C
rwtTask[tYueShenMercenaryTask4[2]] = {}
rwtTask[tYueShenMercenaryTask4[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21103]
rwtTask[tYueShenMercenaryTask4[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask4[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYueShenMercenaryTask4[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask4[2]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask4[2]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tYueShenMercenaryTask4[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask4[2]]["ReqCollectId1"] = nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask4[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask4[2]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_YueShenHua
rwtTask[tYueShenMercenaryTask4[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask4[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask4[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask4[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask4[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask4[2]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask4[2]]["StartAutoWay"]["FindWayGroupId"] =nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[2]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_YueShenHua

--品质B
rwtTask[tYueShenMercenaryTask4[3]] = {}
rwtTask[tYueShenMercenaryTask4[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21104]
rwtTask[tYueShenMercenaryTask4[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask4[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYueShenMercenaryTask4[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask4[3]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask4[3]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tYueShenMercenaryTask4[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask4[3]]["ReqCollectId1"] = nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask4[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask4[3]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_YueShenHua
rwtTask[tYueShenMercenaryTask4[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask4[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask4[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask4[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask4[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask4[3]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask4[3]]["StartAutoWay"]["FindWayGroupId"] =nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[3]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_YueShenHua
--品质A
rwtTask[tYueShenMercenaryTask4[4]] = {}
rwtTask[tYueShenMercenaryTask4[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21105]
rwtTask[tYueShenMercenaryTask4[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask4[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYueShenMercenaryTask4[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask4[4]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask4[4]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tYueShenMercenaryTask4[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask4[4]]["ReqCollectId1"] = nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask4[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask4[4]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_YueShenHua
rwtTask[tYueShenMercenaryTask4[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask4[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask4[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask4[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask4[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask4[4]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask4[4]]["StartAutoWay"]["FindWayGroupId"] =nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[4]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_YueShenHua

--品质S
rwtTask[tYueShenMercenaryTask4[5]] = {}
rwtTask[tYueShenMercenaryTask4[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21106]
rwtTask[tYueShenMercenaryTask4[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask4[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[tYueShenMercenaryTask4[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask4[5]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask4[5]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tYueShenMercenaryTask4[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask4[5]]["ReqCollectId1"] = nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask4[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask4[5]]["DynaNpcGroupGen"][1]["GenId"] = nCollectGenId_YueShenHua
rwtTask[tYueShenMercenaryTask4[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask4[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask4[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask4[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask4[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tYueShenMercenaryTask4[5]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tYueShenMercenaryTask4[5]]["StartAutoWay"]["FindWayGroupId"] =nCollect_YueShenHua
rwtTask[tYueShenMercenaryTask4[5]]["StartAutoWay"]["FindWayGenId"] =nCollectGenId_YueShenHua

-------协助德鲁伊守卫------
--品质D
rwtTask[tYueShenMercenaryTask5[1]] = {}
rwtTask[tYueShenMercenaryTask5[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21107]
rwtTask[tYueShenMercenaryTask5[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask5[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask5[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask5[1]]["AwardGroupId"] = 5
rwtTask[tYueShenMercenaryTask5[1]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tYueShenMercenaryTask5[1]]["DialogId"] = nDialog5
rwtTask[tYueShenMercenaryTask5[1]]["TaskNpc"] = nNpc_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask5[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask5[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask5[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask5[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask5[1]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tYueShenMercenaryTask5[1]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask5[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask5[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask5[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask5[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouWei

--品质C
rwtTask[tYueShenMercenaryTask5[2]] = {}
rwtTask[tYueShenMercenaryTask5[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21108]
rwtTask[tYueShenMercenaryTask5[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask5[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask5[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask5[2]]["AwardGroupId"] = 5
rwtTask[tYueShenMercenaryTask5[2]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tYueShenMercenaryTask5[2]]["TaskNpc"] = nNpc_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[2]]["DialogId"] = nDialog5
rwtTask[tYueShenMercenaryTask5[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask5[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask5[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask5[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask5[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask5[2]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tYueShenMercenaryTask5[2]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask5[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask5[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask5[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask5[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouWei
--品质B
rwtTask[tYueShenMercenaryTask5[3]] = {}
rwtTask[tYueShenMercenaryTask5[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21109]
rwtTask[tYueShenMercenaryTask5[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask5[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask5[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask5[3]]["AwardGroupId"] = 5
rwtTask[tYueShenMercenaryTask5[3]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tYueShenMercenaryTask5[3]]["DialogId"] = nDialog5
rwtTask[tYueShenMercenaryTask5[3]]["TaskNpc"] = nNpc_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask5[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask5[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask5[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask5[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask5[3]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tYueShenMercenaryTask5[3]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask5[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask5[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask5[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask5[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouWei
--品质A
rwtTask[tYueShenMercenaryTask5[4]] = {}
rwtTask[tYueShenMercenaryTask5[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21110]
rwtTask[tYueShenMercenaryTask5[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask5[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask5[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask5[4]]["AwardGroupId"] = 5
rwtTask[tYueShenMercenaryTask5[4]]["TaskNpc"] = nNpc_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[4]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tYueShenMercenaryTask5[4]]["DialogId"] = nDialog5
rwtTask[tYueShenMercenaryTask5[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask5[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask5[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask5[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask5[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask5[4]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tYueShenMercenaryTask5[4]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask5[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask5[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask5[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask5[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouWei
--品质S
rwtTask[tYueShenMercenaryTask5[5]] = {}
rwtTask[tYueShenMercenaryTask5[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21111]
rwtTask[tYueShenMercenaryTask5[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask5[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask5[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask5[5]]["AwardGroupId"] = 5
rwtTask[tYueShenMercenaryTask5[5]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tYueShenMercenaryTask5[5]]["TaskNpc"] = nNpc_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[5]]["DialogId"] = nDialog5
rwtTask[tYueShenMercenaryTask5[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask5[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask5[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask5[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask5[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask5[5]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tYueShenMercenaryTask5[5]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tYueShenMercenaryTask5[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask5[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask5[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask5[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask5[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_DeluyiShouWei
rwtTask[tYueShenMercenaryTask5[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_Gen_DeluyiShouWei

-------追缉矿洞盗贼------
--品质D
rwtTask[tYueShenMercenaryTask6[1]] = {}
rwtTask[tYueShenMercenaryTask6[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21112]
rwtTask[tYueShenMercenaryTask6[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask6[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask6[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask6[1]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask6[1]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tYueShenMercenaryTask6[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask6[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask6[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask6[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask6[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask6[1]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tYueShenMercenaryTask6[1]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask6[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask6[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask6[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask6[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tYueShenMercenaryTask6[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2

--品质C
rwtTask[tYueShenMercenaryTask6[2]] = {}
rwtTask[tYueShenMercenaryTask6[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21113]
rwtTask[tYueShenMercenaryTask6[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask6[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask6[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask6[2]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask6[2]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tYueShenMercenaryTask6[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask6[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask6[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask6[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask6[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask6[2]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tYueShenMercenaryTask6[2]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask6[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask6[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask6[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask6[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tYueShenMercenaryTask6[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
--品质B
rwtTask[tYueShenMercenaryTask6[3]] = {}
rwtTask[tYueShenMercenaryTask6[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21114]
rwtTask[tYueShenMercenaryTask6[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask6[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask6[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask6[3]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask6[3]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tYueShenMercenaryTask6[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask6[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask6[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask6[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask6[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask6[3]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tYueShenMercenaryTask6[3]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask6[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask6[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask6[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask6[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tYueShenMercenaryTask6[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
--品质A
rwtTask[tYueShenMercenaryTask6[4]] = {}
rwtTask[tYueShenMercenaryTask6[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21115]
rwtTask[tYueShenMercenaryTask6[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask6[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask6[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask6[4]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask6[4]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tYueShenMercenaryTask6[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask6[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask6[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask6[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask6[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask6[4]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tYueShenMercenaryTask6[4]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask6[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask6[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask6[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask6[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tYueShenMercenaryTask6[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
--品质S
rwtTask[tYueShenMercenaryTask6[5]] = {}
rwtTask[tYueShenMercenaryTask6[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21116]
rwtTask[tYueShenMercenaryTask6[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask6[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask6[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask6[5]]["AwardGroupId"] = 2
rwtTask[tYueShenMercenaryTask6[5]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tYueShenMercenaryTask6[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask6[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask6[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask6[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask6[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask6[5]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tYueShenMercenaryTask6[5]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tYueShenMercenaryTask6[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask6[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask6[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask6[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask6[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tYueShenMercenaryTask6[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
-------联盟通缉令------
--品质D
rwtTask[tYueShenMercenaryTask7[1]] = {}
rwtTask[tYueShenMercenaryTask7[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21117]
rwtTask[tYueShenMercenaryTask7[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask7[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask7[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask7[1]]["AwardGroupId"] = 6
rwtTask[tYueShenMercenaryTask7[1]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tYueShenMercenaryTask7[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask7[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask7[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask7[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask7[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask7[1]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tYueShenMercenaryTask7[1]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask7[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask7[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask7[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask7[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tYueShenMercenaryTask7[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3

--品质C
rwtTask[tYueShenMercenaryTask7[2]] = {}
rwtTask[tYueShenMercenaryTask7[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21118]
rwtTask[tYueShenMercenaryTask7[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask7[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask7[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask7[2]]["AwardGroupId"] = 6
rwtTask[tYueShenMercenaryTask7[2]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tYueShenMercenaryTask7[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask7[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask7[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask7[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask7[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask7[2]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tYueShenMercenaryTask7[2]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask7[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask7[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask7[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask7[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tYueShenMercenaryTask7[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
--品质B
rwtTask[tYueShenMercenaryTask7[3]] = {}
rwtTask[tYueShenMercenaryTask7[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21119]
rwtTask[tYueShenMercenaryTask7[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask7[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask7[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask7[3]]["AwardGroupId"] = 6
rwtTask[tYueShenMercenaryTask7[3]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tYueShenMercenaryTask7[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask7[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask7[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask7[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask7[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask7[3]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tYueShenMercenaryTask7[3]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask7[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask7[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask7[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask7[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tYueShenMercenaryTask7[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
--品质A
rwtTask[tYueShenMercenaryTask7[4]] = {}
rwtTask[tYueShenMercenaryTask7[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21120]
rwtTask[tYueShenMercenaryTask7[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask7[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask7[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask7[4]]["AwardGroupId"] = 6
rwtTask[tYueShenMercenaryTask7[4]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tYueShenMercenaryTask7[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask7[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask7[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask7[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask7[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask7[4]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tYueShenMercenaryTask7[4]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask7[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask7[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask7[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask7[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tYueShenMercenaryTask7[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
--品质S

rwtTask[tYueShenMercenaryTask7[5]] = {}
rwtTask[tYueShenMercenaryTask7[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21121]
rwtTask[tYueShenMercenaryTask7[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask7[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask7[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask7[5]]["AwardGroupId"] = 6
rwtTask[tYueShenMercenaryTask7[5]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tYueShenMercenaryTask7[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask7[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask7[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask7[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask7[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask7[5]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tYueShenMercenaryTask7[5]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tYueShenMercenaryTask7[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask7[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask7[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask7[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask7[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tYueShenMercenaryTask7[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3


-------树神的起源------
--品质D
rwtTask[tYueShenMercenaryTask8[1]] = {}
rwtTask[tYueShenMercenaryTask8[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21355]
rwtTask[tYueShenMercenaryTask8[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask8[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask8[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask8[1]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask8[1]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tYueShenMercenaryTask8[1]]["DialogId"] = nDialog8
rwtTask[tYueShenMercenaryTask8[1]]["TaskNpc"] = nNpc_ShuShen
rwtTask[tYueShenMercenaryTask8[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask8[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask8[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask8[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask8[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask8[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuShen
rwtTask[tYueShenMercenaryTask8[1]]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_ShuShen

--品质C
rwtTask[tYueShenMercenaryTask8[2]] = {}
rwtTask[tYueShenMercenaryTask8[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21355]
rwtTask[tYueShenMercenaryTask8[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask8[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask8[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask8[2]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask8[2]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tYueShenMercenaryTask8[2]]["DialogId"] = nDialog8
rwtTask[tYueShenMercenaryTask8[2]]["TaskNpc"] = nNpc_ShuShen
rwtTask[tYueShenMercenaryTask8[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask8[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask8[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask8[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask8[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask8[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuShen
rwtTask[tYueShenMercenaryTask8[2]]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_ShuShen
--品质B
rwtTask[tYueShenMercenaryTask8[3]] = {}
rwtTask[tYueShenMercenaryTask8[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21355]
rwtTask[tYueShenMercenaryTask8[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask8[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask8[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask8[3]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask8[3]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tYueShenMercenaryTask8[3]]["DialogId"] = nDialog8
rwtTask[tYueShenMercenaryTask8[3]]["TaskNpc"] = nNpc_ShuShen
rwtTask[tYueShenMercenaryTask8[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask8[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask8[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask8[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask8[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask8[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuShen
rwtTask[tYueShenMercenaryTask8[3]]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_ShuShen
--品质A
rwtTask[tYueShenMercenaryTask8[4]] = {}
rwtTask[tYueShenMercenaryTask8[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21355]
rwtTask[tYueShenMercenaryTask8[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask8[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask8[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask8[4]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask8[4]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tYueShenMercenaryTask8[4]]["DialogId"] = nDialog8
rwtTask[tYueShenMercenaryTask8[4]]["TaskNpc"] = nNpc_ShuShen
rwtTask[tYueShenMercenaryTask8[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask8[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask8[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask8[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask8[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask8[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuShen
rwtTask[tYueShenMercenaryTask8[4]]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_ShuShen
--品质S
rwtTask[tYueShenMercenaryTask8[5]] = {}
rwtTask[tYueShenMercenaryTask8[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21355]
rwtTask[tYueShenMercenaryTask8[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask8[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tYueShenMercenaryTask8[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask8[5]]["AwardGroupId"] = 1
rwtTask[tYueShenMercenaryTask8[5]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tYueShenMercenaryTask8[5]]["DialogId"] = nDialog8
rwtTask[tYueShenMercenaryTask8[5]]["TaskNpc"] = nNpc_ShuShen
rwtTask[tYueShenMercenaryTask8[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask8[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask8[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask8[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tYueShenMercenaryTask8[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask8[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_ShuShen
rwtTask[tYueShenMercenaryTask8[5]]["StartAutoWay"]["FindWayGenId"] = nGenId_NpcGroup_ShuShen



-------森林蜂乱------
--品质D
rwtTask[tYueShenMercenaryTask9[1]] = {}
rwtTask[tYueShenMercenaryTask9[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21356]
rwtTask[tYueShenMercenaryTask9[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask9[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask9[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask9[1]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask9[1]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tYueShenMercenaryTask9[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask9[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask9[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask9[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask9[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask9[1]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tYueShenMercenaryTask9[1]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask9[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask9[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask9[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask9[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tYueShenMercenaryTask9[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4

--品质C
rwtTask[tYueShenMercenaryTask9[2]] = {}
rwtTask[tYueShenMercenaryTask9[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21356]
rwtTask[tYueShenMercenaryTask9[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask9[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask9[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask9[2]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask9[2]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tYueShenMercenaryTask9[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask9[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask9[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask9[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask9[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask9[2]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tYueShenMercenaryTask9[2]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask9[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask9[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask9[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask9[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tYueShenMercenaryTask9[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4
--品质B
rwtTask[tYueShenMercenaryTask9[3]] = {}
rwtTask[tYueShenMercenaryTask9[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21356]
rwtTask[tYueShenMercenaryTask9[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask9[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask9[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask9[3]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask9[3]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tYueShenMercenaryTask9[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask9[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask9[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask9[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask9[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask9[3]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tYueShenMercenaryTask9[3]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask9[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask9[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask9[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask9[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tYueShenMercenaryTask9[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4
--品质A
rwtTask[tYueShenMercenaryTask9[4]] = {}
rwtTask[tYueShenMercenaryTask9[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21356]
rwtTask[tYueShenMercenaryTask9[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask9[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask9[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask9[4]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask9[4]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tYueShenMercenaryTask9[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask9[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask9[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask9[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask9[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask9[4]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tYueShenMercenaryTask9[4]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask9[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask9[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask9[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask9[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tYueShenMercenaryTask9[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4
--品质S
rwtTask[tYueShenMercenaryTask9[5]] = {}
rwtTask[tYueShenMercenaryTask9[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21356]
rwtTask[tYueShenMercenaryTask9[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask9[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask9[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask9[5]]["AwardGroupId"] = 3
rwtTask[tYueShenMercenaryTask9[5]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tYueShenMercenaryTask9[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask9[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask9[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask9[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask9[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask9[5]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tYueShenMercenaryTask9[5]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tYueShenMercenaryTask9[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask9[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask9[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask9[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask9[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tYueShenMercenaryTask9[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4


-------无节制的开采------
--品质D
rwtTask[tYueShenMercenaryTask10[1]] = {}
rwtTask[tYueShenMercenaryTask10[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21357]
rwtTask[tYueShenMercenaryTask10[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask10[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask10[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask10[1]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask10[1]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tYueShenMercenaryTask10[1]]["TaskQuality"] = 1
rwtTask[tYueShenMercenaryTask10[1]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask10[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask10[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask10[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask10[1]]["KillMonsterGroup1" ]= nMonster_Group5
rwtTask[tYueShenMercenaryTask10[1]]["MonsterGroupGenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[1]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask10[1]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask10[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask10[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask10[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group5
rwtTask[tYueShenMercenaryTask10[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen5

--品质C
rwtTask[tYueShenMercenaryTask10[2]] = {}
rwtTask[tYueShenMercenaryTask10[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21357]
rwtTask[tYueShenMercenaryTask10[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask10[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask10[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask10[2]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask10[2]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tYueShenMercenaryTask10[2]]["TaskQuality"] = 2
rwtTask[tYueShenMercenaryTask10[2]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask10[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask10[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask10[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask10[2]]["KillMonsterGroup1" ]= nMonster_Group5
rwtTask[tYueShenMercenaryTask10[2]]["MonsterGroupGenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[2]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask10[2]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask10[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask10[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask10[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group5
rwtTask[tYueShenMercenaryTask10[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen5
--品质B
rwtTask[tYueShenMercenaryTask10[3]] = {}
rwtTask[tYueShenMercenaryTask10[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21357]
rwtTask[tYueShenMercenaryTask10[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask10[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask10[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask10[3]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask10[3]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tYueShenMercenaryTask10[3]]["TaskQuality"] = 3
rwtTask[tYueShenMercenaryTask10[3]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask10[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask10[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask10[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask10[3]]["KillMonsterGroup1" ]= nMonster_Group5
rwtTask[tYueShenMercenaryTask10[3]]["MonsterGroupGenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[3]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask10[3]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask10[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask10[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask10[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group5
rwtTask[tYueShenMercenaryTask10[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen5
--品质A
rwtTask[tYueShenMercenaryTask10[4]] = {}
rwtTask[tYueShenMercenaryTask10[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21357]
rwtTask[tYueShenMercenaryTask10[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask10[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask10[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask10[4]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask10[4]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tYueShenMercenaryTask10[4]]["TaskQuality"] = 4
rwtTask[tYueShenMercenaryTask10[4]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask10[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask10[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask10[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask10[4]]["KillMonsterGroup1" ]= nMonster_Group5
rwtTask[tYueShenMercenaryTask10[4]]["MonsterGroupGenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[4]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask10[4]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask10[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask10[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask10[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group5
rwtTask[tYueShenMercenaryTask10[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen5
--品质S
rwtTask[tYueShenMercenaryTask10[5]] = {}
rwtTask[tYueShenMercenaryTask10[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21357]
rwtTask[tYueShenMercenaryTask10[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tYueShenMercenaryTask10[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tYueShenMercenaryTask10[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tYueShenMercenaryTask10[5]]["AwardGroupId"] = 4
rwtTask[tYueShenMercenaryTask10[5]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tYueShenMercenaryTask10[5]]["TaskQuality"] = 5
rwtTask[tYueShenMercenaryTask10[5]]["DynaNpcGroupGen"] = {}
rwtTask[tYueShenMercenaryTask10[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tYueShenMercenaryTask10[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tYueShenMercenaryTask10[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tYueShenMercenaryTask10[5]]["KillMonsterGroup1" ]= nMonster_Group5
rwtTask[tYueShenMercenaryTask10[5]]["MonsterGroupGenId"] = nMonster_Gen5
rwtTask[tYueShenMercenaryTask10[5]]["IsClickComplete"] = 0
rwtTask[tYueShenMercenaryTask10[5]]["StartAutoWay"] = {}
rwtTask[tYueShenMercenaryTask10[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tYueShenMercenaryTask10[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tYueShenMercenaryTask10[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group5
rwtTask[tYueShenMercenaryTask10[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen5
