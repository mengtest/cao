--region [MercenaryTask]AKeLaiSi.lua
--Purpose:		阿克莱斯委托任务
--Creator: 		林多娜
--Created:		2018-05-30
--Modifier:		$Author: 倪祖伟 $
--Modified:		$Date: 20-03-10 $
--RCS-ID:		$Revision: 3 $
--endregion


local nAKeLaiSiMercenaryTask_11 = 20196         --寻找失踪的居民
local nAKeLaiSiMercenaryTask_12 = 20197         --寻找失踪的居民
local nAKeLaiSiMercenaryTask_13 = 20198         --寻找失踪的居民
local nAKeLaiSiMercenaryTask_14 = 20199         --寻找失踪的居民
local nAKeLaiSiMercenaryTask_15 = 20200         --寻找失踪的居民

local nAKeLaiSiMercenaryTask_21 = 20206         --击败异变者
local nAKeLaiSiMercenaryTask_22 = 20207         --击败异变者
local nAKeLaiSiMercenaryTask_23 = 20208         --击败异变者
local nAKeLaiSiMercenaryTask_24 = 20209         --击败异变者
local nAKeLaiSiMercenaryTask_25 = 20210         --击败异变者
local nAKeLaiSiMercenaryTask_26 = 20211         --纯白三色堇
local nAKeLaiSiMercenaryTask_27 = 20212         --纯白三色堇
local nAKeLaiSiMercenaryTask_28 = 20213         --纯白三色堇
local nAKeLaiSiMercenaryTask_29 = 20214         --纯白三色堇
local nAKeLaiSiMercenaryTask_30 = 20215         --纯白三色堇
local nAKeLaiSiMercenaryTask_31 = 20216         --没落贵族的复仇
local nAKeLaiSiMercenaryTask_32 = 20217         --没落贵族的复仇
local nAKeLaiSiMercenaryTask_33 = 20218         --没落贵族的复仇
local nAKeLaiSiMercenaryTask_34 = 20219         --没落贵族的复仇
local nAKeLaiSiMercenaryTask_35 = 20220         --没落贵族的复仇
local nAKeLaiSiMercenaryTask_36 = 20221         --吓人的大怪物
local nAKeLaiSiMercenaryTask_37 = 20222         --吓人的大怪物
local nAKeLaiSiMercenaryTask_38 = 20223         --吓人的大怪物
local nAKeLaiSiMercenaryTask_39 = 20224         --吓人的大怪物
local nAKeLaiSiMercenaryTask_40 = 20225         --吓人的大怪物

local nAKeLaiSiMercenaryTask_41 = 20396         -- 花店老板的材料
local nAKeLaiSiMercenaryTask_42 = 20397         -- 花店老板的材料
local nAKeLaiSiMercenaryTask_43 = 20398         -- 花店老板的材料
local nAKeLaiSiMercenaryTask_44 = 20399         -- 花店老板的材料
local nAKeLaiSiMercenaryTask_45 = 20400         -- 花店老板的材料

local nAKeLaiSiMercenaryTask_51 = 20406         -- 勘察禁忌魔法阵
local nAKeLaiSiMercenaryTask_52 = 20407         -- 勘察禁忌魔法阵
local nAKeLaiSiMercenaryTask_53 = 20408         -- 勘察禁忌魔法阵
local nAKeLaiSiMercenaryTask_54 = 20409         -- 勘察禁忌魔法阵
local nAKeLaiSiMercenaryTask_55 = 20410         -- 勘察禁忌魔法阵

------------------------------------------------------------------------------------
----永久NPC
local nNpcId_Butler = 3021  --管家约瑞克

------------------------------------------------------------------------------------
----动态NPC
--NPC


local nNpcId_Refugee = 3067 --没落贵族莱德

local nNpcId_OgreHarmon	= 3063 --机械魔偶
local nNpc_3 = 20103 --(NPC组)
local nNpc_GenId_3 = 2001475


local nNpcGroupId_ShiZon = 21171 --变异村民
local nNpcId_ShiZon = 4161
local nNpcG_GenId_ShiZon = 2001493

