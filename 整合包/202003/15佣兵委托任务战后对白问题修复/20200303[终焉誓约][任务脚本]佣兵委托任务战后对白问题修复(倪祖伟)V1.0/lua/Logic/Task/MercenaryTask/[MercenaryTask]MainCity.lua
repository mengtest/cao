--region [MercenaryTask]MainCity.lua
--Purpose:		卡诺萨主城委托
--Creator: 		胡青
--Created:		2018-11-09
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-03-10 $
--RCS-ID:		$Revision: 4	$
--endregion
local nMainCityMercenaryTask_1   = 20607         --传达不到的心
local nMainCityMercenaryTask_2	 = 20608	     --传达不到的心
local nMainCityMercenaryTask_3	 = 20609	     --传达不到的心
local nMainCityMercenaryTask_4	 = 20610	     --传达不到的心
local nMainCityMercenaryTask_5	 = 20611	     --传达不到的心
local nMainCityMercenaryTask_6	 = 20612	     --兼职维修员
local nMainCityMercenaryTask_7	 = 20613	     --兼职维修员
local nMainCityMercenaryTask_8	 = 20614	     --兼职维修员
local nMainCityMercenaryTask_9	 = 20615	     --兼职维修员
local nMainCityMercenaryTask_10	 = 20616	     --兼职维修员
local nMainCityMercenaryTask_11	 = 20617	     --云端之语
local nMainCityMercenaryTask_12	 = 20618	     --云端之语
local nMainCityMercenaryTask_13	 = 20619	     --云端之语
local nMainCityMercenaryTask_14	 = 20620	     --云端之语
local nMainCityMercenaryTask_15	 = 20621	     --云端之语

local nMainCityMercenaryTask_16	 = 20622	     --猫猫在哪里
local nMainCityMercenaryTask_17	 = 20623	     --猫猫在哪里
local nMainCityMercenaryTask_18	 = 20624	     --猫猫在哪里
local nMainCityMercenaryTask_19	 = 20625	     --猫猫在哪里
local nMainCityMercenaryTask_20	 = 20626	     --猫猫在哪里


local nMainCityMercenaryTask_21	 = 20627	     --商业兴隆
local nMainCityMercenaryTask_22	 = 20628	     --商业兴隆
local nMainCityMercenaryTask_23	 = 20629	     --商业兴隆
local nMainCityMercenaryTask_24	 = 20630	     --商业兴隆
local nMainCityMercenaryTask_25	 = 20631	     --商业兴隆


local nMainCityMercenaryTask_36	 = 20642	     --请按时缴纳租金
local nMainCityMercenaryTask_37	 = 20643	     --请按时缴纳租金
local nMainCityMercenaryTask_38	 = 20644	     --请按时缴纳租金
local nMainCityMercenaryTask_39	 = 20645	     --请按时缴纳租金
local nMainCityMercenaryTask_40	 = 20646	     --请按时缴纳租金

local nTianKongLastMainTask = 10496 --天空城最后一个主线任务
 
--采集
local nCollect_1 =  60252    -- 草坪
local nCollect_GenId_1 = 1000160
--local nCollect_2 =  60253    -- 货架
--local nCollect_GenId_2 = 1000161   
--怪物
local nMonster_Group_1 =  900359    -- 潜伏的奸细 
local nMonster_Group_GenId_1 = 1000162
local nMonster_Group_2 =  900360    -- 巨斧吉塔 
local nMonster_Group_GenId_2 = 1000163

--陷阱
local nTrap_1 =  30486    -- 护送陷阱1 
local nTrap_GenId_1 = 1000164

local nDialog_1  = 11441 -- 传达不到的心
local nDialog_2  = 11442 -- 传达不到的心 到达后
local nDialog_3  = 11443 -- 兼职维修员
local nDialog_4  = 11444 -- 兼职维修员 到达后
local nDialog_5  = 11445 -- 云端彼岸
local nDialog_18 = 13295 -- 云端彼岸 到达后 
local nDialog_6  = 11446 -- 云端彼岸 到达后 未完成天空城主线最后一个任务
local nDialog_16 = 11456 -- 云端彼岸 完成完成天空城主线最后一个任务
local nDialog_7  = 11452 -- 猫猫在哪里
local nDialog_8  = 11453 -- 猫猫在哪里 到达后
local nDialog_9  = 11454 -- 商业兴隆
local nDialog_10 = 11455 -- 商业兴隆  采集前对白
local nDialog_17 = 11457 -- 商业兴隆  采集后对白
local nDialog_10_1 = 13292 --商业兴隆 对白选项1对白
local nDialog_10_2 = 13293 --商业兴隆 对白选项2对白
local nDialog_13 = 11458 -- 请按时缴纳租金
local nDialog_14 = 11459 -- 请按时缴纳租金 
local nDialog_15 = 13294 -- 请按时缴纳租金 战斗前


--rwtDialog[nDialog_18] = {}
--rwtDialog[nDialog_18]["DialogEnd"] = function ()
--    if rwTaskIsSuccess(nTianKongLastMainTask) then
--        rwOpenNpcChatDialog(nDialog_16,CONST_NPCCHAT_TYPE.TASK)
--    else
--        rwOpenNpcChatDialog(nDialog_6,CONST_NPCCHAT_TYPE.TASK)
--    end
--end


rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
rwtNpcGroup[nCollect_1]["DialogId"] = nDialog_10


rwtNpcGroup[20466] = rwtNpcGroup[20466] or {}
rwtNpcGroup[20466]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[20466]["NpcId"]= 3469

rwtNpc[3469] = rwtNpc[3469] or {}

----左相特使
local tSingleNpc = {}
--tSingleNpc.nNpc_ZouXiangTeShi = 3652
--tSingleNpc.nNpcGroup_ZouXiangTeShi =  20581 
--tSingleNpc.nNpcGroup_GenId_ZouXiangTeShi = 1001031
--rwtNpc[tSingleNpc.nNpc_ZouXiangTeShi] = rwtNpc[tSingleNpc.nNpc_ZouXiangTeShi] or {}
--rwtNpcGroup[tSingleNpc.nNpcGroup_ZouXiangTeShi] = rwtNpcGroup[tSingleNpc.nNpcGroup_ZouXiangTeShi] or {} 
--rwtNpcGroup[tSingleNpc.nNpcGroup_ZouXiangTeShi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
--rwtNpcGroup[tSingleNpc.nNpcGroup_ZouXiangTeShi]["NpcId"] = tSingleNpc.nNpc_ZouXiangTeShi

--five猫
tSingleNpc.nNpcGroup_Five = 20217 --自律联盟已有
tSingleNpc.nNpcGroup_Five_Gen = 1000285  --新增 
tSingleNpc.nNpcGroup_Five_Gen_2 = 1001008 --已有
--------------------------------------------------------------------------------------------------------------
function rwMainCity_Mercenary_FiveIsInTask()
    if rwTaskIsAccept(nMainCityMercenaryTask_16) or rwTaskIsAccept(nMainCityMercenaryTask_17) or rwTaskIsAccept(nMainCityMercenaryTask_18) or rwTaskIsAccept(nMainCityMercenaryTask_19) or rwTaskIsAccept(nMainCityMercenaryTask_20) then
           rwAddGenEvent(tSingleNpc.nNpcGroup_Five_Gen)
           rwDelGenEvent(tSingleNpc.nNpcGroup_Five_Gen_2)
    else
           rwAddGenEvent(tSingleNpc.nNpcGroup_Five_Gen_2)
           rwDelGenEvent(tSingleNpc.nNpcGroup_Five_Gen) 
    end
end
rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000]or {}
table.insert(rwtSceneLoad_Func[1000],rwMainCity_Mercenary_FiveIsInTask)
--------------------------------------------------------------------------------------------------------------

