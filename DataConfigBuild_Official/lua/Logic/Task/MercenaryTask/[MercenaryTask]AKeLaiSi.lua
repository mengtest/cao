--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--阿克莱斯佣兵任务


--endregion

local nAKeLaiSiMercenaryTask_1 = 20186          --拜访阿克莱斯
local nAKeLaiSiMercenaryTask_2 = 20187          --拜访阿克莱斯
local nAKeLaiSiMercenaryTask_3 = 20188          --拜访阿克莱斯
local nAKeLaiSiMercenaryTask_4 = 20189          --拜访阿克莱斯
local nAKeLaiSiMercenaryTask_5 = 20190          --拜访阿克莱斯
local nAKeLaiSiMercenaryTask_6 = 20191          --顶级红茶
local nAKeLaiSiMercenaryTask_7 = 20192          --顶级红茶
local nAKeLaiSiMercenaryTask_8 = 20193          --顶级红茶
local nAKeLaiSiMercenaryTask_9 = 20194          --顶级红茶
local nAKeLaiSiMercenaryTask_10 = 20195         --顶级红茶
local nAKeLaiSiMercenaryTask_11 = 20196         --寻找失踪的士兵
local nAKeLaiSiMercenaryTask_12 = 20197         --寻找失踪的士兵
local nAKeLaiSiMercenaryTask_13 = 20198         --寻找失踪的士兵
local nAKeLaiSiMercenaryTask_14 = 20199         --寻找失踪的士兵
local nAKeLaiSiMercenaryTask_15 = 20200         --寻找失踪的士兵
local nAKeLaiSiMercenaryTask_16 = 20201         --救援物资
local nAKeLaiSiMercenaryTask_17 = 20202         --救援物资
local nAKeLaiSiMercenaryTask_18 = 20203         --救援物资
local nAKeLaiSiMercenaryTask_19 = 20204         --救援物资
local nAKeLaiSiMercenaryTask_20 = 20205         --救援物资
local nAKeLaiSiMercenaryTask_21 = 20206         --驱逐丧尸
local nAKeLaiSiMercenaryTask_22 = 20207         --驱逐丧尸
local nAKeLaiSiMercenaryTask_23 = 20208         --驱逐丧尸
local nAKeLaiSiMercenaryTask_24 = 20209         --驱逐丧尸
local nAKeLaiSiMercenaryTask_25 = 20210         --驱逐丧尸
local nAKeLaiSiMercenaryTask_26 = 20211         --亡者之花
local nAKeLaiSiMercenaryTask_27 = 20212         --亡者之花
local nAKeLaiSiMercenaryTask_28 = 20213         --亡者之花
local nAKeLaiSiMercenaryTask_29 = 20214         --亡者之花
local nAKeLaiSiMercenaryTask_30 = 20215         --亡者之花
local nAKeLaiSiMercenaryTask_31 = 20216         --捣乱的难民
local nAKeLaiSiMercenaryTask_32 = 20217         --捣乱的难民
local nAKeLaiSiMercenaryTask_33 = 20218         --捣乱的难民
local nAKeLaiSiMercenaryTask_34 = 20219         --捣乱的难民
local nAKeLaiSiMercenaryTask_35 = 20220         --捣乱的难民
local nAKeLaiSiMercenaryTask_36 = 20221         --食人魔
local nAKeLaiSiMercenaryTask_37 = 20222         --食人魔
local nAKeLaiSiMercenaryTask_38 = 20223         --食人魔
local nAKeLaiSiMercenaryTask_39 = 20224         --食人魔
local nAKeLaiSiMercenaryTask_40 = 20225         --食人魔

local nAKeLaiSiMercenaryTask_41 = 20396         -- 将货款带给花店老板
local nAKeLaiSiMercenaryTask_42 = 20397         -- 将货款带给花店老板
local nAKeLaiSiMercenaryTask_43 = 20398         -- 将货款带给花店老板
local nAKeLaiSiMercenaryTask_44 = 20399         -- 将货款带给花店老板
local nAKeLaiSiMercenaryTask_45 = 20400         -- 将货款带给花店老板
local nAKeLaiSiMercenaryTask_46 = 20401         -- 拯救镇民邦妮
local nAKeLaiSiMercenaryTask_47 = 20402         -- 拯救镇民邦妮
local nAKeLaiSiMercenaryTask_48 = 20403         -- 拯救镇民邦妮
local nAKeLaiSiMercenaryTask_49 = 20404         -- 拯救镇民邦妮
local nAKeLaiSiMercenaryTask_50 = 20405         -- 拯救镇民邦妮
local nAKeLaiSiMercenaryTask_51 = 20406         -- 勘察魔法阵
local nAKeLaiSiMercenaryTask_52 = 20407         -- 勘察魔法阵
local nAKeLaiSiMercenaryTask_53 = 20408         -- 勘察魔法阵
local nAKeLaiSiMercenaryTask_54 = 20409         -- 勘察魔法阵
local nAKeLaiSiMercenaryTask_55 = 20410         -- 勘察魔法阵
local nAKeLaiSiMercenaryTask_56 = 20411         -- 毒蝎领主（0/1）
local nAKeLaiSiMercenaryTask_57 = 20412         -- 毒蝎领主（0/1）
local nAKeLaiSiMercenaryTask_58 = 20413         -- 毒蝎领主（0/1）
local nAKeLaiSiMercenaryTask_59 = 20414         -- 毒蝎领主（0/1）
local nAKeLaiSiMercenaryTask_60 = 20415         -- 毒蝎领主（0/1）
------------------------------------------------------------------------------------
--***********永久NPC***********--
local nNpcId_Butler = 3021  --管家约瑞克
local nNpcId_GongHuiBanShiYuan = 3061 --公会办事员
-- local nNpcId_OgreHarmon	= 3063 --食人魔哈蒙 
------------------------------------------------------------------------------------
--***********动态NPC***********--
--NPC
-- local nNpcId_ShiZong = 3072	--失踪的士兵 
local nNpcGroupId_ShiZong = 20104 --失踪的士兵NPCgroup
local nNpc_GenId_ShiZong = 2001467 --失踪的士兵NPC表 genid