--4162(NpcId 21-25Task)


--采集
local nCollect_1 = 60051 --纯白三色堇
local nCollect_genId_1 = 2001471

local nCollect_2 = 60224  -- 勘察魔法阵
local nCollect_genId_2 = 2001993

------------------------------------------------------------------------------------
----怪物
local nMonsterGroup_GenId_ShiZon = 2001476 --变异村民

local nMonsterId_Refugee = 900167	--没落贵族莱德
local nMonster_GenId_Refugee = 2001483	
local nMonster_Region_Refugee = 2001530	

local nMonster_GenId_OgreHarmon	= 2001492	  --机械魔偶
local nMonsterGroupId_OgreHarmon = 900166

local nNpc_GenId_ShiZong = 2001467



----对白id
--采集后对白
local nDialog_AfterCollect1 = 11044
local nDialog_AfterCollect2 = 11312

local nDialog_1 = 11308 -- 将材料带给花店老板
local nDialog_2 = 11309 -- 送达材料后对白

local nDialog_6 = 11313 -- 勘察魔法阵

-------------------------------------------------------------------------------------
----逻辑
--没落贵族莱德  	
rwtNpc[nNpcId_Refugee] = rwtNpc[nNpcId_Refugee] or {}


--采集
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect
-- rwtNpcGroup[nCollect_1]["Awards"] = {}  
-- rwtNpcGroup[nCollect_1]["Awards"]["Events"] = {}
-- rwtNpcGroup[nCollect_1]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[nCollect_1]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_AfterCollect1



rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect
-- rwtNpcGroup[nCollect_2]["Awards"] = {}  
-- rwtNpcGroup[nCollect_2]["Awards"]["Events"] = {}
-- rwtNpcGroup[nCollect_2]["Awards"]["Events"][1] = {}
-- rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"] = {}
-- rwtNpcGroup[nCollect_2]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_AfterCollect2



--食人魔哈蒙
rwtNpc[nNpcId_OgreHarmon] = rwtNpc[nNpcId_OgreHarmon] or {}
rwtNpcGroup[nNpc_3] = rwtNpcGroup[nNpc_3] or {}
rwtNpcGroup[nNpc_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_3]["NpcId"] = nNpcId_OgreHarmon

--变异村民
rwtNpc[nNpcId_ShiZon] = rwtNpc[nNpcId_ShiZon] or {}
rwtNpcGroup[nNpcGroupId_ShiZon] = rwtNpcGroup[nNpcGroupId_ShiZon] or {}
rwtNpcGroup[nNpcGroupId_ShiZon]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroupId_ShiZon]["NpcId"] = nNpcId_ShiZon




---------------------------------------------------------------------------------
-------------------------------------任务----------------------------------------
---------------------------------------------------------------------------------


rwtTask[nAKeLaiSiMercenaryTask_11] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["Title"] = tLuaText[LANGUAGE_CONFIG][20496]
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_11]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_11]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskNpc"] = nNpcId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["DialogId"]= 10335
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1]["GenId"] = nNpcG_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_11]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_11]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_11]["MonsterGroupGenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_11]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayGroupId"] = nNpcGroupId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayGenId"] =  nNpcG_GenId_ShiZon

rwtTask[nAKeLaiSiMercenaryTask_12] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["Title"] = tLuaText[LANGUAGE_CONFIG][20496]
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_12]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_12]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskNpc"] = nNpcId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["DialogId"]= 10335
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1]["GenId"] = nNpcG_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_12]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_12]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_12]["MonsterGroupGenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_12]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayGroupId"] = nNpcGroupId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayGenId"] =  nNpcG_GenId_ShiZon

rwtTask[nAKeLaiSiMercenaryTask_13] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20496]
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_13]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_13]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskNpc"] = nNpcId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["DialogId"]= 10335
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1]["GenId"] = nNpcG_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_13]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_13]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_13]["MonsterGroupGenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_13]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayGroupId"] = nNpcGroupId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayGenId"] =  nNpcG_GenId_ShiZon

