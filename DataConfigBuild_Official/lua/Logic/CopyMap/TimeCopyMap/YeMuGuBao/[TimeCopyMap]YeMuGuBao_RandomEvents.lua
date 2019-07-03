--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
--ZY
--endregion

local tRandomBoxGroup = {}
tRandomBoxGroup.Box1 = 40168 --随机事件1-宝箱1
tRandomBoxGroup.Box2 = 40169 --随机事件1-宝箱2    
tRandomBoxGroup.Box3 = 40170 --随机事件1-宝箱3

local nHideBoxGroup = 40171  --隐藏宝箱

local tNpcGroup = {}
tNpcGroup.Youdang_1  = 20533    --NPC 游荡者
tNpcGroup.Youdang_2  = 20547
tNpcGroup.Youdang_3  = 20548
tNpcGroup.YBDashu_1 = 20534	 --NPC 佣兵大叔
tNpcGroup.YBDashu_2 = 20549	 
tNpcGroup.YBDashu_3 = 20550
tNpcGroup.YBDashu_4 = 20551 
tNpcGroup.YBDashu_5 = 20552
tNpcGroup.YBNan_1 = 20535		 --NPC 男佣兵
tNpcGroup.YBNan_2 = 20553
tNpcGroup.YBNan_3 = 20554
tNpcGroup.YBNan_4 = 20555
tNpcGroup.YBNan_5 = 20556
tNpcGroup.YBNv_1 = 20536		 --NPC 女佣兵
tNpcGroup.YBNv_2 = 20557
tNpcGroup.YBNv_3 = 20558
tNpcGroup.YBNv_4 = 20559
tNpcGroup.YBNv_5 = 20560
tNpcGroup.Toutiao_1 = 20537	 --NPC 头条哥布林
tNpcGroup.Toutiao_2 = 20561
tNpcGroup.Toutiao_3 = 20562
tNpcGroup.Toutiao_4 = 20563
tNpcGroup.Toutiao_5 = 20564
tNpcGroup.GoldGoblin = 20538	 --NPC 金钱哥布林
tNpcGroup.Beila = 20539		 --NPC 贝拉
tNpcGroup.Meigui = 20540	 --NPC 玫瑰团成员

local tNpc = {}
tNpc.Youdang_1  = 3605    --NPC 游荡者
tNpc.Youdang_2  = 3606
tNpc.Youdang_3  = 3607 
tNpc.YBDashu_1 = 3608	 --NPC 佣兵大叔
tNpc.YBDashu_2 = 3609	 
tNpc.YBDashu_3 = 3610	 
tNpc.YBDashu_4 = 3611	 
tNpc.YBDashu_5 = 3612	 
tNpc.YBNan_1 = 3613		 --NPC 男佣兵
tNpc.YBNan_2 = 3614
tNpc.YBNan_3 = 3615
tNpc.YBNan_4 = 3616
tNpc.YBNan_5 = 3617
tNpc.YBNv_1 = 3618		 --NPC 女佣兵
tNpc.YBNv_2 = 3619
tNpc.YBNv_3 = 3620
tNpc.YBNv_4 = 3621
tNpc.YBNv_5 = 3622
tNpc.Toutiao_1 = 3623	 --NPC 头条哥布林
tNpc.Toutiao_2 = 3624
tNpc.Toutiao_3 = 3625
tNpc.Toutiao_4 = 3626
tNpc.Toutiao_5 = 3627
tNpc.GoldGoblin = 3628  --NPC 金钱哥布林
tNpc.Beila = 3629	 --NPC 贝拉
tNpc.Meigui = 3630	 --NPC 玫瑰团成员
tNpc.Zhanhun = 3632  --嗜血战魂
local tTrap = {}
tTrap.RandomEvent3_1 = 30557
tTrap.RandomEvent3_2 = 30558
tTrap.RandomEvent3_3 = 30559
tTrap.RandomEvent3_4 = 30560
tTrap.RandomEvent3_5 = 30561

local tHero = {}
tHero.Gongzhu = 105
tHero.Aiqi = 302
tHero.Gaiyin = 107

local tMonster_Group = {}
tMonster_Group.Sangshi_1 = 800124		--怪物 丧尸法师
tMonster_Group.Sangshi_2 = 800132		--怪物 丧尸法师
tMonster_Group.Sangshi_3 = 800133		--怪物 丧尸法师
tMonster_Group.Lieshou = 800125		--怪物 森林猎手
tMonster_Group.Langren = 800126		--怪物 泪目狼人
tMonster_Group.BigGoblin = 800127	--怪物 大哥布林
tMonster_Group.Jijuxiong = 800128	--怪物 寄居熊
tMonster_Group.Apu = 800129			--怪物 狂化阿噗
tMonster_Group.GoldGoblin = 800130	--怪物 金钱哥布林
tMonster_Group.Zhanhun = 800131		--怪物 嗜血战魂

local tCopyMapId = {}
tCopyMapId.CastleHall = 3075      -- 大厅
tCopyMapId.Stairs = 3076		  -- 楼梯
tCopyMapId.Zoulang = 3078		  -- 走廊
tCopyMapId.Mishi = 3079			  -- 密室
tCopyMapId.Beforecastle = 3080	  -- 城堡前
tCopyMapId.Lobby = 3081			  -- 前厅
tCopyMapId.Study = 3082			  -- 书房