rwtTask[nMainCityMercenaryTask_1] = {}
rwtTask[nMainCityMercenaryTask_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21234]
rwtTask[nMainCityMercenaryTask_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_1]["TaskQuality"] = 1
rwtTask[nMainCityMercenaryTask_1]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_1]["TaskNpc"] = 3230                                                                           
rwtTask[nMainCityMercenaryTask_1]["AcceptDialogId"] = nDialog_1
rwtTask[nMainCityMercenaryTask_1]["DialogId"] = nDialog_2
rwtTask[nMainCityMercenaryTask_1]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_1]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_1]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_1]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_1]["StartAutoWay"]["FindWayGroupId"] = 20151
rwtTask[nMainCityMercenaryTask_1]["StartAutoWay"]["FindWayGenId"] = 1000017

rwtTask[nMainCityMercenaryTask_2] = {}
rwtTask[nMainCityMercenaryTask_2]["Title"] = tLuaText[LANGUAGE_CONFIG][21234]
rwtTask[nMainCityMercenaryTask_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_2]["TaskQuality"] = 2
rwtTask[nMainCityMercenaryTask_2]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_2]["TaskNpc"] = 3230
rwtTask[nMainCityMercenaryTask_2]["AcceptDialogId"] = nDialog_1
rwtTask[nMainCityMercenaryTask_2]["DialogId"] = nDialog_2
rwtTask[nMainCityMercenaryTask_2]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_2]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_2]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_2]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_2]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_2]["StartAutoWay"]["FindWayGroupId"] = 20151
rwtTask[nMainCityMercenaryTask_2]["StartAutoWay"]["FindWayGenId"] = 1000017

rwtTask[nMainCityMercenaryTask_3] = {}
rwtTask[nMainCityMercenaryTask_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21234]
rwtTask[nMainCityMercenaryTask_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_3]["TaskQuality"] = 3
rwtTask[nMainCityMercenaryTask_3]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_3]["TaskNpc"] = 3230
rwtTask[nMainCityMercenaryTask_3]["AcceptDialogId"] = nDialog_1
rwtTask[nMainCityMercenaryTask_3]["DialogId"] = nDialog_2
rwtTask[nMainCityMercenaryTask_3]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_3]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_3]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_3]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_3]["StartAutoWay"]["FindWayGroupId"] = 20151
rwtTask[nMainCityMercenaryTask_3]["StartAutoWay"]["FindWayGenId"] = 1000017

rwtTask[nMainCityMercenaryTask_4] = {}
rwtTask[nMainCityMercenaryTask_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21234]
rwtTask[nMainCityMercenaryTask_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_4]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_4]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_4]["TaskNpc"] = 3230
rwtTask[nMainCityMercenaryTask_4]["AcceptDialogId"] = nDialog_1
rwtTask[nMainCityMercenaryTask_4]["DialogId"] = nDialog_2
rwtTask[nMainCityMercenaryTask_4]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_4]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_4]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_4]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_4]["StartAutoWay"]["FindWayGroupId"] = 20151
rwtTask[nMainCityMercenaryTask_4]["StartAutoWay"]["FindWayGenId"] = 1000017

rwtTask[nMainCityMercenaryTask_5] = {}
rwtTask[nMainCityMercenaryTask_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21234]
rwtTask[nMainCityMercenaryTask_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_5]["TaskQuality"] = 5
rwtTask[nMainCityMercenaryTask_5]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_5]["TaskNpc"] = 3230
rwtTask[nMainCityMercenaryTask_5]["AcceptDialogId"] = nDialog_1
rwtTask[nMainCityMercenaryTask_5]["DialogId"] = nDialog_2
rwtTask[nMainCityMercenaryTask_5]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_5]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_5]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_5]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_5]["StartAutoWay"]["FindWayGroupId"] = 20151
rwtTask[nMainCityMercenaryTask_5]["StartAutoWay"]["FindWayGenId"] = 1000017

rwtTask[nMainCityMercenaryTask_6] = {}
rwtTask[nMainCityMercenaryTask_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21239]
rwtTask[nMainCityMercenaryTask_6]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_6]["TaskQuality"] = 1
rwtTask[nMainCityMercenaryTask_6]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_6]["TaskNpc"] = 3192
rwtTask[nMainCityMercenaryTask_6]["AcceptDialogId"] = nDialog_3
rwtTask[nMainCityMercenaryTask_6]["DialogId"] = nDialog_4
rwtTask[nMainCityMercenaryTask_6]["AwardGroupId"] = 2
rwtTask[nMainCityMercenaryTask_6]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_6]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_6]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_6]["StartAutoWay"]["FindWayGroupId"] = 20146
rwtTask[nMainCityMercenaryTask_6]["StartAutoWay"]["FindWayGenId"] = 1000012

rwtTask[nMainCityMercenaryTask_7] = {}
rwtTask[nMainCityMercenaryTask_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21239]
rwtTask[nMainCityMercenaryTask_7]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_7]["TaskQuality"] = 2
rwtTask[nMainCityMercenaryTask_7]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_7]["TaskNpc"] = 3192
rwtTask[nMainCityMercenaryTask_7]["AcceptDialogId"] = nDialog_3
rwtTask[nMainCityMercenaryTask_7]["DialogId"] = nDialog_4
rwtTask[nMainCityMercenaryTask_7]["AwardGroupId"] = 2
rwtTask[nMainCityMercenaryTask_7]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_7]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_7]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_7]["StartAutoWay"]["FindWayGroupId"] = 20146
rwtTask[nMainCityMercenaryTask_7]["StartAutoWay"]["FindWayGenId"] = 1000012

rwtTask[nMainCityMercenaryTask_8] = {}
rwtTask[nMainCityMercenaryTask_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21239]
rwtTask[nMainCityMercenaryTask_8]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_8]["TaskQuality"] = 3
rwtTask[nMainCityMercenaryTask_8]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_8]["TaskNpc"] = 3192
rwtTask[nMainCityMercenaryTask_8]["AcceptDialogId"] = nDialog_3
rwtTask[nMainCityMercenaryTask_8]["DialogId"] = nDialog_4
rwtTask[nMainCityMercenaryTask_8]["AwardGroupId"] = 2
rwtTask[nMainCityMercenaryTask_8]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_8]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_8]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_8]["StartAutoWay"]["FindWayGroupId"] = 20146
rwtTask[nMainCityMercenaryTask_8]["StartAutoWay"]["FindWayGenId"] = 1000012

rwtTask[nMainCityMercenaryTask_9] = {}
rwtTask[nMainCityMercenaryTask_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21239]
rwtTask[nMainCityMercenaryTask_9]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_9]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_9]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_9]["TaskNpc"] = 3192
rwtTask[nMainCityMercenaryTask_9]["AcceptDialogId"] = nDialog_3
rwtTask[nMainCityMercenaryTask_9]["DialogId"] = nDialog_4
rwtTask[nMainCityMercenaryTask_9]["AwardGroupId"] = 2
rwtTask[nMainCityMercenaryTask_9]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_9]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_9]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_9]["StartAutoWay"]["FindWayGroupId"] = 20146
rwtTask[nMainCityMercenaryTask_9]["StartAutoWay"]["FindWayGenId"] = 1000012