rwtTask[nAKeLaiSiMercenaryTask_14] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["Title"] = tLuaText[LANGUAGE_CONFIG][20496]
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_14]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_14]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskNpc"] = nNpcId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["DialogId"]= 10335
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1]["GenId"] = nNpcG_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_14]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_14]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_14]["MonsterGroupGenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_14]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayGroupId"] = nNpcGroupId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayGenId"] =  nNpcG_GenId_ShiZon

rwtTask[nAKeLaiSiMercenaryTask_15] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["Title"] = tLuaText[LANGUAGE_CONFIG][20496]
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_15]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_15]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskNpc"] = nNpcId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["DialogId"]= 10335
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1]["GenId"] = nNpcG_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_15]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_15]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_15]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_15]["MonsterGroupGenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayGroupId"] = nNpcGroupId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayGenId"] =  nNpcG_GenId_ShiZon
---------------------------------------------------------------------------------



---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_21] = {}
rwtTask[nAKeLaiSiMercenaryTask_21]["Title"] = tLuaText[LANGUAGE_CONFIG][20506]
rwtTask[nAKeLaiSiMercenaryTask_21]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_21]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_21]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_21]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_21]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_21]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_ShiZong
rwtTask[nAKeLaiSiMercenaryTask_21]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_21]["AcceptDialogId"] = 10338
rwtTask[nAKeLaiSiMercenaryTask_21]["KillMonsterGroup1"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_21]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_21]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_21]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_21]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_21]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_21]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_21]["StartAutoWay"]["FindWayGroupId"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_21]["StartAutoWay"]["FindWayGenId"] =  2001467


rwtTask[nAKeLaiSiMercenaryTask_22] = {}
rwtTask[nAKeLaiSiMercenaryTask_22]["Title"] = tLuaText[LANGUAGE_CONFIG][20506]
rwtTask[nAKeLaiSiMercenaryTask_22]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_22]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_22]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_22]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_ShiZong
rwtTask[nAKeLaiSiMercenaryTask_22]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_22]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_22]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_22]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_22]["AcceptDialogId"] = 10338
rwtTask[nAKeLaiSiMercenaryTask_22]["KillMonsterGroup1"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_22]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_22]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_22]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_22]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_22]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_22]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_22]["StartAutoWay"]["FindWayGroupId"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_22]["StartAutoWay"]["FindWayGenId"] =  2001467


rwtTask[nAKeLaiSiMercenaryTask_23] = {}
rwtTask[nAKeLaiSiMercenaryTask_23]["Title"] = tLuaText[LANGUAGE_CONFIG][20506]
rwtTask[nAKeLaiSiMercenaryTask_23]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_23]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_23]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_23]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_ShiZong
rwtTask[nAKeLaiSiMercenaryTask_23]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_23]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_23]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_23]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_23]["AcceptDialogId"] = 10338
rwtTask[nAKeLaiSiMercenaryTask_23]["KillMonsterGroup1"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_23]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_23]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_23]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_23]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_23]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_23]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_23]["StartAutoWay"]["FindWayGroupId"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_23]["StartAutoWay"]["FindWayGenId"] =  2001467


rwtTask[nAKeLaiSiMercenaryTask_24] = {}
rwtTask[nAKeLaiSiMercenaryTask_24]["Title"] = tLuaText[LANGUAGE_CONFIG][20506]
rwtTask[nAKeLaiSiMercenaryTask_24]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_24]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_24]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_24]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_ShiZong
rwtTask[nAKeLaiSiMercenaryTask_24]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_24]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_24]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_24]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_24]["AcceptDialogId"] = 10338
rwtTask[nAKeLaiSiMercenaryTask_24]["KillMonsterGroup1"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_24]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_24]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_24]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_24]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_24]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_24]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_24]["StartAutoWay"]["FindWayGroupId"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_24]["StartAutoWay"]["FindWayGenId"] =  2001467