local tGenid = {}
tGenid.RandomBox1 = 99990021
tGenid.RandomBox2 = 99990022
tGenid.RandomBox3 = 99990023
tGenid.NpcYoudang1 =99990024  
tGenid.NpcYoudang2 =99990025  
tGenid.NpcYoudang3 =99990026
tGenid.MonsterYoudang1 = 99990027
tGenid.MonsterYoudang2 = 99990028
tGenid.MonsterYoudang3 = 99990029  
tGenid.YoudangBox =99990030  
tGenid.Random3_Trap1 = 99990031
tGenid.Random3_Trap2 = 99990032
tGenid.Random3_Trap3 = 99990033
tGenid.Random3_Trap4 = 99990034
tGenid.Random3_Trap5 = 99990035
tGenid.Random3_Monster1 = 99990036
tGenid.Random3_Monster2 = 99990037
tGenid.Random3_Monster3 = 99990038
tGenid.Random3_Monster4 = 99990039
tGenid.Random3_Monster5 = 99990040
tGenid.YBDashu_1 = 99990041
tGenid.YBDashu_2 = 99990042
tGenid.YBDashu_3 = 99990043
tGenid.YBDashu_4 = 99990044
tGenid.YBDashu_5 = 99990045
tGenid.YBNan_1 = 99990046
tGenid.YBNan_2 = 99990047
tGenid.YBNan_3 = 99990048
tGenid.YBNan_4 = 99990049
tGenid.YBNan_5 = 99990050
tGenid.YBNv_1 = 99990051
tGenid.YBNv_2 = 99990052
tGenid.YBNv_3 = 99990053
tGenid.YBNv_4 = 99990054
tGenid.YBNv_5 = 99990055
tGenid.ToutiaoGoblin_1 = 99990056
tGenid.ToutiaoGoblin_2 = 99990057
tGenid.ToutiaoGoblin_3 = 99990058
tGenid.ToutiaoGoblin_4 = 99990059
tGenid.ToutiaoGoblin_5 = 99990060
tGenid.GoldGoblin = 99990061
tGenid.Monster_GoldGoblin = 99990062
tGenid.Beila_1 = 99990063
tGenid.Beila_2 = 99990064
tGenid.Beila_3 = 99990065
tGenid.Meiguituan = 99990066
tGenid.Monster_Zhanhun = 99990067

local tTempCordId = {}
tTempCordId.RandomBox = 1130   --随机1宝箱事件掩码
tTempCordId.YoudangZhe = 1131  --随机2游荡者事件掩码
tTempCordId.Yongbing = 1132    --随机4佣兵事件掩码
tTempCordId.GoldGoblin = 1133  --随机5黄金哥布林事件掩码
tTempCordId.Meiguituan = 1134  --随机6玫瑰团事件掩码

local tAwardId = {}
tAwardId.RandomBox = 1000346
tAwardId.YoudangBox = 1000347
tAwardId.Yongbing_Double = 1000348
tAwardId.Yongbing = 1000349
tAwardId.TouTiaoGoblin = 1000350
tAwardId.GoldGoblin = 1000351
tAwardId.Beila = 1000352
tAwardId.Meigui = 1000353

local tDialog = {}
tDialog.Youdang1 = 6242
tDialog.Youdang2 = 6243
tDialog.Youdang3 = 6244
tDialog.YoudangBattle = 6245
tDialog.YBDashu_1 = 6246
tDialog.YBDashu_2 = 6247
tDialog.YBNan_1 = 6248
tDialog.YBNan_2 = 6249
tDialog.YBNv_1 = 6250
tDialog.YBNv_2 = 6251
tDialog.Toutiao = 6252
tDialog.GoldGoblin = 6253
tDialog.Beila_Award = 6254
tDialog.Beila = 6255
tDialog.Meigui = 6256
tDialog.ZhanhunWin = 6259






---------------------------------------------------------------------------------------------------------
------------------------------------------事件配置-------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
----------------------------------
------------事件1-----------------
----------------------------------
rwtNpcGroup[tRandomBoxGroup.Box1] = rwtNpcGroup[tRandomBoxGroup.Box1] or {} 
rwtNpcGroup[tRandomBoxGroup.Box1]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"] = {}
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"] = {}
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1] = {}
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}  --副本玩家内存表中插入需要置掩码数据
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {} 
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.RandomBox, DataValue = CONST_TEMP_DATA.Data1, Value = 1}
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" --通关时设掩码
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRandomBoxGroup.Box1
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tRandomBoxGroup.Box1]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.RandomBox

rwtNpcGroup[tRandomBoxGroup.Box2] = rwtNpcGroup[tRandomBoxGroup.Box2] or {} 
rwtNpcGroup[tRandomBoxGroup.Box2]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"] = {}
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"] = {}
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1] = {}
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.RandomBox, DataValue = CONST_TEMP_DATA.Data2, Value = 1}
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRandomBoxGroup.Box2
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tRandomBoxGroup.Box2]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.RandomBox

rwtNpcGroup[tRandomBoxGroup.Box3] = rwtNpcGroup[tRandomBoxGroup.Box3] or {} 
rwtNpcGroup[tRandomBoxGroup.Box3]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"] = {}
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"] = {}
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1] = {}
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.RandomBox, DataValue = CONST_TEMP_DATA.Data3, Value = 1}
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = tRandomBoxGroup.Box3
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[tRandomBoxGroup.Box3]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.RandomBox

rwtTimeCopyMapInfo["TimeEvent1_1"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["CopyMapId"] = tCopyMapId.Lobby          --随机事件1的第一个副本ID
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"] ={}
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.RandomBox            
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1   --前厅副本宝箱判断data1
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_1"][1]["TimeCopyInit"]["Events"][1]["DynCreate"] = {tGenid.RandomBox1}   --判断宝箱没有被开启创建宝箱（开启宝箱逻辑修改该掩码
rwtTimeCopyMapInfo["TimeEvent1_1"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["CopyMapId"] = tCopyMapId.CastleHall
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.RandomBox
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2   --大厅副本宝箱判断data2
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_1"][2]["TimeCopyInit"]["Events"][1]["DynCreate"] = {tGenid.RandomBox2}
rwtTimeCopyMapInfo["TimeEvent1_1"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["CopyMapId"] = tCopyMapId.Zoulang
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.RandomBox
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data3  -- 走廊副本宝箱判断data3
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_1"][3]["TimeCopyInit"]["Events"][1]["DynCreate"] = {tGenid.RandomBox3}

----------------------------------
------------事件2-----------------
----------------------------------
rwtNpcGroup[nHideBoxGroup] = rwtNpcGroup[nHideBoxGroup] or {} 
rwtNpcGroup[nHideBoxGroup]["Type"] = CONST_NPCGROUP_TYPE.TreasureBox
rwtNpcGroup[nHideBoxGroup]["NotDel"] = 1
rwtNpcGroup[nHideBoxGroup]["Awards"] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["ChkUserTempData"] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["ChkUserTempData"][1] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.YoudangZhe
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data5
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["DynDelete"]  = {tGenid.YoudangBox}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data4, Value = 1}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord"    --开启宝箱 通关后 判断宝箱不再刷新  data4  记录宝箱是否刷新
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][2] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][2]["InsertValue"] = {Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data5, Value = 0}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["CopyMapTableUpdateValue"][2]["InsertValRes"] = "TimeTempRecord"    --data5 判断是否有钥匙 通关后设置为无钥匙
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["GetServerAward"] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TREASURE_BOX
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["GetServerAward"]["ActionId"] = nHideBoxGroup
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.YoudangBox
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["FailEvents"] = {}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["FailEvents"]["UserMsg"] ={}
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["MsgType"] = 2
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["Content"] = "没有钥匙，无法开启"
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["ShowType"] = 1
rwtNpcGroup[nHideBoxGroup]["Awards"]["Events"][1]["FailEvents"]["UserMsg"]["AwardTarget"] = CONST_AWARD_TARGET.SELF