local nNpcGroupId_Bonie = 20292 --镇民邦尼
local nNpc_GenId_Bonie = 2001772 

local nNpcId_Refugee = 3067 --难民
local nNpcGroupId_Refugee = 20090  --难民NPC组
local nNpc_GenId_Refugee = 2001483 --难民genid

local nNpcId_OgreHarmon	= 3063 --食人魔哈蒙
local nNpc_3 = 20103 --食人魔哈蒙  npc组
local nNpc_GenId_3 = 2001475


--陷阱
tTrapId_Escore = {30146,30147,30148}	 --护送陷阱
tTrap_GenId_Escore	= {2001484,2001485,2001486} --护送陷阱genid
local nTrap_GenId_ShiZon = 2001493 --失踪的士兵 genid

local nTrap_Bonie =  30461   --解救邦尼陷阱
local nTrap_GenId_Bonie = 2001992  
--采集
local nCollect_1 = 60051 --王者之花
local nCollect_genId_1 = 2001471	--王者之花genid
local nCollect_2  =  60224  -- 勘察魔法阵
local nCollect_genId_2  =   2001993

----对话id
--local tDialogId_Normal = {10341,10342,10343,10343} --难民普通对话id
--local tDialogId_Special = {10344,10344,10344,10344} --难民特殊对话id

------------------------------------------------------------------------------------
--***********怪物***********--
local nMonsterGroup_GenId_ShiZon = 2001476 --失踪的士兵 genid

local nMonsterId_Refugee = 900167	--捣乱的难民
local nMonster_GenId_Refugee = 2001483	--捣乱的难民genid
local nMonster_Region_Refugee = 2001530	--捣乱的难民genid
local nMonster_GenId_OgreHarmon	= 2001492	  --食人魔哈蒙	genid 
local nMonsterGroupId_OgreHarmon = 900166	  --食人魔哈蒙

local tMonsterGroup_GenId_Escore = {2001488,2001489,2001490} --护送怪物genid

local nMonsterGroupId_GanRanZhe =  900333 --A型感染者
local nMonsterGroup_GenId_GanRanZhe =  2001994

local nMonsterGroupId_XieGuai =  900334  --蝎怪
local nMonsterGroup_GenId_XieGuai =  2001995

--*******************************对白id**************************
--护送陷阱战前对白
local nDialog_WarriorBeforeBattle = 11044

local nDialog_1 = 11308 -- 将货款带给花店老板
local nDialog_2 = 11309 -- 送达后对白
local nDialog_3 = 11310 -- 拯救镇民邦妮
local nDialog_4 = 11311 -- 陷阱怪对白
local nDialog_5 = 11312 -- 战斗胜利后对白
local nDialog_6 = 11313 -- 勘察魔法阵
local nDialog_7 = 11314  --战胜毒蝎领主（0/1）
-------------------------------------------------------------------------------------
--***********逻辑***********--
--难民NPC  	
rwtNpc[nNpcId_Refugee] = rwtNpc[nNpcId_Refugee] or {}
rwtNpcGroup[nNpcGroupId_Refugee] = rwtNpcGroup[nNpcGroupId_Refugee] or {}
rwtNpcGroup[nNpcGroupId_Refugee]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcGroupId_Refugee]["NpcId"] = nNpcId_Refugee

--失踪的士兵
-- rwtNpc[nNpcId_ShiZong] = rwtNpc[nNpcId_ShiZong] or {}
-- rwtNpcGroup[nNpcGroupId_ShiZong] = rwtNpcGroup[nNpcGroupId_ShiZong] or {}
-- rwtNpcGroup[nNpcGroupId_ShiZong]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
-- rwtNpcGroup[nNpcGroupId_ShiZong]["NpcId"] = nNpcId_ShiZong

--采集 王者之花
rwtNpcGroup[nCollect_1] = rwtNpcGroup[nCollect_1] or {}
rwtNpcGroup[nCollect_1]["Type"] = CONST_NPCGROUP_TYPE.Collect

rwtNpcGroup[nCollect_2] = rwtNpcGroup[nCollect_2] or {}    
rwtNpcGroup[nCollect_2]["Type"] = CONST_NPCGROUP_TYPE.Collect 

--采集 棺材 -- 文物
--rwtNpcGroup[60060] = rwtNpcGroup[60060] or {}
--rwtNpcGroup[60060]["Type"] = CONST_NPCGROUP_TYPE.Collect

--护送任务 陷阱触发怪物
for i=1,3 do  	 
	rwtNpcGroup[tTrapId_Escore[i]] = rwtNpcGroup[tTrapId_Escore[i]] or {}
	rwtNpcGroup[tTrapId_Escore[i]]["Type"] = CONST_NPCGROUP_TYPE.Trap
    rwtNpcGroup[tTrapId_Escore[i]]["EscortMonsterGroupGen"] = tMonsterGroup_GenId_Escore[i]
    rwtNpcGroup[tTrapId_Escore[i]]["EscortDialog"] = nDialog_WarriorBeforeBattle

--	rwtNpcGroup[tTrapId_Escore[i]]["TrapFunc"] = function ()
--		if not rwHasGenEvent(tMonsterGroup_GenId_Escore[i]) then  	--检测怪物
--			rwAddGenEvent(tMonsterGroup_GenId_Escore[i]) --创建怪物 
--		end	
--		rwDelGenEvent(tTrap_GenId_Escore[i])
--		rwAutoBattle(tMonsterGroup_GenId_Escore[i])	--触发和怪物的战斗
--	end
end