rwtTask[nAKeLaiSiMercenaryTask_25] = {}
rwtTask[nAKeLaiSiMercenaryTask_25]["Title"] = tLuaText[LANGUAGE_CONFIG][20506]
rwtTask[nAKeLaiSiMercenaryTask_25]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_25]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_25]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_25]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_ShiZong
rwtTask[nAKeLaiSiMercenaryTask_25]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_25]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_25]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_25]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_25]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_25]["AcceptDialogId"] = 10338
rwtTask[nAKeLaiSiMercenaryTask_25]["KillMonsterGroup1"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_25]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_25]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_25]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_25]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_25]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_25]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_25]["StartAutoWay"]["FindWayGroupId"] = 900168
rwtTask[nAKeLaiSiMercenaryTask_25]["StartAutoWay"]["FindWayGenId"] =  2001467


---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_26] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["Title"] = tLuaText[LANGUAGE_CONFIG][20511]
rwtTask[nAKeLaiSiMercenaryTask_26]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_26]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_26]["DialogId"] = nDialog_AfterCollect1
rwtTask[nAKeLaiSiMercenaryTask_26]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_26]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_26]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_1

rwtTask[nAKeLaiSiMercenaryTask_27] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["Title"] = tLuaText[LANGUAGE_CONFIG][20511]
rwtTask[nAKeLaiSiMercenaryTask_27]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_27]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_27]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_27]["DialogId"] = nDialog_AfterCollect1
rwtTask[nAKeLaiSiMercenaryTask_27]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_27]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_27]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_27]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_27]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_27]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_1

rwtTask[nAKeLaiSiMercenaryTask_28] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["Title"] = tLuaText[LANGUAGE_CONFIG][20511]
rwtTask[nAKeLaiSiMercenaryTask_28]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_28]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_28]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_28]["DialogId"] = nDialog_AfterCollect1
rwtTask[nAKeLaiSiMercenaryTask_28]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_28]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_28]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_28]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_28]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_28]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_1

rwtTask[nAKeLaiSiMercenaryTask_29] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["Title"] = tLuaText[LANGUAGE_CONFIG][20511]
rwtTask[nAKeLaiSiMercenaryTask_29]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_29]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_29]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_29]["DialogId"] = nDialog_AfterCollect1
rwtTask[nAKeLaiSiMercenaryTask_29]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_29]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_29]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_29]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_29]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_29]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_1

rwtTask[nAKeLaiSiMercenaryTask_30] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20511]
rwtTask[nAKeLaiSiMercenaryTask_30]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_30]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_30]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_30]["DialogId"] = nDialog_AfterCollect1
rwtTask[nAKeLaiSiMercenaryTask_30]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_30]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_30]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_30]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_30]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_30]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayGroupId"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_1

---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_31] = {}
rwtTask[nAKeLaiSiMercenaryTask_31]["Title"] = tLuaText[LANGUAGE_CONFIG][20516]
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_31]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskNpc"] = nNpcId_Butler  
rwtTask[nAKeLaiSiMercenaryTask_31]["AcceptDialogId"] = 10340
rwtTask[nAKeLaiSiMercenaryTask_31]["DialogId"] = 10344
rwtTask[nAKeLaiSiMercenaryTask_31]["MonsterGroupGenId"] = nMonster_Region_Refugee
rwtTask[nAKeLaiSiMercenaryTask_31]["KillMonsterGroup1"] = nMonsterId_Refugee 
rwtTask[nAKeLaiSiMercenaryTask_31]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_31]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_31]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"]["FindWayGroupId"] = 12001
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"]["FindWayGenId"] =  2001343


rwtTask[nAKeLaiSiMercenaryTask_32] = {}
rwtTask[nAKeLaiSiMercenaryTask_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20516]
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_32]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskNpc"] = nNpcId_Butler    
rwtTask[nAKeLaiSiMercenaryTask_32]["AcceptDialogId"] = 10340
rwtTask[nAKeLaiSiMercenaryTask_32]["DialogId"] = 10344
rwtTask[nAKeLaiSiMercenaryTask_32]["MonsterGroupGenId"] = nMonster_Region_Refugee
rwtTask[nAKeLaiSiMercenaryTask_32]["KillMonsterGroup1"] = nMonsterId_Refugee 
rwtTask[nAKeLaiSiMercenaryTask_32]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_32]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_32]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"]["FindWayGroupId"] = 12001
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"]["FindWayGenId"] =  2001343


