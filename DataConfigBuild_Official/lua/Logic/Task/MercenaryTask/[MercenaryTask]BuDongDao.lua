--region *.lua
--Date
--此文件由[BabeLua]插件自动生成



--endregion


--地图ID
local nMapId = 2005

--镇子ID
local nTownId = 200501

--任务ID
local tBuDongDaoMercenaryTask = {}
tBuDongDaoMercenaryTask.TaskId1_1 =  20772 --赛文的吊坠D
tBuDongDaoMercenaryTask.TaskId1_2 =  20773 --赛文的吊坠C
tBuDongDaoMercenaryTask.TaskId1_3 =  20774 --赛文的吊坠B
tBuDongDaoMercenaryTask.TaskId1_4 =  20775 --赛文的吊坠A
tBuDongDaoMercenaryTask.TaskId1_5 =  20776 --赛文的吊坠S
tBuDongDaoMercenaryTask.TaskId2_1 =  20777 --定制的羽翼D
tBuDongDaoMercenaryTask.TaskId2_2 =  20778 --定制的羽翼C
tBuDongDaoMercenaryTask.TaskId2_3 =  20779 --定制的羽翼B
tBuDongDaoMercenaryTask.TaskId2_4 =  20780 --定制的羽翼A
tBuDongDaoMercenaryTask.TaskId2_5 =  20781 --定制的羽翼S
tBuDongDaoMercenaryTask.TaskId3_1 =  20782 --鸟族的象征D
tBuDongDaoMercenaryTask.TaskId3_2 =  20783 --鸟族的象征C
tBuDongDaoMercenaryTask.TaskId3_3 =  20784 --鸟族的象征B
tBuDongDaoMercenaryTask.TaskId3_4 =  20785 --鸟族的象征A
tBuDongDaoMercenaryTask.TaskId3_5 =  20786 --鸟族的象征S
tBuDongDaoMercenaryTask.TaskId4_1 =  20787 --绚丽紫樱花D
tBuDongDaoMercenaryTask.TaskId4_2 =  20788 --绚丽紫樱花C
tBuDongDaoMercenaryTask.TaskId4_3 =  20789 --绚丽紫樱花B
tBuDongDaoMercenaryTask.TaskId4_4 =  20790 --绚丽紫樱花A
tBuDongDaoMercenaryTask.TaskId4_5 =  20791 --绚丽紫樱花S
tBuDongDaoMercenaryTask.TaskId5_1 =  20792 --修复藤桥D
tBuDongDaoMercenaryTask.TaskId5_2 =  20793 --修复藤桥C
tBuDongDaoMercenaryTask.TaskId5_3 =  20794 --修复藤桥B
tBuDongDaoMercenaryTask.TaskId5_4 =  20795 --修复藤桥A
tBuDongDaoMercenaryTask.TaskId5_5 =  20796 --修复藤桥S
tBuDongDaoMercenaryTask.TaskId6_1 =  20797 --救助鸟族镇民D
tBuDongDaoMercenaryTask.TaskId6_2 =  20798 --救助鸟族镇民C
tBuDongDaoMercenaryTask.TaskId6_3 =  20799 --救助鸟族镇民B
tBuDongDaoMercenaryTask.TaskId6_4 =  20800 --救助鸟族镇民A
tBuDongDaoMercenaryTask.TaskId6_5 =  20801 --救助鸟族镇民S
tBuDongDaoMercenaryTask.TaskId7_1 =  20802 --不冬岛路霸D
tBuDongDaoMercenaryTask.TaskId7_2 =  20803 --不冬岛路霸C
tBuDongDaoMercenaryTask.TaskId7_3 =  20804 --不冬岛路霸B
tBuDongDaoMercenaryTask.TaskId7_4 =  20805 --不冬岛路霸A
tBuDongDaoMercenaryTask.TaskId7_5 =  20806 --不冬岛路霸S
tBuDongDaoMercenaryTask.TaskId8_1 =  20807 --鸟族守卫者D
tBuDongDaoMercenaryTask.TaskId8_2 =  20808 --鸟族守卫者C
tBuDongDaoMercenaryTask.TaskId8_3 =  20809 --鸟族守卫者B
tBuDongDaoMercenaryTask.TaskId8_4 =  20810 --鸟族守卫者A
tBuDongDaoMercenaryTask.TaskId8_5 =  20811 --鸟族守卫者S
tBuDongDaoMercenaryTask.TaskId9_1 =  20812 --枭鹰之患D
tBuDongDaoMercenaryTask.TaskId9_2 =  20813 --枭鹰之患C
tBuDongDaoMercenaryTask.TaskId9_3 =  20814 --枭鹰之患B
tBuDongDaoMercenaryTask.TaskId9_4 =  20815 --枭鹰之患A
tBuDongDaoMercenaryTask.TaskId9_5 =  20816 --枭鹰之患S
tBuDongDaoMercenaryTask.TaskId10_1 = 20817 --联盟通缉令D
tBuDongDaoMercenaryTask.TaskId10_2 = 20818 --联盟通缉令C
tBuDongDaoMercenaryTask.TaskId10_3 = 20819 --联盟通缉令B
tBuDongDaoMercenaryTask.TaskId10_4 = 20820 --联盟通缉令A
tBuDongDaoMercenaryTask.TaskId10_5 = 20821 --联盟通缉令S

