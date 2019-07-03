--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--三月边陲佣兵任务


--endregion

--**************************************数据****************************************
--三月边陲任务城镇ID
local nMercenaryTownId = 200302

--格蕾的礼物
local tSanYueMercenaryTask1 = {20437,20438,20439,20440,20441}
--矮人黄胡子的货物
local tSanYueMercenaryTask2 = {20442,20443,20444,20445,20446}
--调查月牙湖
local tSanYueMercenaryTask3 = {20447,20448,20449,20450,20451}
--收集毒蝎尾针
local tSanYueMercenaryTask4 = {20452,20453,20454,20455,20456}
--沙漠猎狐
local tSanYueMercenaryTask5 = {20457,20458,20459,20460,20461}
--守护巨人骸骨
local tSanYueMercenaryTask6 = {20462,20463,20464,20465,20466} 
--联盟通缉令
local tSanYueMercenaryTask7 = {20467,20468,20469,20470,20471}
--泰坦之谜
local tSanYueMercenaryTask8 = {20647,20648,20649,20650,20651}
--月牙湖的传说
local tSanYueMercenaryTask9 = {20652,20653,20654,20655,20656}
--考古学者
local tSanYueMercenaryTask10 = {20657,20658,20659,20660,20661}


-------------对白ID-------------

local nAccept_Dialog1 = 11319 
local nDialog1 = 11320 
local nAccept_Dialog2 = 11321 
local nDialog2 = 11322 
local nAccept_Dialog3 = 11323 
local nDialog3 = 11332 
local nAccept_Dialog4 = 11324 
--local nDialog4 = 10206 
local nAccept_Dialog5 = 11326 
--local nDialog5 = 10206 
local nAccept_Dialog6 = 11328 
--local nDialog6 = 10206 
local nAccept_Dialog7 = 11330 
--local nDialog7 = 10206 
local nAccept_Dialog8 = 11642 
local nDialog8 = 11643 
local nAccept_Dialog9 = 11644 
local nDialog9 = 11645 
local nAccept_Dialog10 = 11646 
local nDialog10 = 11647 
-------------NPC组-----------------------

------NPC---------
local nNpc_GeLei = 3123
local nNpcGroup_GeLei = 20159         --格蕾（原有）
local nNpcGroup_GeLei_GenId = 20030017

local nNpc_Huang = 3121 
local nNpcGroup_Huang = 20157         --黄胡子(原有)
local nNpcGroup_Huang_GenId = 2001441       


local nNpc_KaoGuXueJia = 3651  
local nNpcGroup_KaoGuXueJia =  20580     --考古学家
local nNpcGroup_KaoGuXueJia_GenId = 20030519     
--考古学家
rwtNpc[nNpc_KaoGuXueJia] = rwtNpc[nNpc_KaoGuXueJia] or {}
rwtNpcGroup[nNpcGroup_KaoGuXueJia] = rwtNpcGroup[nNpcGroup_KaoGuXueJia] or {} 
rwtNpcGroup[nNpcGroup_KaoGuXueJia]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroup_KaoGuXueJia]["NpcId"] = nNpc_KaoGuXueJia

    
---------采集物-----------
--采集
local nCollect1 = 60223
local nCollect_GenId = 20030390

-------------Monster组-----------

--草原蝎子
local nMonster1 = 9000246
local nMonster_Group1 = 900329
local nMonster_Gen1 = 20030391
--神秘兽
local nMonster2 = 9000247
local nMonster_Group2 = 900330
local nMonster_Gen2 = 20030392
--武装熊人战士
local nMonster3 = 9000248
local nMonster_Group3 = 900331
local nMonster_Gen3 = 20030393
--要塞守卫官
local nMonster4 = 9000249
local nMonster_Group4 = 900332
local nMonster_Gen4 = 20030394

local nMonsterAnlei_Xie_Gen_1 = 20030501
local nMonsterAnlei_Xie_Gen_2 = 20030502
-----------采集物--------
rwtNpcGroup[nCollect1] = rwtNpcGroup[nCollect1] or {}
rwtNpcGroup[nCollect1]["Type"] = CONST_NPCGROUP_TYPE.Collect


-----------陷阱--------
local  nTrap_1 = 30507
local  nTrap_2 = 30508
local  nTrap_End = 30509
local nGen_Trap_1 = 20030503
local nGen_Trap_2 = 20030504
local nGen_Trap_End = 20030505

rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_1]["Awards"] = {}  
rwtNpcGroup[nTrap_1]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["DynDelete"] = {nGen_Trap_1}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_1]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {nDialog10}

--rwtDialog[nDialog10] = rwtDialog[nDialog10] or {}
--rwtDialog[nDialog10]["DialogEndInit"] = {}
--rwtDialog[nDialog10]["DialogEndInit"]["Events"] = {}
--rwtDialog[nDialog10]["DialogEndInit"]["Events"][1] = {}
--rwtDialog[nDialog10]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
--rwtDialog[nDialog10]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterAnlei_Xie_Gen_1

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_2]["Awards"] = {}  
rwtNpcGroup[nTrap_2]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["DynDelete"] = {nGen_Trap_2}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"] = {}
rwtNpcGroup[nTrap_2]["Awards"]["Events"][1]["OpenDialog"]["tDialog"] = {nDialog10}

rwtNpcGroup[nTrap_End] = rwtNpcGroup[nTrap_End] or {}
rwtNpcGroup[nTrap_End]["Type"] = CONST_NPCGROUP_TYPE.Trap