rwtTask[nAKeLaiSiMercenaryTask_33] = {}
rwtTask[nAKeLaiSiMercenaryTask_33]["Title"] = tLuaText[LANGUAGE_CONFIG][20516]
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_33]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskNpc"] = nNpcId_Butler  
rwtTask[nAKeLaiSiMercenaryTask_33]["AcceptDialogId"] = 10340
rwtTask[nAKeLaiSiMercenaryTask_33]["DialogId"] = 10344
rwtTask[nAKeLaiSiMercenaryTask_33]["MonsterGroupGenId"] = nMonster_Region_Refugee
rwtTask[nAKeLaiSiMercenaryTask_33]["KillMonsterGroup1"] = nMonsterId_Refugee 
rwtTask[nAKeLaiSiMercenaryTask_33]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_33]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_33]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"]["FindWayGroupId"] = 12001
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"]["FindWayGenId"] =  2001343


rwtTask[nAKeLaiSiMercenaryTask_34] = {}
rwtTask[nAKeLaiSiMercenaryTask_34]["Title"] = tLuaText[LANGUAGE_CONFIG][20516]
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_34]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskNpc"] = nNpcId_Butler   
rwtTask[nAKeLaiSiMercenaryTask_34]["AcceptDialogId"] = 10340
rwtTask[nAKeLaiSiMercenaryTask_34]["DialogId"] = 10344
rwtTask[nAKeLaiSiMercenaryTask_34]["MonsterGroupGenId"] = nMonster_Region_Refugee
rwtTask[nAKeLaiSiMercenaryTask_34]["KillMonsterGroup1"] = nMonsterId_Refugee 
rwtTask[nAKeLaiSiMercenaryTask_34]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_34]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_34]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"]["FindWayGroupId"] = 12001
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"]["FindWayGenId"] =  2001343


rwtTask[nAKeLaiSiMercenaryTask_35] = {}
rwtTask[nAKeLaiSiMercenaryTask_35]["Title"] = tLuaText[LANGUAGE_CONFIG][20516]
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_35]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskNpc"] = nNpcId_Butler    
rwtTask[nAKeLaiSiMercenaryTask_35]["AcceptDialogId"] = 10340
rwtTask[nAKeLaiSiMercenaryTask_35]["DialogId"] = 10344
rwtTask[nAKeLaiSiMercenaryTask_35]["MonsterGroupGenId"] = nMonster_Region_Refugee
rwtTask[nAKeLaiSiMercenaryTask_35]["KillMonsterGroup1"] = nMonsterId_Refugee 
rwtTask[nAKeLaiSiMercenaryTask_35]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_35]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_35]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"]["FindWayGroupId"] = 12001
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"]["FindWayGenId"] =  2001343


---------------------------------------------------------------------------------
rwtTask[nAKeLaiSiMercenaryTask_36] = {}
rwtTask[nAKeLaiSiMercenaryTask_36]["Title"] = tLuaText[LANGUAGE_CONFIG][20521]
rwtTask[nAKeLaiSiMercenaryTask_36]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_36]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_36]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_36]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_36]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_36]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_36]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_3
rwtTask[nAKeLaiSiMercenaryTask_36]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_36]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_36]["TaskNpc"] = nNpcId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_36]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_36]["AcceptDialogId"] = 10345
rwtTask[nAKeLaiSiMercenaryTask_36]["DialogId"] = 10346
rwtTask[nAKeLaiSiMercenaryTask_36]["MonsterGroupGenId"] = nMonster_GenId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_36]["KillMonsterGroup1" ] = nMonsterGroupId_OgreHarmon 
rwtTask[nAKeLaiSiMercenaryTask_36]["KillMonsterGroupCount1"]=1	 
rwtTask[nAKeLaiSiMercenaryTask_36]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"]["FindWayGenId"] =  nNpc_GenId_3