rwtTask[nMainCityMercenaryTask_10] = {}
rwtTask[nMainCityMercenaryTask_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21239]
rwtTask[nMainCityMercenaryTask_10]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_10]["TaskQuality"] = 5
rwtTask[nMainCityMercenaryTask_10]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_10]["TaskNpc"] = 3192
rwtTask[nMainCityMercenaryTask_10]["AcceptDialogId"] = nDialog_3
rwtTask[nMainCityMercenaryTask_10]["DialogId"] = nDialog_4
rwtTask[nMainCityMercenaryTask_10]["AwardGroupId"] = 2
rwtTask[nMainCityMercenaryTask_10]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_10]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_10]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_10]["StartAutoWay"]["FindWayGroupId"] = 20146
rwtTask[nMainCityMercenaryTask_10]["StartAutoWay"]["FindWayGenId"] = 1000012

rwtTask[nMainCityMercenaryTask_11] = {}
rwtTask[nMainCityMercenaryTask_11]["Title"] = tLuaText[LANGUAGE_CONFIG][21244]
rwtTask[nMainCityMercenaryTask_11]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_11]["TaskQuality"] = 1
rwtTask[nMainCityMercenaryTask_11]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_11]["AwardGroupId"] = 3
rwtTask[nMainCityMercenaryTask_11]["TaskNpc"] = 3231
rwtTask[nMainCityMercenaryTask_11]["AcceptDialogId"] = nDialog_5
--rwtTask[nMainCityMercenaryTask_11]["DialogId"] = nDialog_18
rwtTask[nMainCityMercenaryTask_11]["FinishDialogId"] = {nDialog_6,nDialog_16}
--rwtTask[nMainCityMercenaryTask_11]["NotCompleteByDialogId"] = 1
rwtTask[nMainCityMercenaryTask_11]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_11]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_11]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_11]["StartAutoWay"]["FindWayGroupId"] = 20148
rwtTask[nMainCityMercenaryTask_11]["StartAutoWay"]["FindWayGenId"] = 1000014
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["CondTask"]["IsFinish"] = true
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_16
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = nMainCityMercenaryTask_11
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["CondTask"]["IsFinish"] = false
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogId"] = nDialog_6
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_11]["NpcEndAward"]["Events"][2]["OpenDialog"]["nId"] = nMainCityMercenaryTask_11 
-- rwtTask[nMainCityMercenaryTask_11]["DialogueEndFunc"] = function ()
--     if rwTaskIsSuccess(nTianKongLastMainTask) then
--         rwOpenNpcChatDialog(nDialog_16,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_11)
--     else
--         rwOpenNpcChatDialog(nDialog_6,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_11)
--     end
-- end

rwtTask[nMainCityMercenaryTask_12] = {}
rwtTask[nMainCityMercenaryTask_12]["Title"] = tLuaText[LANGUAGE_CONFIG][21244]
rwtTask[nMainCityMercenaryTask_12]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_12]["TaskQuality"] = 2
rwtTask[nMainCityMercenaryTask_12]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_12]["AwardGroupId"] = 3
rwtTask[nMainCityMercenaryTask_12]["TaskNpc"] = 3231
rwtTask[nMainCityMercenaryTask_12]["AcceptDialogId"] = nDialog_5
--rwtTask[nMainCityMercenaryTask_12]["DialogId"] = nDialog_18
rwtTask[nMainCityMercenaryTask_12]["FinishDialogId"] = {nDialog_6,nDialog_16}
--rwtTask[nMainCityMercenaryTask_12]["NotCompleteByDialogId"] = 1
rwtTask[nMainCityMercenaryTask_12]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_12]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_12]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_12]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_12]["StartAutoWay"]["FindWayGroupId"] = 20148
rwtTask[nMainCityMercenaryTask_12]["StartAutoWay"]["FindWayGenId"] = 1000014
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["CondTask"]["IsFinish"] = true
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_16
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = nMainCityMercenaryTask_12
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["CondTask"]["IsFinish"] = false
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogId"] = nDialog_6
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_12]["NpcEndAward"]["Events"][2]["OpenDialog"]["nId"] = nMainCityMercenaryTask_12 
-- rwtTask[nMainCityMercenaryTask_12]["DialogueEndFunc"] = function ()
    -- if rwTaskIsSuccess(nTianKongLastMainTask) then
        -- rwOpenNpcChatDialog(nDialog_16,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_12)
    -- else
        -- rwOpenNpcChatDialog(nDialog_6,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_12)
    -- end
-- end

rwtTask[nMainCityMercenaryTask_13] = {}
rwtTask[nMainCityMercenaryTask_13]["Title"] = tLuaText[LANGUAGE_CONFIG][21244]
rwtTask[nMainCityMercenaryTask_13]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_13]["TaskQuality"] = 3
rwtTask[nMainCityMercenaryTask_13]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_13]["AwardGroupId"] = 3
rwtTask[nMainCityMercenaryTask_13]["TaskNpc"] = 3231
rwtTask[nMainCityMercenaryTask_13]["AcceptDialogId"] = nDialog_5
--rwtTask[nMainCityMercenaryTask_13]["DialogId"] = nDialog_18
rwtTask[nMainCityMercenaryTask_13]["FinishDialogId"] = {nDialog_6,nDialog_16}
--rwtTask[nMainCityMercenaryTask_13]["NotCompleteByDialogId"] = 1
rwtTask[nMainCityMercenaryTask_13]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_13]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_13]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_13]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_13]["StartAutoWay"]["FindWayGroupId"] = 20148
rwtTask[nMainCityMercenaryTask_13]["StartAutoWay"]["FindWayGenId"] = 1000014
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["CondTask"]["IsFinish"] = true
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_16
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = nMainCityMercenaryTask_13
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["CondTask"]["IsFinish"] = false
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogId"] = nDialog_6
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_13]["NpcEndAward"]["Events"][2]["OpenDialog"]["nId"] = nMainCityMercenaryTask_13 
-- rwtTask[nMainCityMercenaryTask_13]["DialogueEndFunc"] = function ()
    -- if rwTaskIsSuccess(nTianKongLastMainTask) then
        -- rwOpenNpcChatDialog(nDialog_16,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_13)
    -- else
        -- rwOpenNpcChatDialog(nDialog_6,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_13)
    -- end
-- end

rwtTask[nMainCityMercenaryTask_14] = {}
rwtTask[nMainCityMercenaryTask_14]["Title"] = tLuaText[LANGUAGE_CONFIG][21244]
rwtTask[nMainCityMercenaryTask_14]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_14]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_14]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_14]["AwardGroupId"] = 3
rwtTask[nMainCityMercenaryTask_14]["TaskNpc"] = 3231
rwtTask[nMainCityMercenaryTask_14]["AcceptDialogId"] = nDialog_5
--rwtTask[nMainCityMercenaryTask_14]["DialogId"] = nDialog_18
rwtTask[nMainCityMercenaryTask_14]["FinishDialogId"] = {nDialog_6,nDialog_16}
--rwtTask[nMainCityMercenaryTask_14]["NotCompleteByDialogId"] = 1
rwtTask[nMainCityMercenaryTask_14]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_14]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_14]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_14]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_14]["StartAutoWay"]["FindWayGroupId"] = 20148
rwtTask[nMainCityMercenaryTask_14]["StartAutoWay"]["FindWayGenId"] = 1000014
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["CondTask"]["IsFinish"] = true
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_16
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = nMainCityMercenaryTask_14
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["CondTask"]["IsFinish"] = false
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogId"] = nDialog_6
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_14]["NpcEndAward"]["Events"][2]["OpenDialog"]["nId"] = nMainCityMercenaryTask_14 
-- rwtTask[nMainCityMercenaryTask_14]["DialogueEndFunc"] = function ()
    -- if rwTaskIsSuccess(nTianKongLastMainTask) then
        -- rwOpenNpcChatDialog(nDialog_16,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_14)
    -- else
        -- rwOpenNpcChatDialog(nDialog_6,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_14)
    -- end