rwtDialog[tDialog.Youdang3] = rwtDialog[tDialog.Youdang3] or {}
rwtDialog[tDialog.Youdang3]["DialogEnd"] = function ()
	if rwHasGenEvent(tGenid.MonsterYoudang1) then
		rwAutoBattle(tGenid.MonsterYoudang1)
	elseif rwHasGenEvent(tGenid.MonsterYoudang2) then
		rwAutoBattle(tGenid.MonsterYoudang2)
	elseif rwHasGenEvent(tGenid.MonsterYoudang3) then
		rwAutoBattle(tGenid.MonsterYoudang3)
	end
end
rwtDialog[tDialog.Youdang1] = rwtDialog[tDialog.Youdang1] or {}
rwtDialog[tDialog.Youdang1]["DialogEndInit"] = {}
rwtDialog[tDialog.Youdang1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Youdang1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Youdang1]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.NpcYoudang1,tGenid.NpcYoudang2,tGenid.NpcYoudang3}

rwtMonsterGroup[tMonster_Group.Sangshi_1] = rwtMonsterGroup[tMonster_Group.Sangshi_1] or {}
rwtMonsterGroup[tMonster_Group.Sangshi_1]["BattleWin"] = function()
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data5, Value = 1})
	if rwHasGenEvent(tGenid.NpcYoudang1) then
		rwDelGenEvent(tGenid.NpcYoudang1)
	end
end
rwtMonsterGroup[tMonster_Group.Sangshi_2] = rwtMonsterGroup[tMonster_Group.Sangshi_2] or {}
rwtMonsterGroup[tMonster_Group.Sangshi_2]["BattleWin"] = function()
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data5, Value = 1})
	if rwHasGenEvent(tGenid.NpcYoudang2) then
		rwDelGenEvent(tGenid.NpcYoudang2)
	end
end
rwtMonsterGroup[tMonster_Group.Sangshi_3] = rwtMonsterGroup[tMonster_Group.Sangshi_3] or {}
rwtMonsterGroup[tMonster_Group.Sangshi_3]["BattleWin"] = function()
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data5, Value = 1})
	if rwHasGenEvent(tGenid.NpcYoudang3) then
		rwDelGenEvent(tGenid.NpcYoudang3)
	end
end

function TimeCopyMap_Youdang_Talk(nDataValue,nGenId)
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	local tHeroTable = rwHeroGetAllInFight()
	for i = 1,#tHeroTable do  
		if tHeroTable[i] == tHero.Gongzhu then
			rwOpenNpcChatDialog(tDialog.Youdang1,CONST_NPCCHAT_TYPE.COPYMAP)
--			rwSendSystemMessage("宝箱在楼梯背后",2,1)
			table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
			table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.YoudangZhe, DataValue = CONST_TEMP_DATA.Data5, Value = 1})
			return
		end
	end
	if  rwChkInt(rwtCopyMapUserInitInfo[nMapId][nUserId]["TalkTimes"]) then
		rwtCopyMapUserInitInfo[nMapId][nUserId]["TalkTimes"] = rwtCopyMapUserInitInfo[nMapId][nUserId]["TalkTimes"] +1
		if rwtCopyMapUserInitInfo[nMapId][nUserId]["TalkTimes"] >= 5 then
			rwOpenNpcChatDialog(tDialog.Youdang3,CONST_NPCCHAT_TYPE.COPYMAP)    --战斗对白
		else
			rwOpenNpcChatDialog(tDialog.Youdang2,CONST_NPCCHAT_TYPE.COPYMAP)	 --闲聊对白
		end
	else 
		rwtCopyMapUserInitInfo[nMapId][nUserId]["TalkTimes"] =1
		rwOpenNpcChatDialog(tDialog.Youdang2,CONST_NPCCHAT_TYPE.COPYMAP)
	end 	
end
rwtNpcGroup[tNpcGroup.Youdang_1] = rwtNpcGroup[tNpcGroup.Youdang_1] or {}
rwtNpcGroup[tNpcGroup.Youdang_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Youdang_1]["NpcId"]= tNpc.Youdang_1
rwtNpc[tNpc.Youdang_1] =rwtNpc[tNpc.Youdang_1] or {}
rwtNpc[tNpc.Youdang_1]["NpcProcess"] = function ()	
	TimeCopyMap_Youdang_Talk(CONST_TEMP_DATA.Data1,tGenid.NpcYoudang1)
end
rwtNpcGroup[tNpcGroup.Youdang_2] = rwtNpcGroup[tNpcGroup.Youdang_2] or {}
rwtNpcGroup[tNpcGroup.Youdang_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Youdang_2]["NpcId"]= tNpc.Youdang_2
rwtNpc[tNpc.Youdang_2] =rwtNpc[tNpc.Youdang_2] or {}
rwtNpc[tNpc.Youdang_2]["NpcProcess"] = function ()	
	TimeCopyMap_Youdang_Talk(CONST_TEMP_DATA.Data2,tGenid.NpcYoudang2)
end
rwtNpcGroup[tNpcGroup.Youdang_3] = rwtNpcGroup[tNpcGroup.Youdang_3] or {}
rwtNpcGroup[tNpcGroup.Youdang_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Youdang_3]["NpcId"]= tNpc.Youdang_3
rwtNpc[tNpc.Youdang_3] =rwtNpc[tNpc.Youdang_3] or {}
rwtNpc[tNpc.Youdang_3]["NpcProcess"] = function ()	
	TimeCopyMap_Youdang_Talk(CONST_TEMP_DATA.Data3,tGenid.NpcYoudang3)
end