rwtTask[nAKeLaiSiMercenaryTask_37] = {}
rwtTask[nAKeLaiSiMercenaryTask_37]["Title"] = tLuaText[LANGUAGE_CONFIG][20521]
rwtTask[nAKeLaiSiMercenaryTask_37]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_37]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_37]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_37]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_37]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_37]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_37]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_3
rwtTask[nAKeLaiSiMercenaryTask_37]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_37]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_37]["TaskNpc"] = nNpcId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_37]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_37]["AcceptDialogId"] = 10345
rwtTask[nAKeLaiSiMercenaryTask_37]["DialogId"] = 10346
rwtTask[nAKeLaiSiMercenaryTask_37]["MonsterGroupGenId"] = nMonster_GenId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_37]["KillMonsterGroup1" ] = nMonsterGroupId_OgreHarmon 
rwtTask[nAKeLaiSiMercenaryTask_37]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_37]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"]["FindWayGenId"] =  nNpc_GenId_3



rwtTask[nAKeLaiSiMercenaryTask_38] = {}
rwtTask[nAKeLaiSiMercenaryTask_38]["Title"] = tLuaText[LANGUAGE_CONFIG][20521]
rwtTask[nAKeLaiSiMercenaryTask_38]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_38]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_38]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_38]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_38]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_38]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_38]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_3
rwtTask[nAKeLaiSiMercenaryTask_38]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_38]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_38]["TaskNpc"] = nNpcId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_38]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_38]["AcceptDialogId"] = 10345
rwtTask[nAKeLaiSiMercenaryTask_38]["DialogId"] = 10346
rwtTask[nAKeLaiSiMercenaryTask_38]["MonsterGroupGenId"] = nMonster_GenId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_38]["KillMonsterGroup1" ] = nMonsterGroupId_OgreHarmon 
rwtTask[nAKeLaiSiMercenaryTask_38]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_38]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"]["FindWayGenId"] =  nNpc_GenId_3



rwtTask[nAKeLaiSiMercenaryTask_39] = {}
rwtTask[nAKeLaiSiMercenaryTask_39]["Title"] = tLuaText[LANGUAGE_CONFIG][20521]
rwtTask[nAKeLaiSiMercenaryTask_39]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_39]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_39]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_39]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_39]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_39]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_39]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_3
rwtTask[nAKeLaiSiMercenaryTask_39]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_39]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_39]["TaskNpc"] = nNpcId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_39]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_39]["AcceptDialogId"] = 10345
rwtTask[nAKeLaiSiMercenaryTask_39]["DialogId"] = 10346
rwtTask[nAKeLaiSiMercenaryTask_39]["MonsterGroupGenId"] = nMonster_GenId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_39]["KillMonsterGroup1" ] = nMonsterGroupId_OgreHarmon 
rwtTask[nAKeLaiSiMercenaryTask_39]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_39]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"]["FindWayGenId"] =  nNpc_GenId_3



rwtTask[nAKeLaiSiMercenaryTask_40] = {}
rwtTask[nAKeLaiSiMercenaryTask_40]["Title"] = tLuaText[LANGUAGE_CONFIG][20521]
rwtTask[nAKeLaiSiMercenaryTask_40]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_40]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_40]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_40]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_40]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_40]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_40]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_3
rwtTask[nAKeLaiSiMercenaryTask_40]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_40]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_40]["TaskNpc"] = nNpcId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_40]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_40]["AcceptDialogId"] = 10345
rwtTask[nAKeLaiSiMercenaryTask_40]["DialogId"] = 10346
rwtTask[nAKeLaiSiMercenaryTask_40]["MonsterGroupGenId"] = nMonster_GenId_OgreHarmon
rwtTask[nAKeLaiSiMercenaryTask_40]["KillMonsterGroup1" ] = nMonsterGroupId_OgreHarmon 
rwtTask[nAKeLaiSiMercenaryTask_40]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_40]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"]["FindWayGroupId"] = nNpc_3
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"]["FindWayGenId"] =  nNpc_GenId_3

