--[MainTask]BuDongDao *.lua
--Date
--此文件由[BabeLua]插件自动生成
--不冬岛折翼的鸟人主线

--endregion

----------------------------------------------------------数据定义----------------------------------------------------------
----------任务ID------

local tBuDongDao = {}
tBuDongDao.PreTask = 10446
tBuDongDao.NextTask = 10607
--尴尬的着陆点
tBuDongDao.Task_1 = 10449				--抵达天空城
--危险！战斗来袭
tBuDongDao.Task_2 = 10450				--履行承诺
tBuDongDao.Task_3 = 10451				--战胜枭鹰
--弗莱特的心愿
tBuDongDao.Task_4 = 10452				--弗莱特的主意
tBuDongDao.Task_5 = 10453				--收集材料
tBuDongDao.Task_6 = 10454				--听，有人在吵架
tBuDongDao.Task_7 = 10455				--获得羽胫
tBuDongDao.Task_8 = 10456				--获得乌铁（0/3）
tBuDongDao.Task_9 = 10457				--给，你要的材料
--神秘的米兰达 
tBuDongDao.Task_10 = 10458              --拜访米兰达
tBuDongDao.Task_11 = 10459              --见证奇迹诞生
--奇迹的诞生
tBuDongDao.Task_12 = 10460				--卡等级
tBuDongDao.Task_13 = 10461				--特别的委托
tBuDongDao.Task_14 = 10462				--去找米兰达
--少年的勇气
tBuDongDao.Task_15 = 10463				--劝说米兰达
tBuDongDao.Task_16 = 10464				--劝说米兰达
tBuDongDao.Task_17 = 10465              --弗莱特的踪迹
tBuDongDao.Task_18 = 10466        		--米兰达的抉择    
tBuDongDao.Task_19 = 10467      		--弗莱特的心意      
tBuDongDao.Task_20 = 10468              --米兰达的感谢
tBuDongDao.Task_21 = 10469              --米兰达的感谢
tBuDongDao.Task_22 = 10470   			--传说，只是传说
tBuDongDao.Task_23 = 10508   			--前往纳雅城
tBuDongDao.Task_24 = 10620   			--卡等级


-----------------------对白ID-----------------------
--尴尬的着陆点
local nDialog_Task1 = 11127     --抵达天空城
--危险！战斗来袭                
local nDialog_Task2 = 11128     --履行承诺
local nDialog_Task3 = 11129     --战胜枭鹰
--弗莱特的心愿                  
local nDialog_Task4 = 11130     --弗莱特的主意
local nDialog_Task5 = 11131     --收集材料
local nDialog_Task6 = 11132     --听，有人在吵架
local nDialog_Task7 = 11133     --获得羽胫
-- local nDialog_Task8 = 11134     --获得乌铁（0/3）
local nDialog_Task9 = 11134     --给，你要的材料 11135
--神秘的米兰达                  
local nDialog_Task10 = 11136    --拜访米兰达
local nDialog_Task11 = 11137    --见证奇迹诞生
--奇迹的诞生                    
local nDialog_Task12 = 12102    --卡等级：达到
local nDialog_Task12_1 = 12103    --卡等级：没有达到
local nDialog_Task13 = 11139    --特别的委托
local nDialog_Task14 = 11140    --去找米兰达
--少年的勇气                    
local nDialog_Task15 = 11141    --劝说米兰达
local nDialog_Task16 = 11142    --劝说米兰达
local nDialog_Task17 = 11143    --弗莱特的踪迹
local nDialog_Task18 = 11144    --米兰达的抉择   
-- local nDialog_Task19 = 11145    --弗莱特的心意   
local nDialog_Task20 = 11146    --米兰达的感谢
local nDialog_Task21 = 11304    --米兰达的感谢
local nDialog_Task22 = 11305    --传说，只是传说
local nDialog_Task23 = 11306    --前往纳雅城
local nDialog_Task24 = 12104    --卡等级:达到
local nDialog_Task24_1 = 12105   --卡等级：没有达到

--陷阱
local nTrap_1 = 30456  					 --收集材料
local nTrap_GenId_1 = 20050039
local nTrap_2 = 30457  					 --去找米兰达
local nTrap_GenId_2 = 20050040
local nTrap_3 = 30458  					 --护送米拉达 劝说米兰达
local nTrap_GenId_3 = 20050041
local nTrap_4 = 30459   				 --米兰达的感谢 米兰达的感谢
local nTrap_GenId_4 = 20050042
local nTrap_5 = 30406   				 --战胜枭鹰
local nTrap_GenId_5 = 20050043