rwtDialog[nDialog_WarriorBeforeBattle] = rwtDialog[nDialog_WarriorBeforeBattle] or {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[nDialog_WarriorBeforeBattle]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenIdBynId"] = true

----捣乱的难民 特殊对话触发怪物
--for i = 1,4 do
--	rwtDialog[tDialogId_Special[i]] = rwtDialog[tDialogId_Special[i]] or {}
--	rwtDialog[tDialogId_Special[i]]["DialogEnd"] = function ()
--		if not rwHasGenEvent(nMonster_GenId_Refugee) then
--		   rwAddGenEvent(nMonster_GenId_Refugee,tMonster_Region_Refugee[i])
--		end
--		rwAutoBattle(nMonster_GenId_Refugee)
--	end
--end

--食人魔哈蒙
rwtNpc[nNpcId_OgreHarmon] = {}
rwtNpcGroup[nNpc_3] = rwtNpcGroup[nNpc_3] or {}
rwtNpcGroup[nNpc_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpc_3]["NpcId"]= nNpcId_OgreHarmon

--陷阱触发对白
rwtNpcGroup[30152] = rwtNpcGroup[30152] or {}
rwtNpcGroup[30152]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[30152]["DelTrap"] = 1
rwtNpcGroup[30152]["Awards"] = {}  
rwtNpcGroup[30152]["Awards"]["Events"] = {}   
rwtNpcGroup[30152]["Awards"]["Events"][1] = {}
rwtNpcGroup[30152]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[30152]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = 10335


--对白触发战斗
rwtDialog[10335] = {}
rwtDialog[10335]["CloseDialog"] = 1
rwtDialog[10335]["DialogEndInit"] = {}
rwtDialog[10335]["DialogEndInit"]["Events"] = {}
rwtDialog[10335]["DialogEndInit"]["Events"][1] = {}
rwtDialog[10335]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[10335]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_GenId_ShiZon

--陷阱触发对白
rwtNpcGroup[nTrap_Bonie] = rwtNpcGroup[nTrap_Bonie] or {}
rwtNpcGroup[nTrap_Bonie]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[nTrap_Bonie]["Awards"] = {}  
rwtNpcGroup[nTrap_Bonie]["Awards"]["Events"] = {}   
rwtNpcGroup[nTrap_Bonie]["Awards"]["Events"][1] = {}
rwtNpcGroup[nTrap_Bonie]["Awards"]["Events"][1]["OpenDialog"] = {}          
rwtNpcGroup[nTrap_Bonie]["Awards"]["Events"][1]["OpenDialog"]["DialogId"] = nDialog_4


--对白触发战斗
rwtDialog[nDialog_4] = {}
rwtDialog[nDialog_4]["CloseDialog"] = 1
rwtDialog[nDialog_4]["DialogEndInit"] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"][1] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[nDialog_4]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = nMonsterGroup_GenId_GanRanZhe

---------------------------------------------------------------------------------
--怪物死亡触发	  2001493,2001476

function fMercenary_AKeLaiSi_DelRefugee()
	if rwHasGenEvent(nNpc_GenId_Refugee) then
		rwDelGenEvent(nNpc_GenId_Refugee)
	end
end
function fMercenary_AKeLaiSi_DelShiRenGuai()
	if rwHasGenEvent(nNpc_GenId_3) then
		rwDelGenEvent(nNpc_GenId_3)
	end
end
function fMercenary_AKeLaiSi_DelSangshi()
	if rwHasGenEvent(nTrap_GenId_ShiZon) then
		rwDelGenEvent(nTrap_GenId_ShiZon)
	end
end

--捣乱的难民
rwtMonsterGroup_Func[nMonsterId_Refugee] = rwtMonsterGroup_Func[nMonsterId_Refugee] or {}
table.insert(rwtMonsterGroup_Func[nMonsterId_Refugee],fMercenary_AKeLaiSi_DelRefugee)
--食人怪奥顿
rwtMonsterGroup_Func[nMonsterGroupId_OgreHarmon] = rwtMonsterGroup_Func[nMonsterGroupId_OgreHarmon] or {}
table.insert(rwtMonsterGroup_Func[nMonsterGroupId_OgreHarmon],fMercenary_AKeLaiSi_DelShiRenGuai)
--丧尸
rwtMonsterGroup_Func[900164] = rwtMonsterGroup_Func[900164] or {}
table.insert(rwtMonsterGroup_Func[900164],fMercenary_AKeLaiSi_DelSangshi)
---------------------------------------------------------------------------------
-------------------------------------任务----------------------------------------
---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_1] = {}
rwtTask[nAKeLaiSiMercenaryTask_1]["Title"] = tLuaText[LANGUAGE_CONFIG][20486]
rwtTask[nAKeLaiSiMercenaryTask_1]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_1]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_1]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_1]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_1]["AcceptDialogId"] = 10330
rwtTask[nAKeLaiSiMercenaryTask_1]["DialogId"] = 10331
rwtTask[nAKeLaiSiMercenaryTask_1]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_1]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_1]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_1]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_1]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_1]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_2] = {}
rwtTask[nAKeLaiSiMercenaryTask_2]["Title"] = tLuaText[LANGUAGE_CONFIG][20487]
rwtTask[nAKeLaiSiMercenaryTask_2]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_2]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_2]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_2]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_2]["AcceptDialogId"] = 10330
rwtTask[nAKeLaiSiMercenaryTask_2]["DialogId"] = 10331
rwtTask[nAKeLaiSiMercenaryTask_2]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_2]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_2]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_2]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_2]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_2]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_3] = {}
rwtTask[nAKeLaiSiMercenaryTask_3]["Title"] = tLuaText[LANGUAGE_CONFIG][20488]
rwtTask[nAKeLaiSiMercenaryTask_3]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_3]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_3]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_3]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_3]["AcceptDialogId"] = 10330
rwtTask[nAKeLaiSiMercenaryTask_3]["DialogId"] = 10331
rwtTask[nAKeLaiSiMercenaryTask_3]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_3]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_3]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_3]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_3]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_3]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_4] = {}
rwtTask[nAKeLaiSiMercenaryTask_4]["Title"] = tLuaText[LANGUAGE_CONFIG][20489]
rwtTask[nAKeLaiSiMercenaryTask_4]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_4]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_4]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_4]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_4]["AcceptDialogId"] = 10330
rwtTask[nAKeLaiSiMercenaryTask_4]["DialogId"] = 10331
rwtTask[nAKeLaiSiMercenaryTask_4]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_4]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_4]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_4]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_4]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_4]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_5] = {}
rwtTask[nAKeLaiSiMercenaryTask_5]["Title"] = tLuaText[LANGUAGE_CONFIG][20490]
rwtTask[nAKeLaiSiMercenaryTask_5]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_5]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_5]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_5]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_5]["AcceptDialogId"] = 10330
rwtTask[nAKeLaiSiMercenaryTask_5]["DialogId"] = 10331
rwtTask[nAKeLaiSiMercenaryTask_5]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_5]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_5]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_5]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_5]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_5]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_6] = {}
rwtTask[nAKeLaiSiMercenaryTask_6]["Title"] = tLuaText[LANGUAGE_CONFIG][20491]
rwtTask[nAKeLaiSiMercenaryTask_6]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_6]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_6]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_6]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_6]["AcceptDialogId"] = 10332
rwtTask[nAKeLaiSiMercenaryTask_6]["DialogId"] = 10333
rwtTask[nAKeLaiSiMercenaryTask_6]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_6]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_6]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_6]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_6]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_6]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_7] = {}
rwtTask[nAKeLaiSiMercenaryTask_7]["Title"] = tLuaText[LANGUAGE_CONFIG][20492]
rwtTask[nAKeLaiSiMercenaryTask_7]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_7]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_7]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_7]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_7]["AcceptDialogId"] = 10332
rwtTask[nAKeLaiSiMercenaryTask_7]["DialogId"] = 10333
rwtTask[nAKeLaiSiMercenaryTask_7]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_7]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_7]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_7]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_7]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_7]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_8] = {}
rwtTask[nAKeLaiSiMercenaryTask_8]["Title"] = tLuaText[LANGUAGE_CONFIG][20493]
rwtTask[nAKeLaiSiMercenaryTask_8]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_8]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_8]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_8]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_8]["AcceptDialogId"] = 10332
rwtTask[nAKeLaiSiMercenaryTask_8]["DialogId"] = 10333
rwtTask[nAKeLaiSiMercenaryTask_8]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_8]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_8]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_8]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_8]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_8]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_9] = {}
rwtTask[nAKeLaiSiMercenaryTask_9]["Title"] = tLuaText[LANGUAGE_CONFIG][20494]
rwtTask[nAKeLaiSiMercenaryTask_9]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_9]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_9]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_9]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_9]["AcceptDialogId"] = 10332
rwtTask[nAKeLaiSiMercenaryTask_9]["DialogId"] = 10333
rwtTask[nAKeLaiSiMercenaryTask_9]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_9]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_9]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_9]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_9]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_9]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