----------------------------------------------------------------------------------------
rwtTask[nAKeLaiSiMercenaryTask_41] = {}
rwtTask[nAKeLaiSiMercenaryTask_41]["Title"] = tLuaText[LANGUAGE_CONFIG][21003] 
rwtTask[nAKeLaiSiMercenaryTask_41]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_41]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC  
rwtTask[nAKeLaiSiMercenaryTask_41]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_41]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_41]["TaskNpc"] = 3022
rwtTask[nAKeLaiSiMercenaryTask_41]["AcceptDialogId"] = nDialog_1
rwtTask[nAKeLaiSiMercenaryTask_41]["DialogId"] = nDialog_2
rwtTask[nAKeLaiSiMercenaryTask_41]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_41]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayGroupId"] = 10027
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayGenId"] = 20010239


rwtTask[nAKeLaiSiMercenaryTask_42] = {}
rwtTask[nAKeLaiSiMercenaryTask_42]["Title"] = tLuaText[LANGUAGE_CONFIG][21003] 
rwtTask[nAKeLaiSiMercenaryTask_42]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_42]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC  
rwtTask[nAKeLaiSiMercenaryTask_42]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_42]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_42]["TaskNpc"] = 3022
rwtTask[nAKeLaiSiMercenaryTask_42]["AcceptDialogId"] = nDialog_1
rwtTask[nAKeLaiSiMercenaryTask_42]["DialogId"] = nDialog_2
rwtTask[nAKeLaiSiMercenaryTask_42]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_42]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayGroupId"] = 10027
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayGenId"] = 20010239


rwtTask[nAKeLaiSiMercenaryTask_43] = {}
rwtTask[nAKeLaiSiMercenaryTask_43]["Title"] = tLuaText[LANGUAGE_CONFIG][21003] 
rwtTask[nAKeLaiSiMercenaryTask_43]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_43]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC  
rwtTask[nAKeLaiSiMercenaryTask_43]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_43]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_43]["TaskNpc"] = 3022
rwtTask[nAKeLaiSiMercenaryTask_43]["AcceptDialogId"] = nDialog_1
rwtTask[nAKeLaiSiMercenaryTask_43]["DialogId"] = nDialog_2
rwtTask[nAKeLaiSiMercenaryTask_43]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_43]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayGroupId"] = 10027
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayGenId"] = 20010239


rwtTask[nAKeLaiSiMercenaryTask_44] = {}
rwtTask[nAKeLaiSiMercenaryTask_44]["Title"] = tLuaText[LANGUAGE_CONFIG][21003] 
rwtTask[nAKeLaiSiMercenaryTask_44]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_44]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC  
rwtTask[nAKeLaiSiMercenaryTask_44]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_44]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_44]["TaskNpc"] = 3022
rwtTask[nAKeLaiSiMercenaryTask_44]["AcceptDialogId"] = nDialog_1
rwtTask[nAKeLaiSiMercenaryTask_44]["DialogId"] = nDialog_2
rwtTask[nAKeLaiSiMercenaryTask_44]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_44]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayGroupId"] = 10027
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayGenId"] = 20010239


rwtTask[nAKeLaiSiMercenaryTask_45] = {}
rwtTask[nAKeLaiSiMercenaryTask_45]["Title"] = tLuaText[LANGUAGE_CONFIG][21003] 
rwtTask[nAKeLaiSiMercenaryTask_45]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_45]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC  
rwtTask[nAKeLaiSiMercenaryTask_45]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_45]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_45]["TaskNpc"] = 3022
rwtTask[nAKeLaiSiMercenaryTask_45]["AcceptDialogId"] = nDialog_1
rwtTask[nAKeLaiSiMercenaryTask_45]["DialogId"] = nDialog_2
rwtTask[nAKeLaiSiMercenaryTask_45]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_45]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayGroupId"] = 10027
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayGenId"] = 20010239


----------------------------------------------------------------------------------------