--建筑
--枭鹰矿洞    50043   20050044
--枭鹰邦域   50044    20050045
--NPC
local nNpc_FuLaiTe = 3383 --弗莱特
local nNpcmap_FuLaiTe = 20408 
local nNpcmap_FuLaiTe_GenId = 20050035

local nNpc_DMJieJi = 3384 --岛民杰基
local nNpcmap_DMJieJi = 20409 
local nNpcmap_DMJieJi_GenId = 20050036

local nNpc_ChengYiFeng = 3385 --橙翼蜂
-- local nNpcmap_ChengYiFeng = 20410 
-- local nNpcmap_ChengYiFeng_GenId = 2001383

local nNpc_MiLanDa = 3386 --米兰达
local nNpcmap_MiLanDa = 20411 
local nNpcmap_MiLanDa_GenId = 20050037

local nNpc_MiLanDa1 = 3386 --3414 --米兰达 临时
local nNpcmap_MiLanDa1 = 20429 
local nNpcmap_MiLanDa1_GenId = 20050038

local nNpc_XiaoYing = 3413 --枭鹰族猎手
-- local nNpcmap_XiaoYing = 20412 
-- local nNpcmap_XiaoYing_GenId = 1000001

--枭鹰斥候
-- local nNpc_ChiHou = 3414 

--Monster
local nMonster_1 = 9000218     --枭鹰斥候
local nMonsterGroup_1 = 900301 
local nMonsterGroup_GenId_1 = 20050032

local nMonster_2 = 9000219     --橙翼蜂
local nMonsterGroup_2 = 900302 
local nMonsterGroup_GenId_2 = 20050034

local nMonster_3 = 9000220     --枭鹰族猎手
local nMonsterGroup_3 = 900303 
local nMonsterGroup_GenId_3 = 20050033


----------------------------------------------------------声明----------------------------------------------------------


--------NPC组----------
--陷阱
rwtNpcGroup[nTrap_1] = rwtNpcGroup[nTrap_1] or {}
rwtNpcGroup[nTrap_1]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_2] = rwtNpcGroup[nTrap_2] or {}
rwtNpcGroup[nTrap_2]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_3] = rwtNpcGroup[nTrap_3] or {}
rwtNpcGroup[nTrap_3]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_4] = rwtNpcGroup[nTrap_4] or {}
rwtNpcGroup[nTrap_4]["Type"] = CONST_NPCGROUP_TYPE.Trap

rwtNpcGroup[nTrap_5] = rwtNpcGroup[nTrap_5] or {}
rwtNpcGroup[nTrap_5]["Type"] = CONST_NPCGROUP_TYPE.Trap

--NPC
rwtNpcGroup[nNpcmap_FuLaiTe] = {}     --弗莱特
rwtNpcGroup[nNpcmap_FuLaiTe]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_FuLaiTe]["NpcId"]= nNpc_FuLaiTe

rwtNpcGroup[nNpcmap_DMJieJi] = {}     --岛民杰基
rwtNpcGroup[nNpcmap_DMJieJi]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_DMJieJi]["NpcId"]= nNpc_DMJieJi


rwtNpcGroup[nNpcmap_MiLanDa] = {}     --米兰达
rwtNpcGroup[nNpcmap_MiLanDa]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_MiLanDa]["NpcId"]= nNpc_MiLanDa