-----------位置--------
local nPos_JiuGuan = "-135.50,0.153,-41.2"
local sPos_Escort_Kaogu = "-214.54,0.41,-26.63"
--****************************************任务*******************************************
-------格蕾的礼物------
--品质D
rwtTask[tSanYueMercenaryTask1[1]] = {}
rwtTask[tSanYueMercenaryTask1[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21197]--"格蕾的礼物"
rwtTask[tSanYueMercenaryTask1[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask1[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask1[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask1[1]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask1[1]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tSanYueMercenaryTask1[1]]["DialogId"] = nDialog1
rwtTask[tSanYueMercenaryTask1[1]]["TaskNpc"] = nNpc_GeLei
rwtTask[tSanYueMercenaryTask1[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask1[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask1[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask1[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask1[1]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask1[1]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GeLei
rwtTask[tSanYueMercenaryTask1[1]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GeLei_GenId
--品质C
rwtTask[tSanYueMercenaryTask1[2]] = {}
rwtTask[tSanYueMercenaryTask1[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21197]--"格蕾的礼物"
rwtTask[tSanYueMercenaryTask1[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask1[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask1[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask1[2]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask1[2]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tSanYueMercenaryTask1[2]]["DialogId"] = nDialog1
rwtTask[tSanYueMercenaryTask1[2]]["TaskNpc"] = nNpc_GeLei
rwtTask[tSanYueMercenaryTask1[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask1[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask1[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask1[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask1[2]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask1[2]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GeLei
rwtTask[tSanYueMercenaryTask1[2]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GeLei_GenId
--品质B
rwtTask[tSanYueMercenaryTask1[3]] = {}
rwtTask[tSanYueMercenaryTask1[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21197]--"格蕾的礼物"
rwtTask[tSanYueMercenaryTask1[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask1[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask1[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask1[3]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask1[3]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tSanYueMercenaryTask1[3]]["DialogId"] = nDialog1
rwtTask[tSanYueMercenaryTask1[3]]["TaskNpc"] = nNpc_GeLei
rwtTask[tSanYueMercenaryTask1[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask1[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask1[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask1[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask1[3]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask1[3]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GeLei
rwtTask[tSanYueMercenaryTask1[3]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GeLei_GenId
--品质A
rwtTask[tSanYueMercenaryTask1[4]] = {}
rwtTask[tSanYueMercenaryTask1[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21197]--"格蕾的礼物"
rwtTask[tSanYueMercenaryTask1[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask1[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask1[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask1[4]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask1[4]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tSanYueMercenaryTask1[4]]["DialogId"] = nDialog1
rwtTask[tSanYueMercenaryTask1[4]]["TaskNpc"] = nNpc_GeLei
rwtTask[tSanYueMercenaryTask1[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask1[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask1[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask1[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask1[4]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask1[4]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GeLei
rwtTask[tSanYueMercenaryTask1[4]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GeLei_GenId
--品质S
rwtTask[tSanYueMercenaryTask1[5]] = {}
rwtTask[tSanYueMercenaryTask1[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21197]--"格蕾的礼物"
rwtTask[tSanYueMercenaryTask1[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask1[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask1[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask1[5]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask1[5]]["AcceptDialogId"] = nAccept_Dialog1
rwtTask[tSanYueMercenaryTask1[5]]["DialogId"] = nDialog1
rwtTask[tSanYueMercenaryTask1[5]]["TaskNpc"] = nNpc_GeLei
rwtTask[tSanYueMercenaryTask1[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask1[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask1[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask1[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask1[5]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask1[5]]["StartAutoWay"]["FindWayGroupId"] =nNpcGroup_GeLei
rwtTask[tSanYueMercenaryTask1[5]]["StartAutoWay"]["FindWayGenId"] =nNpcGroup_GeLei_GenId


-------矮人黄胡子的货物------
--品质D
rwtTask[tSanYueMercenaryTask2[1]] = {}
rwtTask[tSanYueMercenaryTask2[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21198]--"矮人黄胡子的货物"
rwtTask[tSanYueMercenaryTask2[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask2[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask2[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask2[1]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask2[1]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tSanYueMercenaryTask2[1]]["DialogId"] = nDialog2
rwtTask[tSanYueMercenaryTask2[1]]["TaskNpc"] = nNpc_Huang
rwtTask[tSanYueMercenaryTask2[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask2[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask2[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask2[1]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tSanYueMercenaryTask2[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask2[1]]["StartAutoWay"]["FindWayPos"] = nPos_JiuGuan
--品质C
rwtTask[tSanYueMercenaryTask2[2]] = {}
rwtTask[tSanYueMercenaryTask2[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21198]--"矮人黄胡子的货物"
rwtTask[tSanYueMercenaryTask2[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask2[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask2[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask2[2]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask2[2]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tSanYueMercenaryTask2[2]]["DialogId"] = nDialog2
rwtTask[tSanYueMercenaryTask2[2]]["TaskNpc"] = nNpc_Huang
rwtTask[tSanYueMercenaryTask2[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask2[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask2[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask2[2]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tSanYueMercenaryTask2[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask2[2]]["StartAutoWay"]["FindWayPos"] = nPos_JiuGuan
--品质B
rwtTask[tSanYueMercenaryTask2[3]] = {}
rwtTask[tSanYueMercenaryTask2[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21198]--"矮人黄胡子的货物"
rwtTask[tSanYueMercenaryTask2[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask2[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask2[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask2[3]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask2[3]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tSanYueMercenaryTask2[3]]["DialogId"] = nDialog2
rwtTask[tSanYueMercenaryTask2[3]]["TaskNpc"] = nNpc_Huang
rwtTask[tSanYueMercenaryTask2[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask2[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask2[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask2[3]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tSanYueMercenaryTask2[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask2[3]]["StartAutoWay"]["FindWayPos"] = nPos_JiuGuan
--品质A
rwtTask[tSanYueMercenaryTask2[4]] = {}
rwtTask[tSanYueMercenaryTask2[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21198]--"矮人黄胡子的货物"
rwtTask[tSanYueMercenaryTask2[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask2[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask2[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask2[4]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask2[4]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tSanYueMercenaryTask2[4]]["DialogId"] = nDialog2
rwtTask[tSanYueMercenaryTask2[4]]["TaskNpc"] = nNpc_Huang
rwtTask[tSanYueMercenaryTask2[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask2[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask2[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask2[4]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tSanYueMercenaryTask2[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask2[4]]["StartAutoWay"]["FindWayPos"] = nPos_JiuGuan
--品质S
rwtTask[tSanYueMercenaryTask2[5]] = {}
rwtTask[tSanYueMercenaryTask2[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21198]--"矮人黄胡子的货物"
rwtTask[tSanYueMercenaryTask2[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask2[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask2[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask2[5]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask2[5]]["AcceptDialogId"] = nAccept_Dialog2
rwtTask[tSanYueMercenaryTask2[5]]["DialogId"] = nDialog2
rwtTask[tSanYueMercenaryTask2[5]]["TaskNpc"] = nNpc_Huang
rwtTask[tSanYueMercenaryTask2[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask2[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask2[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask2[5]]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[tSanYueMercenaryTask2[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask2[5]]["StartAutoWay"]["FindWayPos"] = nPos_JiuGuan

-------调查月牙湖------
--品质D
rwtTask[tSanYueMercenaryTask3[1]] = {}
rwtTask[tSanYueMercenaryTask3[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21199]--"调查月牙湖"
rwtTask[tSanYueMercenaryTask3[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask3[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSanYueMercenaryTask3[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask3[1]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask3[1]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tSanYueMercenaryTask3[1]]["DialogId"] = nDialog3
rwtTask[tSanYueMercenaryTask3[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask3[1]]["ReqCollectId1"] = nCollect1
rwtTask[tSanYueMercenaryTask3[1]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask3[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask3[1]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId
rwtTask[tSanYueMercenaryTask3[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask3[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask3[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask3[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask3[1]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask3[1]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask3[1]]["StartAutoWay"]["FindWayGroupId"] =nCollect1
rwtTask[tSanYueMercenaryTask3[1]]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId

--品质C
rwtTask[tSanYueMercenaryTask3[2]] = {}
rwtTask[tSanYueMercenaryTask3[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21199]--"调查月牙湖"
rwtTask[tSanYueMercenaryTask3[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask3[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSanYueMercenaryTask3[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask3[2]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask3[2]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tSanYueMercenaryTask3[2]]["DialogId"] = nDialog3
rwtTask[tSanYueMercenaryTask3[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask3[2]]["ReqCollectId1"] = nCollect1
rwtTask[tSanYueMercenaryTask3[2]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask3[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask3[2]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId
rwtTask[tSanYueMercenaryTask3[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask3[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask3[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask3[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask3[2]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask3[2]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask3[2]]["StartAutoWay"]["FindWayGroupId"] =nCollect1
rwtTask[tSanYueMercenaryTask3[2]]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId

--品质B
rwtTask[tSanYueMercenaryTask3[3]] = {}
rwtTask[tSanYueMercenaryTask3[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21199]--"调查月牙湖"
rwtTask[tSanYueMercenaryTask3[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask3[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSanYueMercenaryTask3[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask3[3]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask3[3]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tSanYueMercenaryTask3[3]]["DialogId"] = nDialog3
rwtTask[tSanYueMercenaryTask3[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask3[3]]["ReqCollectId1"] = nCollect1
rwtTask[tSanYueMercenaryTask3[3]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask3[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask3[3]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId
rwtTask[tSanYueMercenaryTask3[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask3[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask3[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask3[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask3[3]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask3[3]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask3[3]]["StartAutoWay"]["FindWayGroupId"] =nCollect1
rwtTask[tSanYueMercenaryTask3[3]]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId
--品质A
rwtTask[tSanYueMercenaryTask3[4]] = {}
rwtTask[tSanYueMercenaryTask3[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21199]--"调查月牙湖"
rwtTask[tSanYueMercenaryTask3[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask3[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSanYueMercenaryTask3[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask3[4]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask3[4]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tSanYueMercenaryTask3[4]]["DialogId"] = nDialog3
rwtTask[tSanYueMercenaryTask3[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask3[4]]["ReqCollectId1"] = nCollect1
rwtTask[tSanYueMercenaryTask3[4]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask3[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask3[4]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId
rwtTask[tSanYueMercenaryTask3[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask3[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask3[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask3[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask3[4]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask3[4]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask3[4]]["StartAutoWay"]["FindWayGroupId"] =nCollect1
rwtTask[tSanYueMercenaryTask3[4]]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId

--品质S
rwtTask[tSanYueMercenaryTask3[5]] = {}
rwtTask[tSanYueMercenaryTask3[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21199]--"调查月牙湖"
rwtTask[tSanYueMercenaryTask3[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask3[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tSanYueMercenaryTask3[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask3[5]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask3[5]]["AcceptDialogId"] = nAccept_Dialog3
rwtTask[tSanYueMercenaryTask3[5]]["DialogId"] = nDialog3
rwtTask[tSanYueMercenaryTask3[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask3[5]]["ReqCollectId1"] = nCollect1
rwtTask[tSanYueMercenaryTask3[5]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask3[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask3[5]]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId
rwtTask[tSanYueMercenaryTask3[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask3[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask3[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask3[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask3[5]]["StartAutoWay"]["FindWayTypeId"]=1
rwtTask[tSanYueMercenaryTask3[5]]["StartAutoWay"]["FindWayMapId"] =2003
rwtTask[tSanYueMercenaryTask3[5]]["StartAutoWay"]["FindWayGroupId"] =nCollect1
rwtTask[tSanYueMercenaryTask3[5]]["StartAutoWay"]["FindWayGenId"] =nCollect_GenId

-------收集毒蝎尾针------
--品质D
rwtTask[tSanYueMercenaryTask4[1]] = {}
rwtTask[tSanYueMercenaryTask4[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21200]--"收集毒蝎尾针"
rwtTask[tSanYueMercenaryTask4[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask4[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask4[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask4[1]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask4[1]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tSanYueMercenaryTask4[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask4[1]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask4[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask4[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask4[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask4[1]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tSanYueMercenaryTask4[1]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask4[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask4[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask4[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask4[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group1
rwtTask[tSanYueMercenaryTask4[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen1
--品质C
rwtTask[tSanYueMercenaryTask4[2]] = {}
rwtTask[tSanYueMercenaryTask4[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21200]--"收集毒蝎尾针"
rwtTask[tSanYueMercenaryTask4[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask4[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask4[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask4[2]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask4[2]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tSanYueMercenaryTask4[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask4[2]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask4[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask4[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask4[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask4[2]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tSanYueMercenaryTask4[2]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask4[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask4[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask4[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask4[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group1
rwtTask[tSanYueMercenaryTask4[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen1
--品质B
rwtTask[tSanYueMercenaryTask4[3]] = {}
rwtTask[tSanYueMercenaryTask4[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21200]--"收集毒蝎尾针"
rwtTask[tSanYueMercenaryTask4[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask4[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask4[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask4[3]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask4[3]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tSanYueMercenaryTask4[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask4[3]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask4[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask4[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask4[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask4[3]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tSanYueMercenaryTask4[3]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask4[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask4[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask4[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask4[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group1
rwtTask[tSanYueMercenaryTask4[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen1
--品质A
rwtTask[tSanYueMercenaryTask4[4]] = {}
rwtTask[tSanYueMercenaryTask4[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21200]--"收集毒蝎尾针"
rwtTask[tSanYueMercenaryTask4[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask4[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask4[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask4[4]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask4[4]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tSanYueMercenaryTask4[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask4[4]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask4[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask4[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask4[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask4[4]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tSanYueMercenaryTask4[4]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask4[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask4[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask4[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask4[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group1
rwtTask[tSanYueMercenaryTask4[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen1
--品质S
rwtTask[tSanYueMercenaryTask4[5]] = {}
rwtTask[tSanYueMercenaryTask4[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21200]--"收集毒蝎尾针"
rwtTask[tSanYueMercenaryTask4[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask4[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask4[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask4[5]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask4[5]]["AcceptDialogId"] = nAccept_Dialog4
rwtTask[tSanYueMercenaryTask4[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask4[5]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask4[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask4[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask4[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask4[5]]["KillMonsterGroup1" ]= nMonster_Group1
rwtTask[tSanYueMercenaryTask4[5]]["MonsterGroupGenId"] = nMonster_Gen1
rwtTask[tSanYueMercenaryTask4[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask4[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask4[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask4[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask4[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group1
rwtTask[tSanYueMercenaryTask4[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen1
-------沙漠猎狐------
--品质D
rwtTask[tSanYueMercenaryTask5[1]] = {}
rwtTask[tSanYueMercenaryTask5[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21201]--"沙漠猎狐"
rwtTask[tSanYueMercenaryTask5[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask5[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask5[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask5[1]]["AwardGroupId"] = 5
rwtTask[tSanYueMercenaryTask5[1]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tSanYueMercenaryTask5[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask5[1]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask5[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask5[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask5[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask5[1]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tSanYueMercenaryTask5[1]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask5[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask5[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask5[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask5[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tSanYueMercenaryTask5[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2

--品质C
rwtTask[tSanYueMercenaryTask5[2]] = {}
rwtTask[tSanYueMercenaryTask5[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21201]--"沙漠猎狐"
rwtTask[tSanYueMercenaryTask5[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask5[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask5[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask5[2]]["AwardGroupId"] = 5
rwtTask[tSanYueMercenaryTask5[2]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tSanYueMercenaryTask5[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask5[2]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask5[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask5[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask5[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask5[2]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tSanYueMercenaryTask5[2]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask5[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask5[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask5[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask5[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tSanYueMercenaryTask5[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
--品质B
rwtTask[tSanYueMercenaryTask5[3]] = {}
rwtTask[tSanYueMercenaryTask5[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21201]--"沙漠猎狐"
rwtTask[tSanYueMercenaryTask5[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask5[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask5[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask5[3]]["AwardGroupId"] = 5
rwtTask[tSanYueMercenaryTask5[3]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tSanYueMercenaryTask5[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask5[3]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask5[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask5[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask5[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask5[3]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tSanYueMercenaryTask5[3]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask5[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask5[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask5[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask5[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tSanYueMercenaryTask5[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
--品质A
rwtTask[tSanYueMercenaryTask5[4]] = {}
rwtTask[tSanYueMercenaryTask5[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21201]--"沙漠猎狐"
rwtTask[tSanYueMercenaryTask5[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask5[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask5[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask5[4]]["AwardGroupId"] = 5
rwtTask[tSanYueMercenaryTask5[4]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tSanYueMercenaryTask5[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask5[4]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask5[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask5[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask5[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask5[4]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tSanYueMercenaryTask5[4]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask5[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask5[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask5[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask5[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tSanYueMercenaryTask5[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2
--品质S
rwtTask[tSanYueMercenaryTask5[5]] = {}
rwtTask[tSanYueMercenaryTask5[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21201]--"沙漠猎狐"
rwtTask[tSanYueMercenaryTask5[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask5[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask5[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask5[5]]["AwardGroupId"] = 5
rwtTask[tSanYueMercenaryTask5[5]]["AcceptDialogId"] = nAccept_Dialog5
rwtTask[tSanYueMercenaryTask5[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask5[5]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask5[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask5[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask5[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask5[5]]["KillMonsterGroup1" ]= nMonster_Group2
rwtTask[tSanYueMercenaryTask5[5]]["MonsterGroupGenId"] = nMonster_Gen2
rwtTask[tSanYueMercenaryTask5[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask5[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask5[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask5[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask5[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group2
rwtTask[tSanYueMercenaryTask5[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen2

-------守护巨人骸骨------
--品质D
rwtTask[tSanYueMercenaryTask6[1]] = {}
rwtTask[tSanYueMercenaryTask6[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21202]--"守护巨人骸骨"
rwtTask[tSanYueMercenaryTask6[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask6[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask6[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask6[1]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask6[1]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tSanYueMercenaryTask6[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask6[1]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask6[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask6[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask6[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask6[1]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tSanYueMercenaryTask6[1]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask6[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask6[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask6[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask6[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tSanYueMercenaryTask6[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3

--品质C
rwtTask[tSanYueMercenaryTask6[2]] = {}
rwtTask[tSanYueMercenaryTask6[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21202]--"守护巨人骸骨"
rwtTask[tSanYueMercenaryTask6[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask6[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask6[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask6[2]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask6[2]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tSanYueMercenaryTask6[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask6[2]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask6[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask6[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask6[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask6[2]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tSanYueMercenaryTask6[2]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask6[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask6[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask6[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask6[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tSanYueMercenaryTask6[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
--品质B
rwtTask[tSanYueMercenaryTask6[3]] = {}
rwtTask[tSanYueMercenaryTask6[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21202]--"守护巨人骸骨"
rwtTask[tSanYueMercenaryTask6[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask6[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask6[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask6[3]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask6[3]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tSanYueMercenaryTask6[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask6[3]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask6[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask6[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask6[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask6[3]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tSanYueMercenaryTask6[3]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask6[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask6[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask6[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask6[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tSanYueMercenaryTask6[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
--品质A
rwtTask[tSanYueMercenaryTask6[4]] = {}
rwtTask[tSanYueMercenaryTask6[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21202]--"守护巨人骸骨"
rwtTask[tSanYueMercenaryTask6[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask6[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask6[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask6[4]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask6[4]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tSanYueMercenaryTask6[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask6[4]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask6[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask6[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask6[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask6[4]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tSanYueMercenaryTask6[4]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask6[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask6[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask6[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask6[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tSanYueMercenaryTask6[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
--品质S
rwtTask[tSanYueMercenaryTask6[5]] = {}
rwtTask[tSanYueMercenaryTask6[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21202]--"守护巨人骸骨"
rwtTask[tSanYueMercenaryTask6[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask6[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask6[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask6[5]]["AwardGroupId"] = 2
rwtTask[tSanYueMercenaryTask6[5]]["AcceptDialogId"] = nAccept_Dialog6
rwtTask[tSanYueMercenaryTask6[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask6[5]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask6[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask6[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask6[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask6[5]]["KillMonsterGroup1" ]= nMonster_Group3
rwtTask[tSanYueMercenaryTask6[5]]["MonsterGroupGenId"] = nMonster_Gen3
rwtTask[tSanYueMercenaryTask6[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask6[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask6[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask6[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask6[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group3
rwtTask[tSanYueMercenaryTask6[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen3
-------联盟通缉令------
--品质D
rwtTask[tSanYueMercenaryTask7[1]] = {}
rwtTask[tSanYueMercenaryTask7[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21203]--"联盟通缉令"
rwtTask[tSanYueMercenaryTask7[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask7[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask7[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask7[1]]["AwardGroupId"] = 6
rwtTask[tSanYueMercenaryTask7[1]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tSanYueMercenaryTask7[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask7[1]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask7[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask7[1]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask7[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask7[1]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tSanYueMercenaryTask7[1]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask7[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask7[1]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask7[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask7[1]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tSanYueMercenaryTask7[1]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4

--品质C
rwtTask[tSanYueMercenaryTask7[2]] = {}
rwtTask[tSanYueMercenaryTask7[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21203]--"联盟通缉令"
rwtTask[tSanYueMercenaryTask7[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask7[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask7[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask7[2]]["AwardGroupId"] = 6
rwtTask[tSanYueMercenaryTask7[2]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tSanYueMercenaryTask7[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask7[2]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask7[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask7[2]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask7[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask7[2]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tSanYueMercenaryTask7[2]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask7[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask7[2]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask7[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask7[2]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tSanYueMercenaryTask7[2]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4
--品质B
rwtTask[tSanYueMercenaryTask7[3]] = {}
rwtTask[tSanYueMercenaryTask7[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21203]--"联盟通缉令"
rwtTask[tSanYueMercenaryTask7[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask7[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask7[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask7[3]]["AwardGroupId"] = 6
rwtTask[tSanYueMercenaryTask7[3]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tSanYueMercenaryTask7[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask7[3]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask7[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask7[3]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask7[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask7[3]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tSanYueMercenaryTask7[3]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask7[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask7[3]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask7[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask7[3]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tSanYueMercenaryTask7[3]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4
--品质A
rwtTask[tSanYueMercenaryTask7[4]] = {}
rwtTask[tSanYueMercenaryTask7[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21203]--"联盟通缉令"
rwtTask[tSanYueMercenaryTask7[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask7[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask7[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask7[4]]["AwardGroupId"] = 6
rwtTask[tSanYueMercenaryTask7[4]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tSanYueMercenaryTask7[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask7[4]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask7[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask7[4]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask7[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask7[4]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tSanYueMercenaryTask7[4]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask7[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask7[4]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask7[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask7[4]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tSanYueMercenaryTask7[4]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4
--品质S

rwtTask[tSanYueMercenaryTask7[5]] = {}
rwtTask[tSanYueMercenaryTask7[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21203]--"联盟通缉令"
rwtTask[tSanYueMercenaryTask7[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask7[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tSanYueMercenaryTask7[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask7[5]]["AwardGroupId"] = 6
rwtTask[tSanYueMercenaryTask7[5]]["AcceptDialogId"] = nAccept_Dialog7
rwtTask[tSanYueMercenaryTask7[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask7[5]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask7[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask7[5]]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask7[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask7[5]]["KillMonsterGroup1" ]= nMonster_Group4
rwtTask[tSanYueMercenaryTask7[5]]["MonsterGroupGenId"] = nMonster_Gen4
rwtTask[tSanYueMercenaryTask7[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask7[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask7[5]]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[tSanYueMercenaryTask7[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask7[5]]["StartAutoWay"]["FindWayGroupId"] = nMonster_Group4
rwtTask[tSanYueMercenaryTask7[5]]["StartAutoWay"]["FindWayGenId"] = nMonster_Gen4

--泰坦之谜
rwtTask[tSanYueMercenaryTask8[1]] = {}
rwtTask[tSanYueMercenaryTask8[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21374]
rwtTask[tSanYueMercenaryTask8[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask8[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask8[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask8[1]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask8[1]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tSanYueMercenaryTask8[1]]["DialogId"] = nDialog8
rwtTask[tSanYueMercenaryTask8[1]]["TaskNpc"] = 3500
rwtTask[tSanYueMercenaryTask8[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask8[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask8[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask8[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask8[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask8[1]]["StartAutoWay"]["FindWayGroupId"] = 20486
rwtTask[tSanYueMercenaryTask8[1]]["StartAutoWay"]["FindWayGenId"] = 20030485

rwtTask[tSanYueMercenaryTask8[2]] = {}
rwtTask[tSanYueMercenaryTask8[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21374]
rwtTask[tSanYueMercenaryTask8[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask8[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask8[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask8[2]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask8[2]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tSanYueMercenaryTask8[2]]["DialogId"] = nDialog8
rwtTask[tSanYueMercenaryTask8[2]]["TaskNpc"] = 3500
rwtTask[tSanYueMercenaryTask8[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask8[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask8[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask8[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask8[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask8[2]]["StartAutoWay"]["FindWayGroupId"] = 20486
rwtTask[tSanYueMercenaryTask8[2]]["StartAutoWay"]["FindWayGenId"] = 20030485

rwtTask[tSanYueMercenaryTask8[3]] = {}
rwtTask[tSanYueMercenaryTask8[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21374]
rwtTask[tSanYueMercenaryTask8[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask8[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask8[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask8[3]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask8[3]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tSanYueMercenaryTask8[3]]["DialogId"] = nDialog8
rwtTask[tSanYueMercenaryTask8[3]]["TaskNpc"] = 3500
rwtTask[tSanYueMercenaryTask8[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask8[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask8[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask8[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask8[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask8[3]]["StartAutoWay"]["FindWayGroupId"] = 20486
rwtTask[tSanYueMercenaryTask8[3]]["StartAutoWay"]["FindWayGenId"] = 20030485

rwtTask[tSanYueMercenaryTask8[4]] = {}
rwtTask[tSanYueMercenaryTask8[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21374]
rwtTask[tSanYueMercenaryTask8[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask8[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask8[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask8[4]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask8[4]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tSanYueMercenaryTask8[4]]["DialogId"] = nDialog8
rwtTask[tSanYueMercenaryTask8[4]]["TaskNpc"] = 3500
rwtTask[tSanYueMercenaryTask8[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask8[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask8[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask8[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask8[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask8[4]]["StartAutoWay"]["FindWayGroupId"] = 20486
rwtTask[tSanYueMercenaryTask8[4]]["StartAutoWay"]["FindWayGenId"] = 20030485

rwtTask[tSanYueMercenaryTask8[5]] = {}
rwtTask[tSanYueMercenaryTask8[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21374]
rwtTask[tSanYueMercenaryTask8[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask8[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask8[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask8[5]]["AwardGroupId"] = 1
rwtTask[tSanYueMercenaryTask8[5]]["AcceptDialogId"] = nAccept_Dialog8
rwtTask[tSanYueMercenaryTask8[5]]["DialogId"] = nDialog8
rwtTask[tSanYueMercenaryTask8[5]]["TaskNpc"] = 3500
rwtTask[tSanYueMercenaryTask8[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask8[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask8[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask8[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask8[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask8[5]]["StartAutoWay"]["FindWayGroupId"] = 20486
rwtTask[tSanYueMercenaryTask8[5]]["StartAutoWay"]["FindWayGenId"] = 20030485

--月牙湖的传说
rwtTask[tSanYueMercenaryTask9[1]] = {}
rwtTask[tSanYueMercenaryTask9[1]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21375]
rwtTask[tSanYueMercenaryTask9[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask9[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask9[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask9[1]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask9[1]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tSanYueMercenaryTask9[1]]["DialogId"] = nDialog9
rwtTask[tSanYueMercenaryTask9[1]]["TaskNpc"] = 3449
rwtTask[tSanYueMercenaryTask9[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask9[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask9[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask9[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask9[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask9[1]]["StartAutoWay"]["FindWayGroupId"] = 20450
rwtTask[tSanYueMercenaryTask9[1]]["StartAutoWay"]["FindWayGenId"] = 20030478

rwtTask[tSanYueMercenaryTask9[2]] = {}
rwtTask[tSanYueMercenaryTask9[2]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21375]
rwtTask[tSanYueMercenaryTask9[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask9[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask9[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask9[2]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask9[2]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tSanYueMercenaryTask9[2]]["DialogId"] = nDialog9
rwtTask[tSanYueMercenaryTask9[2]]["TaskNpc"] = 3449
rwtTask[tSanYueMercenaryTask9[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask9[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask9[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask9[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask9[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask9[2]]["StartAutoWay"]["FindWayGroupId"] = 20450
rwtTask[tSanYueMercenaryTask9[2]]["StartAutoWay"]["FindWayGenId"] = 20030478

rwtTask[tSanYueMercenaryTask9[3]] = {}
rwtTask[tSanYueMercenaryTask9[3]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21375]
rwtTask[tSanYueMercenaryTask9[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask9[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask9[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask9[3]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask9[3]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tSanYueMercenaryTask9[3]]["DialogId"] = nDialog9
rwtTask[tSanYueMercenaryTask9[3]]["TaskNpc"] = 3449
rwtTask[tSanYueMercenaryTask9[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask9[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask9[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask9[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask9[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask9[3]]["StartAutoWay"]["FindWayGroupId"] = 20450
rwtTask[tSanYueMercenaryTask9[3]]["StartAutoWay"]["FindWayGenId"] = 20030478

rwtTask[tSanYueMercenaryTask9[4]] = {}
rwtTask[tSanYueMercenaryTask9[4]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21375]
rwtTask[tSanYueMercenaryTask9[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask9[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask9[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask9[4]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask9[4]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tSanYueMercenaryTask9[4]]["DialogId"] = nDialog9
rwtTask[tSanYueMercenaryTask9[4]]["TaskNpc"] = 3449
rwtTask[tSanYueMercenaryTask9[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask9[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask9[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask9[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask9[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask9[4]]["StartAutoWay"]["FindWayGroupId"] = 20450
rwtTask[tSanYueMercenaryTask9[4]]["StartAutoWay"]["FindWayGenId"] = 20030478

rwtTask[tSanYueMercenaryTask9[5]] = {}
rwtTask[tSanYueMercenaryTask9[5]]["Title" ]= tLuaText[LANGUAGE_CONFIG][21375]
rwtTask[tSanYueMercenaryTask9[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask9[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask9[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask9[5]]["AwardGroupId"] = 3
rwtTask[tSanYueMercenaryTask9[5]]["AcceptDialogId"] = nAccept_Dialog9
rwtTask[tSanYueMercenaryTask9[5]]["DialogId"] = nDialog9
rwtTask[tSanYueMercenaryTask9[5]]["TaskNpc"] = 3449
rwtTask[tSanYueMercenaryTask9[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask9[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask9[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask9[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask9[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask9[5]]["StartAutoWay"]["FindWayGroupId"] = 20450
rwtTask[tSanYueMercenaryTask9[5]]["StartAutoWay"]["FindWayGenId"] = 20030478

   
--考古学者
rwtTask[tSanYueMercenaryTask10[1]] = {}
rwtTask[tSanYueMercenaryTask10[1]]["Title"] = tLuaText[LANGUAGE_CONFIG][21376]
rwtTask[tSanYueMercenaryTask10[1]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask10[1]]["TaskNpc"] = nNpc_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[1]]["TaskQuality"] = 1
rwtTask[tSanYueMercenaryTask10[1]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask10[1]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask10[1]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask10[1]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_KaoGuXueJia_GenId
rwtTask[tSanYueMercenaryTask10[1]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask10[1]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask10[1]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask10[1]]["DialogId"] = nDialog10
rwtTask[tSanYueMercenaryTask10[1]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tSanYueMercenaryTask10[1]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask10[1]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask10[1]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask10[1]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask10[1]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask10[1]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[1]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_KaoGuXueJia_GenId

rwtTask[tSanYueMercenaryTask10[2]] = {}
rwtTask[tSanYueMercenaryTask10[2]]["Title"] = tLuaText[LANGUAGE_CONFIG][21376]
rwtTask[tSanYueMercenaryTask10[2]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask10[2]]["TaskNpc"] = nNpc_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[2]]["TaskQuality"] = 2
rwtTask[tSanYueMercenaryTask10[2]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask10[2]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask10[2]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask10[2]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_KaoGuXueJia_GenId
rwtTask[tSanYueMercenaryTask10[2]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask10[2]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask10[2]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask10[2]]["DialogId"] = nDialog10
rwtTask[tSanYueMercenaryTask10[2]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tSanYueMercenaryTask10[2]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask10[2]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask10[2]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask10[2]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask10[2]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask10[2]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[2]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_KaoGuXueJia_GenId

rwtTask[tSanYueMercenaryTask10[3]] = {}
rwtTask[tSanYueMercenaryTask10[3]]["Title"] = tLuaText[LANGUAGE_CONFIG][21376]
rwtTask[tSanYueMercenaryTask10[3]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask10[3]]["TaskNpc"] = nNpc_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[3]]["TaskQuality"] = 3
rwtTask[tSanYueMercenaryTask10[3]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask10[3]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask10[3]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask10[3]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_KaoGuXueJia_GenId
rwtTask[tSanYueMercenaryTask10[3]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask10[3]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask10[3]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask10[3]]["DialogId"] = nDialog10
rwtTask[tSanYueMercenaryTask10[3]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tSanYueMercenaryTask10[3]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask10[3]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask10[3]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask10[3]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask10[3]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask10[3]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[3]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_KaoGuXueJia_GenId

rwtTask[tSanYueMercenaryTask10[4]] = {}
rwtTask[tSanYueMercenaryTask10[4]]["Title"] = tLuaText[LANGUAGE_CONFIG][21376]
rwtTask[tSanYueMercenaryTask10[4]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask10[4]]["TaskNpc"] = nNpc_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[4]]["TaskQuality"] = 4
rwtTask[tSanYueMercenaryTask10[4]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask10[4]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask10[4]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask10[4]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_KaoGuXueJia_GenId
rwtTask[tSanYueMercenaryTask10[4]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask10[4]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask10[4]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask10[4]]["DialogId"] = nDialog10
rwtTask[tSanYueMercenaryTask10[4]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tSanYueMercenaryTask10[4]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask10[4]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask10[4]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask10[4]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask10[4]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask10[4]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[4]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_KaoGuXueJia_GenId

rwtTask[tSanYueMercenaryTask10[5]] = {}
rwtTask[tSanYueMercenaryTask10[5]]["Title"] = tLuaText[LANGUAGE_CONFIG][21376]
rwtTask[tSanYueMercenaryTask10[5]]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tSanYueMercenaryTask10[5]]["TaskNpc"] = nNpc_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[5]]["TaskQuality"] = 5
rwtTask[tSanYueMercenaryTask10[5]]["MercenaryTownId"] = nMercenaryTownId
rwtTask[tSanYueMercenaryTask10[5]]["DynaNpcGroupGen"] = {}
rwtTask[tSanYueMercenaryTask10[5]]["DynaNpcGroupGen"][1] = {}
rwtTask[tSanYueMercenaryTask10[5]]["DynaNpcGroupGen"][1]["GenId"] = nNpcGroup_KaoGuXueJia_GenId
rwtTask[tSanYueMercenaryTask10[5]]["DynaNpcGroupGen"][1]["MapId"] = 2003
rwtTask[tSanYueMercenaryTask10[5]]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tSanYueMercenaryTask10[5]]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tSanYueMercenaryTask10[5]]["DialogId"] = nDialog10
rwtTask[tSanYueMercenaryTask10[5]]["AcceptDialogId"] = nAccept_Dialog10
rwtTask[tSanYueMercenaryTask10[5]]["AwardGroupId"] = 4
rwtTask[tSanYueMercenaryTask10[5]]["IsClickComplete"] = 0
rwtTask[tSanYueMercenaryTask10[5]]["StartAutoWay"] = {}
rwtTask[tSanYueMercenaryTask10[5]]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[tSanYueMercenaryTask10[5]]["StartAutoWay"]["FindWayMapId"] = 2003
rwtTask[tSanYueMercenaryTask10[5]]["StartAutoWay"]["FindWayGroupId"] = nNpcGroup_KaoGuXueJia
rwtTask[tSanYueMercenaryTask10[5]]["StartAutoWay"]["FindWayGenId"] = nNpcGroup_KaoGuXueJia_GenId