rwtTimeCopyMapInfo["TimeEvent1_2"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["CopyMapId"] = tCopyMapId.Lobby 
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.YoudangZhe    --游荡者掩码判断
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --30%概率创建
rwtTimeCopyMapInfo["TimeEvent1_2"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.NpcYoudang1,tGenid.MonsterYoudang1}
rwtTimeCopyMapInfo["TimeEvent1_2"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["CopyMapId"] = tCopyMapId.CastleHall 
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.YoudangZhe
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000
rwtTimeCopyMapInfo["TimeEvent1_2"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.NpcYoudang2,tGenid.MonsterYoudang2}
rwtTimeCopyMapInfo["TimeEvent1_2"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["CopyMapId"] = tCopyMapId.Zoulang 
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.YoudangZhe
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000
rwtTimeCopyMapInfo["TimeEvent1_2"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.NpcYoudang3,tGenid.MonsterYoudang3}
rwtTimeCopyMapInfo["TimeEvent1_2"][4] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["CopyMapId"] = tCopyMapId.Stairs 
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.YoudangZhe
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data4
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000
rwtTimeCopyMapInfo["TimeEvent1_2"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.YoudangBox}

----------------------------------
------------事件3-----------------
----------------------------------
rwtNpcGroup[tTrap.RandomEvent3_1] = rwtNpcGroup[tTrap.RandomEvent3_1] or {}
rwtNpcGroup[tTrap.RandomEvent3_1]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.RandomEvent3_1]["DelTrap"] = 1
rwtNpcGroup[tTrap.RandomEvent3_1]["Awards"] = {}  
rwtNpcGroup[tTrap.RandomEvent3_1]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.RandomEvent3_1]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.RandomEvent3_1]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTrap.RandomEvent3_1]["Awards"]["Events"][1]["AutoBattle"]["GenId"] =tGenid.Random3_Monster1  

rwtNpcGroup[tTrap.RandomEvent3_2] = rwtNpcGroup[tTrap.RandomEvent3_2] or {}
rwtNpcGroup[tTrap.RandomEvent3_2]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.RandomEvent3_2]["DelTrap"] = 1
rwtNpcGroup[tTrap.RandomEvent3_2]["Awards"] = {}  
rwtNpcGroup[tTrap.RandomEvent3_2]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.RandomEvent3_2]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.RandomEvent3_2]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTrap.RandomEvent3_2]["Awards"]["Events"][1]["AutoBattle"]["GenId"] =tGenid.Random3_Monster2

rwtNpcGroup[tTrap.RandomEvent3_3] = rwtNpcGroup[tTrap.RandomEvent3_3] or {}
rwtNpcGroup[tTrap.RandomEvent3_3]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.RandomEvent3_3]["DelTrap"] = 1
rwtNpcGroup[tTrap.RandomEvent3_3]["Awards"] = {}  
rwtNpcGroup[tTrap.RandomEvent3_3]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.RandomEvent3_3]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.RandomEvent3_3]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTrap.RandomEvent3_3]["Awards"]["Events"][1]["AutoBattle"]["GenId"] =tGenid.Random3_Monster3

rwtNpcGroup[tTrap.RandomEvent3_4] = rwtNpcGroup[tTrap.RandomEvent3_4] or {}
rwtNpcGroup[tTrap.RandomEvent3_4]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.RandomEvent3_4]["DelTrap"] = 1
rwtNpcGroup[tTrap.RandomEvent3_4]["Awards"] = {}  
rwtNpcGroup[tTrap.RandomEvent3_4]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.RandomEvent3_4]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.RandomEvent3_4]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTrap.RandomEvent3_4]["Awards"]["Events"][1]["AutoBattle"]["GenId"] =tGenid.Random3_Monster4  

rwtNpcGroup[tTrap.RandomEvent3_5] = rwtNpcGroup[tTrap.RandomEvent3_5] or {}
rwtNpcGroup[tTrap.RandomEvent3_5]["Type"] = CONST_NPCGROUP_TYPE.Trap
rwtNpcGroup[tTrap.RandomEvent3_5]["DelTrap"] = 1
rwtNpcGroup[tTrap.RandomEvent3_5]["Awards"] = {}  
rwtNpcGroup[tTrap.RandomEvent3_5]["Awards"]["Events"] = {}   
rwtNpcGroup[tTrap.RandomEvent3_5]["Awards"]["Events"][1] = {} 
rwtNpcGroup[tTrap.RandomEvent3_5]["Awards"]["Events"][1]["AutoBattle"] = {}
rwtNpcGroup[tTrap.RandomEvent3_5]["Awards"]["Events"][1]["AutoBattle"]["GenId"] =tGenid.Random3_Monster5   

rwtTimeCopyMapInfo["TimeEvent1_3"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["CopyMapId"] = tCopyMapId.Beforecastle 
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --50%概率创建
rwtTimeCopyMapInfo["TimeEvent1_3"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.Random3_Trap1,tGenid.Random3_Monster1}
rwtTimeCopyMapInfo["TimeEvent1_3"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["CopyMapId"] = tCopyMapId.Lobby 
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --50%概率创建
rwtTimeCopyMapInfo["TimeEvent1_3"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.Random3_Trap2,tGenid.Random3_Monster2}
rwtTimeCopyMapInfo["TimeEvent1_3"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["CopyMapId"] = tCopyMapId.CastleHall 
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --50%概率创建
rwtTimeCopyMapInfo["TimeEvent1_3"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.Random3_Trap3,tGenid.Random3_Monster3}
rwtTimeCopyMapInfo["TimeEvent1_3"][4] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["CopyMapId"] = tCopyMapId.Stairs 
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --50%概率创建
rwtTimeCopyMapInfo["TimeEvent1_3"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.Random3_Trap4,tGenid.Random3_Monster4}
rwtTimeCopyMapInfo["TimeEvent1_3"][5] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["CopyMapId"] = tCopyMapId.Zoulang 
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --50%概率创建
rwtTimeCopyMapInfo["TimeEvent1_3"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.Random3_Trap5,tGenid.Random3_Monster5}

----------------------------------
------------事件4-----------------
----------------------------------

rwtDialog[tDialog.YBDashu_1] = rwtDialog[tDialog.YBDashu_1] or {}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"] = {}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Yongbing_Double
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.YBDashu_1,tGenid.YBDashu_2,tGenid.YBDashu_3,tGenid.YBDashu_4,tGenid.YBDashu_5}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Yongbing, DataValue = CONST_TEMP_DATA.Data1, Value = 1}
rwtDialog[tDialog.YBDashu_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 

rwtDialog[tDialog.YBDashu_2] = rwtDialog[tDialog.YBDashu_2] or {}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"] = {}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Yongbing
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Yongbing, DataValue = CONST_TEMP_DATA.Data1, Value = 1}
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtDialog[tDialog.YBDashu_2]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.YBDashu_1,tGenid.YBDashu_2,tGenid.YBDashu_3,tGenid.YBDashu_4,tGenid.YBDashu_5}