rwtNpcGroup[nNpcmap_MiLanDa1] = {}     --米兰达
rwtNpcGroup[nNpcmap_MiLanDa1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[nNpcmap_MiLanDa1]["NpcId"]= nNpc_MiLanDa1

--枭鹰矿洞（入口配置 转到副本）

--枭鹰邦域
--rwtNpcGroup[50044] = {}     
--rwtNpcGroup[50044]["Type"] = CONST_NPCGROUP_TYPE.CopyMap
--rwtNpcGroup[50044]["UnlockDialog"] = 5210
--rwtNpcGroup[50044]["Dialog"] = 5204
--rwtNpcGroup[50044]["CopyMapList"] = {3054}

--------NPC----------
--弗莱特
rwtNpc[nNpc_FuLaiTe] = rwtNpc[nNpc_FuLaiTe] or {}
rwtNpc[nNpc_FuLaiTe]["DialogId"] = {1770,1771,1689,1690,1691}
-- rwtNpc[nNpc_FuLaiTe]["DialogId"] = nDialog_Task13
--岛民杰基
rwtNpc[nNpc_DMJieJi] = rwtNpc[nNpc_DMJieJi] or {}
rwtNpc[nNpc_DMJieJi]["DialogId"] = {1695,1696,1697}
-- rwtNpc[nNpc_DMJieJi]["DialogId"] = nDialog_Task13
--橙翼蜂
rwtNpc[nNpc_ChengYiFeng] = rwtNpc[nNpc_ChengYiFeng] or {}
-- rwtNpc[nNpc_ChengYiFeng]["DialogId"] = nDialog_Task13
-- 米兰达
rwtNpc[nNpc_MiLanDa] = rwtNpc[nNpc_MiLanDa] or {}
rwtNpc[nNpc_MiLanDa]["DialogId"] = {1692,1693,1694}
-- rwtNpc[nNpc_MiLanDa]["DialogId"] = nDialog_Task13

rwtNpc[nNpc_MiLanDa1] = rwtNpc[nNpc_MiLanDa1] or {}
-- rwtNpc[nNpc_MiLanDa1]["DialogId"] = nDialog_Task13
-----------------------------------------------
--接到抵达天空城任务后开启主城与第三片区的切屏点
function MainTask_BuDong_AddNpcGroup()
	if rwTaskIsSuccess(tBuDongDao.PreTask) then
		rwAddGenEvent(1000136) --主城切屏点
		rwAddGenEvent(20050001)--第三片区切屏点
	else
	end
end

--切图后触发
rwtSceneLoad_Func[1000] = rwtSceneLoad_Func[1000]or {}
table.insert(rwtSceneLoad_Func[1000],MainTask_BuDong_AddNpcGroup)

--切图后触发
rwtSceneLoad_Func[2005] = rwtSceneLoad_Func[2005]or {}
table.insert(rwtSceneLoad_Func[2005],MainTask_BuDong_AddNpcGroup)


-----------------------------------------------

----------------------------------------------------------任务----------------------------------------------------------
-----------------------------------------尴尬的着陆点---------------------------------
--抵达天空城
rwtTask[tBuDongDao.Task_1] = {}
rwtTask[tBuDongDao.Task_1]["Title"] = tLuaText[LANGUAGE_CONFIG][21064]
rwtTask[tBuDongDao.Task_1]["PreTaskId"] = tBuDongDao.PreTask
rwtTask[tBuDongDao.Task_1]["NextTaskId"] = tBuDongDao.Task_2
-- rwtTask[tBuDongDao.Task_1]["AcceptExtraTaskId"] = 70088
rwtTask[tBuDongDao.Task_1]["WorldMapLock"] = CONST_MAPUNLOCK.SHILUOQUNDAO --接到任务解锁失落群岛世界地图
rwtTask[tBuDongDao.Task_1]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_1]["DialogId"] = nDialog_Task1
rwtTask[tBuDongDao.Task_1]["TaskNpc"] = nNpc_FuLaiTe
rwtTask[tBuDongDao.Task_1]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_1]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_1]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_1]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_FuLaiTe
rwtTask[tBuDongDao.Task_1]["StartAutoWay"]["FindWayGenId"] = nNpcmap_FuLaiTe_GenId
rwtTask[tBuDongDao.Task_1]["Awards"] = {}
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000194
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_1
rwtTask[tBuDongDao.Task_1]["OpenTransfer"] = CONST_TRANSFER_INDEX.BUDONGDAO
rwtTask[tBuDongDao.Task_1]["OpenTransferTip"] = tLuaText[LANGUAGE_CONFIG][10060]
rwtTask[tBuDongDao.Task_1]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_1]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_1]["DynaNpcGroupGen"][1]["GenId"] = 1000136
rwtTask[tBuDongDao.Task_1]["DynaNpcGroupGen"][1]["MapId"] = 1000
rwtTask[tBuDongDao.Task_1]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

-----------------------------------------危险！战斗来袭---------------------------------
--履行承诺
rwtTask[tBuDongDao.Task_2] = {}
rwtTask[tBuDongDao.Task_2]["Title"]= tLuaText[LANGUAGE_CONFIG][21065]
rwtTask[tBuDongDao.Task_2]["PreTaskId"] = tBuDongDao.Task_1
rwtTask[tBuDongDao.Task_2]["NextTaskId"] = tBuDongDao.Task_3
rwtTask[tBuDongDao.Task_2]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_PANEL
rwtTask[tBuDongDao.Task_2]["AutoTaskDialog" ]= nDialog_Task2
rwtTask[tBuDongDao.Task_2]["DialogId" ]= nDialog_Task2