-- end

rwtTask[nMainCityMercenaryTask_15] = {}
rwtTask[nMainCityMercenaryTask_15]["Title"] = tLuaText[LANGUAGE_CONFIG][21244]
rwtTask[nMainCityMercenaryTask_15]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_15]["TaskQuality"] = 5
rwtTask[nMainCityMercenaryTask_15]["MercenaryTownId"] = 200101
rwtTask[nMainCityMercenaryTask_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_15]["AwardGroupId"] = 3
rwtTask[nMainCityMercenaryTask_15]["TaskNpc"] = 3231
rwtTask[nMainCityMercenaryTask_15]["AcceptDialogId"] = nDialog_5
--rwtTask[nMainCityMercenaryTask_15]["DialogId"] = nDialog_18
rwtTask[nMainCityMercenaryTask_15]["FinishDialogId"] = {nDialog_6,nDialog_16}
--rwtTask[nMainCityMercenaryTask_15]["NotCompleteByDialogId"] = 1
rwtTask[nMainCityMercenaryTask_15]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_15]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_15]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_15]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_15]["StartAutoWay"]["FindWayGroupId"] = 20148
rwtTask[nMainCityMercenaryTask_15]["StartAutoWay"]["FindWayGenId"] = 1000014
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["CondTask"]["IsFinish"] = true
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_16
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][1]["OpenDialog"]["nId"] = nMainCityMercenaryTask_15
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["CondTask"] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["CondTask"]["TaskId"] = nTianKongLastMainTask
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["CondTask"]["IsFinish"] = false
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["OpenDialog"] = {}
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogId"] = nDialog_6
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["OpenDialog"]["DialogType"] = CONST_NPCCHAT_TYPE.TASK
rwtTask[nMainCityMercenaryTask_15]["NpcEndAward"]["Events"][2]["OpenDialog"]["nId"] = nMainCityMercenaryTask_15 
-- rwtTask[nMainCityMercenaryTask_15]["DialogueEndFunc"] = function ()
    -- if rwTaskIsSuccess(nTianKongLastMainTask) then
        -- rwOpenNpcChatDialog(nDialog_16,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_15)
    -- else
        -- rwOpenNpcChatDialog(nDialog_6,CONST_NPCCHAT_TYPE.TASK,nMainCityMercenaryTask_15)
    -- end
-- end

rwtTask[nMainCityMercenaryTask_16] = {}
rwtTask[nMainCityMercenaryTask_16]["Title"] = tLuaText[LANGUAGE_CONFIG][21249]
rwtTask[nMainCityMercenaryTask_16]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_16]["TaskQuality"] = 1
rwtTask[nMainCityMercenaryTask_16]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_16]["TaskNpc"] = 3180
rwtTask[nMainCityMercenaryTask_16]["AcceptDialogId"] = nDialog_7
rwtTask[nMainCityMercenaryTask_16]["DialogId"] = nDialog_8
rwtTask[nMainCityMercenaryTask_16]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_16]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_16]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_16]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_16]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_16]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_16]["AcceptDelDynaObj"] = {tSingleNpc.nNpcGroup_Five_Gen_2}
rwtTask[nMainCityMercenaryTask_16]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_16]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_16]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Five
rwtTask[nMainCityMercenaryTask_16]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_16]["AwardFunc"] = function ()
    rwMainCity_Mercenary_FiveIsInTask()
end

rwtTask[nMainCityMercenaryTask_17] = {}
rwtTask[nMainCityMercenaryTask_17]["Title"] = tLuaText[LANGUAGE_CONFIG][21249]
rwtTask[nMainCityMercenaryTask_17]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_17]["TaskQuality"] = 2
rwtTask[nMainCityMercenaryTask_17]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_17]["TaskNpc"] = 3180
rwtTask[nMainCityMercenaryTask_17]["AcceptDialogId"] = nDialog_7
rwtTask[nMainCityMercenaryTask_17]["DialogId"] = nDialog_8
rwtTask[nMainCityMercenaryTask_17]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_17]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_17]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_17]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_17]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_17]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_17]["AcceptDelDynaObj"] = {tSingleNpc.nNpcGroup_Five_Gen_2}
rwtTask[nMainCityMercenaryTask_17]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_17]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_17]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Five
rwtTask[nMainCityMercenaryTask_17]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_17]["AwardFunc"] = rwtTask[nMainCityMercenaryTask_16]["AwardFunc"]


rwtTask[nMainCityMercenaryTask_18] = {}
rwtTask[nMainCityMercenaryTask_18]["Title"] = tLuaText[LANGUAGE_CONFIG][21249]
rwtTask[nMainCityMercenaryTask_18]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_18]["TaskQuality"] = 3
rwtTask[nMainCityMercenaryTask_18]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_18]["TaskNpc"] = 3180
rwtTask[nMainCityMercenaryTask_18]["AcceptDialogId"] = nDialog_7
rwtTask[nMainCityMercenaryTask_18]["DialogId"] = nDialog_8
rwtTask[nMainCityMercenaryTask_18]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_18]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_18]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_18]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_18]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_18]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_18]["AcceptDelDynaObj"] = {tSingleNpc.nNpcGroup_Five_Gen_2}
rwtTask[nMainCityMercenaryTask_18]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_18]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_18]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Five
rwtTask[nMainCityMercenaryTask_18]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_18]["AwardFunc"] = rwtTask[nMainCityMercenaryTask_16]["AwardFunc"]

rwtTask[nMainCityMercenaryTask_19] = {}
rwtTask[nMainCityMercenaryTask_19]["Title"] = tLuaText[LANGUAGE_CONFIG][21249]
rwtTask[nMainCityMercenaryTask_19]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_19]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_19]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_19]["TaskNpc"] = 3180
rwtTask[nMainCityMercenaryTask_19]["AcceptDialogId"] = nDialog_7
rwtTask[nMainCityMercenaryTask_19]["DialogId"] = nDialog_8
rwtTask[nMainCityMercenaryTask_19]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_19]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_19]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_19]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_19]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_19]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_19]["AcceptDelDynaObj"] = {tSingleNpc.nNpcGroup_Five_Gen_2}
rwtTask[nMainCityMercenaryTask_19]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_19]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_19]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Five
rwtTask[nMainCityMercenaryTask_19]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_19]["AwardFunc"] = rwtTask[nMainCityMercenaryTask_16]["AwardFunc"]