rwtTask[nAKeLaiSiMercenaryTask_10] = {}
rwtTask[nAKeLaiSiMercenaryTask_10]["Title"] = tLuaText[LANGUAGE_CONFIG][20495]
rwtTask[nAKeLaiSiMercenaryTask_10]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_10]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_10]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[nAKeLaiSiMercenaryTask_10]["TaskNpc"] = nNpcId_Butler
rwtTask[nAKeLaiSiMercenaryTask_10]["AcceptDialogId"] = 10332
rwtTask[nAKeLaiSiMercenaryTask_10]["DialogId"] = 10333
rwtTask[nAKeLaiSiMercenaryTask_10]["AwardGroupId"] = 2
rwtTask[nAKeLaiSiMercenaryTask_10]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_10]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_10]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_10]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_10]["StartAutoWay"]["FindWayPos"] = "78.16,0.11,-148.94"

---------------------------------------------------------------------------------
--------------四个位置随机出现失踪的士兵，导航到第一个位置-----------------------

rwtTask[nAKeLaiSiMercenaryTask_11] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["Title"] = tLuaText[LANGUAGE_CONFIG][20496]
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_11]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_11]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_11]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_11]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_11]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_11]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_11]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayGroupId"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_11]["StartAutoWay"]["FindWayGenId"] =  2001476

rwtTask[nAKeLaiSiMercenaryTask_12] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["Title"] = tLuaText[LANGUAGE_CONFIG][20497]
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_12]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_12]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_12]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_12]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_12]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_12]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_12]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayGroupId"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_12]["StartAutoWay"]["FindWayGenId"] =  2001476

rwtTask[nAKeLaiSiMercenaryTask_13] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["Title"] = tLuaText[LANGUAGE_CONFIG][20498]
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_13]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_13]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_13]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_13]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_13]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_13]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_13]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayGroupId"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_13]["StartAutoWay"]["FindWayGenId"] =  2001476

rwtTask[nAKeLaiSiMercenaryTask_14] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["Title"] = tLuaText[LANGUAGE_CONFIG][20499]
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_14]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_14]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_14]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_14]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_14]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_14]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_14]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayGroupId"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_14]["StartAutoWay"]["FindWayGenId"] =  2001476

rwtTask[nAKeLaiSiMercenaryTask_15] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["Title"] = tLuaText[LANGUAGE_CONFIG][20500]
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_15]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_15]["AcceptDialogId"] = 10334
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_ShiZon
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_15]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_15]["KillMonsterGroup1"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_15]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_15]["AwardGroupId"] = 3
rwtTask[nAKeLaiSiMercenaryTask_15]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayGroupId"] = 900164
rwtTask[nAKeLaiSiMercenaryTask_15]["StartAutoWay"]["FindWayGenId"] =  2001476
---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_16] = {}
rwtTask[nAKeLaiSiMercenaryTask_16]["Title"] = tLuaText[LANGUAGE_CONFIG][20501]
rwtTask[nAKeLaiSiMercenaryTask_16]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_16]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_16]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"] = {}
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][1] = {}
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][1]["GenId"] = tTrap_GenId_Escore[1]
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][2] = {}
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][2]["GenId"] = tTrap_GenId_Escore[2]
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][3] = {}
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][3]["GenId"] = tTrap_GenId_Escore[3]
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_16]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_16]["TaskNpc"] = nNpcId_GongHuiBanShiYuan
rwtTask[nAKeLaiSiMercenaryTask_16]["AcceptDialogId"] = 10336
rwtTask[nAKeLaiSiMercenaryTask_16]["DialogId"] = 10337
rwtTask[nAKeLaiSiMercenaryTask_16]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_16]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_16]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_16]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_16]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_16]["StartAutoWay"]["FindWayGroupId"] = 20086
rwtTask[nAKeLaiSiMercenaryTask_16]["StartAutoWay"]["FindWayGenId"] =  2001466