--战胜枭鹰
rwtTask[tBuDongDao.Task_3] = {}
rwtTask[tBuDongDao.Task_3]["Title"] = tLuaText[LANGUAGE_CONFIG][21065]
rwtTask[tBuDongDao.Task_3]["PreTaskId"] = tBuDongDao.Task_2
rwtTask[tBuDongDao.Task_3]["NextTaskId"] = tBuDongDao.Task_4
rwtTask[tBuDongDao.Task_3]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDao.Task_3]["DialogId"] = nDialog_Task3
rwtTask[tBuDongDao.Task_3]["ReqTrap1"] = nTrap_5
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_1
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][2] = {}
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][2]["GenId"] = nTrap_GenId_5
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tBuDongDao.Task_3]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_3]["MonsterGroupGenId"] = nMonsterGroup_GenId_1
rwtTask[tBuDongDao.Task_3]["KillMonsterGroup1" ]= nMonsterGroup_1
rwtTask[tBuDongDao.Task_3]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_3]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_3]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_3]["StartAutoWay"]["FindWayGroupId"] = nTrap_5
rwtTask[tBuDongDao.Task_3]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_5
rwtTask[tBuDongDao.Task_3]["Awards"] = {}
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000195
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_3

-------------------------------------------弗莱特的心愿---------------------------------
--弗莱特的主意
rwtTask[tBuDongDao.Task_4] = {}
rwtTask[tBuDongDao.Task_4]["Title"] = tLuaText[LANGUAGE_CONFIG][21066]
rwtTask[tBuDongDao.Task_4]["PreTaskId"] = tBuDongDao.Task_3
rwtTask[tBuDongDao.Task_4]["NextTaskId"] = tBuDongDao.Task_5
rwtTask[tBuDongDao.Task_4]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_4]["DialogId"] = nDialog_Task4
rwtTask[tBuDongDao.Task_4]["TaskNpc"] = nNpc_FuLaiTe
rwtTask[tBuDongDao.Task_4]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_4]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_4]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_4]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_FuLaiTe
rwtTask[tBuDongDao.Task_4]["StartAutoWay"]["FindWayGenId"] = nNpcmap_FuLaiTe_GenId

--收集材料
rwtTask[tBuDongDao.Task_5] = {}
rwtTask[tBuDongDao.Task_5]["Title"] = tLuaText[LANGUAGE_CONFIG][21066]
rwtTask[tBuDongDao.Task_5]["PreTaskId"] = tBuDongDao.Task_4
rwtTask[tBuDongDao.Task_5]["NextTaskId"] = tBuDongDao.Task_6
rwtTask[tBuDongDao.Task_5]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tBuDongDao.Task_5]["DialogId"] = nDialog_Task5
rwtTask[tBuDongDao.Task_5]["ReqTrap1"] = nTrap_1
rwtTask[tBuDongDao.Task_5]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_5]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_5]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_1
rwtTask[tBuDongDao.Task_5]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_5]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_5]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_5]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_5]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_5]["StartAutoWay"]["FindWayGroupId"] = nTrap_1
rwtTask[tBuDongDao.Task_5]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_1

--听，有人在吵架
rwtTask[tBuDongDao.Task_6] = {}
rwtTask[tBuDongDao.Task_6]["Title"] = tLuaText[LANGUAGE_CONFIG][21066]
rwtTask[tBuDongDao.Task_6]["PreTaskId"] = tBuDongDao.Task_5
rwtTask[tBuDongDao.Task_6]["NextTaskId"] = tBuDongDao.Task_7
rwtTask[tBuDongDao.Task_6]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDao.Task_6]["DialogId"] = nDialog_Task6
rwtTask[tBuDongDao.Task_6]["TaskNpc"] = nNpc_DMJieJi
rwtTask[tBuDongDao.Task_6]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_6]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_6]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_2
rwtTask[tBuDongDao.Task_6]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_6]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_6]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_6]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_6]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_6]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_DMJieJi
rwtTask[tBuDongDao.Task_6]["StartAutoWay"]["FindWayGenId"] = nNpcmap_DMJieJi_GenId
rwtTask[tBuDongDao.Task_6]["MonsterGroupGenId"] = nMonsterGroup_GenId_2
rwtTask[tBuDongDao.Task_6]["KillMonsterGroup1" ]= nMonsterGroup_2

--获得羽胫
rwtTask[tBuDongDao.Task_7] = {}
rwtTask[tBuDongDao.Task_7]["Title"] = tLuaText[LANGUAGE_CONFIG][21066]
rwtTask[tBuDongDao.Task_7]["PreTaskId"] = tBuDongDao.Task_6
rwtTask[tBuDongDao.Task_7]["NextTaskId"] = tBuDongDao.Task_8
rwtTask[tBuDongDao.Task_7]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_7]["DialogId"] = nDialog_Task7
rwtTask[tBuDongDao.Task_7]["TaskNpc"] = nNpc_DMJieJi
rwtTask[tBuDongDao.Task_7]["UnlockCopyMap1"] = 3055
rwtTask[tBuDongDao.Task_7]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_7]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_7]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_7]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_DMJieJi
rwtTask[tBuDongDao.Task_7]["StartAutoWay"]["FindWayGenId"] = nNpcmap_DMJieJi_GenId