--对话ID
local tDialog = {}
tDialog.nAccept_Task1 =  12114
tDialog.nTask1        =  12115
tDialog.nAccept_Task2 =  12116
tDialog.nTask2        =  12117
tDialog.nAccept_Task3 =  12118
tDialog.nTask3        =  12119
tDialog.nAccept_Task4 =  12120
tDialog.nTask4        =  12121
tDialog.nAccept_Task5 =  12122
tDialog.nTask5        =  12123
tDialog.nAccept_Task6 =  12124
tDialog.nTask6        =  12125
tDialog.nAccept_Task7 =  12126
tDialog.nTask7        =  12127
tDialog.nAccept_Task8 =  12128
tDialog.nTask8        =  12129
tDialog.nAccept_Task9 =  12130
tDialog.nTask9        =  12131
tDialog.nAccept_Task10 = 12132
tDialog.nTask10        = 12133

--陷阱ID
local tTrap = {}

--采集物ID  --Gen id 20050171  20050180 
local tCollect= {}


tCollect.nCollect_ZiYingHua =  60321
tCollect.nCollect_GenId_ZiYingHua = 20050171
rwtNpcGroup[tCollect.nCollect_ZiYingHua] = rwtNpcGroup[tCollect.nCollect_ZiYingHua] or {} 
rwtNpcGroup[tCollect.nCollect_ZiYingHua]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_TengQiao = 60322
tCollect.nCollect_GenId_TengQiao = 20050172
rwtNpcGroup[tCollect.nCollect_TengQiao] = rwtNpcGroup[tCollect.nCollect_TengQiao] or {} 
rwtNpcGroup[tCollect.nCollect_TengQiao]["Type"] = CONST_NPCGROUP_TYPE.Collect

tCollect.nCollect_JiuZhu = 60323
tCollect.nCollect_GenId_JiuZhu = 20050173
rwtNpcGroup[tCollect.nCollect_JiuZhu] = rwtNpcGroup[tCollect.nCollect_JiuZhu] or {} 
rwtNpcGroup[tCollect.nCollect_JiuZhu]["Type"] = CONST_NPCGROUP_TYPE.Collect


--宝箱ID
local tTreasureBox= {}

--怪物ID
local tMonster = {}

tMonster.nMonster_XiongRen =  9000413
tMonster.nMonsterGroup_XiongRen =  900442 
tMonster.nMonsterGroup_GenId_XiongRen = 20050174

tMonster.nMonster_TouLieZhe_1 = 9000414
tMonster.nMonster_TouLieZhe_2 = 9000415
tMonster.nMonsterGroup_TouLieZhe = 900443
tMonster.nMonsterGroup_GenId_TouLieZhe = 20050175

tMonster.nMonster_XiaoYing = 9000416
tMonster.nMonsterGroup_XiaoYing = 900444
tMonster.nMonsterGroup_GenId_XiaoYing = 20050176

tMonster.nMonster_ShanLingJuRen = 9000417
tMonster.nMonsterGroup_ShanLingJuRen = 900445                  
tMonster.nMonsterGroup_GenId_ShanLingJuRen = 20050177

--NPCID
local tSingleNpc = {}

tSingleNpc.nNpc_SaiWen = 3561
tSingleNpc.nNpcGroup_SaiWen = 20515
tSingleNpc.nNpcGroup_GenId_SaiWen = 20050129

tSingleNpc.nNpc_JieJi = 3384  --岛民杰基
tSingleNpc.nNpcGroup_JieJi = 20409
tSingleNpc.nNpcGroup_GenId_JieJi = 20050036