rwtTask[nAKeLaiSiMercenaryTask_17] = {}
rwtTask[nAKeLaiSiMercenaryTask_17]["Title"] = tLuaText[LANGUAGE_CONFIG][20502]
rwtTask[nAKeLaiSiMercenaryTask_17]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_17]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_17]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"] = {}
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][1] = {}
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][1]["GenId"] = tTrap_GenId_Escore[1]
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][2] = {}
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][2]["GenId"] = tTrap_GenId_Escore[2]
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][3] = {}
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][3]["GenId"] = tTrap_GenId_Escore[3]
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_17]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_17]["TaskNpc"] = nNpcId_GongHuiBanShiYuan
rwtTask[nAKeLaiSiMercenaryTask_17]["AcceptDialogId"] = 10336
rwtTask[nAKeLaiSiMercenaryTask_17]["DialogId"] = 10337
rwtTask[nAKeLaiSiMercenaryTask_17]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_17]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_17]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_17]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_17]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_17]["StartAutoWay"]["FindWayGroupId"] = 20086
rwtTask[nAKeLaiSiMercenaryTask_17]["StartAutoWay"]["FindWayGenId"] =  2001466

rwtTask[nAKeLaiSiMercenaryTask_18] = {}
rwtTask[nAKeLaiSiMercenaryTask_18]["Title"] = tLuaText[LANGUAGE_CONFIG][20503]
rwtTask[nAKeLaiSiMercenaryTask_18]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_18]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_18]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"] = {}
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][1] = {}
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][1]["GenId"] = tTrap_GenId_Escore[1]
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][2] = {}
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][2]["GenId"] = tTrap_GenId_Escore[2]
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][3] = {}
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][3]["GenId"] = tTrap_GenId_Escore[3]
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_18]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_18]["TaskNpc"] = nNpcId_GongHuiBanShiYuan
rwtTask[nAKeLaiSiMercenaryTask_18]["AcceptDialogId"] = 10336
rwtTask[nAKeLaiSiMercenaryTask_18]["DialogId"] = 10337
rwtTask[nAKeLaiSiMercenaryTask_18]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_18]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_18]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_18]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_18]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_18]["StartAutoWay"]["FindWayGroupId"] = 20086
rwtTask[nAKeLaiSiMercenaryTask_18]["StartAutoWay"]["FindWayGenId"] =  2001466

rwtTask[nAKeLaiSiMercenaryTask_19] = {}
rwtTask[nAKeLaiSiMercenaryTask_19]["Title"] = tLuaText[LANGUAGE_CONFIG][20504]
rwtTask[nAKeLaiSiMercenaryTask_19]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_19]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_19]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"] = {}
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][1] = {}
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][1]["GenId"] = tTrap_GenId_Escore[1]
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][2] = {}
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][2]["GenId"] = tTrap_GenId_Escore[2]
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][3] = {}
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][3]["GenId"] = tTrap_GenId_Escore[3]
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_19]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_19]["TaskNpc"] = nNpcId_GongHuiBanShiYuan
rwtTask[nAKeLaiSiMercenaryTask_19]["AcceptDialogId"] = 10336
rwtTask[nAKeLaiSiMercenaryTask_19]["DialogId"] = 10337
rwtTask[nAKeLaiSiMercenaryTask_19]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_19]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_19]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_19]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_19]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_19]["StartAutoWay"]["FindWayGroupId"] = 20086
rwtTask[nAKeLaiSiMercenaryTask_19]["StartAutoWay"]["FindWayGenId"] =  2001466

rwtTask[nAKeLaiSiMercenaryTask_20] = {}
rwtTask[nAKeLaiSiMercenaryTask_20]["Title"] = tLuaText[LANGUAGE_CONFIG][20505]
rwtTask[nAKeLaiSiMercenaryTask_20]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_20]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_20]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"] = {}
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][1] = {}
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][1]["GenId"] = tTrap_GenId_Escore[1]
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][1]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][2] = {}
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][2]["GenId"] = tTrap_GenId_Escore[2]
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][2]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][3] = {}
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][3]["GenId"] = tTrap_GenId_Escore[3]
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][3]["MapId"] = 2001
--rwtTask[nAKeLaiSiMercenaryTask_20]["DynaNpcGroupGen"][3]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_20]["TaskNpc"] = nNpcId_GongHuiBanShiYuan
rwtTask[nAKeLaiSiMercenaryTask_20]["AcceptDialogId"] = 10336
rwtTask[nAKeLaiSiMercenaryTask_20]["DialogId"] = 10337
rwtTask[nAKeLaiSiMercenaryTask_20]["AwardGroupId"] = 4
rwtTask[nAKeLaiSiMercenaryTask_20]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_20]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_20]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_20]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_20]["StartAutoWay"]["FindWayGroupId"] = 20086
rwtTask[nAKeLaiSiMercenaryTask_20]["StartAutoWay"]["FindWayGenId"] =  2001466

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
rwtTask[nAKeLaiSiMercenaryTask_22]["Title"] = tLuaText[LANGUAGE_CONFIG][20507]
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
rwtTask[nAKeLaiSiMercenaryTask_23]["Title"] = tLuaText[LANGUAGE_CONFIG][20508]
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
rwtTask[nAKeLaiSiMercenaryTask_24]["Title"] = tLuaText[LANGUAGE_CONFIG][20509]
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
rwtTask[nAKeLaiSiMercenaryTask_25]["Title"] = tLuaText[LANGUAGE_CONFIG][20510]
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
rwtTask[nAKeLaiSiMercenaryTask_26]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_26]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_26]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_26]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_26]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_26]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayGroupId"] = 60051
rwtTask[nAKeLaiSiMercenaryTask_26]["StartAutoWay"]["FindWayGenId"] =  2001471

rwtTask[nAKeLaiSiMercenaryTask_27] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["Title"] = tLuaText[LANGUAGE_CONFIG][20512]
rwtTask[nAKeLaiSiMercenaryTask_27]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_27]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_27]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_27]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_27]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_27]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_27]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_27]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_27]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_27]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_27]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayGroupId"] = 60051
rwtTask[nAKeLaiSiMercenaryTask_27]["StartAutoWay"]["FindWayGenId"] =  2001471