--获得乌铁（0/3）
rwtTask[tBuDongDao.Task_8] = {}
rwtTask[tBuDongDao.Task_8]["Title"] = tLuaText[LANGUAGE_CONFIG][21066]
rwtTask[tBuDongDao.Task_8]["PreTaskId"] = tBuDongDao.Task_7
rwtTask[tBuDongDao.Task_8]["NextTaskId"] = tBuDongDao.Task_9
rwtTask[tBuDongDao.Task_8]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tBuDongDao.Task_8]["OpenCopyMap"] = 3055
rwtTask[tBuDongDao.Task_8]["IsClickComplete"] = 1
rwtTask[tBuDongDao.Task_8]["PassCopyMap1"] = 3055
rwtTask[tBuDongDao.Task_8]["PassCopyMapCount1"] = 1
rwtTask[tBuDongDao.Task_8]["UnlockCopyMap1"] = 3140
rwtTask[tBuDongDao.Task_8]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_8]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_8]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_8]["StartAutoWay"]["FindWayGroupId"] = 50043
rwtTask[tBuDongDao.Task_8]["StartAutoWay"]["FindWayGenId"] = 20050044

--给，你要的材料
rwtTask[tBuDongDao.Task_9] = {}
rwtTask[tBuDongDao.Task_9]["Title"] = tLuaText[LANGUAGE_CONFIG][21066]
rwtTask[tBuDongDao.Task_9]["PreTaskId"] = tBuDongDao.Task_8
rwtTask[tBuDongDao.Task_9]["NextTaskId"] = tBuDongDao.Task_10
rwtTask[tBuDongDao.Task_9]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_9]["DialogId"] = nDialog_Task9
rwtTask[tBuDongDao.Task_9]["TaskNpc"] = nNpc_FuLaiTe

rwtTask[tBuDongDao.Task_9]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_9]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_9]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_9]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_FuLaiTe
rwtTask[tBuDongDao.Task_9]["StartAutoWay"]["FindWayGenId"] = nNpcmap_FuLaiTe_GenId

rwtTask[tBuDongDao.Task_9]["Awards"] = {}
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000196
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_9]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_9

----------------------------------------神秘的米兰达---------------------------------
--拜访米兰达
rwtTask[tBuDongDao.Task_10] = {}
rwtTask[tBuDongDao.Task_10]["Title"] = tLuaText[LANGUAGE_CONFIG][21067]
rwtTask[tBuDongDao.Task_10]["PreTaskId"] = tBuDongDao.Task_9
rwtTask[tBuDongDao.Task_10]["NextTaskId"] = tBuDongDao.Task_11
rwtTask[tBuDongDao.Task_10]["DialogId"] = nDialog_Task10
rwtTask[tBuDongDao.Task_10]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_10]["TaskNpc"] = nNpc_MiLanDa
rwtTask[tBuDongDao.Task_10]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_10]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_10]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_10]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa
rwtTask[tBuDongDao.Task_10]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa_GenId

--见证奇迹诞生
rwtTask[tBuDongDao.Task_11] = {}
rwtTask[tBuDongDao.Task_11]["Title"] = tLuaText[LANGUAGE_CONFIG][21067]
rwtTask[tBuDongDao.Task_11]["PreTaskId"] = tBuDongDao.Task_10
rwtTask[tBuDongDao.Task_11]["NextTaskId"] = tBuDongDao.Task_12
-- rwtTask[tBuDongDao.Task_11]["AcceptExtraTaskId"] = 70095
rwtTask[tBuDongDao.Task_11]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
rwtTask[tBuDongDao.Task_11]["DialogId"] = nDialog_Task11
rwtTask[tBuDongDao.Task_11]["TaskNpc"] = nNpc_FuLaiTe
rwtTask[tBuDongDao.Task_11]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_11]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_11]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_11]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_FuLaiTe
rwtTask[tBuDongDao.Task_11]["StartAutoWay"]["FindWayGenId"] = nNpcmap_FuLaiTe_GenId
rwtTask[tBuDongDao.Task_11]["Awards"] = {}
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000197
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_11]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_11