rwtTask[nMainCityMercenaryTask_20] = {}
rwtTask[nMainCityMercenaryTask_20]["Title"] = tLuaText[LANGUAGE_CONFIG][21249]
rwtTask[nMainCityMercenaryTask_20]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_20]["TaskQuality"] = 5
rwtTask[nMainCityMercenaryTask_20]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nMainCityMercenaryTask_20]["TaskNpc"] = 3180
rwtTask[nMainCityMercenaryTask_20]["AcceptDialogId"] = nDialog_7
rwtTask[nMainCityMercenaryTask_20]["DialogId"] = nDialog_8
rwtTask[nMainCityMercenaryTask_20]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_20]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_20]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_20]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_20]["DynaNpcGroupGen"][1]["GenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_20]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_20]["AcceptDelDynaObj"] = {tSingleNpc.nNpcGroup_Five_Gen_2}
rwtTask[nMainCityMercenaryTask_20]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_20]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_20]["StartAutoWay"]["FindWayGroupId"] = tSingleNpc.nNpcGroup_Five
rwtTask[nMainCityMercenaryTask_20]["StartAutoWay"]["FindWayGenId"] = tSingleNpc.nNpcGroup_Five_Gen
rwtTask[nMainCityMercenaryTask_20]["AwardFunc"] = rwtTask[nMainCityMercenaryTask_16]["AwardFunc"]

rwtTask[nMainCityMercenaryTask_21] = {}
rwtTask[nMainCityMercenaryTask_21]["Title"] = tLuaText[LANGUAGE_CONFIG][21254]
rwtTask[nMainCityMercenaryTask_21]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_21]["TaskQuality"] = 1
rwtTask[nMainCityMercenaryTask_21]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nMainCityMercenaryTask_21]["AcceptDialogId"] = nDialog_9
rwtTask[nMainCityMercenaryTask_21]["DialogId"] = nDialog_17
rwtTask[nMainCityMercenaryTask_21]["ReqCollectId1"] = nCollect_1
rwtTask[nMainCityMercenaryTask_21]["ReqCollectCount1"] = 1
rwtTask[nMainCityMercenaryTask_21]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_21]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_21]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_21]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_21]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_21]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_21]["StartAutoWay"] ={}
rwtTask[nMainCityMercenaryTask_21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_21]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_21]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nMainCityMercenaryTask_21]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_21]["FinishDialogId"] = {nDialog_10_1,nDialog_10_2}
rwtTask[nMainCityMercenaryTask_21]["DialogOption"] = {}
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17] = {}
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17][1] = {} --1表示选项1
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17][1]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17][1]["DialogId"] = nDialog_10_1
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17][2] = {} --2表示选项2
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17][2]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_21]["DialogOption"][nDialog_17][2]["DialogId"] = nDialog_10_2

rwtTask[nMainCityMercenaryTask_22] = {}
rwtTask[nMainCityMercenaryTask_22]["Title"] = tLuaText[LANGUAGE_CONFIG][21254]
rwtTask[nMainCityMercenaryTask_22]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_22]["TaskQuality"] = 2
rwtTask[nMainCityMercenaryTask_22]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nMainCityMercenaryTask_22]["AcceptDialogId"] = nDialog_9
rwtTask[nMainCityMercenaryTask_22]["DialogId"] = nDialog_17
rwtTask[nMainCityMercenaryTask_22]["ReqCollectId1"] = nCollect_1
rwtTask[nMainCityMercenaryTask_22]["ReqCollectCount1"] = 1
rwtTask[nMainCityMercenaryTask_22]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_22]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_22]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_22]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_22]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_22]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_22]["StartAutoWay"] ={}
rwtTask[nMainCityMercenaryTask_22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_22]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_22]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nMainCityMercenaryTask_22]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_22]["FinishDialogId"] = {nDialog_10_1,nDialog_10_2}
rwtTask[nMainCityMercenaryTask_22]["DialogOption"] = {}
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17] = {}
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17][1] = {} --1表示选项1
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17][1]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17][1]["DialogId"] = nDialog_10_1
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17][2] = {} --2表示选项2
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17][2]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_22]["DialogOption"][nDialog_17][2]["DialogId"] = nDialog_10_2

rwtTask[nMainCityMercenaryTask_23] = {}
rwtTask[nMainCityMercenaryTask_23]["Title"] = tLuaText[LANGUAGE_CONFIG][21254]
rwtTask[nMainCityMercenaryTask_23]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_23]["TaskQuality"] = 3
rwtTask[nMainCityMercenaryTask_23]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nMainCityMercenaryTask_23]["AcceptDialogId"] = nDialog_9
rwtTask[nMainCityMercenaryTask_23]["DialogId"] = nDialog_17
rwtTask[nMainCityMercenaryTask_23]["ReqCollectId1"] = nCollect_1
rwtTask[nMainCityMercenaryTask_23]["ReqCollectCount1"] = 1
rwtTask[nMainCityMercenaryTask_23]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_23]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_23]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_23]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_23]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_23]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_23]["StartAutoWay"] ={}
rwtTask[nMainCityMercenaryTask_23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_23]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_23]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nMainCityMercenaryTask_23]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_23]["FinishDialogId"] = {nDialog_10_1,nDialog_10_2}
rwtTask[nMainCityMercenaryTask_23]["DialogOption"] = {}
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17] = {}
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17][1] = {} --1表示选项1
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17][1]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17][1]["DialogId"] = nDialog_10_1
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17][2] = {} --2表示选项2
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17][2]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_23]["DialogOption"][nDialog_17][2]["DialogId"] = nDialog_10_2

rwtTask[nMainCityMercenaryTask_24] = {}
rwtTask[nMainCityMercenaryTask_24]["Title"] = tLuaText[LANGUAGE_CONFIG][21254]
rwtTask[nMainCityMercenaryTask_24]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_24]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_24]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nMainCityMercenaryTask_24]["AcceptDialogId"] = nDialog_9
rwtTask[nMainCityMercenaryTask_24]["DialogId"] = nDialog_17
rwtTask[nMainCityMercenaryTask_24]["ReqCollectId1"] = nCollect_1
rwtTask[nMainCityMercenaryTask_24]["ReqCollectCount1"] = 1
rwtTask[nMainCityMercenaryTask_24]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_24]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_24]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_24]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_24]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_24]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_24]["StartAutoWay"] ={}
rwtTask[nMainCityMercenaryTask_24]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_24]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_24]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nMainCityMercenaryTask_24]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_24]["FinishDialogId"] = {nDialog_10_1,nDialog_10_2}
rwtTask[nMainCityMercenaryTask_24]["DialogOption"] = {}
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17] = {}
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17][1] = {} --1表示选项1
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17][1]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17][1]["DialogId"] = nDialog_10_1
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17][2] = {} --2表示选项2
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17][2]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_24]["DialogOption"][nDialog_17][2]["DialogId"] = nDialog_10_2

rwtTask[nMainCityMercenaryTask_25] = {}
rwtTask[nMainCityMercenaryTask_25]["Title"] = tLuaText[LANGUAGE_CONFIG][21254]
rwtTask[nMainCityMercenaryTask_25]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_25]["TaskQuality"] = 5
rwtTask[nMainCityMercenaryTask_25]["MercenaryTownId"] = 200102
rwtTask[nMainCityMercenaryTask_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.CHOOSE_OPTION
rwtTask[nMainCityMercenaryTask_25]["AcceptDialogId"] = nDialog_9
rwtTask[nMainCityMercenaryTask_25]["DialogId"] = nDialog_17
rwtTask[nMainCityMercenaryTask_25]["ReqCollectId1"] = nCollect_1
rwtTask[nMainCityMercenaryTask_25]["ReqCollectCount1"] = 1
rwtTask[nMainCityMercenaryTask_25]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_25]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_25]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_25]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[nMainCityMercenaryTask_25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_25]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_25]["AwardGroupId"] = 1
rwtTask[nMainCityMercenaryTask_25]["StartAutoWay"] ={}
rwtTask[nMainCityMercenaryTask_25]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_25]["StartAutoWay"]["FindWayMapId"] = 1000
rwtTask[nMainCityMercenaryTask_25]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nMainCityMercenaryTask_25]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_1
rwtTask[nMainCityMercenaryTask_25]["FinishDialogId"] = {nDialog_10_1,nDialog_10_2}
rwtTask[nMainCityMercenaryTask_25]["DialogOption"] = {}
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17] = {}
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17][1] = {} --1表示选项1
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17][1]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17][1]["DialogId"] = nDialog_10_1
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17][2] = {} --2表示选项2
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17][2]["type"] = CONST_TASK_DIALOG_OPTION_TYPE.Dialog
rwtTask[nMainCityMercenaryTask_25]["DialogOption"][nDialog_17][2]["DialogId"] = nDialog_10_2