rwtTask[nAKeLaiSiMercenaryTask_28] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["Title"] = tLuaText[LANGUAGE_CONFIG][20513]
rwtTask[nAKeLaiSiMercenaryTask_28]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_28]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_28]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_28]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_28]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_28]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_28]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_28]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_28]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_28]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_28]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayGroupId"] = 60051
rwtTask[nAKeLaiSiMercenaryTask_28]["StartAutoWay"]["FindWayGenId"] =  2001471

rwtTask[nAKeLaiSiMercenaryTask_29] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["Title"] = tLuaText[LANGUAGE_CONFIG][20514]
rwtTask[nAKeLaiSiMercenaryTask_29]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_29]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_29]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_29]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_29]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_29]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_29]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_29]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_29]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_29]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_29]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayGroupId"] = 60051
rwtTask[nAKeLaiSiMercenaryTask_29]["StartAutoWay"]["FindWayGenId"] =  2001471

rwtTask[nAKeLaiSiMercenaryTask_30] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["Title"] = tLuaText[LANGUAGE_CONFIG][20515]
rwtTask[nAKeLaiSiMercenaryTask_30]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_30]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_30]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_30]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1]["GenId"] = nCollect_genId_1
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_30]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_30]["AcceptDialogId"] = 10339
rwtTask[nAKeLaiSiMercenaryTask_30]["ReqCollectId1"] = nCollect_1
rwtTask[nAKeLaiSiMercenaryTask_30]["ReqCollectCount1"] = 1
rwtTask[nAKeLaiSiMercenaryTask_30]["ReqCollectOnceNum"] = 1
rwtTask[nAKeLaiSiMercenaryTask_30]["AwardGroupId"] = 1
rwtTask[nAKeLaiSiMercenaryTask_30]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayGroupId"] = 60051
rwtTask[nAKeLaiSiMercenaryTask_30]["StartAutoWay"]["FindWayGenId"] =  2001471

---------------------------------------------------------------------------------

rwtTask[nAKeLaiSiMercenaryTask_31] = {}
rwtTask[nAKeLaiSiMercenaryTask_31]["Title"] = tLuaText[LANGUAGE_CONFIG][20516]
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_31]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_31]["DynaNpcGroupMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_31]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_31]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_31]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_Refugee
rwtTask[nAKeLaiSiMercenaryTask_31]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_31]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_31]["TaskNpc"] = nNpcId_Refugee  
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
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"]["FindWayGroupId"] = 20090
rwtTask[nAKeLaiSiMercenaryTask_31]["StartAutoWay"]["FindWayGenId"] =  2001483


rwtTask[nAKeLaiSiMercenaryTask_32] = {}
rwtTask[nAKeLaiSiMercenaryTask_32]["Title"] = tLuaText[LANGUAGE_CONFIG][20517]
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_32]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_32]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_32]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_32]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_Refugee
rwtTask[nAKeLaiSiMercenaryTask_32]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_32]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_32]["TaskNpc"] = nNpcId_Refugee    
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
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"]["FindWayGroupId"] = 20090
rwtTask[nAKeLaiSiMercenaryTask_32]["StartAutoWay"]["FindWayGenId"] =  2001483


rwtTask[nAKeLaiSiMercenaryTask_33] = {}
rwtTask[nAKeLaiSiMercenaryTask_33]["Title"] = tLuaText[LANGUAGE_CONFIG][20518]
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_33]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_33]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_33]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_33]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_Refugee
rwtTask[nAKeLaiSiMercenaryTask_33]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_33]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_33]["TaskNpc"] = nNpcId_Refugee  
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
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"]["FindWayGroupId"] = 20090
rwtTask[nAKeLaiSiMercenaryTask_33]["StartAutoWay"]["FindWayGenId"] =  2001483


rwtTask[nAKeLaiSiMercenaryTask_34] = {}
rwtTask[nAKeLaiSiMercenaryTask_34]["Title"] = tLuaText[LANGUAGE_CONFIG][20519]
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_34]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_34]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_34]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_34]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_Refugee
rwtTask[nAKeLaiSiMercenaryTask_34]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_34]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_34]["TaskNpc"] = nNpcId_Refugee   
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
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"]["FindWayGroupId"] = 20090
rwtTask[nAKeLaiSiMercenaryTask_34]["StartAutoWay"]["FindWayGenId"] =  2001483


rwtTask[nAKeLaiSiMercenaryTask_35] = {}
rwtTask[nAKeLaiSiMercenaryTask_35]["Title"] = tLuaText[LANGUAGE_CONFIG][20520]
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_35]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_35]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_35]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_35]["DynaNpcGroupGen"][1]["GenId"] = nNpc_GenId_Refugee
rwtTask[nAKeLaiSiMercenaryTask_35]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_35]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_35]["TaskNpc"] = nNpcId_Refugee    
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
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"]["FindWayGroupId"] = 20090
rwtTask[nAKeLaiSiMercenaryTask_35]["StartAutoWay"]["FindWayGenId"] =  2001483


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
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"]["FindWayGroupId"] = 20103
rwtTask[nAKeLaiSiMercenaryTask_36]["StartAutoWay"]["FindWayGenId"] =  2001475


rwtTask[nAKeLaiSiMercenaryTask_37] = {}
rwtTask[nAKeLaiSiMercenaryTask_37]["Title"] = tLuaText[LANGUAGE_CONFIG][20522]
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
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"]["FindWayGroupId"] = 20103
rwtTask[nAKeLaiSiMercenaryTask_37]["StartAutoWay"]["FindWayGenId"] =  2001475



rwtTask[nAKeLaiSiMercenaryTask_38] = {}
rwtTask[nAKeLaiSiMercenaryTask_38]["Title"] = tLuaText[LANGUAGE_CONFIG][20523]
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
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"]["FindWayGroupId"] = 20103
rwtTask[nAKeLaiSiMercenaryTask_38]["StartAutoWay"]["FindWayGenId"] =  2001475