-------------------------------------------奇迹的诞生---------------------------------
--制作机械翅膀
rwtTask[tBuDongDao.Task_12] = {}
rwtTask[tBuDongDao.Task_12]["Title"]= tLuaText[LANGUAGE_CONFIG][21068]
rwtTask[tBuDongDao.Task_12]["PreTaskId"] = tBuDongDao.Task_11
rwtTask[tBuDongDao.Task_12]["NextTaskId"]= tBuDongDao.Task_13
rwtTask[tBuDongDao.Task_12]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.COUNTDOWN
-- rwtTask[tBuDongDao.Task_12]["NeedLevel"] = 48
-- rwtTask[tBuDongDao.Task_12]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10181]
rwtTask[tBuDongDao.Task_12]["TaskFinishTime"] = 43200
rwtTask[tBuDongDao.Task_12]["LackDialogId"] = nDialog_Task12_1
rwtTask[tBuDongDao.Task_12]["DialogId"] = nDialog_Task12

--特别的委托
rwtTask[tBuDongDao.Task_13] = {}
rwtTask[tBuDongDao.Task_13]["Title"] = tLuaText[LANGUAGE_CONFIG][21068]
rwtTask[tBuDongDao.Task_13]["PreTaskId"] = tBuDongDao.Task_12
rwtTask[tBuDongDao.Task_13]["NextTaskId"] = tBuDongDao.Task_14
rwtTask[tBuDongDao.Task_13]["DialogId"] = nDialog_Task13
rwtTask[tBuDongDao.Task_13]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_13]["TaskNpc"] = nNpc_FuLaiTe
rwtTask[tBuDongDao.Task_13]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_13]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_13]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_13]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_FuLaiTe
rwtTask[tBuDongDao.Task_13]["StartAutoWay"]["FindWayGenId"] = nNpcmap_FuLaiTe_GenId

--去找米兰达
rwtTask[tBuDongDao.Task_14] = {}
rwtTask[tBuDongDao.Task_14]["Title"] = tLuaText[LANGUAGE_CONFIG][21068]
rwtTask[tBuDongDao.Task_14]["PreTaskId"] = tBuDongDao.Task_13
rwtTask[tBuDongDao.Task_14]["NextTaskId"] = tBuDongDao.Task_15
rwtTask[tBuDongDao.Task_14]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_TRAP
rwtTask[tBuDongDao.Task_14]["DialogId"] = nDialog_Task14
rwtTask[tBuDongDao.Task_14]["ReqTrap1"] = nTrap_2
rwtTask[tBuDongDao.Task_14]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_14]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_14]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_2
rwtTask[tBuDongDao.Task_14]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_14]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_14]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_14]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_14]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_14]["StartAutoWay"]["FindWayGroupId"] = nTrap_2
rwtTask[tBuDongDao.Task_14]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_2
rwtTask[tBuDongDao.Task_14]["Awards"] = {}
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000198
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_14]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_14


-------------------------------------------少年的勇气---------------------------------
--劝说米兰达
rwtTask[tBuDongDao.Task_15] = {}
rwtTask[tBuDongDao.Task_15]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_15]["PreTaskId"] = tBuDongDao.Task_14
rwtTask[tBuDongDao.Task_15]["NextTaskId"] = tBuDongDao.Task_16
rwtTask[tBuDongDao.Task_15]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_15]["DialogId"] = nDialog_Task15
rwtTask[tBuDongDao.Task_15]["TaskNpc"] = nNpc_MiLanDa
rwtTask[tBuDongDao.Task_15]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_15]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_15]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_15]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa
rwtTask[tBuDongDao.Task_15]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa_GenId

--劝说米兰达
rwtTask[tBuDongDao.Task_16] = {}
rwtTask[tBuDongDao.Task_16]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_16]["PreTaskId"] = tBuDongDao.Task_15
rwtTask[tBuDongDao.Task_16]["NextTaskId"] = tBuDongDao.Task_17
rwtTask[tBuDongDao.Task_16]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
-- rwtTask[tBuDongDao.Task_16]["DialogId"] = nDialog_Task16
rwtTask[tBuDongDao.Task_16]["ReqTrap1"] = nTrap_3
rwtTask[tBuDongDao.Task_16]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_16]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_16]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_3
rwtTask[tBuDongDao.Task_16]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_16]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_16]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_16]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_16]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_16]["StartAutoWay"]["FindWayGroupId"] = nTrap_3
rwtTask[tBuDongDao.Task_16]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_3