rwtDialog[tDialog.YBNan_1] = rwtDialog[tDialog.YBNan_1] or {}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"] = {}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Yongbing_Double
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Yongbing, DataValue = CONST_TEMP_DATA.Data2, Value = 1}
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtDialog[tDialog.YBNan_1]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.YBNan_1,tGenid.YBNan_2,tGenid.YBNan_3,tGenid.YBNan_4,tGenid.YBNan_5}

rwtDialog[tDialog.YBNan_2] = rwtDialog[tDialog.YBNan_2] or {}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"] = {}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Yongbing
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Yongbing, DataValue = CONST_TEMP_DATA.Data2, Value = 1}
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtDialog[tDialog.YBNan_2]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.YBNan_1,tGenid.YBNan_2,tGenid.YBNan_3,tGenid.YBNan_4,tGenid.YBNan_5}

rwtDialog[tDialog.YBNv_1] = rwtDialog[tDialog.YBNv_1] or {}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"] = {}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Yongbing_Double
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Yongbing, DataValue = CONST_TEMP_DATA.Data3, Value = 1}
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtDialog[tDialog.YBNv_1]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.YBNv_1,tGenid.YBNv_2,tGenid.YBNv_3,tGenid.YBNv_4,tGenid.YBNv_5}

rwtDialog[tDialog.YBNv_2] = rwtDialog[tDialog.YBNv_2] or {}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"] = {}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Yongbing
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Yongbing, DataValue = CONST_TEMP_DATA.Data3, Value = 1}
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtDialog[tDialog.YBNv_2]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.YBNv_1,tGenid.YBNv_2,tGenid.YBNv_3,tGenid.YBNv_4,tGenid.YBNv_5}

function TimeCopyMap_YB_Dashu_Talk()	
	local tHeroTable = rwHeroGetAllInFight()
	local bInfo = false
	for i = 1,#tHeroTable do  
		if tHeroTable[i] == tHero.Gongzhu then
			rwOpenNpcChatDialog(tDialog.YBDashu_1,CONST_NPCCHAT_TYPE.COPYMAP)
			bInfo = true
			break
		end
	end	
	if not bInfo then
		rwOpenNpcChatDialog(tDialog.YBDashu_2,CONST_NPCCHAT_TYPE.COPYMAP)
	end	
end
function TimeCopyMap_YB_Nan_Talk()	
	local tHeroTable = rwHeroGetAllInFight()
	local bInfo = false
	for i = 1,#tHeroTable do  
		if tHeroTable[i] == tHero.Aiqi then
			rwOpenNpcChatDialog(tDialog.YBNan_1,CONST_NPCCHAT_TYPE.COPYMAP)
			bInfo = true
			break
		end
	end	
	if not bInfo then
		rwOpenNpcChatDialog(tDialog.YBNan_2,CONST_NPCCHAT_TYPE.COPYMAP)
	end	
end
function TimeCopyMap_YB_Nv_Talk()	
	local tHeroTable = rwHeroGetAllInFight()
	local bInfo = false
	for i = 1,#tHeroTable do  
		if tHeroTable[i] == tHero.Gaiyin then
			rwOpenNpcChatDialog(tDialog.YBNv_1,CONST_NPCCHAT_TYPE.COPYMAP)
			bInfo = true
			break
		end
	end	
	if not bInfo then
		rwOpenNpcChatDialog(tDialog.YBNv_2,CONST_NPCCHAT_TYPE.COPYMAP)
	end	
end
rwtNpcGroup[tNpcGroup.YBDashu_1] = rwtNpcGroup[tNpcGroup.YBDashu_1] or {}
rwtNpcGroup[tNpcGroup.YBDashu_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBDashu_1]["NpcId"]= tNpc.YBDashu_1
rwtNpc[tNpc.YBDashu_1] =rwtNpc[tNpc.YBDashu_1] or {}
rwtNpc[tNpc.YBDashu_1]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Dashu_Talk()
end
rwtNpcGroup[tNpcGroup.YBNan_1] = rwtNpcGroup[tNpcGroup.YBNan_1] or {}
rwtNpcGroup[tNpcGroup.YBNan_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNan_1]["NpcId"]= tNpc.YBNan_1
rwtNpc[tNpc.YBNan_1] =rwtNpc[tNpc.YBNan_1] or {}
rwtNpc[tNpc.YBNan_1]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nan_Talk()
end
rwtNpcGroup[tNpcGroup.YBNv_1] = rwtNpcGroup[tNpcGroup.YBNv_1] or {}
rwtNpcGroup[tNpcGroup.YBNv_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNv_1]["NpcId"]= tNpc.YBNv_1
rwtNpc[tNpc.YBNv_1] =rwtNpc[tNpc.YBNv_1] or {}
rwtNpc[tNpc.YBNv_1]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nv_Talk()
end

rwtNpcGroup[tNpcGroup.YBDashu_2] = rwtNpcGroup[tNpcGroup.YBDashu_2] or {}
rwtNpcGroup[tNpcGroup.YBDashu_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBDashu_2]["NpcId"]= tNpc.YBDashu_2
rwtNpc[tNpc.YBDashu_2] =rwtNpc[tNpc.YBDashu_2] or {}
rwtNpc[tNpc.YBDashu_2]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Dashu_Talk()
end
rwtNpcGroup[tNpcGroup.YBNan_2] = rwtNpcGroup[tNpcGroup.YBNan_2] or {}
rwtNpcGroup[tNpcGroup.YBNan_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNan_2]["NpcId"]= tNpc.YBNan_2
rwtNpc[tNpc.YBNan_2] =rwtNpc[tNpc.YBNan_2] or {}
rwtNpc[tNpc.YBNan_2]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nan_Talk()
end
rwtNpcGroup[tNpcGroup.YBNv_2] = rwtNpcGroup[tNpcGroup.YBNv_2] or {}
rwtNpcGroup[tNpcGroup.YBNv_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNv_2]["NpcId"]= tNpc.YBNv_2
rwtNpc[tNpc.YBNv_2] =rwtNpc[tNpc.YBNv_2] or {}
rwtNpc[tNpc.YBNv_2]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nv_Talk()
end