rwtTask[nAKeLaiSiMercenaryTask_51] = {}
rwtTask[nAKeLaiSiMercenaryTask_51]["Title"] = tLuaText[LANGUAGE_CONFIG][21013]
rwtTask[nAKeLaiSiMercenaryTask_51]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_51]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_51]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_51]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_51]["DialogId"] = nDialog_AfterCollect2
rwtTask[nAKeLaiSiMercenaryTask_51]["AcceptDialogId"] = nDialog_6
rwtTask[nAKeLaiSiMercenaryTask_51]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_51]["ReqCollectId1"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_51]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_51]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_51]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_51]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_51]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_51]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_2
rwtTask[nAKeLaiSiMercenaryTask_51]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_51]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_51]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_51]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_51]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_51]["StartAutoWay"]["FindWayGroupId"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_51]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_2

rwtTask[nAKeLaiSiMercenaryTask_52] = {}
rwtTask[nAKeLaiSiMercenaryTask_52]["Title"] = tLuaText[LANGUAGE_CONFIG][21013]
rwtTask[nAKeLaiSiMercenaryTask_52]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_52]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_52]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_52]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_52]["DialogId"] = nDialog_AfterCollect2
rwtTask[nAKeLaiSiMercenaryTask_52]["AcceptDialogId"] = nDialog_6
rwtTask[nAKeLaiSiMercenaryTask_52]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_52]["ReqCollectId1"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_52]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_52]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_52]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_52]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_52]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_52]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_2
rwtTask[nAKeLaiSiMercenaryTask_52]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_52]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_52]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_52]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_52]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_52]["StartAutoWay"]["FindWayGroupId"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_52]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_2

rwtTask[nAKeLaiSiMercenaryTask_53] = {}
rwtTask[nAKeLaiSiMercenaryTask_53]["Title"] = tLuaText[LANGUAGE_CONFIG][21013]
rwtTask[nAKeLaiSiMercenaryTask_53]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_53]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_53]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_53]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_53]["DialogId"] = nDialog_AfterCollect2
rwtTask[nAKeLaiSiMercenaryTask_53]["AcceptDialogId"] = nDialog_6
rwtTask[nAKeLaiSiMercenaryTask_53]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_53]["ReqCollectId1"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_53]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_53]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_53]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_53]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_53]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_53]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_2
rwtTask[nAKeLaiSiMercenaryTask_53]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_53]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_53]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_53]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_53]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_53]["StartAutoWay"]["FindWayGroupId"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_53]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_2

rwtTask[nAKeLaiSiMercenaryTask_54] = {}
rwtTask[nAKeLaiSiMercenaryTask_54]["Title"] = tLuaText[LANGUAGE_CONFIG][21013]
rwtTask[nAKeLaiSiMercenaryTask_54]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_54]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_54]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_54]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_54]["DialogId"] = nDialog_AfterCollect2
rwtTask[nAKeLaiSiMercenaryTask_54]["AcceptDialogId"] = nDialog_6
rwtTask[nAKeLaiSiMercenaryTask_54]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_54]["ReqCollectId1"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_54]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_54]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_54]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_54]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_54]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_54]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_2
rwtTask[nAKeLaiSiMercenaryTask_54]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_54]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_54]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_54]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_54]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_54]["StartAutoWay"]["FindWayGroupId"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_54]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_2

rwtTask[nAKeLaiSiMercenaryTask_55] = {}
rwtTask[nAKeLaiSiMercenaryTask_55]["Title"] = tLuaText[LANGUAGE_CONFIG][21013]
rwtTask[nAKeLaiSiMercenaryTask_55]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_55]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_55]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_55]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_COLLECT
rwtTask[nAKeLaiSiMercenaryTask_55]["DialogId"] = nDialog_AfterCollect2
rwtTask[nAKeLaiSiMercenaryTask_55]["AcceptDialogId"] = nDialog_6
rwtTask[nAKeLaiSiMercenaryTask_55]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_55]["ReqCollectId1"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_55]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_55]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_55]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_55]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_55]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_55]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_2
rwtTask[nAKeLaiSiMercenaryTask_55]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_55]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_55]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_55]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_55]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_55]["StartAutoWay"]["FindWayGroupId"] =  nCollect_2
rwtTask[nAKeLaiSiMercenaryTask_55]["StartAutoWay"]["FindWayGenId"] =  nCollect_genId_2