tSingleNpc.nNpc_NiaoZuTuTeng = 3459
tSingleNpc.nNpcGroup_NiaoZuTuTeng = 70016
tSingleNpc.nNpcGroup_GenId_NiaoZuTuTeng = 20050136

--位置
local sPos_Task_3 = "-9.07,7.82,-27.14"

--赛文的吊坠D
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21541]
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["AcceptDialogId"] =  tDialog.nAccept_Task1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["TaskNpc"] = tSingleNpc.nNpc_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["DialogId"] = tDialog.nTask1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_SaiWen

--赛文的吊坠C
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21541]
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["AcceptDialogId"] =  tDialog.nAccept_Task1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["TaskNpc"] = tSingleNpc.nNpc_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["DialogId"] = tDialog.nTask1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_SaiWen

--赛文的吊坠B
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21541]
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["AcceptDialogId"] =  tDialog.nAccept_Task1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["TaskNpc"] = tSingleNpc.nNpc_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["DialogId"] = tDialog.nTask1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_SaiWen

--赛文的吊坠A
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21541]
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["AcceptDialogId"] =  tDialog.nAccept_Task1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["TaskNpc"] = tSingleNpc.nNpc_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["DialogId"] = tDialog.nTask1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_SaiWen

--赛文的吊坠S
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21541]
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["AcceptDialogId"] =  tDialog.nAccept_Task1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["TaskNpc"] = tSingleNpc.nNpc_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["DialogId"] = tDialog.nTask1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_SaiWen
rwtTask[tBuDongDaoMercenaryTask.TaskId1_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_SaiWen

--定制的羽翼D
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21542]
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["AcceptDialogId"] =  tDialog.nAccept_Task2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["TaskNpc"] = tSingleNpc.nNpc_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["DialogId"] = tDialog.nTask2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_1]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JieJi

--定制的羽翼C
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21542]
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["AcceptDialogId"] =  tDialog.nAccept_Task2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["TaskNpc"] = tSingleNpc.nNpc_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["DialogId"] = tDialog.nTask2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_2]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JieJi

--定制的羽翼B
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21542]
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["AcceptDialogId"] =  tDialog.nAccept_Task2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["TaskNpc"] = tSingleNpc.nNpc_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["DialogId"] = tDialog.nTask2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_3]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JieJi

--定制的羽翼A
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21542]
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["AcceptDialogId"] =  tDialog.nAccept_Task2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["TaskNpc"] = tSingleNpc.nNpc_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["DialogId"] = tDialog.nTask2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_4]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JieJi

--定制的羽翼S
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21542]
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["AcceptDialogId"] =  tDialog.nAccept_Task2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["TaskNpc"] = tSingleNpc.nNpc_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["DialogId"] = tDialog.nTask2
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_JieJi
rwtTask[tBuDongDaoMercenaryTask.TaskId2_5]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_GenId_JieJi

--鸟族的象征D
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21543]
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["AcceptDialogId"] =  tDialog.nAccept_Task3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["TaskNpc"] = tSingleNpc.nNpc_NiaoZuTuTeng
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["DialogId"] = tDialog.nTask3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_1]["StartAutoWay"]["FindWayPos"] = sPos_Task_3

--鸟族的象征C
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21543]
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["AcceptDialogId"] =  tDialog.nAccept_Task3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["TaskNpc"] = tSingleNpc.nNpc_NiaoZuTuTeng
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["DialogId"] = tDialog.nTask3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_2]["StartAutoWay"]["FindWayPos"] = sPos_Task_3

--鸟族的象征B
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21543]
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["AcceptDialogId"] =  tDialog.nAccept_Task3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["TaskNpc"] = tSingleNpc.nNpc_NiaoZuTuTeng
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["DialogId"] = tDialog.nTask3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_3]["StartAutoWay"]["FindWayPos"] = sPos_Task_3

--鸟族的象征A
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21543]
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["AcceptDialogId"] =  tDialog.nAccept_Task3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["TaskNpc"] = tSingleNpc.nNpc_NiaoZuTuTeng
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["DialogId"] = tDialog.nTask3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_4]["StartAutoWay"]["FindWayPos"] = sPos_Task_3

--鸟族的象征S
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21543]
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["AcceptDialogId"] =  tDialog.nAccept_Task3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["TaskNpc"] = tSingleNpc.nNpc_NiaoZuTuTeng
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["DialogId"] = tDialog.nTask3
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayTypeId"] = 0
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId3_5]["StartAutoWay"]["FindWayPos"] = sPos_Task_3