rwtNpcGroup[tNpcGroup.YBDashu_3] = rwtNpcGroup[tNpcGroup.YBDashu_3] or {}
rwtNpcGroup[tNpcGroup.YBDashu_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBDashu_3]["NpcId"]= tNpc.YBDashu_3
rwtNpc[tNpc.YBDashu_3] =rwtNpc[tNpc.YBDashu_3] or {}
rwtNpc[tNpc.YBDashu_3]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Dashu_Talk()
end
rwtNpcGroup[tNpcGroup.YBNan_3] = rwtNpcGroup[tNpcGroup.YBNan_3] or {}
rwtNpcGroup[tNpcGroup.YBNan_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNan_3]["NpcId"]= tNpc.YBNan_3
rwtNpc[tNpc.YBNan_3] =rwtNpc[tNpc.YBNan_3] or {}
rwtNpc[tNpc.YBNan_3]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nan_Talk()
end
rwtNpcGroup[tNpcGroup.YBNv_3] = rwtNpcGroup[tNpcGroup.YBNv_3] or {}
rwtNpcGroup[tNpcGroup.YBNv_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNv_3]["NpcId"]= tNpc.YBNv_3
rwtNpc[tNpc.YBNv_3] =rwtNpc[tNpc.YBNv_3] or {}
rwtNpc[tNpc.YBNv_3]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nv_Talk()
end

rwtNpcGroup[tNpcGroup.YBDashu_4] = rwtNpcGroup[tNpcGroup.YBDashu_4] or {}
rwtNpcGroup[tNpcGroup.YBDashu_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBDashu_4]["NpcId"]= tNpc.YBDashu_4
rwtNpc[tNpc.YBDashu_4] =rwtNpc[tNpc.YBDashu_4] or {}
rwtNpc[tNpc.YBDashu_4]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Dashu_Talk()
end
rwtNpcGroup[tNpcGroup.YBNan_4] = rwtNpcGroup[tNpcGroup.YBNan_4] or {}
rwtNpcGroup[tNpcGroup.YBNan_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNan_4]["NpcId"]= tNpc.YBNan_4
rwtNpc[tNpc.YBNan_4] =rwtNpc[tNpc.YBNan_4] or {}
rwtNpc[tNpc.YBNan_4]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nan_Talk()
end
rwtNpcGroup[tNpcGroup.YBNv_4] = rwtNpcGroup[tNpcGroup.YBNv_4] or {}
rwtNpcGroup[tNpcGroup.YBNv_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNv_4]["NpcId"]= tNpc.YBNv_4
rwtNpc[tNpc.YBNv_4] =rwtNpc[tNpc.YBNv_4] or {}
rwtNpc[tNpc.YBNv_4]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nv_Talk()
end

rwtNpcGroup[tNpcGroup.YBDashu_5] = rwtNpcGroup[tNpcGroup.YBDashu_5] or {}
rwtNpcGroup[tNpcGroup.YBDashu_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBDashu_5]["NpcId"]= tNpc.YBDashu_5
rwtNpc[tNpc.YBDashu_5] =rwtNpc[tNpc.YBDashu_5] or {}
rwtNpc[tNpc.YBDashu_5]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Dashu_Talk()
end
rwtNpcGroup[tNpcGroup.YBNan_5] = rwtNpcGroup[tNpcGroup.YBNan_5] or {}
rwtNpcGroup[tNpcGroup.YBNan_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNan_5]["NpcId"]= tNpc.YBNan_5
rwtNpc[tNpc.YBNan_5] =rwtNpc[tNpc.YBNan_5] or {}
rwtNpc[tNpc.YBNan_5]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nan_Talk()
end
rwtNpcGroup[tNpcGroup.YBNv_5] = rwtNpcGroup[tNpcGroup.YBNv_5] or {}
rwtNpcGroup[tNpcGroup.YBNv_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.YBNv_5]["NpcId"]= tNpc.YBNv_5
rwtNpc[tNpc.YBNv_5] =rwtNpc[tNpc.YBNv_5] or {}
rwtNpc[tNpc.YBNv_5]["NpcProcess"] = function ()	
	TimeCopyMap_YB_Nv_Talk()
end


rwtTimeCopyMapInfo["TimeEvent1_4"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["CopyMapId"] = tCopyMapId.Lobby 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBDashu_1}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNan_1}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data3
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNv_1}
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][1]["Func"] = function ()
	local nCopyMapId = rwUserGetCurMapId()
	local nUserId = rwUserGetId()
	local tGenYB = rwtCopyMapUserInitInfo[nCopyMapId][nUserId]["GenYB"]
	if #tGenYB > 0 then
		local nRandom = math.random (1,10000)
		if nRandom <= 5000 then
			local nRandom_GenYB = math.random(1,#tGenYB)
			if not rwHasGenEvent(tGenYB[nRandom_GenYB].GenId)  then
				rwAddGenEvent(tGenYB[nRandom_GenYB].GenId)
			end
			table.remove(tGenYB,nRandom_GenYB)
		end
	end	
end

rwtTimeCopyMapInfo["TimeEvent1_4"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["CopyMapId"] = tCopyMapId.CastleHall 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBDashu_2}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNan_2}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data3
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNv_2}
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][2]["Func"] = rwtTimeCopyMapInfo["TimeEvent1_4"][1]["Func"]

rwtTimeCopyMapInfo["TimeEvent1_4"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["CopyMapId"] = tCopyMapId.Stairs 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBDashu_3}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNan_3}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data3
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNv_3}
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][3]["Func"] = rwtTimeCopyMapInfo["TimeEvent1_4"][1]["Func"]

rwtTimeCopyMapInfo["TimeEvent1_4"][4] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["CopyMapId"] = tCopyMapId.Zoulang 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBDashu_4}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNan_4}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data3
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNv_4}
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][4]["Func"] = rwtTimeCopyMapInfo["TimeEvent1_4"][1]["Func"]

rwtTimeCopyMapInfo["TimeEvent1_4"][5] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["CopyMapId"] = tCopyMapId.Study 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBDashu_5}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNan_5}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][2]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Record"] = tTempCordId.Yongbing 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data3
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"] = {}  
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValue"] = {GenId= tGenid.YBNv_5}
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["TimeCopyInit"]["Events"][3]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "GenYB" 
rwtTimeCopyMapInfo["TimeEvent1_4"][5]["Func"] = rwtTimeCopyMapInfo["TimeEvent1_4"][1]["Func"]