--弗莱特的踪迹
rwtTask[tBuDongDao.Task_17] = {}
rwtTask[tBuDongDao.Task_17]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_17]["PreTaskId"] = tBuDongDao.Task_16
rwtTask[tBuDongDao.Task_17]["NextTaskId"] = tBuDongDao.Task_18
rwtTask[tBuDongDao.Task_17]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.KILLMONSTER
rwtTask[tBuDongDao.Task_17]["DialogId"] = nDialog_Task17
rwtTask[tBuDongDao.Task_17]["TaskNpc"] = nNpc_MiLanDa1
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][1]["GenId"] = nMonsterGroup_GenId_3
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][2] = {}
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][2]["GenId"] = nNpcmap_MiLanDa1_GenId
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][2]["MapId"] = 2005
rwtTask[tBuDongDao.Task_17]["DynaNpcGroupGen"][2]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tBuDongDao.Task_17]["MonsterGroupGenId"] = nMonsterGroup_GenId_3
rwtTask[tBuDongDao.Task_17]["KillMonsterGroup1" ]= nMonsterGroup_3
rwtTask[tBuDongDao.Task_17]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_17]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_17]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_17]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa1
rwtTask[tBuDongDao.Task_17]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa1_GenId


--米兰达的抉择
rwtTask[tBuDongDao.Task_18] = {}
rwtTask[tBuDongDao.Task_18]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_18]["PreTaskId"] = tBuDongDao.Task_17
rwtTask[tBuDongDao.Task_18]["NextTaskId"] = tBuDongDao.Task_19
rwtTask[tBuDongDao.Task_18]["DialogId"] = nDialog_Task18
rwtTask[tBuDongDao.Task_18]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_18]["TaskNpc"] = nNpc_MiLanDa1
rwtTask[tBuDongDao.Task_18]["UnlockCopyMap1"] = 3054
rwtTask[tBuDongDao.Task_18]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_18]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_18]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_MiLanDa1_GenId
rwtTask[tBuDongDao.Task_18]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_18]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tBuDongDao.Task_18]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_18]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_18]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_18]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa1
rwtTask[tBuDongDao.Task_18]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa1_GenId

--弗莱特的心意
rwtTask[tBuDongDao.Task_19] = {}
rwtTask[tBuDongDao.Task_19]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_19]["PreTaskId"] = tBuDongDao.Task_18
rwtTask[tBuDongDao.Task_19]["NextTaskId"] = tBuDongDao.Task_20
rwtTask[tBuDongDao.Task_19]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.PASS_COPYMAP
rwtTask[tBuDongDao.Task_19]["OpenCopyMap"] = 3054
rwtTask[tBuDongDao.Task_19]["IsClickComplete"] = 1
rwtTask[tBuDongDao.Task_19]["PassCopyMap1"] = 3054
rwtTask[tBuDongDao.Task_19]["PassCopyMapCount1"] = 1
rwtTask[tBuDongDao.Task_19]["UnlockCopyMap1"] = 3142
rwtTask[tBuDongDao.Task_19]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_19]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_19]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_MiLanDa1_GenId
rwtTask[tBuDongDao.Task_19]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_19]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.NotDel 
rwtTask[tBuDongDao.Task_19]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_19]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_19]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_19]["StartAutoWay"]["FindWayGroupId"] = 50044
rwtTask[tBuDongDao.Task_19]["StartAutoWay"]["FindWayGenId"] = 20050045

rwtTask[tBuDongDao.Task_19]["Awards"] = {}
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000310
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_19]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_19

--米兰达的感谢
rwtTask[tBuDongDao.Task_20] = {}
rwtTask[tBuDongDao.Task_20]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_20]["PreTaskId"] = tBuDongDao.Task_19
rwtTask[tBuDongDao.Task_20]["NextTaskId"] = tBuDongDao.Task_21
rwtTask[tBuDongDao.Task_20]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_20]["DialogId"] = nDialog_Task20
rwtTask[tBuDongDao.Task_20]["TaskNpc"] = nNpc_MiLanDa1
rwtTask[tBuDongDao.Task_20]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_20]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_20]["DynaNpcGroupGen"][1]["GenId"] = nNpcmap_MiLanDa1_GenId
rwtTask[tBuDongDao.Task_20]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_20]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 
rwtTask[tBuDongDao.Task_20]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_20]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_20]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_20]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa1
rwtTask[tBuDongDao.Task_20]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa1_GenId