--rwtTask[nMainCityMercenaryTask_26] = {}
--rwtTask[nMainCityMercenaryTask_26]["Title"] = tLuaText[LANGUAGE_CONFIG][21259]
--rwtTask[nMainCityMercenaryTask_26]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_26]["TaskQuality"] = 1
--rwtTask[nMainCityMercenaryTask_26]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[nMainCityMercenaryTask_26]["AcceptDialogId"] = nDialog_10
--rwtTask[nMainCityMercenaryTask_26]["ReqCollectId1"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_26]["ReqCollectCount1"] = 1
--rwtTask[nMainCityMercenaryTask_26]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_26]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_26]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
--rwtTask[nMainCityMercenaryTask_26]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[nMainCityMercenaryTask_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_26]["IsClickComplete"] = 0
--rwtTask[nMainCityMercenaryTask_26]["AwardGroupId"] = 2
--rwtTask[nMainCityMercenaryTask_26]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_26]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_26]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_26]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_26]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_2

--rwtTask[nMainCityMercenaryTask_27] = {}
--rwtTask[nMainCityMercenaryTask_27]["Title"] = tLuaText[LANGUAGE_CONFIG][21260]
--rwtTask[nMainCityMercenaryTask_27]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_27]["TaskQuality"] = 2
--rwtTask[nMainCityMercenaryTask_27]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[nMainCityMercenaryTask_27]["AcceptDialogId"] = nDialog_10
--rwtTask[nMainCityMercenaryTask_27]["ReqCollectId1"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_27]["ReqCollectCount1"] = 1
--rwtTask[nMainCityMercenaryTask_27]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_27]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_27]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
--rwtTask[nMainCityMercenaryTask_27]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[nMainCityMercenaryTask_27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_27]["IsClickComplete"] = 0
--rwtTask[nMainCityMercenaryTask_27]["AwardGroupId"] = 2
--rwtTask[nMainCityMercenaryTask_27]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_27]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_27]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_27]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_27]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_2

--rwtTask[nMainCityMercenaryTask_28] = {}
--rwtTask[nMainCityMercenaryTask_28]["Title"] = tLuaText[LANGUAGE_CONFIG][21261]
--rwtTask[nMainCityMercenaryTask_28]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_28]["TaskQuality"] = 3
--rwtTask[nMainCityMercenaryTask_28]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[nMainCityMercenaryTask_28]["AcceptDialogId"] = nDialog_10
--rwtTask[nMainCityMercenaryTask_28]["ReqCollectId1"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_28]["ReqCollectCount1"] = 1
--rwtTask[nMainCityMercenaryTask_28]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_28]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_28]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
--rwtTask[nMainCityMercenaryTask_28]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[nMainCityMercenaryTask_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_28]["IsClickComplete"] = 0
--rwtTask[nMainCityMercenaryTask_28]["AwardGroupId"] = 2
--rwtTask[nMainCityMercenaryTask_28]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_28]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_28]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_28]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_28]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_2

--rwtTask[nMainCityMercenaryTask_29] = {}
--rwtTask[nMainCityMercenaryTask_29]["Title"] = tLuaText[LANGUAGE_CONFIG][21262]
--rwtTask[nMainCityMercenaryTask_29]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_29]["TaskQuality"] = 4
--rwtTask[nMainCityMercenaryTask_29]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[nMainCityMercenaryTask_29]["AcceptDialogId"] = nDialog_10
--rwtTask[nMainCityMercenaryTask_29]["ReqCollectId1"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_29]["ReqCollectCount1"] = 1
--rwtTask[nMainCityMercenaryTask_29]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_29]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_29]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
--rwtTask[nMainCityMercenaryTask_29]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[nMainCityMercenaryTask_29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_29]["IsClickComplete"] = 0
--rwtTask[nMainCityMercenaryTask_29]["AwardGroupId"] = 2
--rwtTask[nMainCityMercenaryTask_29]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_29]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_29]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_29]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_29]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_2

--rwtTask[nMainCityMercenaryTask_30] = {}
--rwtTask[nMainCityMercenaryTask_30]["Title"] = tLuaText[LANGUAGE_CONFIG][21263]
--rwtTask[nMainCityMercenaryTask_30]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_30]["TaskQuality"] = 5
--rwtTask[nMainCityMercenaryTask_30]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
--rwtTask[nMainCityMercenaryTask_30]["AcceptDialogId"] = nDialog_10
--rwtTask[nMainCityMercenaryTask_30]["ReqCollectId1"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_30]["ReqCollectCount1"] = 1
--rwtTask[nMainCityMercenaryTask_30]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_30]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_30]["DynaNpcGroupGen"][1]["GenId"] = nCollect_GenId_2
--rwtTask[nMainCityMercenaryTask_30]["DynaNpcGroupGen"][1]["MapId"] = 1000
--rwtTask[nMainCityMercenaryTask_30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_30]["IsClickComplete"] = 0
--rwtTask[nMainCityMercenaryTask_30]["AwardGroupId"] = 2
--rwtTask[nMainCityMercenaryTask_30]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_30]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_30]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_30]["StartAutoWay"]["FindWayGroupId"] = nCollect_2
--rwtTask[nMainCityMercenaryTask_30]["StartAutoWay"]["FindWayGenId"] = nCollect_GenId_2

--rwtTask[nMainCityMercenaryTask_31] = {}
--rwtTask[nMainCityMercenaryTask_31]["Title"] = tLuaText[LANGUAGE_CONFIG][21264]
--rwtTask[nMainCityMercenaryTask_31]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_31]["TaskQuality"] = 1
--rwtTask[nMainCityMercenaryTask_31]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_31]["AwardGroupId"] = 3
--rwtTask[nMainCityMercenaryTask_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[nMainCityMercenaryTask_31]["TaskNpc"] = 3469
--rwtTask[nMainCityMercenaryTask_31]["AcceptDialogId"] = nDialog_11
--rwtTask[nMainCityMercenaryTask_31]["DialogId"] = nDialog_12
--rwtTask[nMainCityMercenaryTask_31]["MonsterGroupGenId"] = nMonster_Group_GenId_1       
--rwtTask[nMainCityMercenaryTask_31]["KillMonsterGroup1"] = nMonster_Group_1 
--rwtTask[nMainCityMercenaryTask_31]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_31]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_31]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_1 
--rwtTask[nMainCityMercenaryTask_31]["DynaNpcGroupGen"][1]["MapId"] =  1000
--rwtTask[nMainCityMercenaryTask_31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_31]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_31]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_31]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_31]["StartAutoWay"]["FindWayGroupId"] = 20466
--rwtTask[nMainCityMercenaryTask_31]["StartAutoWay"]["FindWayGenId"] = 1000060
--rwtTask[nMainCityMercenaryTask_31]["IsClickComplete"] = 0