----------------------------------
------------事件5-----------------
----------------------------------
rwtDialog[tDialog.Toutiao] = rwtDialog[tDialog.Toutiao] or {}
rwtDialog[tDialog.Toutiao]["DialogEndInit"] = {}
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.TouTiaoGoblin
rwtDialog[tDialog.Toutiao]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.ToutiaoGoblin_1,tGenid.ToutiaoGoblin_2,tGenid.ToutiaoGoblin_3,tGenid.ToutiaoGoblin_4,tGenid.ToutiaoGoblin_5}

rwtNpcGroup[tNpcGroup.Toutiao_1] = rwtNpcGroup[tNpcGroup.Toutiao_1] or {}
rwtNpcGroup[tNpcGroup.Toutiao_1]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Toutiao_1]["NpcId"]= tNpc.Toutiao_1
rwtNpc[tNpc.Toutiao_1] =rwtNpc[tNpc.Toutiao_1] or {}
rwtNpc[tNpc.Toutiao_1]["NpcProcess"] = function ()	
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	rwOpenNpcChatDialog(tDialog.Toutiao,CONST_NPCCHAT_TYPE.COPYMAP)
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data6, Value = 1})
end
rwtNpcGroup[tNpcGroup.Toutiao_2] = rwtNpcGroup[tNpcGroup.Toutiao_2] or {}
rwtNpcGroup[tNpcGroup.Toutiao_2]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Toutiao_2]["NpcId"]= tNpc.Toutiao_2
rwtNpc[tNpc.Toutiao_2] =rwtNpc[tNpc.Toutiao_2] or {}
rwtNpc[tNpc.Toutiao_2]["NpcProcess"] = function ()	
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	rwOpenNpcChatDialog(tDialog.Toutiao,CONST_NPCCHAT_TYPE.COPYMAP)
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data6, Value = 1})
end
rwtNpcGroup[tNpcGroup.Toutiao_3] = rwtNpcGroup[tNpcGroup.Toutiao_3] or {}
rwtNpcGroup[tNpcGroup.Toutiao_3]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Toutiao_3]["NpcId"]= tNpc.Toutiao_3
rwtNpc[tNpc.Toutiao_3] =rwtNpc[tNpc.Toutiao_3] or {}
rwtNpc[tNpc.Toutiao_3]["NpcProcess"] = function ()	
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	rwOpenNpcChatDialog(tDialog.Toutiao,CONST_NPCCHAT_TYPE.COPYMAP)
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data6, Value = 1})
end
rwtNpcGroup[tNpcGroup.Toutiao_4] = rwtNpcGroup[tNpcGroup.Toutiao_4] or {}
rwtNpcGroup[tNpcGroup.Toutiao_4]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Toutiao_4]["NpcId"]= tNpc.Toutiao_4
rwtNpc[tNpc.Toutiao_4] =rwtNpc[tNpc.Toutiao_4] or {}
rwtNpc[tNpc.Toutiao_4]["NpcProcess"] = function ()	
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	rwOpenNpcChatDialog(tDialog.Toutiao,CONST_NPCCHAT_TYPE.COPYMAP)
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data6, Value = 1})
end
rwtNpcGroup[tNpcGroup.Toutiao_5] = rwtNpcGroup[tNpcGroup.Toutiao_5] or {}
rwtNpcGroup[tNpcGroup.Toutiao_5]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Toutiao_5]["NpcId"]= tNpc.Toutiao_5
rwtNpc[tNpc.Toutiao_5] =rwtNpc[tNpc.Toutiao_5] or {}
rwtNpc[tNpc.Toutiao_5]["NpcProcess"] = function ()	
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	rwOpenNpcChatDialog(tDialog.Toutiao,CONST_NPCCHAT_TYPE.COPYMAP)
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data1, Value = 1})
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data6, Value = 1})
end

rwtDialog[tDialog.GoldGoblin] = rwtDialog[tDialog.GoldGoblin] or {}
rwtDialog[tDialog.GoldGoblin]["DialogEndInit"] = {}
rwtDialog[tDialog.GoldGoblin]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.GoldGoblin]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.GoldGoblin]["DialogEndInit"]["Events"][1]["AutoBattle"] = {}
rwtDialog[tDialog.GoldGoblin]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] =tGenid.Monster_GoldGoblin   

rwtMonsterGroup[tMonster_Group.GoldGoblin] = rwtMonsterGroup[tMonster_Group.GoldGoblin] or {}
rwtMonsterGroup[tMonster_Group.GoldGoblin]["BattleWin"] = function()
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.GoldGoblin, DataValue = CONST_TEMP_DATA.Data6, Value = 2})
	if rwHasGenEvent(tGenid.GoldGoblin) then
		rwDelGenEvent(tGenid.GoldGoblin)
	end
end

rwtNpcGroup[tNpcGroup.GoldGoblin] = rwtNpcGroup[tNpcGroup.GoldGoblin] or {}
rwtNpcGroup[tNpcGroup.GoldGoblin]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.GoldGoblin]["NpcId"]= tNpc.GoldGoblin
rwtNpc[tNpc.GoldGoblin] =rwtNpc[tNpc.GoldGoblin] or {}
rwtNpc[tNpc.GoldGoblin]["NpcProcess"] = function ()	
	rwOpenNpcChatDialog(tDialog.GoldGoblin,CONST_NPCCHAT_TYPE.COPYMAP)
end