--米兰达的感谢
rwtTask[tBuDongDao.Task_21] = {}
rwtTask[tBuDongDao.Task_21]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_21]["PreTaskId"] = tBuDongDao.Task_20
rwtTask[tBuDongDao.Task_21]["NextTaskId"] = tBuDongDao.Task_22
rwtTask[tBuDongDao.Task_21]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.ESCORT
-- rwtTask[tBuDongDao.Task_21]["DialogId"] = nDialog_Task21
rwtTask[tBuDongDao.Task_21]["ReqTrap1"] = nTrap_4
rwtTask[tBuDongDao.Task_21]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_21]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_21]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_21]["StartAutoWay"]["FindWayGroupId"] = nTrap_4
rwtTask[tBuDongDao.Task_21]["StartAutoWay"]["FindWayGenId"] = nTrap_GenId_4
rwtTask[tBuDongDao.Task_21]["DynaNpcGroupGen"] = {}
rwtTask[tBuDongDao.Task_21]["DynaNpcGroupGen"][1] = {}
rwtTask[tBuDongDao.Task_21]["DynaNpcGroupGen"][1]["GenId"] = nTrap_GenId_4
rwtTask[tBuDongDao.Task_21]["DynaNpcGroupGen"][1]["MapId"] = 2005
rwtTask[tBuDongDao.Task_21]["DynaNpcGroupGen"][1]["DelType"] = CONST_TASK_INFO_DELTYPE.Complete 

--传说，只是传说
rwtTask[tBuDongDao.Task_22] = {}
rwtTask[tBuDongDao.Task_22]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_22]["PreTaskId"] = tBuDongDao.Task_21
rwtTask[tBuDongDao.Task_22]["NextTaskId"] = tBuDongDao.Task_23
rwtTask[tBuDongDao.Task_22]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_22]["DialogId"] = nDialog_Task22
rwtTask[tBuDongDao.Task_22]["TaskNpc"] = nNpc_MiLanDa

rwtTask[tBuDongDao.Task_22]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_22]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_22]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_22]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa
rwtTask[tBuDongDao.Task_22]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa_GenId

--前往纳雅城
rwtTask[tBuDongDao.Task_23] = {}
rwtTask[tBuDongDao.Task_23]["Title"] = tLuaText[LANGUAGE_CONFIG][21069]
rwtTask[tBuDongDao.Task_23]["PreTaskId"] = tBuDongDao.Task_22
rwtTask[tBuDongDao.Task_23]["NextTaskId"] = tBuDongDao.NextTask
rwtTask[tBuDongDao.Task_23]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.TALK_BY_NPC
rwtTask[tBuDongDao.Task_23]["DialogId"] = nDialog_Task23
rwtTask[tBuDongDao.Task_23]["TaskNpc"] = nNpc_MiLanDa
rwtTask[tBuDongDao.Task_23]["StartAutoWay"] = {}
rwtTask[tBuDongDao.Task_23]["StartAutoWay"]["FindWayTypeId"] = 1
rwtTask[tBuDongDao.Task_23]["StartAutoWay"]["FindWayMapId"] = 2005
rwtTask[tBuDongDao.Task_23]["StartAutoWay"]["FindWayGroupId"] = nNpcmap_MiLanDa
rwtTask[tBuDongDao.Task_23]["StartAutoWay"]["FindWayGenId"] = nNpcmap_MiLanDa_GenId

rwtTask[tBuDongDao.Task_23]["Awards"] = {}
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"] = {}
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"][1] = {}
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.AWARD
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = 2000199
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TASK
rwtTask[tBuDongDao.Task_23]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tBuDongDao.Task_23

-- rwtTask[tBuDongDao.Task_24] = {}
-- rwtTask[tBuDongDao.Task_24]["Title"]= tLuaText[LANGUAGE_CONFIG][21069]
-- rwtTask[tBuDongDao.Task_24]["PreTaskId"] = tBuDongDao.Task_23
-- rwtTask[tBuDongDao.Task_24]["NextTaskId"]= tBuDongDao.NextTask
-- rwtTask[tBuDongDao.Task_24]["TaskDetailType"] = CONST_TASK_DETAIL_TYPE.UPLEVEL
-- rwtTask[tBuDongDao.Task_24]["NeedLevel"] = 49
-- rwtTask[tBuDongDao.Task_24]["LackTips"] = tLuaText[LANGUAGE_CONFIG][10182]
-- rwtTask[tBuDongDao.Task_24]["LackDialogId"] = nDialog_Task24_1
-- rwtTask[tBuDongDao.Task_24]["DialogId"] = nDialog_Task24
-- rwtTask[tBuDongDao.Task_24]["OpenMercenaryTask"] = {}
-- rwtTask[tBuDongDao.Task_24]["OpenMercenaryTask"]["AreaId"] = 2005
-- rwtTask[tBuDongDao.Task_24]["OpenMercenaryTask"]["TownId"] = 200501