--绚丽紫樱花D
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21544]
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["AcceptDialogId"] =  tDialog.nAccept_Task4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["ReqCollectId1"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["DialogId"] = tDialog.nTask4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_1]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_ZiYingHua

--绚丽紫樱花C
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21544]
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["AcceptDialogId"] =  tDialog.nAccept_Task4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["ReqCollectId1"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["DialogId"] = tDialog.nTask4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_2]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_ZiYingHua

--绚丽紫樱花B
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21544]
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["AcceptDialogId"] =  tDialog.nAccept_Task4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["ReqCollectId1"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["DialogId"] = tDialog.nTask4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_3]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_ZiYingHua

--绚丽紫樱花A
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21544]
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["AcceptDialogId"] =  tDialog.nAccept_Task4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["ReqCollectId1"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["DialogId"] = tDialog.nTask4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_4]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_ZiYingHua

--绚丽紫樱花S
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21544]
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["AcceptDialogId"] =  tDialog.nAccept_Task4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["ReqCollectId1"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["DialogId"] = tDialog.nTask4
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_ZiYingHua
rwtTask[tBuDongDaoMercenaryTask.TaskId4_5]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_ZiYingHua

--修复藤桥D
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21545]
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["AcceptDialogId"] =  tDialog.nAccept_Task5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["AwardGroupId"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["ReqCollectId1"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["DialogId"] = tDialog.nTask5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_1]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_TengQiao

--修复藤桥C
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21545]
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["AcceptDialogId"] =  tDialog.nAccept_Task5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["AwardGroupId"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["ReqCollectId1"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["DialogId"] = tDialog.nTask5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_2]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_TengQiao

--修复藤桥B
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21545]
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["AcceptDialogId"] =  tDialog.nAccept_Task5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["AwardGroupId"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["ReqCollectId1"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["DialogId"] = tDialog.nTask5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_3]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_TengQiao

--修复藤桥A
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21545]
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["AcceptDialogId"] =  tDialog.nAccept_Task5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["AwardGroupId"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["ReqCollectId1"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["DialogId"] = tDialog.nTask5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_4]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_TengQiao

--修复藤桥S
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21545]
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["AcceptDialogId"] =  tDialog.nAccept_Task5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["AwardGroupId"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["ReqCollectId1"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["DialogId"] = tDialog.nTask5
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_TengQiao
rwtTask[tBuDongDaoMercenaryTask.TaskId5_5]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_TengQiao

--救助鸟族镇民D
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21546]
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["AcceptDialogId"] =  tDialog.nAccept_Task6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["ReqCollectId1"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["DialogId"] = tDialog.nTask6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_1]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_JiuZhu

--救助鸟族镇民C
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21546]
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["AcceptDialogId"] =  tDialog.nAccept_Task6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["ReqCollectId1"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["DialogId"] = tDialog.nTask6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_2]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_JiuZhu

--救助鸟族镇民B
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21546]
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["AcceptDialogId"] =  tDialog.nAccept_Task6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["ReqCollectId1"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["DialogId"] = tDialog.nTask6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_3]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_JiuZhu

--救助鸟族镇民A
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21546]
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["AcceptDialogId"] =  tDialog.nAccept_Task6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["ReqCollectId1"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["DialogId"] = tDialog.nTask6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_4]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_JiuZhu

--救助鸟族镇民S
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21546]
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["AcceptDialogId"] =  tDialog.nAccept_Task6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["AwardGroupId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["ReqCollectId1"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["ReqCollectOnceNum"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["ReqCollectCount1"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["DialogId"] = tDialog.nTask6
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["GenId"] = tCollect.nCollect_GenId_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGroupId"] = tCollect.nCollect_JiuZhu
rwtTask[tBuDongDaoMercenaryTask.TaskId6_5]["StartAutoWay"]["FindWayGenId"] = tCollect.nCollect_GenId_JiuZhu

--不冬岛路霸D
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21547]
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["AcceptDialogId"] =  tDialog.nAccept_Task7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["DialogId"] = tDialog.nTask7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_1]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiongRen

--不冬岛路霸C
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21547]
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["AcceptDialogId"] =  tDialog.nAccept_Task7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["DialogId"] = tDialog.nTask7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiongRen

--不冬岛路霸B
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21547]
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["AcceptDialogId"] =  tDialog.nAccept_Task7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["DialogId"] = tDialog.nTask7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiongRen

--不冬岛路霸A
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21547]
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["AcceptDialogId"] =  tDialog.nAccept_Task7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["DialogId"] = tDialog.nTask7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiongRen

--不冬岛路霸S
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21547]
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["AcceptDialogId"] =  tDialog.nAccept_Task7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["AwardGroupId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["DialogId"] = tDialog.nTask7
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiongRen
rwtTask[tBuDongDaoMercenaryTask.TaskId7_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiongRen

--鸟族守卫者D
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21548]
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["AcceptDialogId"] =  tDialog.nAccept_Task8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["KillMonsterGroup1"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["DialogId"] = tDialog.nTask8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_1]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe

--鸟族守卫者C
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21548]
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["AcceptDialogId"] =  tDialog.nAccept_Task8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["DialogId"] = tDialog.nTask8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe

--鸟族守卫者B
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21548]
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["AcceptDialogId"] =  tDialog.nAccept_Task8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["DialogId"] = tDialog.nTask8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe

--鸟族守卫者A
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21548]
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["AcceptDialogId"] =  tDialog.nAccept_Task8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["KillMonsterGroup1"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["DialogId"] = tDialog.nTask8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe

--鸟族守卫者S
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21548]
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["AcceptDialogId"] =  tDialog.nAccept_Task8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["AwardGroupId"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["DialogId"] = tDialog.nTask8
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_TouLieZhe
rwtTask[tBuDongDaoMercenaryTask.TaskId8_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_TouLieZhe

--枭鹰之患D
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21549]
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["AcceptDialogId"] =  tDialog.nAccept_Task9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["DialogId"] = tDialog.nTask9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_1]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing

--枭鹰之患C
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21549]
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["AcceptDialogId"] =  tDialog.nAccept_Task9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["DialogId"] = tDialog.nTask9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing

--枭鹰之患B
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21549]
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["AcceptDialogId"] =  tDialog.nAccept_Task9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["DialogId"] = tDialog.nTask9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing

--枭鹰之患A
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21549]
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["AcceptDialogId"] =  tDialog.nAccept_Task9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["DialogId"] = tDialog.nTask9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing

--枭鹰之患S
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21549]
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["AcceptDialogId"] =  tDialog.nAccept_Task9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["AwardGroupId"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["DialogId"] = tDialog.nTask9
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_XiaoYing
rwtTask[tBuDongDaoMercenaryTask.TaskId9_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_XiaoYing

--联盟通缉令D
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21550]
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["TaskQuality"] = 1
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["AcceptDialogId"] =  tDialog.nAccept_Task10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["AwardGroupId"] = 6
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["KillMonsterGroup1"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["DialogId"] = tDialog.nTask10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_1]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen

--联盟通缉令C
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21550]
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["TaskQuality"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["AcceptDialogId"] =  tDialog.nAccept_Task10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["AwardGroupId"] = 6
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["KillMonsterGroup1"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["DialogId"] = tDialog.nTask10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_2]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen

--联盟通缉令B
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21550]
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["TaskQuality"] = 3
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["AcceptDialogId"] =  tDialog.nAccept_Task10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["AwardGroupId"] = 6
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["KillMonsterGroup1"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["DialogId"] = tDialog.nTask10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_3]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen

--联盟通缉令A
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21550]
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["TaskQuality"] = 4
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["AcceptDialogId"] =  tDialog.nAccept_Task10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["AwardGroupId"] = 6
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["KillMonsterGroup1"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["DialogId"] = tDialog.nTask10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_4]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen

--联盟通缉令S
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21550]
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["TaskQuality"] = 5
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["MercenaryTownId"] = nTownId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["AcceptDialogId"] =  tDialog.nAccept_Task10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["AwardGroupId"] = 6
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["KillMonsterGroup1"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["MonsterGroupGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["ReqTrap1"] = tTrap.nTrap_
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["DialogId"] = tDialog.nTask10
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["GenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["MapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["StartAutoWay"] = {}
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayTypeId"] = 2
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayMapId"] = nMapId
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayGroupId"] = tMonster.nMonsterGroup_ShanLingJuRen
rwtTask[tBuDongDaoMercenaryTask.TaskId10_5]["StartAutoWay"]["FindWayGenId"] = tMonster.nMonsterGroup_GenId_ShanLingJuRen