--rwtTask[nMainCityMercenaryTask_32] = {}
--rwtTask[nMainCityMercenaryTask_32]["Title"] = tLuaText[LANGUAGE_CONFIG][21265]
--rwtTask[nMainCityMercenaryTask_32]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_32]["TaskQuality"] = 2
--rwtTask[nMainCityMercenaryTask_32]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_32]["AwardGroupId"] = 3
--rwtTask[nMainCityMercenaryTask_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[nMainCityMercenaryTask_32]["TaskNpc"] = 3469
--rwtTask[nMainCityMercenaryTask_32]["AcceptDialogId"] = nDialog_11
--rwtTask[nMainCityMercenaryTask_32]["DialogId"] = nDialog_12
--rwtTask[nMainCityMercenaryTask_32]["MonsterGroupGenId"] = nMonster_Group_GenId_1       
--rwtTask[nMainCityMercenaryTask_32]["KillMonsterGroup1"] = nMonster_Group_1 
--rwtTask[nMainCityMercenaryTask_32]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_32]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_32]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_1 
--rwtTask[nMainCityMercenaryTask_32]["DynaNpcGroupGen"][1]["MapId"] =  1000
--rwtTask[nMainCityMercenaryTask_32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_32]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_32]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_32]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_32]["StartAutoWay"]["FindWayGroupId"] = 20466
--rwtTask[nMainCityMercenaryTask_32]["StartAutoWay"]["FindWayGenId"] = 1000060
--rwtTask[nMainCityMercenaryTask_32]["IsClickComplete"] = 0

--rwtTask[nMainCityMercenaryTask_33] = {}
--rwtTask[nMainCityMercenaryTask_33]["Title"] = tLuaText[LANGUAGE_CONFIG][21266]
--rwtTask[nMainCityMercenaryTask_33]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_33]["TaskQuality"] = 3
--rwtTask[nMainCityMercenaryTask_33]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_33]["AwardGroupId"] = 3
--rwtTask[nMainCityMercenaryTask_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[nMainCityMercenaryTask_33]["TaskNpc"] = 3469
--rwtTask[nMainCityMercenaryTask_33]["AcceptDialogId"] = nDialog_11
--rwtTask[nMainCityMercenaryTask_33]["DialogId"] = nDialog_12
--rwtTask[nMainCityMercenaryTask_33]["MonsterGroupGenId"] = nMonster_Group_GenId_1       
--rwtTask[nMainCityMercenaryTask_33]["KillMonsterGroup1"] = nMonster_Group_1 
--rwtTask[nMainCityMercenaryTask_33]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_33]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_33]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_1 
--rwtTask[nMainCityMercenaryTask_33]["DynaNpcGroupGen"][1]["MapId"] =  1000
--rwtTask[nMainCityMercenaryTask_33]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_33]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_33]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_33]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_33]["StartAutoWay"]["FindWayGroupId"] = 20466
--rwtTask[nMainCityMercenaryTask_33]["StartAutoWay"]["FindWayGenId"] = 1000060
--rwtTask[nMainCityMercenaryTask_33]["IsClickComplete"] = 0

--rwtTask[nMainCityMercenaryTask_34] = {}
--rwtTask[nMainCityMercenaryTask_34]["Title"] = tLuaText[LANGUAGE_CONFIG][21267]
--rwtTask[nMainCityMercenaryTask_34]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_34]["TaskQuality"] = 4
--rwtTask[nMainCityMercenaryTask_34]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_34]["AwardGroupId"] = 3
--rwtTask[nMainCityMercenaryTask_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[nMainCityMercenaryTask_34]["TaskNpc"] = 3469
--rwtTask[nMainCityMercenaryTask_34]["AcceptDialogId"] = nDialog_11
--rwtTask[nMainCityMercenaryTask_34]["DialogId"] = nDialog_12
--rwtTask[nMainCityMercenaryTask_34]["MonsterGroupGenId"] = nMonster_Group_GenId_1       
--rwtTask[nMainCityMercenaryTask_34]["KillMonsterGroup1"] = nMonster_Group_1 
--rwtTask[nMainCityMercenaryTask_34]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_34]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_34]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_1 
--rwtTask[nMainCityMercenaryTask_34]["DynaNpcGroupGen"][1]["MapId"] =  1000
--rwtTask[nMainCityMercenaryTask_34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_34]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_34]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_34]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_34]["StartAutoWay"]["FindWayGroupId"] = 20466
--rwtTask[nMainCityMercenaryTask_34]["StartAutoWay"]["FindWayGenId"] = 1000060
--rwtTask[nMainCityMercenaryTask_34]["IsClickComplete"] = 0

--rwtTask[nMainCityMercenaryTask_35] = {}
--rwtTask[nMainCityMercenaryTask_35]["Title"] = tLuaText[LANGUAGE_CONFIG][21268]
--rwtTask[nMainCityMercenaryTask_35]["TaskType"] = CONST_TASK_TYPE.MERCENARY
--rwtTask[nMainCityMercenaryTask_35]["TaskQuality"] = 5
--rwtTask[nMainCityMercenaryTask_35]["MercenaryTownId"] = 200102
--rwtTask[nMainCityMercenaryTask_35]["AwardGroupId"] = 3
--rwtTask[nMainCityMercenaryTask_35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
--rwtTask[nMainCityMercenaryTask_35]["TaskNpc"] = 3469
--rwtTask[nMainCityMercenaryTask_35]["AcceptDialogId"] = nDialog_11
--rwtTask[nMainCityMercenaryTask_35]["DialogId"] = nDialog_12
--rwtTask[nMainCityMercenaryTask_35]["MonsterGroupGenId"] = nMonster_Group_GenId_1       
--rwtTask[nMainCityMercenaryTask_35]["KillMonsterGroup1"] = nMonster_Group_1 
--rwtTask[nMainCityMercenaryTask_35]["DynaNpcGroupGen"] = {}
--rwtTask[nMainCityMercenaryTask_35]["DynaNpcGroupGen"][1] = {}
--rwtTask[nMainCityMercenaryTask_35]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_1 
--rwtTask[nMainCityMercenaryTask_35]["DynaNpcGroupGen"][1]["MapId"] =  1000
--rwtTask[nMainCityMercenaryTask_35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nMainCityMercenaryTask_35]["StartAutoWay"] = {}
--rwtTask[nMainCityMercenaryTask_35]["StartAutoWay"]["FindWayTypeId"] = 1
--rwtTask[nMainCityMercenaryTask_35]["StartAutoWay"]["FindWayMapId"] = 1000
--rwtTask[nMainCityMercenaryTask_35]["StartAutoWay"]["FindWayGroupId"] = 20466
--rwtTask[nMainCityMercenaryTask_35]["StartAutoWay"]["FindWayGenId"] = 1000060
--rwtTask[nMainCityMercenaryTask_35]["IsClickComplete"] = 0

rwtTask[nMainCityMercenaryTask_36] = {}
rwtTask[nMainCityMercenaryTask_36]["Title"] = tLuaText[LANGUAGE_CONFIG][21269]
rwtTask[nMainCityMercenaryTask_36]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_36]["TaskQuality"] = 1
rwtTask[nMainCityMercenaryTask_36]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_36]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nMainCityMercenaryTask_36]["TaskNpc"] = 3227
rwtTask[nMainCityMercenaryTask_36]["AcceptDialogId"] =  nDialog_13
rwtTask[nMainCityMercenaryTask_36]["DialogId"] = nDialog_15
rwtTask[nMainCityMercenaryTask_36]["MonsterGroupGenId"] = nMonster_Group_GenId_2       
rwtTask[nMainCityMercenaryTask_36]["KillMonsterGroup1"] = nMonster_Group_2 
rwtTask[nMainCityMercenaryTask_36]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_36]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_36]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_2 
rwtTask[nMainCityMercenaryTask_36]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[nMainCityMercenaryTask_36]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_36]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_36]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_36]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[nMainCityMercenaryTask_36]["StartAutoWay"]["FindWayGroupId"] =  20269
rwtTask[nMainCityMercenaryTask_36]["StartAutoWay"]["FindWayGenId"] =   1000091
rwtTask[nMainCityMercenaryTask_36]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_36]["IsMercenaryBattleDialog"] = nDialog_14