rwtTask[nAKeLaiSiMercenaryTask_39] = {}
rwtTask[nAKeLaiSiMercenaryTask_39]["Title"] = tLuaText[LANGUAGE_CONFIG][20524]
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
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"]["FindWayGroupId"] = 20103
rwtTask[nAKeLaiSiMercenaryTask_39]["StartAutoWay"]["FindWayGenId"] =  2001475



rwtTask[nAKeLaiSiMercenaryTask_40] = {}
rwtTask[nAKeLaiSiMercenaryTask_40]["Title"] = tLuaText[LANGUAGE_CONFIG][20525]
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
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"]["FindWayGroupId"] = 20103
rwtTask[nAKeLaiSiMercenaryTask_40]["StartAutoWay"]["FindWayGenId"] =  2001475

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
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_41]["StartAutoWay"]["FindWayPos"] = "67.99,0.04,-148.51"


rwtTask[nAKeLaiSiMercenaryTask_42] = {}
rwtTask[nAKeLaiSiMercenaryTask_42]["Title"] = tLuaText[LANGUAGE_CONFIG][21004] 
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
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_42]["StartAutoWay"]["FindWayPos"] = "67.99,0.04,-148.51"


rwtTask[nAKeLaiSiMercenaryTask_43] = {}
rwtTask[nAKeLaiSiMercenaryTask_43]["Title"] = tLuaText[LANGUAGE_CONFIG][21005] 
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
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_43]["StartAutoWay"]["FindWayPos"] = "67.99,0.04,-148.51"


rwtTask[nAKeLaiSiMercenaryTask_44] = {}
rwtTask[nAKeLaiSiMercenaryTask_44]["Title"] = tLuaText[LANGUAGE_CONFIG][21006] 
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
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_44]["StartAutoWay"]["FindWayPos"] = "67.99,0.04,-148.51"


rwtTask[nAKeLaiSiMercenaryTask_45] = {}
rwtTask[nAKeLaiSiMercenaryTask_45]["Title"] = tLuaText[LANGUAGE_CONFIG][21007] 
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
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayTypeId"]= 0
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_45]["StartAutoWay"]["FindWayPos"] = "67.99,0.04,-148.51"



rwtTask[nAKeLaiSiMercenaryTask_46] = {}
rwtTask[nAKeLaiSiMercenaryTask_46]["Title"] = tLuaText[LANGUAGE_CONFIG][21008]
rwtTask[nAKeLaiSiMercenaryTask_46]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_46]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_46]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_46]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_46]["AcceptDialogId"] = nDialog_3
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Bonie
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_46]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_46]["KillMonsterGroup1"] = nMonsterGroupId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_46]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_46]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_46]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_46]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_46]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_46]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_46]["StartAutoWay"]["FindWayGroupId"] = nTrap_Bonie
rwtTask[nAKeLaiSiMercenaryTask_46]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Bonie 

rwtTask[nAKeLaiSiMercenaryTask_47] = {}
rwtTask[nAKeLaiSiMercenaryTask_47]["Title"] = tLuaText[LANGUAGE_CONFIG][21009]
rwtTask[nAKeLaiSiMercenaryTask_47]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_47]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_47]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_47]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_47]["AcceptDialogId"] = nDialog_3
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Bonie
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_47]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_47]["KillMonsterGroup1"] = nMonsterGroupId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_47]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_47]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_47]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_47]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_47]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_47]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_47]["StartAutoWay"]["FindWayGroupId"] = nTrap_Bonie
rwtTask[nAKeLaiSiMercenaryTask_47]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Bonie 

rwtTask[nAKeLaiSiMercenaryTask_48] = {}
rwtTask[nAKeLaiSiMercenaryTask_48]["Title"] = tLuaText[LANGUAGE_CONFIG][21010]
rwtTask[nAKeLaiSiMercenaryTask_48]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_48]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_48]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_48]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_48]["AcceptDialogId"] = nDialog_3
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Bonie
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_48]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_48]["KillMonsterGroup1"] = nMonsterGroupId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_48]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_48]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_48]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_48]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_48]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_48]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_48]["StartAutoWay"]["FindWayGroupId"] = nTrap_Bonie
rwtTask[nAKeLaiSiMercenaryTask_48]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Bonie 

rwtTask[nAKeLaiSiMercenaryTask_49] = {}
rwtTask[nAKeLaiSiMercenaryTask_49]["Title"] = tLuaText[LANGUAGE_CONFIG][21011]
rwtTask[nAKeLaiSiMercenaryTask_49]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_49]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_49]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_49]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_49]["AcceptDialogId"] = nDialog_3
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Bonie
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_49]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_49]["KillMonsterGroup1"] = nMonsterGroupId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_49]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_49]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_49]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_49]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_49]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_49]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_49]["StartAutoWay"]["FindWayGroupId"] = nTrap_Bonie
rwtTask[nAKeLaiSiMercenaryTask_49]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Bonie 

rwtTask[nAKeLaiSiMercenaryTask_50] = {}
rwtTask[nAKeLaiSiMercenaryTask_50]["Title"] = tLuaText[LANGUAGE_CONFIG][21012]
rwtTask[nAKeLaiSiMercenaryTask_50]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_50]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_50]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_50]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_50]["AcceptDialogId"] = nDialog_3
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_Bonie
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][2] = {}
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][2]["GenId"] = nMonsterGroup_GenId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][2]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_50]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_50]["KillMonsterGroup1"] = nMonsterGroupId_GanRanZhe
rwtTask[nAKeLaiSiMercenaryTask_50]["KillMonsterGroupCount1"]= 1
rwtTask[nAKeLaiSiMercenaryTask_50]["AwardGroupId"] = 5
rwtTask[nAKeLaiSiMercenaryTask_50]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_50]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_50]["StartAutoWay"]["FindWayTypeId"]= 1
rwtTask[nAKeLaiSiMercenaryTask_50]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_50]["StartAutoWay"]["FindWayGroupId"] = nTrap_Bonie
rwtTask[nAKeLaiSiMercenaryTask_50]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_Bonie 