rwtTimeCopyMapInfo["TimeEvent1_5"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["CopyMapId"] = tCopyMapId.Lobby 
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.GoldGoblin    --哥布林掩码判断
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --30%概率创建
rwtTimeCopyMapInfo["TimeEvent1_5"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.ToutiaoGoblin_1}
rwtTimeCopyMapInfo["TimeEvent1_5"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["CopyMapId"] = tCopyMapId.CastleHall 
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.GoldGoblin    --哥布林掩码判断
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --30%概率创建
rwtTimeCopyMapInfo["TimeEvent1_5"][2]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.ToutiaoGoblin_2}
rwtTimeCopyMapInfo["TimeEvent1_5"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["CopyMapId"] = tCopyMapId.Stairs 
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.GoldGoblin    --哥布林掩码判断
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --30%概率创建
rwtTimeCopyMapInfo["TimeEvent1_5"][3]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.ToutiaoGoblin_3}
rwtTimeCopyMapInfo["TimeEvent1_5"][4] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["CopyMapId"] = tCopyMapId.Zoulang 
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.GoldGoblin    --哥布林掩码判断
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --30%概率创建
rwtTimeCopyMapInfo["TimeEvent1_5"][4]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.ToutiaoGoblin_4}
rwtTimeCopyMapInfo["TimeEvent1_5"][5] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["CopyMapId"] = tCopyMapId.Study 
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.GoldGoblin    --哥布林掩码判断
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 5000   --30%概率创建
rwtTimeCopyMapInfo["TimeEvent1_5"][5]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.ToutiaoGoblin_5}
rwtTimeCopyMapInfo["TimeEvent1_5"][6] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["CopyMapId"] = tCopyMapId.Mishi 
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.GoldGoblin    --哥布林掩码判断
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 1
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data6
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.FIXED
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000   
rwtTimeCopyMapInfo["TimeEvent1_5"][6]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["GenId"] = {tGenid.GoldGoblin,tGenid.Monster_GoldGoblin}

----------------------------------
------------事件6-----------------
----------------------------------
rwtDialog[tDialog.Beila_Award] = rwtDialog[tDialog.Beila_Award] or {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"] = {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["GetServerAward"] = {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["GetServerAward"]["ActionType"] = CONST_ACTION_TYPE.TIPS
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardType"] = CONST_AWARD_TYPE.MEMORY_AWARD
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["GetServerAward"]["AwardId"] = tAwardId.Beila
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["DynDelete"] = {tGenid.Beila_1,tGenid.Beila_2,tGenid.Beila_3}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"] = {}  
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1] = {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValue"] = {Record= tTempCordId.Meiguituan, DataValue = CONST_TEMP_DATA.Data1, Value = 1}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][1]["InsertValRes"] = "TimeTempRecord" 
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][2] = {}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][2]["InsertValue"] = {Record= tTempCordId.Meiguituan, DataValue = CONST_TEMP_DATA.Data2, Value = 1}
rwtDialog[tDialog.Beila_Award]["DialogEndInit"]["Events"][1]["CopyMapTableUpdateValue"][2]["InsertValRes"] = "TimeTempRecord" 


rwtNpcGroup[tNpcGroup.Beila] = rwtNpcGroup[tNpcGroup.Beila] or {}
rwtNpcGroup[tNpcGroup.Beila]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Beila]["NpcId"]= tNpc.Beila
rwtNpc[tNpc.Beila] =rwtNpc[tNpc.Beila] or {}
rwtNpc[tNpc.Beila]["NpcProcess"] = function ()	
	local tHeroTable = rwHeroGetAllInFight()
	for i = 1,#tHeroTable do  
		if tHeroTable[i] == tHero.Aiqi then
			rwOpenNpcChatDialog(tDialog.Beila_Award,CONST_NPCCHAT_TYPE.COPYMAP)
			return
		end
	end	
	rwOpenNpcChatDialog(tDialog.Beila,CONST_NPCCHAT_TYPE.COPYMAP)
end

rwtDialog[tDialog.Meigui] = rwtDialog[tDialog.Meigui] or {}
rwtDialog[tDialog.Meigui]["DialogEndInit"] = {}
rwtDialog[tDialog.Meigui]["DialogEndInit"]["Events"] = {}
rwtDialog[tDialog.Meigui]["DialogEndInit"]["Events"][1] = {}
rwtDialog[tDialog.Meigui]["DialogEndInit"]["Events"][1]["AutoBattle"] ={}
rwtDialog[tDialog.Meigui]["DialogEndInit"]["Events"][1]["AutoBattle"]["GenId"] = tGenid.Monster_Zhanhun

rwtMonsterGroup[tMonster_Group.Zhanhun] = rwtMonsterGroup[tMonster_Group.Zhanhun] or {}
rwtMonsterGroup[tMonster_Group.Zhanhun]["BattleWin"] = function()
	local nMapId = rwUserGetCurMapId()
	local nUserId =  rwUserGetId() 
	table.insert(rwtCopyMapUserInitInfo[nMapId][nUserId]["TimeTempRecord"],{Record= tTempCordId.Meiguituan, DataValue = CONST_TEMP_DATA.Data2, Value = 2})
	if rwHasGenEvent(tGenid.Meiguituan) then
		rwDelGenEvent(tGenid.Meiguituan)
	end
end

rwtNpcGroup[tNpcGroup.Meigui] = rwtNpcGroup[tNpcGroup.Meigui] or {}
rwtNpcGroup[tNpcGroup.Meigui]["Type"] = CONST_NPCGROUP_TYPE.SingleNpc
rwtNpcGroup[tNpcGroup.Meigui]["NpcId"]= tNpc.Meigui
rwtNpc[tNpc.Meigui] =rwtNpc[tNpc.Meigui] or {}
rwtNpc[tNpc.Meigui]["NpcProcess"] = function ()	
	rwOpenNpcChatDialog(tDialog.Meigui,CONST_NPCCHAT_TYPE.COPYMAP)
end

rwtTimeCopyMapInfo["TimeEvent1_6"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["CopyMapId"] = tCopyMapId.CastleHall          --随机事件6的第一个副本ID
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Meiguituan            
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data1
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["ChkUserTempData"][1]["Value"] = 0
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomType"] = CONST_RANDOM_EVENT_TYPE.COMBINATION
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MinRate"] = 0
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["MaxRate"] = 10000   
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["RandomNum"] = 1
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"] = {} --没对话过创建贝拉
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][1]["GenId"] = tGenid.Beila_1
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][2]["GenId"] = tGenid.Beila_2
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][1]["TimeCopyInit"]["RandomEvents"][1]["RandomCreare"][1]["tGenId"][3]["GenId"] = tGenid.Beila_3


rwtTimeCopyMapInfo["TimeEvent1_6"][2] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["CopyMapId"] = tCopyMapId.Zoulang 
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"] = {}         
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1] = {}
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Record"] = tTempCordId.Meiguituan            
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["DataValue"]  = CONST_TEMP_DATA.Data2
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1]["ChkUserTempData"][1]["Value"] = 1
rwtTimeCopyMapInfo["TimeEvent1_6"][2]["TimeCopyInit"]["Events"][1]["DynCreate"] = {tGenid.Meiguituan,tGenid.Monster_Zhanhun}  