rwtTask[nMainCityMercenaryTask_37] = {}
rwtTask[nMainCityMercenaryTask_37]["Title"] = tLuaText[LANGUAGE_CONFIG][21269]
rwtTask[nMainCityMercenaryTask_37]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_37]["TaskQuality"] = 2
rwtTask[nMainCityMercenaryTask_37]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_37]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nMainCityMercenaryTask_37]["TaskNpc"] = 3227
rwtTask[nMainCityMercenaryTask_37]["AcceptDialogId"] =  nDialog_13
rwtTask[nMainCityMercenaryTask_37]["DialogId"] = nDialog_15
rwtTask[nMainCityMercenaryTask_37]["MonsterGroupGenId"] = nMonster_Group_GenId_2       
rwtTask[nMainCityMercenaryTask_37]["KillMonsterGroup1"] = nMonster_Group_2 
rwtTask[nMainCityMercenaryTask_37]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_37]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_37]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_2 
rwtTask[nMainCityMercenaryTask_37]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[nMainCityMercenaryTask_37]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_37]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_37]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_37]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[nMainCityMercenaryTask_37]["StartAutoWay"]["FindWayGroupId"] =  20269
rwtTask[nMainCityMercenaryTask_37]["StartAutoWay"]["FindWayGenId"] =   1000091
rwtTask[nMainCityMercenaryTask_37]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_37]["IsMercenaryBattleDialog"] = nDialog_14

rwtTask[nMainCityMercenaryTask_38] = {}
rwtTask[nMainCityMercenaryTask_38]["Title"] = tLuaText[LANGUAGE_CONFIG][21269]
rwtTask[nMainCityMercenaryTask_38]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_38]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_38]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_38]["AwardGroupId"] = 6
rwtTask[nMainCityMercenaryTask_38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nMainCityMercenaryTask_38]["TaskNpc"] = 3227
rwtTask[nMainCityMercenaryTask_38]["AcceptDialogId"] =  nDialog_13
rwtTask[nMainCityMercenaryTask_38]["DialogId"] = nDialog_15
rwtTask[nMainCityMercenaryTask_38]["MonsterGroupGenId"] = nMonster_Group_GenId_2       
rwtTask[nMainCityMercenaryTask_38]["KillMonsterGroup1"] = nMonster_Group_2 
rwtTask[nMainCityMercenaryTask_38]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_38]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_38]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_2 
rwtTask[nMainCityMercenaryTask_38]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[nMainCityMercenaryTask_38]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_38]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_38]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_38]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[nMainCityMercenaryTask_38]["StartAutoWay"]["FindWayGroupId"] =  20269
rwtTask[nMainCityMercenaryTask_38]["StartAutoWay"]["FindWayGenId"] =   1000091
rwtTask[nMainCityMercenaryTask_38]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_38]["IsMercenaryBattleDialog"] = nDialog_14

rwtTask[nMainCityMercenaryTask_39] = {}
rwtTask[nMainCityMercenaryTask_39]["Title"] = tLuaText[LANGUAGE_CONFIG][21269]
rwtTask[nMainCityMercenaryTask_39]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_39]["TaskQuality"] = 4
rwtTask[nMainCityMercenaryTask_39]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_39]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_39]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nMainCityMercenaryTask_39]["TaskNpc"] = 3227
rwtTask[nMainCityMercenaryTask_39]["AcceptDialogId"] =  nDialog_13
rwtTask[nMainCityMercenaryTask_39]["DialogId"] = nDialog_15
rwtTask[nMainCityMercenaryTask_39]["MonsterGroupGenId"] = nMonster_Group_GenId_2       
rwtTask[nMainCityMercenaryTask_39]["KillMonsterGroup1"] = nMonster_Group_2 
rwtTask[nMainCityMercenaryTask_39]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_39]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_39]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_2 
rwtTask[nMainCityMercenaryTask_39]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[nMainCityMercenaryTask_39]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_39]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_39]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_39]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[nMainCityMercenaryTask_39]["StartAutoWay"]["FindWayGroupId"] =  20269
rwtTask[nMainCityMercenaryTask_39]["StartAutoWay"]["FindWayGenId"] =   1000091
rwtTask[nMainCityMercenaryTask_39]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_39]["IsMercenaryBattleDialog"] = nDialog_14

rwtTask[nMainCityMercenaryTask_40] = {}
rwtTask[nMainCityMercenaryTask_40]["Title"] = tLuaText[LANGUAGE_CONFIG][21269]
rwtTask[nMainCityMercenaryTask_40]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nMainCityMercenaryTask_40]["TaskQuality"] = 5
rwtTask[nMainCityMercenaryTask_40]["MercenaryTownId"] = 200103
rwtTask[nMainCityMercenaryTask_40]["AwardGroupId"] = 4
rwtTask[nMainCityMercenaryTask_40]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nMainCityMercenaryTask_40]["TaskNpc"] = 3227
rwtTask[nMainCityMercenaryTask_40]["AcceptDialogId"] =  nDialog_13
rwtTask[nMainCityMercenaryTask_40]["DialogId"] = nDialog_15
rwtTask[nMainCityMercenaryTask_40]["MonsterGroupGenId"] = nMonster_Group_GenId_2       
rwtTask[nMainCityMercenaryTask_40]["KillMonsterGroup1"] = nMonster_Group_2 
rwtTask[nMainCityMercenaryTask_40]["DynaNpcGroupGen"] = {}
rwtTask[nMainCityMercenaryTask_40]["DynaNpcGroupGen"][1] = {}
rwtTask[nMainCityMercenaryTask_40]["DynaNpcGroupGen"][1]["GenId"] = nMonster_Group_GenId_2 
rwtTask[nMainCityMercenaryTask_40]["DynaNpcGroupGen"][1]["MapId"] =  1000
rwtTask[nMainCityMercenaryTask_40]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nMainCityMercenaryTask_40]["StartAutoWay"] = {}
rwtTask[nMainCityMercenaryTask_40]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[nMainCityMercenaryTask_40]["StartAutoWay"]["FindWayMapId"] =  1000
rwtTask[nMainCityMercenaryTask_40]["StartAutoWay"]["FindWayGroupId"] =  20269
rwtTask[nMainCityMercenaryTask_40]["StartAutoWay"]["FindWayGenId"] =   1000091
rwtTask[nMainCityMercenaryTask_40]["IsClickComplete"] = 0
rwtTask[nMainCityMercenaryTask_40]["IsMercenaryBattleDialog"] = nDialog_14