rwtTask[nAKeLaiSiMercenaryTask_51] = {}
rwtTask[nAKeLaiSiMercenaryTask_51]["Title"] = tLuaText[LANGUAGE_CONFIG][21013]
rwtTask[nAKeLaiSiMercenaryTask_51]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_51]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_51]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_51]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
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
rwtTask[nAKeLaiSiMercenaryTask_52]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
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
rwtTask[nAKeLaiSiMercenaryTask_53]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
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
rwtTask[nAKeLaiSiMercenaryTask_54]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
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
rwtTask[nAKeLaiSiMercenaryTask_55]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COLLECT
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

rwtTask[nAKeLaiSiMercenaryTask_56] = {}
rwtTask[nAKeLaiSiMercenaryTask_56]["Title"] = tLuaText[LANGUAGE_CONFIG][21018]
rwtTask[nAKeLaiSiMercenaryTask_56]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_56]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_56]["TaskQuality"] = 1
rwtTask[nAKeLaiSiMercenaryTask_56]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_56]["AwardGroupId"] = 6
rwtTask[nAKeLaiSiMercenaryTask_56]["AcceptDialogId"] = nDialog_7
rwtTask[nAKeLaiSiMercenaryTask_56]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_56]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_56]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_56]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_56]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_56]["KillMonsterGroup1" ] = nMonsterGroupId_XieGuai 
rwtTask[nAKeLaiSiMercenaryTask_56]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_56]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_56]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_56]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_56]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_56]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_56]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_GenId_XieGuai

rwtTask[nAKeLaiSiMercenaryTask_57] = {}
rwtTask[nAKeLaiSiMercenaryTask_57]["Title"] = tLuaText[LANGUAGE_CONFIG][21019]
rwtTask[nAKeLaiSiMercenaryTask_57]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_57]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_57]["TaskQuality"] = 2
rwtTask[nAKeLaiSiMercenaryTask_57]["AcceptDialogId"] = nDialog_7
rwtTask[nAKeLaiSiMercenaryTask_57]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_57]["AwardGroupId"] = 6
rwtTask[nAKeLaiSiMercenaryTask_57]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_57]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_57]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_57]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_57]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_57]["KillMonsterGroup1" ] = nMonsterGroupId_XieGuai 
rwtTask[nAKeLaiSiMercenaryTask_57]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_57]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_57]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_57]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_57]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_57]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_57]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_GenId_XieGuai

rwtTask[nAKeLaiSiMercenaryTask_58] = {}
rwtTask[nAKeLaiSiMercenaryTask_58]["Title"] = tLuaText[LANGUAGE_CONFIG][21020]
rwtTask[nAKeLaiSiMercenaryTask_58]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_58]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_58]["TaskQuality"] = 3
rwtTask[nAKeLaiSiMercenaryTask_58]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_58]["AcceptDialogId"] = nDialog_7
rwtTask[nAKeLaiSiMercenaryTask_58]["AwardGroupId"] = 6
rwtTask[nAKeLaiSiMercenaryTask_58]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_58]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_58]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_58]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_58]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_58]["KillMonsterGroup1" ] = nMonsterGroupId_XieGuai 
rwtTask[nAKeLaiSiMercenaryTask_58]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_58]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_58]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_58]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_58]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_58]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_58]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_GenId_XieGuai

rwtTask[nAKeLaiSiMercenaryTask_59] = {}
rwtTask[nAKeLaiSiMercenaryTask_59]["Title"] = tLuaText[LANGUAGE_CONFIG][21021]
rwtTask[nAKeLaiSiMercenaryTask_59]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_59]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_59]["TaskQuality"] = 4
rwtTask[nAKeLaiSiMercenaryTask_59]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_59]["AcceptDialogId"] = nDialog_7
rwtTask[nAKeLaiSiMercenaryTask_59]["AwardGroupId"] = 6
rwtTask[nAKeLaiSiMercenaryTask_59]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_59]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_59]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_59]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_59]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_59]["KillMonsterGroup1" ] = nMonsterGroupId_XieGuai 
rwtTask[nAKeLaiSiMercenaryTask_59]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_59]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_59]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_59]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_59]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_59]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_59]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_GenId_XieGuai

rwtTask[nAKeLaiSiMercenaryTask_60] = {}
rwtTask[nAKeLaiSiMercenaryTask_60]["Title"] = tLuaText[LANGUAGE_CONFIG][21022]
rwtTask[nAKeLaiSiMercenaryTask_60]["TaskType"] = CONST_TASK_TYPE.MERCENARY
rwtTask[nAKeLaiSiMercenaryTask_60]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[nAKeLaiSiMercenaryTask_60]["TaskQuality"] = 5
rwtTask[nAKeLaiSiMercenaryTask_60]["MercenaryTownId"] = 200104
rwtTask[nAKeLaiSiMercenaryTask_60]["AcceptDialogId"] = nDialog_7
rwtTask[nAKeLaiSiMercenaryTask_60]["AwardGroupId"] = 6
rwtTask[nAKeLaiSiMercenaryTask_60]["DynaNpcGroupGen"] = {}
rwtTask[nAKeLaiSiMercenaryTask_60]["DynaNpcGroupGen"][1] = {}
rwtTask[nAKeLaiSiMercenaryTask_60]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_60]["DynaNpcGroupGen"][1]["MapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_60]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete
rwtTask[nAKeLaiSiMercenaryTask_60]["KillMonsterGroup1" ] = nMonsterGroupId_XieGuai 
rwtTask[nAKeLaiSiMercenaryTask_60]["KillMonsterGroupCount1"]=1	
rwtTask[nAKeLaiSiMercenaryTask_60]["IsClickComplete"] = 0
rwtTask[nAKeLaiSiMercenaryTask_60]["StartAutoWay"] = {}
rwtTask[nAKeLaiSiMercenaryTask_60]["StartAutoWay"]["FindWayTypeId"]= 2
rwtTask[nAKeLaiSiMercenaryTask_60]["StartAutoWay"]["FindWayMapId"] = 2001
rwtTask[nAKeLaiSiMercenaryTask_60]["StartAutoWay"]["FindWayGroupId"] = nMonsterGroupId_XieGuai
rwtTask[nAKeLaiSiMercenaryTask_60]["StartAutoWay"]["FindWayGenId"] =  nMonsterGroup_GenId_XieGuai